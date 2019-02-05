// Inicio Uso Estándares : 14/12/2017
// Unidad                : ASO260N.pas
// Formulario            : FMantRegalo
// Fecha de Creación     : 15/05/2018
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS

unit ASO260N;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFMantRegalo = class(TForm)
    dbgListRegalos: TwwDBGrid;
    btnAceptar: TButton;
    btnCancelar: TButton;
    lblAsociado: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ListarRegalos();
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sOficinaId : String;
    sUserReg : String;
    sAsociadoId : String;
  end;

var
  FMantRegalo: TFMantRegalo;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantRegalo.FormActivate(Sender: TObject);
begin

    dbgListRegalos.Selected.Clear;
    dbgListRegalos.Selected.Add('CAMPANA'#9'10'#9'Campaña'#9'F');
    dbgListRegalos.Selected.Add('OFDESNOM'#9'25'#9'Oficina'#9'F');
    dbgListRegalos.Selected.Add('DESREG'#9'25'#9'Regalo'#9'F');
    dbgListRegalos.Selected.Add('STOINI'#9'11'#9'Stock~Inicial'#9'F');
    dbgListRegalos.Selected.Add('STOFIN'#9'11'#9'Stock~Actual'#9'F');
    dbgListRegalos.Selected.Add('USUREG'#9'11'#9'Usuario'#9'F');
    dbgListRegalos.Selected.Add('FECREG'#9'10'#9'Fecha'#9'F');
    dbgListRegalos.Selected.Add('ACTIVO'#9'10'#9'Activo'#9'F');

    ListarRegalos();

    lblAsociado.Caption:= DM1.cdsAso.FieldByName('ASOAPENOM').AsString + ' - ' +  sAsociadoId;

end;




procedure TFMantRegalo.ListarRegalos();
var
    xSQL :String;
begin

    xSQL := ' select c.CODOFI, a.OFDESNOM, c.CODREG, c.DESREG, c.STOINI, c.STOFIN, c.USUREG, c.FECREG, c.ACTIVO, c.CAMPANA '
           + ' from ASO_CAT_REG_DET c, APO110 a '
           + ' where c.CODOFI = ' + QuotedStr(sOficinaId)
           + ' and   a.OFDESID = c.CODOFI '
           + ' order by c.CODOFI, c.DESREG, c.CAMPANA ';

    dbgListRegalos.Datasource := DM1.dsQry15;
    DM1.cdsQry15.Close;
    DM1.cdsQry15.DataRequest( xSQL );
    DM1.cdsQry15.Open;

    If (DM1.cdsQry15.RecordCount = 0 ) Then
    Begin
        btnAceptar.Enabled := False;
    End;

end;


procedure TFMantRegalo.btnCancelarClick(Sender: TObject);
begin
    close;
end;

procedure TFMantRegalo.btnAceptarClick(Sender: TObject);
var
    xSQL :String;
begin

    If (DM1.cdsQry15.FieldByName('ACTIVO').AsString = 'N' ) Then
    Begin
        MessageDlg('Obsequio no Activo.', mtError,
        [mbOk], 0);
        screen.Cursor := crDefault;
        exit;
    End;

    xSQL := ' SELECT TO_CHAR(FECREG,''DD/MM/YYYY'') fecreg,  a.usureg '
              + ' FROM ASO_CAT_REG_MOV a '
              + ' WHERE a.ASOID = ' + QuotedStr(sAsociadoId)
              + ' AND   a.CAMPANA = ' + QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString)
              + ' AND   a.CODREG = ' + QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString);

    DM1.cdsQryRegalo.Close;
    DM1.cdsQryRegalo.DataRequest( xSQL );
    DM1.cdsQryRegalo.Open;


    If (DM1.cdsQryRegalo.RecordCount > 0 ) Then
    Begin
        MessageDlg('Asociado ya cuenta con el obsequio.' + #13 +
                   'Fecha de entrega: ' + DM1.cdsQryRegalo.FieldByName('fecreg').AsString + #13 +
                   'Usuario de entrega: ' + DM1.cdsQryRegalo.FieldByName('usureg').AsString
                   , mtError,
        [mbOk], 0);
        screen.Cursor := crDefault;
        exit;
    End;

    If MessageDlg('Se procederá con el registro del obsequio. Desea continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        exit;

    DM1.DCOM1.AppServer.SOLStartTransaction;
    Try
        Screen.Cursor := crHourGlass;

        // Inserta en tabla movimientos
        xSQL := 'INSERT INTO ASO_CAT_REG_MOV (CODOFI, ASOID, CAMPANA, CODREG, CANTIDAD, USUREG, FECREG) ' +
                'VALUES (' + QuotedStr(sOficinaId) + ',' +
                         QuotedStr(sAsociadoId)+ ',' +
                         QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString)+ ',' +
                         QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString)+ ',' +
                         '1' + ',' +
                         QuotedStr(sUserReg)+ ',' +
                         'SYSDATE' + ')';

        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        // Actualiza Stock Final
        xSQL := 'UPDATE ASO_CAT_REG_DET SET  STOFIN = STOFIN - 1 '
              + ' WHERE CODOFI = ' + QuotedStr(sOficinaId)
              + ' AND   CODREG = ' + QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString)
              + ' AND   CAMPANA = ' + QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString);

        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        ListarRegalos();
        btnAceptar.Enabled := False;
        screen.Cursor := crDefault;

        DM1.DCOM1.AppServer.SOLCommit;
    Except
        DM1.DCOM1.AppServer.SOLRollBack;
        showmessage('No se pudo completar el proceso, por favor intente nuevamente.');
        screen.Cursor := crDefault;
        exit;
    End;

end;

end.
//FIN HPC_201801_MAS
