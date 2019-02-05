// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO260F.pas
// Formulario              :  FMantAsociadoCompara
// Fecha de Creación       :  15/05/2018
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Comparación de Datos
// Actualizaciones         :

// HPC_201801_MAS

//Inicio HPC_201801_MAS
unit ASO260F;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Animate, GIFCtrl, sipclient,
  Math, Types, rxgif, jpeg, db, SIPSvc;

type
  TFMantAsociadoCompara = class(TForm)
    pnlComparacion: TPanel;
    lisTCompara: TListView;
    Panel12: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    imgFotoDerrCompara: TImage;
    imgFirmaDerrCompara: TImage;
    GroupBox2: TGroupBox;
    imgFotoRenCompara: TImage;
    imgFirmaRenCompara: TImage;
    procedure lisTComparaCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure imgFotoDerrComparaDblClick(Sender: TObject);
    procedure imgFotoRenComparaDblClick(Sender: TObject);
    procedure imgFirmaDerrComparaDblClick(Sender: TObject);
    procedure imgFirmaRenComparaDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    sDocument:String;
    sLastName1: string;
    sLastName2: string;
    sFirstName: string;
    sMerriedName:String;
    sMotherName:String;
    sFatherName:String;
    sCivilState: string;
    sGender: string;
    sAltDocumentType:String;
    sAltDocument:String;
    sVoteStatus:String;
    sRegisterDate:String;
    sExpeditionDate:String;
    sExpirationDate:String;
    sInstGrade:String;
    sRestrictionCode:String;
    sRestrictionDes:String;
    sAddDepUbigCode:String;
    sDepartmentAddress:String;
    sAddProvUbigCode:String;
    sProvinceAddress:String;
    sAddDistUbigCode:String;
    sDistritAddress:String;
    sAddressUrbPrefix:String;
    sAddressUrbPrefixDes:String;
    sAddressUrb:String;
    sAddPrefix:String;
    sAddPrefixDes:String;
    sAddress:String;
    sAddressEt:String;
    sAddressBlock:String;
    sAddressBlockPrefix:String;
    sAddressBlockPrefixDes:String;
    sAddressInterior:String;
    sAddressIntPrefix:String;
    sAddressIntPrefixDes:String;
    sAddressLt:String;
    sAddressMz:String;
    sAddressNumber:String;
    sBornDate:String;
    sBornDepartmentUbigCode:String;
    sBornDepartment:String;
    sBonrProvinceUbigCode:String;
    sBornProvince:String;
    sBonrDistritUbigCode:String;
    sBornDistrit:String;
    nHeight:Double;
    xdbeLibDni: String;
    xgrabo: string;
    sAsoapepat: String;
    sAsoapepatTIT: String;
    sAsoapemat: String;
    sAsoapematTIT: String;
    sAsoapenom: String;
    sAsoapenomTIT: String;    
    sFlag:String;
    SearchResult: CPersonData2;
    Reg : CPersonData2;
    Photo, Signature     : TByteDynArray;
    bConfirmado: boolean;
    procedure MuestraDatos;
  end;

var
  FMantAsociadoCompara: TFMantAsociadoCompara;
  SearchResult  : PersonDataRecordType;

implementation

uses ASODM, ASO260D;

{$R *.dfm}

procedure TFMantAsociadoCompara.lisTComparaCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 Begin
   if TListItems.ClassNameIs('INFORMACION') THEN
      Begin
       lisTCompara.Canvas.Brush.Color := clBtnFace;
       lisTCompara.Canvas.Font.Color  := $00FF8000;
      End;
 end;
end;

procedure TFMantAsociadoCompara.FormCreate(Sender: TObject);
begin
 If sFlag='R' Then
 Begin
  If (Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) = '') And
     (Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) = '') And
     (Trim(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) = '') Then
    Panel12.Caption := 'Registrar datos de RENIEC. Confirme'
  Else
  Panel12.Caption := 'Existen diferencias en los datos de RENIEC a reemplazar. Confirme.';
 End
 Else Panel12.Caption := 'Existen diferencias en los datos de RENIEC a reemplazar. Confirme.';

 lisTCompara.Column[0].Width := 180;
 lisTCompara.Column[1].Width := 180;
 lisTCompara.Column[2].Width := 180;
 bConfirmado := false;
end;

procedure TFMantAsociadoCompara.MuestraDatos;
var
  fila: TListItem;
 xtmp: String;
