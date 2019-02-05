// Inicio Uso Estándares  : 01/08/2011
// Unidad		          : ASO936
// Formulario		      : fNueAsociado
// Fecha de Creación      : 15/05/2018
// Autor			      : Equipo de Sistemas
// Objetivo		          : INGRESO DE NUEVOS ASOCIADOS
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS

unit ASO936;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, ExtCtrls, wwdblook, Buttons, ComCtrls,
  Wwdbspin, Wwdbdlg, wwdbdatetimepicker;

type
  TfNueAsociado = class(TForm)
    grpNueAso: TGroupBox;
    Panel1: TPanel;
    EdtAsoId: TwwDBEdit;
    Label2: TLabel;
    Pan01: TPanel;
    Label3: TLabel;
    Pan02: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Pan03: TPanel;
    Label1: TLabel;
    EdtCodMod: TwwDBEdit;
    Pan04: TPanel;
    BitGrabar: TBitBtn;
    BitMasDat: TBitBtn;
    BitSalir: TBitBtn;
    pan05: TPanel;
    Label24: TLabel;
    EdtAsoNom: TwwDBEdit;
    Label6: TLabel;
    EdtApePat: TwwDBEdit;
    EdtApeMat: TwwDBEdit;
    Label16: TLabel;
    dblcunipro: TwwDBLookupComboDlg;
    Panel4: TPanel;
    medesunipro: TMaskEdit;
    dblcunipag: TwwDBLookupComboDlg;
    Panel2: TPanel;
    medesunipag: TMaskEdit;
    dblcduniges: TwwDBLookupComboDlg;
    Panel3: TPanel;
    medesuniges: TMaskEdit;
    Label8: TLabel;
    pnlFecha: TPanel;
    lblFecUlt: TLabel;
    dtpFecha: TwwDBDateTimePicker;
    lblFecAct: TLabel;
    dtpFecAct: TwwDBDateTimePicker;
    Panel5: TPanel;
    Label7: TLabel;
    mecodcargo: TMaskEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcuniproChange(Sender: TObject);
    procedure dblcunipagChange(Sender: TObject);
    procedure dblcdunigesChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fNueAsociado: TfNueAsociado;

implementation

uses ASODM, ASO908, ASO260;

{$R *.dfm}






procedure TfNueAsociado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;


procedure TfNueAsociado.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfNueAsociado.BitGrabarClick(Sender: TObject);
var xSQL,xAsoCodAux,xAsoId,xDptoId,xCodReg,xvalcodmoddni, sReasig :String;
	Boton,xItem:Integer;
