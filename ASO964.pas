// Inicio Uso Estándares:	01/08/2011
// Unidad		            : ASO964.pas
// Formulario		        : Fautdes
// Fecha de Creación        : 15/05/2018
// Autor			        : Daniel Fernández
// Objetivo		            : Autorizar las CADAPS - Cartas de Autorización de Descuento de Aportes
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS


unit ASO964;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, Buttons, ppEndUsr,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppCache, Mask,
  wwdbdatetimepicker, ComCtrls, DB;

type
  TFautdes = class(TForm)
    gbgrupo: TGroupBox;
    dblcdmotdesapo: TwwDBLookupComboDlg;
    Panel1: TPanel;
    edtdesaut: TEdit;
    btnactualiza: TBitBtn;
    btncerrar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtusuaut: TEdit;
    edtfecregaut: TEdit;
    edtofiaut: TEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    BitAutDes: TBitBtn;
    Label5: TLabel;
    DbLUniPro: TwwDBLookupComboDlg;
    dbeUproDes: TMaskEdit;
    Label6: TLabel;
    DbLUniPag: TwwDBLookupComboDlg;
    dbeUpagDes: TMaskEdit;
    Label7: TLabel;
    DbLUses: TwwDBLookupComboDlg;
    dbeUses: TMaskEdit;
    Label8: TLabel;
    dbdtfecaut: TwwDBDateTimePicker;
    Label9: TLabel;
    dblcdmotCADAPS: TwwDBLookupComboDlg;
    Panel2: TPanel;
    edtdesmotCADAPS: TEdit;
    BitPrint: TBitBtn;

    procedure FormActivate(Sender: TObject);
    procedure btnactualizaClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure dblcdmotdesapoChange(Sender: TObject);
    procedure BitAutDesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdmotdesapoExit(Sender: TObject);
    procedure dbdtfecautExit(Sender: TObject); 
    procedure dblcdmotCADAPSExit(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
    function chkdesdesapo(xasoid:String):Boolean;
  public
    { Public declarations }
    sConsulta: string;
    sFirmaCarta: string;
  end;

var
  Fautdes: TFautdes;

implementation

uses ASODM, ASO260,ASO969;

{$R *.dfm}

procedure TFautdes.FormActivate(Sender: TObject);
Var xSql, xasoid:String;
begin
  xSql := 'SELECT CODMOTDEST, DESMOTDES FROM ASO_MOT_DES';
  DM1.cdsReclamoMotiv.Close;
  DM1.cdsReclamoMotiv.DataRequest(xSql);
  DM1.cdsReclamoMotiv.Open;
  dblcdmotdesapo.Selected.Clear;
  dblcdmotdesapo.Selected.Add('CODMOTDEST'#9'5'#9'Código'#9#9);
  dblcdmotdesapo.Selected.Add('DESMOTDES'#9'30'#9'Descripción'#9#9);
  xSql := 'SELECT CODMOTAUTCADAPS, DESMOTAUTCADAPS  FROM ASO_MOT_AUT_CADAPS ORDER BY CODMOTAUTCADAPS';
  DM1.cdsAutCADAPS.Close;
  DM1.cdsAutCADAPS.DataRequest(xSql);
  DM1.cdsAutCADAPS.Open;
  dblcdmotCADAPS.Selected.Clear;
  dblcdmotCADAPS.Selected.Add('CODMOTAUTCADAPS'#9'5'#9'Código'#9#9);
  dblcdmotCADAPS.Selected.Add('DESMOTAUTCADAPS'#9'30'#9'Descripción'#9#9);

  xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;

  DbLUniPro.Text :=FMantAsociado.DbLUniPro.Text;
  DbLUniPag.Text :=FMantAsociado.DbLUniPag.Text;
  DbLUses.Text   :=FMantAsociado.DbLUses.Text;
  dbeUproDes.Text:=FMantAsociado.dbeUproDes.Text;
  dbeUpagDes.Text:=FMantAsociado.dbeUpagDes.Text;
  dbeUses.Text   :=FMantAsociado.dbeUses.Text;

  If  DM1.xautdes='A' Then
     Begin
       xSql := 'SELECT A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, A.CODMOTDESTAPO, B.OFDESNOM, A.CODMOTAUTCADAPS FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       +' AND A.OFIREGAUTDESAPO = B.OFDESID(+)';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open;
       edtusuaut.Text := DM1.cdsQry.FieldByName('USUREGAUTDESAPO').AsString;
       dbdtfecaut.DateTime := DM1.cdsQry.FieldByName('FECAUTDESAPO').AsDateTime;
       dblcdmotCADAPS.Text := DM1.cdsQry.FieldByName('CODMOTAUTCADAPS').AsString;
       edtdesmotCADAPS.Text := dm1.RecuperaDatos('ASO_MOT_AUT_CADAPS', 'CODMOTAUTCADAPS', dblcdmotCADAPS.Text , 'DESMOTAUTCADAPS');
       edtfecregaut.Text := DM1.cdsQry.FieldByName('FECREGAUTDESAPO').AsString;
       edtofiaut.Text := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
       dblcdmotdesapo.Text := DM1.cdsQry.FieldByName('CODMOTDESTAPO').AsString;
    End
  Else
    Begin
       xSql := 'SELECT A.FECAUTDESCUO, A.FECREGAUTDESAPO, A.USUREGAUTDESCUO, A.OFIREGAUTDESCUO, A.CODMOTDESTCUO, B.OFDESNOM, A.CODMOTAUTCADAPS FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       +' AND A.OFIREGAUTDESCUO = B.OFDESID(+)';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open;
       edtusuaut.Text := DM1.cdsQry.FieldByName('USUREGAUTDESCUO').AsString;
       dbdtfecaut.DateTime := DM1.cdsQry.FieldByName('FECAUTDESCUO').AsDateTime;
       dblcdmotCADAPS.Text := DM1.cdsQry.FieldByName('CODMOTAUTCADAPS').AsString;
       edtfecregaut.Text := DM1.cdsQry.FieldByName('FECREGAUTDESAPO').AsString;
       edtofiaut.Text := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
       dblcdmotdesapo.Text := DM1.cdsQry.FieldByName('CODMOTDESTCUO').AsString;
    End;

  IF ((DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'DO')
    OR (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'VO')) THEN
  BEGIN
    IF (DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S') THEN
    BEGIN
      IF (DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), DM1.sAPO201, 'AUTDESAPO') = 'S') And (FMantAsociado.sFirmaCarta <> 'S') THEN
      begin
        dbdtfecaut.Enabled := false;
        dblcdmotCADAPS.Enabled := False;
        Label4.Visible := False;
        dblcdmotdesapo.Visible := False;
        Panel1.Visible := False;
        BitAutDes.Enabled := False;
        //la desautorización sólo es para el Nivel 3 o superior
        If (Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03')
          and (chkdesdesapo(xAsoId) = True) Then
          btnactualiza.Enabled := True
        else
          btnactualiza.Enabled := False;
      end
      else
      begin
        dbdtfecaut.Enabled := True;
        dblcdmotCADAPS.Enabled := True;
        Label4.Visible := True;
        if Trim(dblcdmotdesapo.Text) = '' then
        begin
          Label4.Visible := False;
          dblcdmotdesapo.Visible := False;
          Panel1.Visible := False;
        end
        else
        begin
          Label4.Visible := True;
          dblcdmotdesapo.Visible := True;
          Panel1.Visible := True;
        end;
        BitAutDes.Enabled := True;
        If Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03' Then
          btnactualiza.Enabled := True
        else
          btnactualiza.Enabled := False;
        btnactualiza.Enabled := False;
      end;
    END
    ELSE
    BEGIN
      IF (DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), DM1.sAPO201, 'AUTDESAPO') = 'S') THEN
      begin
        Label4.Visible := False;
        dblcdmotdesapo.Visible := False;
        Panel1.Visible := False;
      end
      else
      begin
        Label4.Visible := True;
        dblcdmotdesapo.Visible := True;
        Panel1.Visible := True;
      end;
      dbdtfecaut.Enabled := false;
      BitAutDes.Enabled := False;
      btnactualiza.Enabled := False;
    END;
  END
  ELSE
  BEGIN
    dbdtfecaut.Enabled := false;
    BitAutDes.Enabled := False;
    btnactualiza.Enabled := False;
  END;

  if (sFirmaCarta = 'S') AND (Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03') then
  begin
    BitAutDes.Enabled := true;
  end;
  //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC

  if sConsulta = 'S' then
    Begin
       gbgrupo.Enabled := False;
       dblcdmotdesapo.Enabled := False;
       Panel1.Enabled := False;
    end
  else
    Begin
       gbgrupo.Enabled := True;
    End;
end;

Procedure TFautdes.btnactualizaClick(Sender: TObject);
Var Boton:Integer;
  xSQL, xCodReg, xAsoId,xmsg1,xmsg2:String;
Begin
  xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
  IF DM1.xautdes='A' then
     Begin
       xmsg1:='Por favor seleccione el motivo por el cual el asociado'+#13+'desautoriza su descuento de aporte';
       xmsg2:='Se ha registrado la desautorización de descuento de aportes';
     End
  Else
     Begin
       xmsg1:='Por favor seleccione el motivo por el cual el asociado'+#13+'desautoriza su descuento de cuotas';
       xmsg2:='Se ha registrado la desautorización de descuento de cuotas';
     End;

  If Trim(dblcdmotdesapo.Text) = '' Then
   Begin
     MessageDlg(xmsg1, mtConfirmation, [mbOk], 0);

   End;

  TRY
    FConfirmaDesautDcto := TFConfirmaDesautDcto.Create(Self);
    FConfirmaDesautDcto.ShowModal;
    if FConfirmaDesautDcto.CODMOTDEST <> '' then
    begin
      dblcdmotdesapo.Text := FConfirmaDesautDcto.CODMOTDEST;
    end
    else
    begin
      exit;
    end;
  FINALLY
    FConfirmaDesautDcto.Free;
  END;

  Label4.Visible := True;
  dblcdmotdesapo.Visible := True;
  Panel1.Visible := True;

  // Se añade el campo de motivo de la autorización de descuento de aportes
  // Al momento de actualizar la carta CADAPS
  IF DM1.xautdes='A' then

     Begin
       xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESAPO=NULL, FECREGAUTDESAPO = NULL, FECAUTDESAPO=NULL, USUREGAUTDESAPO=NULL, OFIREGAUTDESAPO=NULL, CODMODAUTDESAPO=NULL, CODMOTAUTCADAPS = NULL, CODMOTDESTAPO = '+QuotedStr(dblcdmotdesapo.Text)+' WHERE ASOID = '+QuotedStr(xAsoId);
     End
  Else
     Begin
       xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESCUO=NULL, FECAUTDESCUO=NULL, USUREGAUTDESCUO=NULL, OFIREGAUTDESCUO=NULL, CODMODAUTDESCUO=NULL, CODMOTAUTCADAPS = NULL, CODMOTDESTCUO = '+QuotedStr(dblcdmotdesapo.Text)+' WHERE ASOID = '+QuotedStr(xAsoId);
     End;

  If DM1.xautdes='A' then
     Boton := Application.MessageBox ('¿Desea quitar la autorización de descuento de aportes?', 'Desautorización de descuento de aportes',MB_YESNO+MB_ICONQUESTION)
  Else
     Boton := Application.MessageBox ('¿Desea quitar la autorización de descuento de cuotas?', 'Desautorización de descuento de cuotas',MB_YESNO+MB_ICONQUESTION);

  If Boton = ID_YES Then
  Begin
    Screen.Cursor:=crHourGlass;
    xCodReg := DM1.CodReg;
    DM1.Registro_Aud(xAsoId,'0',xCodReg);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.Registro_Aud(xAsoId,'1',xCodReg);
    xSQL:='UPDATE APOSINCARTA SET AUTODESC='+QuotedStr('S')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    Screen.Cursor:=crDefault;
    MessageDlg(xmsg2, mtConfirmation, [mbOk], 0);
  End;
  Fautdes.Close;
End;

procedure TFautdes.btncerrarClick(Sender: TObject);
begin
   Fautdes.Close;
end;

procedure TFautdes.dblcdmotdesapoChange(Sender: TObject);
begin
  If DM1.cdsReclamoMotiv.Locate('CODMOTDEST',dblcdmotdesapo.Text,[]) then
    edtdesaut.Text := DM1.cdsReclamoMotiv.FieldByName('DESMOTDES').asstring
  Else
    edtdesaut.Text := '';
end;

procedure TFautdes.BitAutDesClick(Sender: TObject);
var
   Boton : Integer;
   xSQL  : String;
   xCodReg: STRING;
begin

  If Trim(dblcdmotCADAPS.Text) = '' then
  Begin
    MessageDlg('Ingrese el motivo de autorización CADAPS', mtConfirmation, [mbOk], 0);
    dblcdmotCADAPS.SetFocus;
    Exit;
  End;

  if Trim(dbdtfecaut.Text) = '' then
  begin
    MessageDlg('Ingrese la fecha en la cual el asociado firmó la carta de autorización CADAP', mtConfirmation, [mbOk], 0);
    dbdtfecaut.SetFocus;
    Exit;
  end;


  If MessageDlg('¿Se ha firmado el formato de autorización de descuento y la declaración del asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
     Exit;

  Boton := Application.MessageBox ('¿Autoriza descuento de aportes?','Autorización de descuento de aportes',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
  Begin
    try
      if DM1.cdsAso.fieldbyname('FALLECIDO').AsString <> 'S' then
      begin
        // la actualización se realiza sólo si el Asociado No ha fallecido
        Screen.Cursor := crHourGlass;
        xCodReg := DM1.CodReg;
        DM1.Registro_Aud(DM1.cdsAso.FieldByName('ASOID').AsString, '0', xCodReg);
        // Se actualiza el campo del motivo de autorización de descuento de aportes
        xSQL := 'UPDATE ' + DM1.sAPO201 + ' SET AUTDESAPO = ' + QuotedStr('S') + ', FECAUTDESAPO = ' + QuotedStr(Trim(dbdtfecaut.Text)) + ', FECREGAUTDESAPO = SYSDATE, USUREGAUTDESAPO = ' + QuotedStr(DM1.wUsuario) + ', OFIREGAUTDESAPO = ' + QuotedStr(DM1.xOfiDes) + ', CODMODAUTDESAPO = ''ASO'', CODMOTDESTAPO = NULL, CODMOTAUTCADAPS = '+QuotedStr(dblcdmotCADAPS.Text)+' WHERE ' + DM1.sAso_where + ' ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);

        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        DM1.Registro_Aud(DM1.cdsAso.FieldByName('ASOID').AsString, '1', xCodReg);
        Screen.Cursor := crDefault;
      end;
      xSQL:='UPDATE APOSINCARTA SET AUTODESC='+QuotedStr('N')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);


      // Si es Segunda Vez
      xSQL:='UPDATE APOSINCARTA SET FLG_SEG_FIR='+QuotedStr('S')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND NVL(FLG_SEG_FIR,''N'')=''N''';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      FMantAsociado.sFirmaCarta:='N';
      BitAutDes.Enabled:=False;
      MessageDlg('El registro ha sido actualizado!!!', mtConfirmation, [mbOk], 0);
      Close;
    except
      ShowMessage('Error al grabar. Volver a intentar');
    end;
  end;

end;

function TFautdes.chkdesdesapo(xasoid: String): Boolean;
Var
   xSql:String;

begin
   Result := True;
   // Se verifica si el docente cuenta con créditos vigentes
   xSql := 'SELECT COUNT(*) CREDITOS FROM CRE301 WHERE ASOID = '+QuotedStr(xasoid)+' AND CREESTID IN (''01'',''02'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CREDITOS').AsInteger > 0 Then
   Begin
      MessageDlg('El docente cuenta actualmente con créditos vigentes'#13'No procede la desautorización.', mtConfirmation, [mbOk], 0);
      Result := False;
   End;

end;

procedure TFautdes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFautdes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
end;

procedure TFautdes.dblcdmotdesapoExit(Sender: TObject);
begin
   If Trim(dblcdmotdesapo.Text) = '' Then Exit;
end;

procedure TFautdes.dbdtfecautExit(Sender: TObject);
begin
   If dbdtfecaut.Date <= DM1.FechaSys Then Exit;
   MessageDlg('Fecha de autorización no puede ser mayor a la fecha de hoy.', mtConfirmation, [mbOk], 0);
   dbdtfecaut.SetFocus;
   Exit;
end;

procedure TFautdes.dblcdmotCADAPSExit(Sender: TObject);
begin

  If DM1.cdsAutCADAPS.Locate('CODMOTAUTCADAPS',dblcdmotCADAPS.Text,[]) Then
     edtdesmotCADAPS.Text := DM1.cdsAutCADAPS.FieldByName('DESMOTAUTCADAPS').asstring
  Else
  Begin
     edtdesmotCADAPS.Text := '';
     dblcdmotCADAPS.Text := '';
  End;
end;

procedure TFautdes.BitPrintClick(Sender: TObject);
var xsql, xasoid:String;
begin
   // Se valida que tidpo de asociado esta permitido la impresión del formato
   IF (DM1.cdsAso.fieldbyname('ASOTIPID').AsString <> 'DO') AND ((DM1.cdsAso.fieldbyname('ASOTIPID').AsString <> 'VO')) THEN
   BEGIN
      MessageDlg('Solo asociados activos(DO) y nuevos(VO) tienen acceso a la opción de imprimir.', mtError, [mbCancel], 0);
      Screen.Cursor := crDefault;
      Exit;
   END;
   xasoid  := DM1.cdsAso.FieldByName('ASOID').AsString;
   xsql := 'SELECT A.ASODNI, A.ASOAPENOMDNI, B.USENOM  FROM '+DM1.sAPO201+' A, APO101 B WHERE A.ASOID = '+QuotedStr(xasoid)
   +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ASODNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar el DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los apellidos y nombre(s) del DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('USENOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de UGEL para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   DM1.LlenaDatosPlaUniPag(xasoid);
   DM1.pprPlaAutDesUni.print;
   DM1.pprPlaAutDesUni.Cancel;
   xsql := 'SELECT A.ASODNI, A.ASOAPENOMDNI, B.USENOM, C.UPRONOM, A.ASODIR, A.ZIPID, D.NOMCENEDU, A.ASOFRESNOM, A.ASORESNOM'
   +' FROM '+DM1.sAPO201+' A, APO101 B, APO102 C, ASO_CEN_EDU D'
   +' WHERE A.ASOID = '+QuotedStr(xasoid)+' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)'
   +' AND A.UPROID = C.UPROID(+) AND A.CENEDUID = D.CENEDUID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ASODNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar el DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los apellidos y nombre(s) del DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('UPRONOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de la Unidad de Proceso para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('USENOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de UGEL para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASODIR').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar la dirección domiciliaria para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ZIPID').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar datos del UBIGEO para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('NOMCENEDU').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar nombre del centro educativo para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOFRESNOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar fecha de resolución de nombramiento para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASORESNOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar número de la resolución de nombramiento para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   DM1.LlenaDatosPlaDecAso(xasoid);
   DM1.pprDecAso.print;
   DM1.pprDecAso.Cancel;
end;


end.

//Fin HPC_201801_MAS