begin
   // Documento DNI
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Documento';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASODNI').AsString);
   fila.SubItems.Add(Trim(sDocument));
   // Apellido Paterno
   fila := lisTCompara.Items.Add;
   fila.Caption := sAsoapepatTIT;
   fila.SubItems.Add(sAsoapepat);
   fila.SubItems.Add(Trim(sLastName1));
   // Apellido Materno
   fila := lisTCompara.Items.Add;
   fila.Caption :=  sAsoapematTIT;
   fila.SubItems.Add(sAsoapemat);
   fila.SubItems.Add(Trim(sLastName2));
   // Nombre(s)
   fila := lisTCompara.Items.Add;
   fila.Caption := sAsoapenomTIT;
   fila.SubItems.Add(sAsoapenom);
   fila.SubItems.Add(trim(sFirstName));

   // Apellidos de casada
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Apellidos de casada';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString);
   fila.SubItems.Add(trim(sMerriedName));

   // Estado civil
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Estado civil';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ESTCIVID').AsString+'-'+DM1.CrgDescrip('ESTCIVID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ESTCIVID').AsString)),'TGE125','ESTCIVDES'));
   fila.SubItems.Add(sCivilState+'-'+DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(sCivilState,2)),'TGE125','ESTCIVDES'));
   // Sexo
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Sexo';
   xtmp := '';
   If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' Then xtmp := 'MASCULINO';
   If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'F' Then xtmp := 'FEMENINO';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOSEXO').AsString+'-'+xtmp);
   xtmp := '';
   If sGender = '1' Then xtmp := 'MASCULINO';
   If sGender = '2' Then xtmp := 'FEMENINO';
   fila.SubItems.Add(sGender+'-'+xtmp);
   // Número de otro documento
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Número de otro tipo de documento';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASODOCNUM').AsString);
   fila.SubItems.Add(sAltDocument);

   // Departamento domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Departamento domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2)+'-'+DM1.CrgDescrip('DPTOID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2)),'APO158','DPTODES'));
   fila.SubItems.Add(Trim(sAddDepUbigCode)+'-'+Trim(sDepartmentAddress));
   // Provincia domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Provincia domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,3,2)+'-'+DM1.CrgDescrip('CIUDID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,4)),'APO123','CIUDDES'));
   fila.SubItems.Add(Trim(sAddProvUbigCode)+'-'+Trim(sProvinceAddress));
   // Distrito domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Distrito domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,5,2)+'-'+DM1.CrgDescrip('ZIPID='+QuotedStr(DM1.cdsAso.FieldByName('ZIPID').AsString),'APO122','ZIPDES'));
   fila.SubItems.Add(Trim(sAddDistUbigCode)+'-'+Trim(sDistritAddress));
   // Tipo de Urbanización
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Urbanización';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('CODURBVIV').AsString);
  fila.SubItems.Add(Trim(sAddressUrbPrefix)+'-'+Trim(sAddressUrb));

  fila := lisTCompara.Items.Add;
  fila.Caption := 'Dirección';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('CODTIPLUG').AsString+'-'+DM1.cdsAso.FieldByName('NOMDIRVIV').AsString);
  fila.SubItems.Add(Trim(sAddPrefix)+'-'+Trim(sAddress));

  fila := lisTCompara.Items.Add;
  fila.Caption := 'Etapa';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMETAVIV').AsString+'-'+DM1.cdsAso.FieldByName('DESETAVIV').AsString);
  fila.SubItems.Add(Trim(sAddressEt));

  // Manzana
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Manzana';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMMANVIV').AsString);
  fila.SubItems.Add(sAddressMz);

  // Lote
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Lote';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMLOTVIV').AsString);
  fila.SubItems.Add(sAddressLt);

  // Número de la direcciòn
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Número';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMDIRVIV').AsString);
  fila.SubItems.Add(sAddressNumber);

  // Fecha de nacimiento
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Fecha de nacimiento';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOFECNAC').AsString);
  fila.SubItems.Add(Copy(sBornDate,7,2)+'/'+Copy(sBornDate,5,2)+'/'+Copy(sBornDate,1,4));

end;

procedure TFMantAsociadoCompara.imgFotoDerrComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.imgFotoRenComparaDblClick(Sender: TObject);
begin
  try
    FMantAsociadoZoom := TFMantAsociadoZoom.create(self);
    FMantAsociadoZoom.imgDerramaFoto.Picture := imgFotoDerrCompara.Picture;
    FMantAsociadoZoom.imgDerramafirma.Picture := imgFirmaDerrCompara.Picture;
    FMantAsociadoZoom.imgReniecFoto.Picture := imgFotoRenCompara.Picture;
    FMantAsociadoZoom.imgReniecFirma.Picture := imgFirmaRenCompara.Picture;
    FMantAsociadoZoom.ShowModal;
  finally
    FMantAsociadoZoom.Free;
  end
end;

procedure TFMantAsociadoCompara.imgFirmaDerrComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.imgFirmaRenComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.BitBtn1Click(Sender: TObject);
begin
  bConfirmado := true;
  self.Close;
end;

end.
//Fin HPC_201801_MAS