begin
  If Length(Trim(dblcunipro.Text))=0 Then
  Begin
    MessageDlg('Debe Seleccionar Una Unidad De Proceso !!!', mtError, [mbOk], 0);
    Exit;
  End;

  If Length(Trim(dblcunipag.Text))=0 Then
  Begin
    MessageDlg('Debe Seleccionar Una Unidad De Pago !!!', mtError, [mbOk], 0);
    Exit;
  End;

  If Length(Trim(dblcduniges.Text))=0 Then
  Begin
    MessageDlg('Debe Seleccionar Una Use/Ugel !!!', mtError, [mbOk], 0);
    Exit;
  End;

  If Length(Trim(EdtCodMod.Text))=0 Then
  Begin
    MessageDlg('Debe Ingresar El Codigo Modular !!!', mtError, [mbOk], 0);
    Exit;
  End;
  if not DM1.FG_VALIDA_CODIGO_MODULAR(EdtCodMod.Text) then exit;

  If (Length(Trim(mecodcargo.Text))<>0) And (Length(Trim(mecodcargo.Text))<>6) Then
  Begin
    MessageDlg('Cantidad de digitos no valido en número de cargo !!!', mtError, [mbOk], 0);
    Exit;
  End;

  If Length(Trim(EdtApePat.Text))+Length(Trim(EdtApeMat.Text)) = 0 Then
  Begin
    MessageDlg('Debe ingresar Apellidos Paterno y Materno !!!', mtError, [mbOk], 0);
    Exit;
  End;


  If Length(Trim(EdtAsoNom.Text))=0 Then
  Begin
    MessageDlg('Debe ingresar el nombre del Asociado !!!', mtError, [mbOk], 0);
    Exit;
  End;


  If Length(Trim(EdtCodMod.Text))<>10 Then
  Begin
    MessageDlg('El codigo modular debe ser de 10 Caracteres!!!', mtError, [mbOk], 0);
    Exit;
  End;

  xDptoId:=DM1.CrgDescrip('UPROID='+QuotedStr(Trim(dblcunipro.Text))+' AND UPAGOID='+QuotedStr(Trim(dblcunipag.Text))+' AND USEID='+QuotedStr(Trim(dblcduniges.Text)),'APO101','DPTOID');

  Boton := Application.MessageBox ('Esta seguro de actualizar datos del asociado?','Creditos',MB_YESNO+MB_ICONQUESTION);

  If Boton = ID_YES Then
  Begin
    xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
    xCodReg := FMantAsociado.CodReg;
    DM1.Registro_Aud(xAsoId,'0',xCodReg);
    xAsoCodAux:=DM1.AsignaNroAux(DM1.sAPO201,EdtCodMod.Text);

    if '10'+trim(FMantAsociado.dbeLibDni.Text)=TRIM(EdtCodMod.Text) then
    Begin
      xvalcodmoddni:='S';
      FMantAsociado.dbeLibDni.Enabled := False;
      FMantAsociado.dbeLibDni.Color:=$0097FF97
    End
    else
      xvalcodmoddni:='N';

    sReasig:='N';
    if DM1.cdsAso.FieldByName('USEID').AsString  <>TRIM(dblcduniges.Text) then sReasig:='S';
    if DM1.cdsAso.FieldByName('UPAGOID').AsString<>TRIM(dblcunipag.Text)  then sReasig:='S';
    if DM1.cdsAso.FieldByName('UPROID').AsString <>TRIM(dblcunipro.TexT)  then sReasig:='S';
    if DM1.cdsAso.FieldByName('CARGO').AsString  <>TRIM(mecodcargo.Text)  then sReasig:='S';

    DM1.cdsAso.Edit;
    DM1.cdsAso.FieldByName('ASOCODMOD').AsString := TRIM(EdtCodMod.Text);
    DM1.cdsAso.FieldByName('CARGO').AsString     := TRIM(mecodcargo.Text);
    DM1.cdsAso.FieldByName('ASOCODAUX').AsString := TRIM(xAsoCodAux);
    DM1.cdsAso.FieldByName('USEID').AsString     := TRIM(dblcduniges.Text);
    DM1.cdsAso.FieldByName('UPAGOID').AsString   := TRIM(dblcunipag.Text);
    DM1.cdsAso.FieldByName('UPROID').AsString    := TRIM(dblcunipro.TexT);
    DM1.cdsAso.fieldbyname('ASOAPEPAT').AsString := TRIM(EdtApePat.Text);
    DM1.cdsAso.fieldbyname('ASOAPEMAT').AsString := TRIM(EdtApeMat.Text);
    DM1.cdsAso.fieldbyname('ASONOMBRES').AsString:= TRIM(EdtAsoNom.Text);

    FMantAsociado.dbeUproDes.Text := medesunipro.Text;
    FMantAsociado.dbeUpagDes.Text := medesunipag.Text;
    FMantAsociado.dbeUses.Text    := medesuniges.Text;

    xSQL:='UPDATE '+DM1.sAPO201+' SET VALCODMODDNI='+QuotedStr(xvalcodmoddni)+', '
         +   'ASOCODMOD=' +QuotedStr(EdtCodMod.Text)+', ASOCODAUX='+QuotedStr(xAsoCodAux)+', '
         +   'ASOAPEPAT=' +QuotedStr(EdtApePat.Text)+', ASOAPEMAT='+QuotedStr(EdtApeMat.Text)+', '
         +   'ASONOMBRES='+QuotedStr(EdtAsoNom.Text)+', '
         +   'ASOAPENOM=' +QuotedStr(Trim(EdtApePat.Text)+' '+Trim(EdtApeMat.Text)+' '+Trim(EdtAsoNom.Text))+', '
         +   'USEID='+QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString)+', '
         +   'UPAGOID='+QuotedStr(dblcunipag.Text)+', UPROID='+QuotedStr(dblcunipro.Text)+', '
         +   'DPTOID='+QuotedStr(xDptoId)+', CARGO='+QuotedStr(mecodcargo.Text)
         +' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);

    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    xCodReg:=FMantAsociado.CodReg;
    DM1.Registro_Aud(xAsoId,'1',xCodReg);
    FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
    FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
    FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
    FMantAsociado.edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(FMantAsociado.lkcProv2.Text)),'TGE121','CIUDDES');
    FMantAsociado.edtDist2.Text := DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(FMantAsociado.lkcDist2.Text)),'APO122','ZIPDES');

    if sReasig='S' then // si se cambiaron los datos
    begin
      If (DM1.xOfiDes>'01') and (DM1.sAPO201='APO201') Then
      Begin
        xSQL:='SELECT ASOID,FHREGISTRO FROM ASO003 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND IDESTADO IS NULL ';
        DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
        If DM1.cdsQry.RecordCount > 0 Then
        Begin
          xSQL:='UPDATE ASO003 SET REASIGNACION=''S'' WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND IDESTADO IS NULL ';
        End
        Else
        Begin
         DM1.cdsQry.Close;
         xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(xAsoId));
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
         xSQL:='INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID, REASIGNACION,ITEM) VALUES '+
               '( '+QuotedStr(Trim(xAsoId))+','+QuotedStr(Trim(EdtApePat.Text)+' '+Trim(EdtApeMat.Text)+' '+Trim(EdtAsoNom.Text))+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DM1.xOfiDes)+',''S'','+IntToStr(xItem+1)+' )';

        End;
        DM1.cdsQry.Close;
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End
      else
      begin
        DM1.cdsQry.Close;
        xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(xAsoId));
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Open;
        xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
        xSQL:='INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID, REASIGNACION, IDESTADO, OBSERVACION, USRVERIFICA, FHVERIFICA,ITEM ) VALUES '+
              '( '+QuotedStr(Trim(xAsoId))+','+QuotedStr(Trim(EdtApePat.Text)+' '+Trim(EdtApeMat.Text)+' '+Trim(EdtAsoNom.Text))+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DM1.xOfiDes)+', ''S'', ''02'', ''Ok'', '+QuotedStr(DM1.wUsuario)+', SYSDATE, '+IntToStr(xItem+1)+' )';
        DM1.cdsQry.Close;
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;
    end;

    If DM1.sAPO201='APO201' Then
    begin
      xSQL:='SELECT ASOID, MAX(FHVERIFICA) FHVERIFICA FROM ASO003 '
          +'WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))
          + ' AND IDESTADO=''02'' AND NVL(REASIGNACION,''N'')=''S'' GROUP BY ASOID';
      DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      begin
        pnlFecha.Visible:=True;
        pnlFecha.Height :=32;
        dtpFecha.Visible:=True;
        dtpFecAct.Visible:=False;
        lblFecUlt.Caption:='Ultima Fecha Reasignación';
        lblFecAct.Caption:='';
        dtpFecha.DateTime:=DM1.cdsQry.FieldByName('FHVERIFICA').AsDateTime;
      end
      else
      begin
        pnlFecha.Visible:=True;
        pnlFecha.Height :=61;
        dtpFecha.Visible:=False;
        lblFecUlt.Caption:='Ultima Fecha Reasignación  :  Sin Fecha';
        lblFecAct.Caption:='Ultima Fecha Actualización';
        dtpFecAct.Visible:=True;
        dtpFecAct.DateTime:=DM1.cdsAso.FieldByName('HREG').AsDateTime;
      end;
    end;

    MessageDlg('Los datos fueron guardados correctamente', mtinformation, [mbOk], 0);

    If DM1.xCnd<>'M' Then DM1.CrgDatos;
      Close;
  End;
end;


procedure TfNueAsociado.FormActivate(Sender: TObject);
Var xSql:String;
begin

  xsql := 'SELECT UPROID, UPRONOM FROM APO102';
  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xSql);
  DM1.cdsQry20.Open;
  dblcunipro.Selected.Clear;
  dblcunipro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
  dblcunipro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);


If DM1.xInsert='0' Then
   Begin
      mecodcargo.Text := DM1.cdsAso.FieldByName('CARGO').AsString;
      EdtAsoId.Text    := DM1.cdsAso.fieldbyname('ASOID').AsString;
      dblcunipro.Text  := DM1.cdsAso.fieldbyname('UPROID').AsString;
      dblcunipag.Text  := DM1.cdsAso.fieldbyname('UPAGOID').AsString;
      dblcduniges.Text := DM1.cdsAso.fieldbyname('USEID').AsString;
      EdtCodMod.Text   := DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
      EdtApePat.Text   := DM1.cdsAso.fieldbyname('ASOAPEPAT').AsString;
      EdtApeMat.Text   := DM1.cdsAso.fieldbyname('ASOAPEMAT').AsString;
      EdtAsoNom.Text   := DM1.cdsAso.fieldbyname('ASONOMBRES').AsString;
   End
Else
   Begin
     mecodcargo.Text := DM1.cdsAso.FieldByName('CARGO').AsString;
     EdtAsoId.Text :=DM1.cdsAso.fieldbyname('ASOID').AsString;
     dblcunipro.Text:=DM1.cdsAso.fieldbyname('UPROID').AsString;
     dblcunipag.Text:=DM1.cdsAso.fieldbyname('UPAGOID').AsString;
     dblcduniges.Text  :=DM1.cdsAso.fieldbyname('USEID').AsString;
     EdtCodMod.Text:=DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
     EdtApePat.Text:=DM1.cdsAso.fieldbyname('ASOAPEPAT').AsString;
     EdtApeMat.Text:=DM1.cdsAso.fieldbyname('ASOAPEMAT').AsString;
     EdtAsoNom.Text:=DM1.cdsAso.fieldbyname('ASONOMBRES').AsString;
   End;

   pnlFecha.Visible:=False;
   IF ( DM1.sAPO201<>'APO201' ) or (
      ( length( trim(DM1.cdsAso.fieldbyname('ASOAPEPAT').AsString ) +
                trim(DM1.cdsAso.fieldbyname('ASOAPEMAT').AsString ) +
                trim(DM1.cdsAso.fieldbyname('ASONOMBRES').AsString) ) < 10 ) ) then
   begin
      if Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' then
      begin
         Pan04.Enabled:=True;
         pan05.Enabled:=True;
         mecodcargo.Enabled:=true;
      end
      else
         mecodcargo.Enabled:=False;
   end
   else
      If DM1.sAPO201='APO201' Then
      begin
           xSQL:='SELECT ASOID, MAX(FHVERIFICA) FHVERIFICA FROM ASO003 '
                +'WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))
                + ' AND IDESTADO=''02'' AND NVL(REASIGNACION,''N'')=''S'' GROUP BY ASOID';
           DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
           If DM1.cdsQry.RecordCount > 0 Then
           begin
              pnlFecha.Visible:=True;
              pnlFecha.Height :=32;
              dtpFecha.Visible:=True;
              dtpFecAct.Visible:=False;
              lblFecUlt.Caption:='Ultima Fecha Reasignación';
              lblFecAct.Caption:='';
              dtpFecha.DateTime:=DM1.cdsQry.FieldByName('FHVERIFICA').AsDateTime;
           end
           else
           begin
              pnlFecha.Visible:=True;
              pnlFecha.Height :=61;
              dtpFecha.Visible:=False;
              lblFecUlt.Caption:='Ultima Fecha Reasignación  :  Sin Fecha';
              lblFecAct.Caption:='Ultima Fecha Actualización';
              dtpFecAct.Visible:=True;
              dtpFecAct.DateTime:=DM1.cdsAso.FieldByName('HREG').AsDateTime;
           end;
      end;
      
  IF (DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S') or
      (DM1.xCnd = 'AUT') then
  BEGIN
    BitGrabar.Enabled := false;

    dblcunipro.Enabled := false;
    dblcunipag.Enabled := false;
    dblcduniges.Enabled := false;
    mecodcargo.ReadOnly := true;
  END;
end;

procedure TfNueAsociado.FormCreate(Sender: TObject);
begin
  DM1.BlqComponentes(Self);
end;

procedure TfNueAsociado.FormClose(Sender: TObject;
  var Action: TCloseAction);
var xSQL:String;
begin
   xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
   DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;
end;

procedure TfNueAsociado.dblcuniproChange(Sender: TObject);
Var xSql:String;
begin
  If dblcunipro.Text = '' Then
  Begin
    dblcunipag.Enabled := False;
    medesunipro.Text := '';
    dblcunipag.Text  := '';
    medesunipag.Text := '';
    dblcduniges.Text := '';
    medesuniges.Text := '';
  End;
  If Length(dblcunipro.Text) = 3 then
  Begin
    If DM1.cdsQry20.Locate('UPROID', dblcunipro.Text, []) Then
    Begin
      medesunipro.Text := DM1.cdsQry20.FieldByName('UPRONOM').AsString;
      dblcunipag.Enabled := True;
      xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcunipro.Text);
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      dblcunipag.Selected.Clear;
      dblcunipag.Selected.Add('UPAGOID'#9'2'#9'Código'#9#9);
      dblcunipag.Selected.Add('UPAGONOM'#9'25'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcunipag.Enabled := False;
      dblcunipro.Text := '';
      medesunipro.Text := '';
      dblcunipag.Text  := '';
      medesunipag.Text := '';
      dblcduniges.Text := '';
      medesuniges.Text := '';
      dblcunipro.SetFocus;
    End;
  End;
end;

procedure TfNueAsociado.dblcunipagChange(Sender: TObject);
Var xSql:String;
begin
  If dblcunipag.Text = '' Then
  Begin
   dblcduniges.Enabled := False;
    medesunipag.Text    := '';
    dblcduniges.Text   := '';
    medesuniges.Text      := '';
  End;
  If Length(dblcunipag.Text) = 2 then
  Begin
    If DM1.cdsQry21.Locate('UPAGOID', dblcunipag.Text, []) Then
    Begin
      medesunipag.Text := DM1.cdsQry21.FieldByName('UPAGONOM').AsString;
      dblcduniges.Enabled := True;
      xSql := 'SELECT USEID, USENOM '
             +'  FROM APO101 WHERE UPROID = '+QuotedStr(dblcunipro.Text)
             +'   AND UPAGOID = '+QuotedStr(dblcunipag.Text)
             +'   AND NVL(FDESHABILITADO,''S'') =''N''';
      DM1.cdsQry22.Close;
      DM1.cdsQry22.DataRequest(xSql);
      DM1.cdsQry22.Open;
      dblcduniges.Selected.Clear;
      dblcduniges.Selected.Add('USEID'#9'2'#9'Código'#9#9);
      dblcduniges.Selected.Add('USENOM'#9'25'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduniges.Enabled := False;
      dblcunipag.Text := '';
      medesunipag.Text    := '';
      dblcduniges.Text   := '';
      medesuniges.Text      := '';
      dblcunipag.SetFocus;
    End;
  End;
end;

procedure TfNueAsociado.dblcdunigesChange(Sender: TObject);
begin
  If dblcduniges.Text = '' Then medesuniges.Text := '';
  If Length(dblcduniges.Text) = 2 then
  Begin
    If DM1.cdsQry22.Locate('USEID', dblcduniges.Text, []) Then
      medesuniges.Text := DM1.cdsQry22.FieldByName('USENOM').AsString
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduniges.Text   := '';
      medesuniges.Text   := '';
      dblcduniges.SetFocus;
    End;
  End;
end;

end.
//FIN HPC_201801_MAS

