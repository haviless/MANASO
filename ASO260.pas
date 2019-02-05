// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO260.pas
// Formulario            : FMantAsociado
// Fecha de Creación     : 15/05/2018
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Mantenimiento de Asociados
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS
UNIT ASO260;

INTERFACE

USES
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, StdCtrls, Buttons,
   wwdblook, wwdbdatetimepicker, Mask, wwdbedit, ComCtrls, InvokeRegistry, Rio,
   SOAPHTTPClient, xmldom, types, rxgif, jpeg, Grids, ValEdit, DB, DBClient,
   Wwdbigrd, Wwdbgrid, Animate, GIFCtrl, fcLabel, ppBands, ppCtrls,
   ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
   ppDBPipe, ppDBBDE, ppBarCod, IdBaseComponent, IdComponent,
   IdTCPConnection, IdTCPClient, IdFTP, IniFiles, ppStrtch, ppSubRpt,
   Wwdatsrc, wwclient, DBGrids, ppEndUsr, ppParameter, Wwdbdlg,
   WSUbicabilidad, XSBuiltIns, ImageDLLLoader, LinarBitmap, ExtDlgs, FileUtils, SIPSvc, SIPSvcUTIL, ICOLoader, JPEGLoader, PNGLoader, HIPSLoader, BMPLoader, PCXLoader, WMFLoader, ppVar;
TYPE

   TFMantAsociado = CLASS(TForm)
      bFirma: TBevel;
      ImaFirma: TImage;
      bFoto: TBevel;
      ImagAso: TImage;
      Shape1: TShape;
      lblAsoApeNom: TLabel;
      Shape7: TShape;
      Shape8: TShape;
      Label36: TLabel;
      Label37: TLabel;
      lblFallecido: TfcLabel;
      bitImpReniec: TBitBtn;
      gbIdentidadAso: TGroupBox;
      Label6: TLabel;
      Label16: TLabel;
      Label24: TLabel;
      Label25: TLabel;
      Label26: TLabel;
      Label14: TLabel;
      Label1: TLabel;
      Label5: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dbeLibDni: TwwDBEdit;
      dbeTel1: TwwDBEdit;
      dbeTel2: TwwDBEdit;
      Panel14: TPanel;
      dbeSexo: TwwDBEdit;
      Panel18: TPanel;
      edtanos: TwwDBEdit;
      btnActualizaReniec: TfcShapeBtn;
      pnlRENIEC1: TPanel;
      EdtApePatDni: TwwDBEdit;
      EdtApeMatDni: TwwDBEdit;
      EdtAsoNomDni: TwwDBEdit;
      pnlRENIEC2: TPanel;
      dbdtFecNac: TwwDBDateTimePicker;
      pnlRENIEC3: TPanel;
      DbLlSexo: TwwDBLookupCombo;
      btnactdir: TBitBtn;
      Panel19: TPanel;
      dbeDirec: TwwDBEdit;
      Panel1: TPanel;
      lkcDpto: TwwDBLookupCombo;
      edtDpto: TEdit;
      Panel2: TPanel;
      lkcProv: TwwDBLookupCombo;
      edtProv: TEdit;
      Panel3: TPanel;
      lkcDist: TwwDBLookupCombo;
      edtDist: TEdit;
      gbLaboralAso: TGroupBox;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      lblResNom: TLabel;
      lblFecNom: TLabel;
      lblResCes: TLabel;
      lblFecCes: TLabel;
      Label15: TLabel;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      Label43: TLabel;
      msgReingreso: TLabel;
      DbLlTipAso: TwwDBLookupCombo;
      Panel10: TPanel;
      edtTipAso: TEdit;
      DbLlRegPen: TwwDBLookupCombo;
      Panel7: TPanel;
      edtRegPen: TEdit;
      DbLlAfp: TwwDBLookupCombo;
      Panel8: TPanel;
      EdtAfp: TEdit;
      pnlResoluciones: TPanel;
      dbeNroRes: TwwDBEdit;
      DBDTResNom: TwwDBDateTimePicker;
      dbeNroCes: TwwDBEdit;
      DBDTResCes: TwwDBDateTimePicker;
      DbLUniPro: TwwDBLookupCombo;
      Panel9: TPanel;
      dbeUproDes: TwwDBEdit;
      Panel4: TPanel;
      dbeUpagDes: TwwDBEdit;
      DbLUses: TwwDBLookupCombo;
      Panel5: TPanel;
      dbeUses: TwwDBEdit;
      measodeslab: TwwDBEdit;
      measotellab: TwwDBEdit;
      measodirlab: TwwDBEdit;
      lkcDpto2: TwwDBLookupCombo;
      lkcProv2: TwwDBLookupCombo;
      lkcDist2: TwwDBLookupCombo;
      DbLUniPag: TwwDBLookupCombo;
      pnlCodMod: TPanel;
      EdtCodMod: TwwDBEdit;
      Panel15: TPanel;
      edtTipBen: TEdit;
      lblPrefente: TLabel;
      pnlControl: TPanel;
      Shape2: TShape;
      BitReasignacion: TBitBtn;
      BitResol: TBitBtn;
      BitCuentas: TBitBtn;
      BitSocio: TBitBtn;
      BitPrest: TfcShapeBtn;
      BitMstApo: TfcShapeBtn;
      BitModifica: TBitBtn;
      BitAutDes: TBitBtn;
      BitGrabar: TBitBtn;
      BitVerifica: TBitBtn;
      BitSalir: TBitBtn;
      btnObservacion: TBitBtn;
      BitFichaAso: TBitBtn;
      bbtnN3: TBitBtn;
      bbtnCarta: TBitBtn;	
      pnlEstado: TPanel;
      lblEstado: TLabel;
      bbtnN1: TBitBtn;
      bitAutoriza: TfcShapeBtn;
      bitRechaza: TfcShapeBtn;
      Timer1: TTimer;
      CDSVALIDA: TClientDataSet;
      DSVALIDA: TDataSource;
      ppBDEReniec: TppBDEPipeline;
      ppRReniec: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppShape41: TppShape;
      ppLabel21: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppShape31: TppShape;
      ppShape28: TppShape;
      ppShape26: TppShape;
      ppShape21: TppShape;
      ppShape4: TppShape;
      ppShape3: TppShape;
      ppShape1: TppShape;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppShape5: TppShape;
      ppShape6: TppShape;
      ppShape7: TppShape;
      ppShape8: TppShape;
      ppShape9: TppShape;
      ppShape10: TppShape;
      ppShape11: TppShape;
      ppShape12: TppShape;
      ppShape13: TppShape;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppShape14: TppShape;
      ppShape15: TppShape;
      ppShape16: TppShape;
      ppShape17: TppShape;
      ppShape18: TppShape;
      ppShape19: TppShape;
      ppShape20: TppShape;
      ppShape22: TppShape;
      ppShape23: TppShape;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppShape24: TppShape;
      ppShape25: TppShape;
      ppShape27: TppShape;
      ppShape32: TppShape;
      ppShape33: TppShape;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppShape34: TppShape;
      ppShape35: TppShape;
      ppShape36: TppShape;
      ppShape37: TppShape;
      ppShape38: TppShape;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppShape2: TppShape;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText15: TppDBText;
      ppDBText17: TppDBText;
      ppDBText19: TppDBText;
      ppFirma: TppImage;
      ppFooterBand1: TppFooterBand;
      PPR1: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      ppShape42: TppShape;
      ppDBBarCode1: TppDBBarCode;
      ppLabel22: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel30: TppLabel;
      ppLabel56: TppLabel;
      ppLabel58: TppLabel;
      ppMaquina: TppLabel;
      ppLabel80: TppLabel;
      pplCodMod: TppLabel;
      ppLApePat: TppLabel;
      ppLApeMat: TppLabel;
      ppLNombres: TppLabel;
      ppLDni: TppLabel;
      ppLFecNac: TppLabel;
      ppLsexo: TppLabel;
      pptelefono: TppLabel;
      ppLAsoCenLab: TppLabel;
      ppUsuario: TppLabel;
      ppLabel82: TppLabel;
      ppLabel84: TppLabel;
      ppFechaHora: TppLabel;
      ppLAsodir: TppLabel;
      ppLabel29: TppLabel;
      ppLUbigeoDir: TppLabel;
      ppLAsoDirLab: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLUbigeoLab: TppLabel;
      ppLabel33: TppLabel;
      ppImage2: TppImage;
      ppLine1: TppLine;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel43: TppLabel;
      ppLine3: TppLine;
      ppLabel44: TppLabel;
      ppLine4: TppLine;
      ppShape50: TppShape;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppShape51: TppShape;
      ppShape52: TppShape;
      ppShape53: TppShape;
      ppShape94: TppShape;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppShape95: TppShape;
      ppShape96: TppShape;
      ppShape97: TppShape;
      ppLabel55: TppLabel;
      ppLabel57: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppShape98: TppShape;
      ppShape99: TppShape;
      ppShape100: TppShape;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppShape101: TppShape;
      ppLine9: TppLine;
      ppLabel65: TppLabel;
      ppShape54: TppShape;
      ppLabel66: TppLabel;
      ppShape55: TppShape;
      ppShape70: TppShape;
      ppLabel68: TppLabel;
      lblUniPro: TppLabel;
      lblUgel: TppLabel;
      lblCodPag: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLabel79: TppLabel;
      ppLabel81: TppLabel;
      ppLabel83: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppLabel87: TppLabel;
      ppLabel88: TppLabel;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      pplestciv: TppLabel;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppShape46: TppShape;
      ppLabel96: TppLabel;
      ppShape47: TppShape;
      ppLabel97: TppLabel;
      ppShape48: TppShape;
      ppLDNIFLAG: TppLabel;
      ppLCarnetExtFlag: TppLabel;
      ppLCarnetIdentFlag: TppLabel;
      ppLabel100: TppLabel;
      ppLabel101: TppLabel;
      ppLCtaAhorro: TppLabel;
      ppLabel102: TppLabel;
      ppLine6: TppLine;
      ppLabel98: TppLabel;
      ppLabel99: TppLabel;
      ppLabel103: TppLabel;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppLTelefonoRef: TppLabel;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLAsoTelLab: TppLabel;
      ppLabel108: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLabel113: TppLabel;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLabel114: TppLabel;
      ppLine10: TppLine;
      ppImgfoto: TppImage;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLgrado2: TppLabel;
      ppLgrado3: TppLabel;
      ppLgrado4: TppLabel;
      ppLgrado5: TppLabel;
      ppLCondViv2: TppLabel;
      ppLCondViv1: TppLabel;
      ppLCondViv3: TppLabel;
      ppLPropie1: TppLabel;
      ppLPropie2: TppLabel;
      ppLPropie3: TppLabel;
      ppLNegocioNo: TppLabel;
      ppLNegocioSi: TppLabel;
      ppLNroHijos: TppLabel;
      ppLInmueble: TppLabel;
      ppLine5: TppLine;
      ppLabel117: TppLabel;
      ppLabel23: TppLabel;
      ppLabel39: TppLabel;
      ppLabel67: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLFResCes: TppLabel;
      ppLResCes: TppLabel;
      ppLabel72: TppLabel;
      ppLFResNom: TppLabel;
      ppLResNom: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel71: TppLabel;
      ppLabel75: TppLabel;
      ppLabel109: TppLabel;
      ppLabel110: TppLabel;
      ppShape49: TppShape;
      ppShape56: TppShape;
      ppLDOFlag: TppLabel;
      ppLCEFlag: TppLabel;
      ppLabel38: TppLabel;
      ppLabel40: TppLabel;
      ppShape43: TppShape;
      ppLabel41: TppLabel;
      ppShape44: TppShape;
      ppLabel42: TppLabel;
      ppShape45: TppShape;
      ppLine2: TppLine;
      ppLRegPen1: TppLabel;
      ppLRegPen2: TppLabel;
      ppLRegPen3: TppLabel;
      pplAFP: TppLabel;
      ppLabel118: TppLabel;
      ppLabel119: TppLabel;
      pplVerificaReniec: TppLabel;
      pplEstadocta: TppLabel;
      ppLabel120: TppLabel;
      ppShape57: TppShape;
      ppLabel121: TppLabel;
      ppLabel122: TppLabel;
      ppLabel123: TppLabel;
      ppShape58: TppShape;
      ppLine11: TppLine;
      pplVehiculoNo: TppLabel;
      pplVehiculoSi: TppLabel;
      pplVehiculo: TppLabel;
      ppImgFrima: TppImage;
      ppLabel124: TppLabel;
      pplDatIncompletos: TppLabel;
      pplSinFot: TppLabel;
      pplSinFirma: TppLabel;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLabel125: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText21: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLMaquina: TppLabel;
      ppLabel127: TppLabel;
      ppLusuario: TppLabel;
      ppLabel129: TppLabel;
      ppLabel130: TppLabel;
      ppLFechaHora: TppLabel;
      ppLine12: TppLine;
      pplAsoEmail: TppLabel;
      ppSummaryBand2: TppSummaryBand;
      PPDBP1: TppBDEPipeline;
      CDSLISRENIEC: TwwClientDataSet;
      DSLISRENIEC: TwwDataSource;
      PPR2: TppReport;
      ppdb1: TppDBPipeline;
      CDSINCOMPLETOS: TClientDataSet;
      DSINCOMPLETOS: TDataSource;
      CDSOBSSINRESOLVER: TClientDataSet;
      DSOBSSINRESOLVER: TDataSource;
      pnlPrefente: TPanel;
      ppFoto: TppImage;
      BitBtn6: TBitBtn;
      dbeCenEduId: TwwDBEdit;
      Label27: TLabel;
      edtDpto2: TEdit;
      edtProv2: TEdit;
      edtDist2: TEdit;
    ppd3: TppDesigner;
    ppR3: TppReport;
    ppParameterList2: TppParameterList;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppShape59: TppShape;
    ppLabel126: TppLabel;
    ppLabel128: TppLabel;
    ppLabel131: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLCodMod2: TppLabel;
    pplapepat2: TppLabel;
    pplapemat2: TppLabel;
    ppLNombres2: TppLabel;
    ppLDNI2: TppLabel;
    ppLFecNac2: TppLabel;
    ppLSEXO2: TppLabel;
    ppLTelefono2: TppLabel;
    ppLAsoCenLab2: TppLabel;
    ppLAsodir2: TppLabel;
    ppLabel148: TppLabel;
    ppLUbigeoDir2: TppLabel;
    ppLAsoDirLab2: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLUbigeoLab2: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel161: TppLabel;
    ppLGradoInst2: TppLabel;
    ppLabel166: TppLabel;
    ppLUniPro2: TppLabel;
    ppLUgel2: TppLabel;
    ppLCodPag2: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLEstCiv2: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLCtaAhorros2: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLTelefonoRef2: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLTelfCol2: TppLabel;
    ppLabel206: TppLabel;
    ppLine16: TppLine;
    ppImgfoto2: TppImage;
    ppLabel209: TppLabel;
    ppLTipAso2: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLFResCes2: TppLabel;
    ppLResCes2: TppLabel;
    ppLFResNom2: TppLabel;
    ppLResNom2: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel232: TppLabel;
    ppLTipoPension2: TppLabel;
    ppLAFP2: TppLabel;
    ppLEstCta2: TppLabel;
    ppLSINFOT2: TppLabel;
    ppLSINFIRMA2: TppLabel;
    ppLEmail: TppLabel;
    ppLmaquina_2: TppLabel;
    ppLabel249: TppLabel;
    ppLUsuario_2: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLFechaHora_2: TppLabel;
    ppLabel255: TppLabel;
    ppLCondicionViv2: TppLabel;
    ppLabel267: TppLabel;
    ppShape81: TppShape;
    ppLabel268: TppLabel;
    ppShape82: TppShape;
    ppLabel271: TppLabel;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLabel282: TppLabel;
    ppImage4: TppImage;
    ppLabel290: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel291: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLMaquina_3: TppLabel;
    ppLabel293: TppLabel;
    ppLusuario_3: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLFechaHora_3: TppLabel;
    ppLine24: TppLine;
    pplValReniec: TppLabel;
    ppLabel132: TppLabel;
    ppLabel177: TppLabel;
    ppLabel160: TppLabel;
    ppLine13: TppLine;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    pplDatIncompletos2: TppLabel;
    pplblFallecido: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    edtEstadoCivil: TwwDBEdit;
    Label28: TLabel;
    ppHeaderBand5: TppHeaderBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDetailBand7: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText23: TppDBText;
    ppDBText27: TppDBText;
    ppDBText11: TppDBText;
    ppDBText6: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDesigner1: TppDesigner;
    dbeProp1: TwwDBEdit;
    dbeProp2: TwwDBEdit;
    btnacttel: TBitBtn;
    btnCtaIndividual: TfcShapeBtn;
    BitFonSol: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    ppLabel143: TppLabel;
    ppShape64: TppShape;
    ppDBText29: TppDBText;
    ppShape65: TppShape;
    ppLabel144: TppLabel;
    ppShape66: TppShape;
    ppDBText30: TppDBText;
    ppShape67: TppShape;
    pplDocAltRepRen: TppLabel;
    ppShape68: TppShape;
    ppLabel146: TppLabel;
    ppShape69: TppShape;
    ppShape71: TppShape;
    ppDBText31: TppDBText;
    pplEstCivRepRen: TppLabel;
    pplSexoRepRen: TppLabel;
    pplEstVotRepRen: TppLabel;
    pplGraInsRepRen: TppLabel;
    pplResRepRen: TppLabel;
    ppShape72: TppShape;
    ppLabel145: TppLabel;
    ppShape73: TppShape;
    pplLugDomRepRen: TppLabel;
    ppLabel17: TppLabel;
    ppShape29: TppShape;
    ppShape30: TppShape;
    pplPreUrbImpRen: TppLabel;
    ppLabel20: TppLabel;
    ppShape39: TppShape;
    pplDesUrbImpRen: TppLabel;
    ppShape40: TppShape;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppLabel141: TppLabel;
    ppShape63: TppShape;
    pplPreDirImpRen: TppLabel;
    ppLabel147: TppLabel;
    pplDesDirImpRen: TppLabel;
    ppLabel142: TppLabel;
    ppShape74: TppShape;
    pplEtaDirImpRen: TppLabel;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppShape77: TppShape;
    pplPreBloImpRen: TppLabel;
    ppShape78: TppShape;
    pplDesBloImpRen: TppLabel;
    ppShape79: TppShape;
    ppShape80: TppShape;
    ppShape83: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppLabel153: TppLabel;
    ppLabel162: TppLabel;
    pplPreIntImpren: TppLabel;
    pplDesIntImpRen: TppLabel;
    ppShape86: TppShape;
    ppShape87: TppShape;
    ppLabel163: TppLabel;
    pplNumDirImpRen: TppLabel;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppShape91: TppShape;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    pplManImpren: TppLabel;
    pplLotImpren: TppLabel;
    ppImage1: TppImage;
    Label30: TLabel;
    PnlRENIEC1B: TPanel;
    EdtApeCasDni: TwwDBEdit;
    BitFoto: TPanel;
    ImageBoton: TImage;
    edtEstBen: TEdit;
    btnHojaCargoExpediente: TBitBtn;
    pprHojaCargoExp: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage3: TppImage;
    ppLabel190: TppLabel;
    ppLblCodCarExp: TppLabel;
    ppLblTitular: TppLabel;
    pplblDNI: TppLabel;
    pplblTelefonos: TppLabel;
    pplblCorreo: TppLabel;
    pplblFechaHora: TppLabel;
    pplblUsuario: TppLabel;
    pplblOficina: TppLabel;
    ppLabel208: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel184: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine14: TppLine;
    ppLabel195: TppLabel;
    bgHojaCargoExp: TGroupBox;
    lblHojaCargoExpFecha: TLabel;
    lblHojaCargoExpUsuario: TLabel;
    ppLabel202: TppLabel;
    Label22: TLabel;
    dbeCodPag: TwwDBEdit;
    Label31: TLabel;
    pnlCtaTeleAhorro: TPanel;
    dbeCuenta: TwwDBEdit;
    Label23: TLabel;
    Panel17: TPanel;
    dbeSitCta: TwwDBEdit;
    Label52: TLabel;
    Panel20: TPanel;
    dbeCargo: TwwDBEdit;
    Label50: TLabel;
    dbeAsoEmail: TwwDBEdit;
    Label29: TLabel;
    dblcdCodLeyPen: TwwDBLookupCombo;
    edtCodLeyPen: TwwDBEdit;
    lblCodPensionistaTit: TLabel;
    edtCodPensionista: TwwDBEdit;
    Label32: TLabel;
    dblcdCodPrestacion: TwwDBLookupCombo;
    edtdesprestacion: TwwDBEdit;
    pplfechahoraimpresion: TppLabel;
    dblTipDoc: TwwDBLookupCombo;
    edtTipDoc: TEdit;
    pnlRENIEC4: TPanel;
    edtnumdoc: TEdit;
    dblEstadoCivil: TwwDBLookupCombo;
    btnAsignarRegalo: TBitBtn;
    pnlRegPension: TPanel;
    pnlCodPension: TPanel;
    lblversion: TLabel;
      PROCEDURE BitPrestClick(Sender: TObject);
      PROCEDURE BitMstApoClick(Sender: TObject);
      PROCEDURE BitModificaClick(Sender: TObject);
      PROCEDURE BitAutDesClick(Sender: TObject);
      PROCEDURE BitGrabarClick(Sender: TObject);
      PROCEDURE FormActivate(Sender: TObject);
      PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
      PROCEDURE FormCreate(Sender: TObject);
      PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
      PROCEDURE DbLlSexoChange(Sender: TObject);
      PROCEDURE DbLlTipAsoChange(Sender: TObject);
      PROCEDURE lkcDptoChange(Sender: TObject);
      PROCEDURE lkcProvChange(Sender: TObject);
      PROCEDURE lkcDistChange(Sender: TObject);
      PROCEDURE DbLlRegPenChange(Sender: TObject);
      PROCEDURE DbLlRegPenExit(Sender: TObject);
      PROCEDURE DbLlAfpChange(Sender: TObject);
      PROCEDURE DbLUniProChange(Sender: TObject);
      PROCEDURE DbLUniPagChange(Sender: TObject);
      PROCEDURE DbLUsesChange(Sender: TObject);
      PROCEDURE lkcDpto2Change(Sender: TObject);
      PROCEDURE lkcProv2Change(Sender: TObject);
      PROCEDURE lkcDist2Change(Sender: TObject);
      PROCEDURE BitResolClick(Sender: TObject);
      PROCEDURE BitCuentasClick(Sender: TObject);
      PROCEDURE BitSocioClick(Sender: TObject);
      PROCEDURE dbeUproDesChange(Sender: TObject);
      PROCEDURE dbeUpagDesChange(Sender: TObject);
      PROCEDURE edtDptoChange(Sender: TObject);
      PROCEDURE edtProvChange(Sender: TObject);
      PROCEDURE edtDpto2Change(Sender: TObject);
      PROCEDURE edtProv2Change(Sender: TObject);
      PROCEDURE BitSalirClick(Sender: TObject);
      PROCEDURE dbdtFecNacChange(Sender: TObject);
      PROCEDURE dbdtFecNacExit(Sender: TObject);
      PROCEDURE Ingresomax();
      PROCEDURE EdtCodModExit(Sender: TObject);
      PROCEDURE ImageBotonClick(Sender: TObject);
      PROCEDURE BitReasignacionClick(Sender: TObject);
      PROCEDURE BitVerificaClick(Sender: TObject);
      PROCEDURE btnActualizaReniecClick(Sender: TObject);
      PROCEDURE Timer1Timer(Sender: TObject);
      PROCEDURE btnObservacionClick(Sender: TObject);
      PROCEDURE DBDTResCesExit(Sender: TObject);
      PROCEDURE dbeLibDniExit(Sender: TObject);
      PROCEDURE GrabacionXX();
      PROCEDURE Grabacion2();
      PROCEDURE bitImpReniecClick(Sender: TObject);
      PROCEDURE BitFichaAsoClick(Sender: TObject);
      PROCEDURE DbLlTipAsoExit(Sender: TObject);
      PROCEDURE Button10Click(Sender: TObject);
      PROCEDURE btnactdirClick(Sender: TObject);
      PROCEDURE dbeTel1Enter(Sender: TObject);
      PROCEDURE dbeTel2Enter(Sender: TObject);
      PROCEDURE bitAutorizaClick(Sender: TObject);
      PROCEDURE bitRechazaClick(Sender: TObject);
      FUNCTION validaAsoDniNuevo(xDni: STRING): boolean;
      PROCEDURE bbtnN3Click(Sender: TObject);
      PROCEDURE bbtnCartaClick(Sender: TObject);
      PROCEDURE bbtnN1Click(Sender: TObject);
      PROCEDURE fcShapeBtn1Click(Sender: TObject);
      PROCEDURE BitBtn6Click(Sender: TObject);
      procedure FechaFall;
    procedure btnacttelClick(Sender: TObject);
    procedure edtCodPensionistaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCtaIndividualClick(Sender: TObject);
    procedure BitFonSolClick(Sender: TObject); 
    procedure dbeAsoEmailExit(Sender: TObject);
    procedure dbeCodPagExit(Sender: TObject);
    procedure dblcdCodPrestacionExit(Sender: TObject);
    procedure dblcdCodLeyPenExit(Sender: TObject);
    procedure btnHojaCargoExpedienteClick(Sender: TObject);
    procedure pprHojaCargoExpPrintDialogCreate(Sender: TObject);
    procedure dblTipDocChange(Sender: TObject);
    procedure edtnumdocKeyPress(Sender: TObject; var Key: Char);
    procedure edtnumdocExit(Sender: TObject);
    procedure btnAsignarRegaloClick(Sender: TObject);
   Private
    { Private declarations }
      FUNCTION MaxNroItem(xAsoId: STRING): STRING;
      FUNCTION validaAsoDni(xDni: STRING): boolean;
      PROCEDURE ActivaFoco;
      PROCEDURE GrabaArchivo(xImage: TByteDynArray; NomArchivo: STRING);
      PROCEDURE GrabaLogImpFicha();
      PROCEDURE CargaMemStreamImg();
      PROCEDURE LlenaComparacion(xAsoDni,xflag:String) ;
      PROCEDURE LlenaConfirmacion(xAsoDni:String);
      PROCEDURE llenaCamposValida;
      PROCEDURE VerificaCamposValidados();
      PROCEDURE ValAsoPrev(xnombres: STRING);
      FUNCTION GrabaApo201: Boolean;
      FUNCTION ActDatReniec(xAsoDni: STRING): Boolean;
      PROCEDURE DeGifJpg(xGif, xJpg: STRING);
      PROCEDURE btnconfirmaClick(Sender: TObject);
      PROCEDURE GrabafotoAtabla(xDni: STRING);
      Procedure BorraFotos; 
      Function Validacionautomatica(xDNi,xAsoid:String):Boolean;
      Procedure GrabaValidacion();
      procedure fn_muestra_msj_hoja_cargo_exp(psAsoid: string);
      Function estadocivil(xestado: String):String;
      Procedure editaRENIEC();
      Function GrabaApo201NO_DNI: Boolean;
      Function validaNumerodoc(xnumerodoc:String):Boolean;
   Public
    { Public declarations }
      xsinvalidar: integer;
      edtanos2, xReniec, xgrabo, xvalido, xYaGrabe: STRING;
      SearchResult: CPersonData2;
      Photo, Signature: TByteDynArray;
      FindByDocumentResult: Int64;
      Reg : CPersonData2;
      sFirmaCarta: STRING;
      Cargado: boolean;
      xusuRENIEC,xActRENIEC : String;
      xTIPDOCCOD : String;
      Procedure Apo201_NueCLi();      
      PROCEDURE SetTabla(sTabla: STRING);
      PROCEDURE pintaCamposValidados(xform: tform);
      PROCEDURE Registro_Aud(xAsoId, xSecuencia, xCodReg: STRING);
      FUNCTION CodReg(): STRING;
      PROCEDURE VerificaSinData(xVerData, xfaltante: STRING);
      FUNCTION VerifGraba(): Boolean;
      PROCEDURE DesactivaPantPrincipal;
      PROCEDURE ActivaPantPrincipal;
      PROCEDURE FichaActualizacion();
      PROCEDURE FichaActualizacion2();
      PROCEDURE ObsSinResolver(xasoid: STRING);
      PROCEDURE validar();
      PROCEDURE ModiDestinofTickes();
      PROCEDURE ExisteSolicitud;
      PROCEDURE ActivaSalir;
      FUNCTION AsignaSolicitud: STRING;
      FUNCTION AsignaAsoId: STRING;
      PROCEDURE CargaImagenes;
      PROCEDURE CargaFicha;
      PROCEDURE ActualizaColegios;
      FUNCTION emailValido(CONST Value: String): boolean;
      FUNCTION CheckAllowed(CONST s: String): boolean;
      PROCEDURE ValidarAsignarRegalo;
   END;


VAR
   FMantAsociado: TFMantAsociado;
   SearchResult: CPersonData2;
   ISipObj : ISIPService;
   xModifDNI: boolean;
   xInsertaTicket : boolean;

CONST
   MARGEN = 8; //8 Pixels

IMPLEMENTATION


USES  ASODM, DateUtils,  Math,
  ASO908,  ASO936, ASO260J, ASO260H, ASO916, ASO958B,ASO964,ASO938,ASO943,ASO260C,
  ASO958D, ASO260G, ASO260F, ASO260E, ASO907, ASO903B, PRE295, ASO261,ASO260K,ASO959,
  ASO957, ASO260I, ASO900, ASO944, ASO948, ASO260A,ASO260N;
{$R *.dfm}

PROCEDURE TFMantAsociado.SetTabla(sTabla: STRING);
BEGIN
   DM1.sAPO201 := sTabla;
END;

PROCEDURE TFMantAsociado.ActivaSalir;
BEGIN
   gbIdentidadAso.Enabled := False;
   gbLaboralAso.Enabled := False;
   pnlRegPension.Enabled := False;
   pnlCodPension.Enabled := False;
   BitReasignacion.Visible := False;
   BitResol.Visible := False;
   BitCuentas.Visible := False;
   BitSocio.Visible := False;
   BitModifica.Visible := False;
   BitGrabar.Visible := False;
   BitVerifica.Visible := False;
   BitPrest.Visible := False;
   BitMstApo.Visible := False;
   BitAutDes.Visible := False;
   bbtnCarta.Visible := False;
END;
FUNCTION TFMantAsociado.GrabaApo201: Boolean;
Var xAsoApeNomDni,xsql:String;
BEGIN
   xAsoApeNomDni := '';
   If Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString)+ ' ';
   If Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString)+ ' ';
   If Trim(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString)+ ' ';
   xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASONOMDNI').AsString);
   XSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ' +
      '      ASOAPENOM   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
      '      ASOAPEPAT   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEPAT').AsString) + ',' +
      '      ASOAPEMAT   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEMAT').AsString) + ',' +
      '      ASOAPECASDNI =' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString) + ',' +
      '      ASONOMBRES  =' + QuotedStr(DM1.cdsAso.FieldByName('ASONOMBRES').AsString) + ',' +
      '      ASOEMAIL    =' + QuotedStr(DM1.cdsAso.FieldByName('ASOEMAIL').AsString) + ',' +
      '      ASOAPENOMDNI=' + QuotedStr(xAsoApeNomDni) + ',' +
      '      ASODPTO     =' + QuotedStr(trim(lkcDpto.Text)) + ',' +
      '      CIUDID      =' + QuotedStr(trim(lkcProv.Text)) + ',' +
      '      ZIPID       =' + QuotedStr(trim(lkcDist.Text)) + ',' +
      '      ASODIR      =' + QuotedStr(Copy(Trim(dbeDirec.Text), 1, 250)) + ',' +
      '      ASOAPEPATDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) + ',' +
      '      ASOAPEMATDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) + ',' +
      '      ASONOMDNI   =' + QuotedStr(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) + ',' +
      '      ASODNI      =' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
      '      ASOFECNAC   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOFECNAC').AsString) + ',' +
      '      ASOSEXO     =' + QuotedStr(DM1.cdsAso.FieldByName('ASOSEXO').AsString) + ',' +
      '      ASOTELF1    =' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELF1').AsString) + ',' +
      '      ASOTELF2    =' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELF2').AsString) + ',' +
      '      ASOCODMOD   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
      '      ASOTIPID    =' + QuotedStr(DbLlTipAso.Text) + ',' +
      '      ASOSITID    =' + QuotedStr(DM1.cdsAso.FieldByName('ASOSITID').AsString) + ',' +
      '      REGPENID    =' + QuotedStr(DbLlRegPen.Text) + ',' +
      '      CODAFP      =' + QuotedStr(DbLlAfp.Text) + ',' +
      '      UPROID      =' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
      '      UPAGOID     =' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
      '      USEID       =' + QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
      '      ASORESNOM   =' + QuotedStr(DM1.cdsAso.FieldByName('ASORESNOM').AsString) + ',' +
      '      ASOFRESNOM  =' + QuotedStr(DM1.cdsAso.FieldByName('ASOFRESNOM').AsString) + ',' +
      '      ASORESCESE  =' + QuotedStr(DM1.cdsAso.FieldByName('ASORESCESE').AsString) + ',' +
      '      ASOFRESCESE =' + QuotedStr(DM1.cdsAso.FieldByName('ASOFRESCESE').AsString) + ',' +
      '      ASOCODPAGO  =' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODPAGO').AsString) + ',' +
      '      ASONCTA     =' + QuotedStr(DM1.cdsAso.FieldByName('ASONCTA').AsString) + ',' +
      '      SITCTA      =' + QuotedStr(DM1.cdsAso.FieldByName('SITCTA').AsString) + ',' +
      '      ASODESLAB   =' + QuotedStr(DM1.cdsAso.FieldByName('ASODESLAB').AsString) + ',' +
      '      ASODIRLAB   =' + QuotedStr(DM1.cdsAso.FieldByName('ASODIRLAB').AsString) + ',' +
      '      ASOTELLAB   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELLAB').AsString) + ',' +
      '      ASODPTLABID =' + QuotedStr(trim(lkcDpto2.Text)) + ',' +
      '      ASOPRVLABID =' + QuotedStr(trim(lkcProv2.Text)) + ',' +
      '      ASODSTLABID =' + QuotedStr(trim(lkcDist2.Text)) + ',' +
      '      CENEDUID    =' + QuotedStr(trim(dbeCenEduId.Text)) + ',' +
      '      USUARIO     =' + QuotedStr(DM1.wUsuario) + ',' +
      '      FREG        =' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
      '      HREG        =    SYSDATE,' +
      '      ACTARCREN   =' + QuotedStr(DM1.cdsAso.FieldByName('ACTARCREN').AsString) +
      ' WHERE ASOID= ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   result := true;
END;

PROCEDURE TFMantAsociado.BitPrestClick(Sender: TObject);
VAR
   xAsoId: STRING;
BEGIN
   TRY
      fMstPrest := TfMstPrest.create(self);
      xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
      TRY
         FOtorPre := TfOtorPre.create(self);
         FOtorPre.LimPrestamos;
         FOtorPre.CrgPrestamos;
      EXCEPT
      END;
      fMstPrest.Showmodal;
   FINALLY
      fMstPrest.free;
   END;
END;

PROCEDURE TFMantAsociado.BitMstApoClick(Sender: TObject);
BEGIN
   IF (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') THEN
   BEGIN
      ShowMessage('Opción para Docentes Activos (DO), Nuevos (VO) y Cesantes (CE)');
      Exit;
   END;
   TRY
      fRegApor := TfRegApor.create(self);
      fRegApor.Showmodal;
   FINALLY
      fRegApor.free;
   END;
END;

PROCEDURE TFMantAsociado.BitModificaClick(Sender: TObject);
VAR
   xSQL, xAsoId, xverifica: STRING;
   xPerAct, xUltApo, xUltActPad: String;
BEGIN
   DM1.xInsert := '0';
   If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') Then
   Begin
     dblTipDoc.Enabled:= True;
   End
   Else
   Begin
     dblTipDoc.Enabled:= False;
   End;
   IF (DM1.xOfiDes = '01') or (Length(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))>0) Then
   BEGIN
      IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
      BEGIN
         IF DM1.cdsAso.FieldByName('ACTARCREN').AsString <> 'S' THEN
         BEGIN
            Timer1.Enabled := True;
            btnActualizaReniec.Caption := 'Captura de RENIEC ';
         END
         ELSE
         BEGIN
            Timer1.Enabled := False;
            btnActualizaReniec.Font.Color := clWhite;
         END;
      END;
   END
   ELSE
   BEGIN
      btnActualizaReniec.Visible := False;
   END;
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   IF MaxNroItem(xAsoId) <> '000' THEN
   BEGIN
      xSQL := 'SELECT ESTADO,OBSERVACION,ITEM '
         + '  FROM ASO007 '
         + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ITEM=' + QuotedStr(MaxNroItem(xAsoId));
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      IF DM1.cdsQry2.RecordCount > 0 THEN
      BEGIN
         IF DM1.cdsQry2.fieldbyname('ESTADO').AsString = 'I' THEN
         BEGIN
            MessageDlg(' El Registro Se Encuentra INACTIVO Por  :  ' + StrUpper(pChar(DM1.cdsQry2.fieldbyname('OBSERVACION').AsString)), mtError, [mbOk], 0);
            DM1.cdsQry2.Close;
            Exit;
         END;
      END;
      DM1.cdsQry2.Close;
   END;

   // Validación CESANTES ONP
   If DM1.sAPO201 = 'APO201' Then
   Begin
      // Validación Cesantes ONP
      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And (DM1.cdsAso.FieldByName('REGPENID').AsString = '02') Then
      Begin
         xSQL := 'SELECT MAX(PERIODO) PERIODO FROM APO206 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
         DM1.cdsSolicitud.Close;
         DM1.cdsSolicitud.DataRequest(xSQL);
         DM1.cdsSolicitud.Open;
         xSQL := 'Select Max(TO_CHAR(PVSLFECBE,''YYYYMM'')) PVSLFECBE From PVS306 Where ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND PVSESTLIQ NOT IN (''04'',''13'')';
         DM1.cdsFPago.Close;
         DM1.cdsFPago.DataRequest(xSQL);
         DM1.cdsFPago.Open;
         If ((Trim(DM1.cdsSolicitud.FieldByName('PERIODO').AsString) <> '') And (Trim(DM1.cdsFPago.FieldByName('PVSLFECBE').AsString) <> '')) And
             (DM1.cdsSolicitud.FieldByName('PERIODO').AsString  > DM1.cdsFPago.FieldByName('PVSLFECBE').AsString) Then
         Begin
            xSQL := 'UPDATE ASO003 SET IDESTADO = ''02'', OBSERVACION = '+QuotedStr('VALIDADO AUTOMATICAMENTE POR FIGURAR EN PADRON ONP')
            +', USRVERIFICA = '+QuotedStr(DM1.wUsuario)+ ', FHVERIFICA = SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End
         Else
         Begin
            xSQL := 'SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID=' + QuotedStr(Trim(xAsoId))+' AND DATGENERAL IS NOT NULL AND IDESTADO IS NULL AND A.OFDESID = B.OFDESID';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            If DM1.cdsQry.RecordCount > 0 Then
            Begin
               MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  ' + DM1.cdsQry.FieldByName('OFDESNOM').AsString, mtError, [mbOk], 0);
               DM1.cdsQry.Close;
               Exit;
            End;
         End;
      End;
      // Periodo actual
      xSQL := 'SELECT MAX(TO_CHAR(ADD_MONTHS(SYSDATE,- 2),''YYYYMM'')) PERACT FROM DUAL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xPerAct := DM1.cdsQry.FieldByName('PERACT').AsString;
      // ultimo aporte
      xSQL := 'SELECT MAX(TRANSANO||TRANSMES) ULTAPO FROM APO301 WHERE ASOID = '+QuotedStr(xAsoId)+' AND NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0) > 0';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xUltApo := DM1.cdsQry.FieldByName('ULTAPO').AsString;
      // Ultimo padron
      xSQL := 'SELECT MAX(PERIODO) ULTACTPAD FROM APO206 WHERE ASOID = '+QuotedStr(xAsoId) +' AND NVL(AINGFAM,0) > 0 and ide_pad is not null';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xUltActPad := DM1.cdsQry.FieldByName('ULTACTPAD').AsString;
      // Validación automatica para cesantes con liquidación, regimen de pension AFP
      xverifica := 'N';
      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And (DM1.cdsAso.FieldByName('REGPENID').AsString = '03') Then
      Begin
         xverifica := 'S';
         // Verificar si cuenta con liquidación
         xSQL := 'Select PVSLBENNR From PVS306 Where ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' And PVSESTLIQ = ''02''';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If Trim(DM1.cdsQry.FieldByName('PVSLBENNR').AsString) = '' Then xverifica := 'N';
         xSQL := 'Select TO_CHAR(Sysdate,''YYYY'')-TO_CHAR(ASOFECNAC,''YYYY'') EDAD From apo201 Where ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.FieldByName('EDAD').AsInteger > 85 Then xverifica := 'N';
         xSQL := 'SELECT MAX(FECEMIDOC) FECEMIDOC FROM INF_RENIEC_CAP Where DNI = '+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If Trim(DM1.cdsQry.FieldByName('FECEMIDOC').AsString) = '' Then xverifica := 'N';
         If Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) <> Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString) Then xverifica := 'N';
         If xverifica = 'S' Then
         Begin
            xSQL := 'UPDATE ASO003 SET IDESTADO = ''02'', OBSERVACION = '+QuotedStr('VALIDADO AUTOMATICAMENTE POR PRESENTAR INTEGRIDAD DE DATOS')
            +', USRVERIFICA = '+QuotedStr(DM1.wUsuario)+ ', FHVERIFICA = SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';
            Try
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            Except
               ShowMessage('Error al Grabar Validación');
               Exit;
            End;
         End
         Else
         Begin
            xSQL := 'SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID=' + QuotedStr(Trim(xAsoId))+' AND DATGENERAL IS NOT NULL AND IDESTADO IS NULL AND A.OFDESID = B.OFDESID';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            If DM1.cdsQry.RecordCount > 0 Then
            Begin
               MessageDlg('Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  ' + DM1.cdsQry.FieldByName('OFDESNOM').AsString, mtError, [mbOk], 0);
               Exit;
            End;
         End;
      End;
      if ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Or ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') and (DM1.cdsAso.FieldByName('REGPENID').AsString = '01')) Or (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO')) and
         ((xPerAct <= xUltApo) Or (xPerAct <= xUltActPad)) then
      Begin
        xSql := 'UPDATE ASO003 SET IDESTADO = ''02'', OBSERVACION = '+QuotedStr('VALIDADO AUTOMATICAMENTE POR TENER ANTIGUEDAD DE APORTES O ACTUALIZACION POR PADRON MENOR O IGUAL A DOS MESES')
        +', USRVERIFICA = '+QuotedStr(DM1.wUsuario)+ ', FHVERIFICA = SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';
        DM1.DCOM1.AppServer.EjecutaSql(xSql);
      End;

      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Then
      Begin
         If DM1.UsuarioLiquidador( DM1.wUsuario ) Then
         Begin
            // Alcualiza estado
            xSql := 'UPDATE ASO003 SET IDESTADO = ''02'', OBSERVACION = '+QuotedStr('VALIDADO AUTOMATICAMENTE POR TRAMITE DE BENEFICIO PREVISIONAL')
            +', USRVERIFICA = '+QuotedStr(DM1.wUsuario)+ ', FHVERIFICA = SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';
            Try
               DM1.DCOM1.AppServer.EjecutaSql(xSql);
            Except
               ShowMessage('Error al Grabar Validación');
               Exit;
            End;
         End;
      End
      Else
      Begin
         xSQL := 'SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B'
         +' WHERE ASOID=' + QuotedStr(Trim(xAsoId))+' AND DATGENERAL IS NOT NULL AND'
         +' IDESTADO IS NULL AND A.OFDESID=B.OFDESID';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  ' + DM1.cdsQry.FieldByName('OFDESNOM').AsString, mtError, [mbOk], 0);
            DM1.cdsQry.Close;
            Exit;
         End;
         DM1.cdsQry.Close;
      End;
   End;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
  BEGIN
     gbIdentidadAso.Enabled := True;
     dbeTel1.Enabled := False;
     dbeTel2.Enabled := False;
     gbLaboralAso.Enabled := True;
     pnlRegPension.Enabled := True;
     pnlCodPension.Enabled := True;
     BitModifica.Enabled := False;
     BitGrabar.Enabled := True;
     IF btnActualizaReniec.Caption = 'Actualizado de RENIEC' THEN dbeLibDni.Enabled := False;
  END
  ELSE
  BEGIN
     gbIdentidadAso.Enabled := True;

     dbeLibDni.Enabled := false;
     btnactdir.Enabled := True;
     dbeTel1.Enabled := False;
     dbeTel2.Enabled := False;
     btnActualizaReniec.Enabled := false;
     BitGrabar.Enabled := True;
     If Length(Trim(edtTipBen.Text))=0 Then
     Begin
         xSQL := 'SELECT 1 FROM RES_TEC_1 C WHERE C.ASOID='+QuotedStr(Trim(xAsoId))+' AND NVL(C.ACUMULADO,0)>0 AND C.PERIODO= (SELECT MAX(PERIODO)-1 FROM RES_TEC_1)';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount>0 Then
         Begin
            pnlRegPension.Enabled := True;
            pnlCodPension.Enabled := True;
         End;
     End;
  END;

  if (DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02') then
  begin
    edtCodPensionista.Enabled := true;
    dblcdCodLeyPen.Enabled := true;
    dblcdCodPrestacion.Enabled := True;
    pnlCodPension.Enabled := True;
  end
  else
  begin
    IF Cargado then
    begin
      edtCodPensionista.Text := '';
      edtCodPensionista.Enabled := false;
      dblcdCodLeyPen.Text := '';
      dblcdCodLeyPen.Enabled := false;
      dblcdCodLeyPen.Color := $00E8FFFF;
      dblcdCodPrestacion.Text := '';
      dblcdCodPrestacion.Enabled := false;
      dblcdCodPrestacion.Color := $00E8FFFF;
      pnlCodPension.Enabled := False;
    end;
  end;
  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
  BEGIN
     IF dbeLibDni.Text = '' THEN
        dbeLibDni.Enabled := True
     ELSE
     BEGIN
        IF DM1.sAPO201 = 'APO201' THEN
        BEGIN
           IF (DM1.cdsAso.FieldByName('VALCODMODDNI').AsString = 'N') AND
              (Copy(DM1.CrgArea(DM1.wUsuario), 4, 2) = '01') AND // origen
              (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) = '03') THEN // nivel
           BEGIN
              dbeLibDni.Enabled := True;
              xModifDNI := True;
           END
           ELSE
              dbeLibDni.Enabled := False;
        END
        ELSE
        BEGIN
           dbeLibDni.Enabled := False;
        END;
     END;
  END;

   TRY
      ActivaFoco;
   EXCEPT
   END;
END;

FUNCTION TFMantAsociado.MaxNroItem(xAsoId: STRING): STRING;
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO007 WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   IF DM1.cdsQry.RecordCount > 0 THEN
   BEGIN
      Result := DM1.cdsQry.FieldByName('ITEM').AsString;
   END
   ELSE
      Result := '000';

   DM1.cdsQry.Close;
END;

PROCEDURE TFMantAsociado.ActivaFoco;
VAR
   i, xFoco: Integer;
BEGIN
   xFoco := 0;
   FOR i := 0 TO FMantAsociado.ComponentCount - 1 DO
   BEGIN
      IF (FMantAsociado.Components[i].ClassName = 'TwwDBEdit') OR (FMantAsociado.Components[i].ClassName = 'TwwDBDateTimePicker') OR (FMantAsociado.Components[i].ClassName = 'TwwDBLookupCombo') THEN
      BEGIN
         IF TwwDBEdit(FMantAsociado.Components[i]).Enabled THEN
         BEGIN
            xFoco := 0;
            Break;
         END;

         IF TwwDBDateTimePicker(FMantAsociado.Components[i]).Enabled THEN
         BEGIN
            xFoco := 1;
            Break;
         END;

         IF TwwDBLookupCombo(FMantAsociado.Components[i]).Enabled THEN
         BEGIN
            xFoco := 2;
            Break;
         END;
      END;
   END;
   DbLlTipAso.Enabled := False;
   IF DM1.sAPO201 = 'ASO_NUE_CLI' THEN
      DbLlTipAso.Enabled := True;

   IF EdtCodMod.Text = '' THEN
      pnlCodMod.Enabled := True;

END;

PROCEDURE TFMantAsociado.BitAutDesClick(Sender: TObject);
VAR
   xCodReg, xAsoId, xsql: STRING;
   Boton: Integer;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   BEGIN
    // Actualiza Flag de Solo Aportes
      xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;

      DM1.xautdes := 'A';

      TRY
        Fautdes := TFautdes.Create(Self);
        Fautdes.sFirmaCarta := sFirmaCarta;
        IF (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'CE') THEN
          BEGIN
            Fautdes.sConsulta := 'S';
          END
        ELSE
          BEGIN
            Fautdes.sConsulta := '';
          END;
        Fautdes.ShowModal;
      FINALLY
        Fautdes.Free;
      END;

   end;
END;

PROCEDURE TFMantAsociado.BitGrabarClick(Sender: TObject);
VAR
   xAsoid: STRING;
BEGIN

 if pnlCodMod.Enabled and not DM1.FG_VALIDA_CODIGO_MODULAR(EdtCodMod.Text) then exit;

 if  dbeAsoEmail.Text<>'' then
 begin
    If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
    Begin
        if emailValido (dbeAsoEmail.Text) then
        begin
        end
        else
        begin
           showmessage('El E-Mail es Incorrecto');
           exit;
        end;
    End;
  end;      

   if (copy(DM1.cdsAso.FieldByname('ASONCTA').AsString,1,3)='CI_') and
      (copy(DM1.cdsAso.FieldByname('ASOTIPID').AsString,1,3)<>'CE') then
   Begin
      Beep;
      MessageDlg('El Tipo de Asociado debe ser CEsante si hay Cuenta Interna asignada', mtError, [mbOk], 0);
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByname('ASOTIPID').AsString := 'CE';
      DM1.cdsAso.Post;
      DbLlTipAso.SetFocus;
      Exit;
   End;

   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;

   IF Length(TRIM(dblTipDoc.Text))= 0 Then
   BEGIN
      MessageDlg('Falta ingresar el Tipo de Documento', mtError, [mbOk], 0);
      Exit;
   END;

   IF Length(Trim(edtTipAso.Text)) = 0 THEN
   BEGIN
       If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
       Begin
          MessageDlg('Tipo de Asociado no Catalogado.', mtError, [mbOk], 0);
          Exit;
       End;
   END;

   IF (DbLlTipAso.Text = 'DO') AND (dm1.xInsert <> '1') THEN
   BEGIN
      IF Length(Trim(dbeCodPag.Text)) = 0 THEN
      BEGIN
         If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
         Begin
             MessageDlg('Falta Ingresar El CODIGO DE PAGO', mtError, [mbOk], 0);
             Exit;
         End;
      END;

  If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
  Begin
      IF (Length(Trim(dbeLibDni.Text)) = 0)   and (dblTipDoc.Text=xTIPDOCCOD) THEN
      BEGIN
         MessageDlg('Falta Ingresar El D.N.I.', mtError, [mbOk], 0);
         Exit;
      END;
  End;
   END;

   If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
   Begin
       IF (DbLlTipAso.Text = 'DO') AND (DM1.cdsAso.FieldByName('CENEDUID').AsString =
          '') THEN
       BEGIN
          MessageDlg(' Asigne el colegio al asociado ', mtError, [mbOk], 0);
          Exit;
       END;
   End;

   IF (DbLlTipAso.Text = 'CE') AND (dm1.xInsert <> '1') THEN
   BEGIN
      IF Length(Trim(dbeCodPag.Text)) = 0 THEN
      BEGIN
         If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
         Begin
             MessageDlg(' Falta Ingresar El CODIGO DE PAGO ', mtError, [mbOk], 0);
             Exit;
         End;
      END;

      IF (Length(Trim(dbeLibDni.Text)) = 0) and (dblTipDoc.Text=xTIPDOCCOD) THEN
      BEGIN
         If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
         Begin
             MessageDlg(' Falta Ingresar El D.N.I. ', mtError, [mbOk], 0);
             Exit;
         End;
      END;
  If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
  Begin
      IF Length(Trim(dbeNroCes.Text)) = 0 THEN
      BEGIN
         MessageDlg(' Falta Ingresar El NUMERO De La RESOLUCION DE CESE ', mtError, [mbOk], 0);
         Exit;
      END;
  End;
  If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
  Begin
      IF Length(Trim(DBDTResCes.Text)) = 0 THEN
      BEGIN
         MessageDlg(' Falta Ingresar La FECHA De La RESOLUCION DE CESE ', mtError, [mbOk], 0);
         Exit;
      END;
  End;
   END;

   If (Trim(DbLlTipAso.Text) = 'CE') And (Trim(DbLlRegPen.Text) = '02') Then
   Begin
      If Trim(dblcdCodLeyPen.Text) = '' Then
      Begin
         MessageDlg('Debe ingresar el Código de Ley de Pensión', mtError, [mbOk], 0);
         dblcdCodLeyPen.SetFocus;
         Exit;
      End;
      If Trim(edtCodPensionista.Text) = '' Then
      Begin
        MessageDlg('Debe ingresar el Código de Pensionista', mtError, [mbOk], 0);
        edtCodPensionista.SetFocus;
        Exit;
      End;
      If Trim(dblcdCodPrestacion.Text) = '' Then
      Begin
         MessageDlg('Debe ingresar el Código de prestación', mtError, [mbOk], 0);
         dblcdCodPrestacion.SetFocus;
         Exit;
      End;
   End;


   If (DM1.xInsert <> '1') And (DbLlTipAso.Text <> 'CE') Then
   Begin
    Try
      If (DM1.cdsUse.Active = True) And (DM1.cdsUse.FieldByName('DPTOID').AsString <> lkcDpto2.Text) Then
      Begin
         MessageDlg('EL DEPARTAMENTO DEL COLEGIO NO CORRESPONDE AL DEPARTAMENTO DE LA UGEL !', mtInformation, [mbOk], 0);
      End;
    EXCEPT
    END;


   End;
  //Verifica otras condiciones de grabacion
   IF NOT VerifGraba THEN exit;

   IF DM1.xInsert = '1' THEN
   Begin
      If dblTipDoc.Text<>xTIPDOCCOD Then  GrabaApo201NO_DNI;
      ValAsoPrev(trim(EdtApePatDni.Text) + ' ' + trim(EdtApeMatDni.Text));
   End
   ELSE
      Grabacion2;
END;

PROCEDURE TFMantAsociado.Registro_Aud(xAsoId, xSecuencia, xCodReg: STRING);
VAR
   xSQL: STRING;
BEGIN
   IF Length(Trim(xCodReg)) = 0 THEN
   BEGIN
      MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   END;
   Screen.Cursor := crHourGlass;
   xSQL := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, ' +
      'UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ' +
      'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ' +
      'ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, ' +
      'FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, ' +
      'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ' +
      'ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, ' +
      'DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, USUARIO_AUD, REGISTRO_AUD, SECUENCIA, CODREG, MODULOID,VALCODMODDNI,ACTARCREN,REINGRESO, CENEDUID) ' +
      'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ' +
      'ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ' +
      'ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ' +
      'ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ' +
      'ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, ' +
      'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ' +
      'ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, ' +
      'FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP,' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xSecuencia) + ',' + QuotedStr(xCodReg) + ',''ASO'',VALCODMODDNI,ACTARCREN,REINGRESO, CENEDUID FROM APO201 WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor := crDefault;
END;

FUNCTION TFMantAsociado.CodReg: STRING;
VAR
   xSQL, xResAbn: STRING;
   xCorAbn: Integer;
BEGIN
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   IF DM1.cdsListaCred.RecordCount = 1 THEN
   BEGIN
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := xResAbn;
   END;
   DM1.cdsListaCred.Close;
END;

PROCEDURE TFMantAsociado.FormActivate(Sender: TObject);
VAR

   xWhere : STRING;
   xSql : STRING;
   xSegundaVez : STRING;

BEGIN

   DM1.sAPO201 :='APO201';
   dblcdCodLeyPen.Selected.Clear;
   dblcdCodLeyPen.Selected.Add('CODLEYPEN'#9'2'#9'Código'#9#9);
   dblcdCodLeyPen.Selected.Add('DESLEYPEN'#9'15'#9'Descripción'#9#9);

   dblcdCodPrestacion.Selected.Clear;
   dblcdCodPrestacion.Selected.Add('CODPRE'#9'2'#9'Código'#9#9);
   dblcdCodPrestacion.Selected.Add('DESPRE'#9'15'#9'Descripción'#9#9);
   Cargado := false;
   xSql := 'SELECT dptoid, dptodes, dptoabr, codtel FROM APO158';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSql);
   DM1.cdsPadre.Open;
   dbeDirec.Text := DM1.cdsAso.FieldByName('ASODIR').AsString;

   IF (DM1.cdsAso.FieldByName('AUTDESAPO').AsString <> 'S') AND
      ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') OR
      (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'VO')) THEN
   BEGIN
      TRY
         FMantAsociadoAutDes := TFMantAsociadoAutDes.Create(self);
         FMantAsociadoAutDes.MostrarDcto(false);
         FMantAsociadoAutDes.ShowModal;
      FINALLY
         FMantAsociadoAutDes.Free;
      END;
   END;

   xSegundaVez:='N';
   IF DM1.cdsAso.FieldByName('AUTDESAPO').AsString = 'S' THEN
   BEGIN
      // Si UPROID Marcada para cambiar
      xWhere := 'UPROID=''' + DM1.cdsAso.fieldbyname('UPROID').AsString + '''';
      if DM1.DisplayDescrip('prvTGE', 'APO102', 'FLGDESAPO', xWhere, 'FLGDESAPO')='S' then
      begin
         xWhere := 'ASOID=''' + DM1.cdsAso.fieldbyname('ASOID').AsString + '''';
         sFirmaCarta := DM1.DisplayDescrip('prvTGE', 'APOSINCARTA', 'AUTODESC, ASOID', xWhere, 'AUTODESC');

         if sFirmaCarta='' then
         begin
            xSQL:='insert into db2admin.aposincarta '
                    + '(oficautorizo, departamento, unidadproceso, unidadpago, ugel, apellidosnombres, fechaautorizacion, '
                    +  'autodesc, asoid, asodni, asocodmod, fecreg, usureg, ofdesid, flg_seg_fir) '
                    +'values ( '
                    +  QuotedStr(DM1.cdsAso.FieldByName('ofiregautdescuo').AsString)+', '
                    +  QuotedStr(edtDpto.Text)+', '
                    +  QuotedStr(dbeUproDes.Text)+', '
                    +  QuotedStr(dbeUpagDes.Text)+', '
                    +  QuotedStr(dbeUses.Text)+', '
                    +  QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString)+', '
                    +  QuotedStr(copy(DM1.cdsAso.FieldByName('FECAUTDESCUO').AsString,1,10))+', '
                    +  QuotedStr('S')+', '
                    +  QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+', '
                    +  QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+', '
                    +  QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)+', '
                    +  'NULL, NULL, NULL, ''N'' )';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xSegundaVez:='S';
         end
         else
         begin

         end;
      end;
   END;

   xWhere := 'ASOID=''' + DM1.cdsAso.fieldbyname('ASOID').AsString + '''';
   sFirmaCarta := DM1.DisplayDescrip('prvTGE', 'APOSINCARTA', 'AUTODESC, ASOID', xWhere, 'AUTODESC');

   IF sFirmaCarta = 'S' THEN
   BEGIN
      TRY
         FMantAsociadoAutDes := TFMantAsociadoAutDes.Create(self);
         if xSegundaVez='S' then
         begin
            FMantAsociadoAutDes.fcLabel1.Caption:='Regularización del Descuento del Aporte por Segunda Vez';
         end;
         FMantAsociadoAutDes.MostrarDcto(True);
         FMantAsociadoAutDes.ShowModal;
      FINALLY
         FMantAsociadoAutDes.Free;
      END;
   END;


   xSQL := 'SELECT ASOID'
          +' FROM COB_FSC_DEUDA_FSC_CAB'
          +' WHERE ASOID='+ QuotedStr( DM1.cdsAso.fieldbyname('ASOID').AsString ) + ' AND ID_EST_FSC <> ''13'' ';

   If DM1.CountReg(xSQL) > 0 Then
   BEGIN
      MessageDlg('El asociado tiene créditos aplicados con el FSC !!!', mtInformation, [mbOk], 0);
   END;


   xgrabo := 'N';
   xvalido := 'N';
   xYaGrabe := 'N';
   edtRegPen.Text := DM1.RecuperaDatos('APO105', 'REGPENID', Trim(DM1.cdsAso.FieldByName('REGPENID').asstring), 'REGPENDES');

   IF DM1.xInsert <> '1' THEN
      edtTipAso.Text := DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
   IF DbLlTipAso.text = 'CO' THEN
   BEGIN
      lblResNom.Caption := 'N° Contrato';
      lblFecNom.Caption := 'Fec.Inicio';
      lblResCes.Caption := '';
      dbeNroCes.Visible := False;
      lblFecCes.Caption := 'Fec.Fin';
   END
   ELSE
   BEGIN
      lblResNom.Caption := 'N°Resol.Nomb';
      lblFecNom.Caption := 'Fecha';
      lblResCes.Caption := 'N°Resol.Cese';
      dbeNroCes.Visible := True;
      lblFecCes.Caption := 'Fecha';
   END;
   IF (DM1.xOfiDes > '01') and (Length(TRIM(DM1.cdsAso.FieldByName('ASOID').AsString))=0) THEN

   BEGIN
      btnActualizaReniec.Visible := False;
   END;


   edtTipBen.Text := '';
   edtEstBen.Text := '';
   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString='CE') OR (DM1.cdsAso.FieldByName('ASOTIPID').AsString='DO') then
   Begin
      xSql := 'Select Case When A.PVSLBENNR Is Not Null Then ''LIQUIDADO'' When A.PVSLBENNR Is Null Then ''EN TRAMITE'' End ESTLIQ,'
      +' B.BENEFDES From PVS301 A, TGE186 B Where A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' And A.PVSESTADO Not In (''04'',''13'') And A.PVSTIPBEN = B.TIPBENEF';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      edtTipBen.Text := DM1.cdsQry.FieldByName('ESTLIQ').AsString;
      edtEstBen.Text := DM1.cdsQry.FieldByName('BENEFDES').AsString;
      If Trim(edtTipBen.Text) = '' Then
      Begin
         xSql := 'Select C.BENEFDES, ''LIQUIDADO'' ESTLIQ From APO201 A, PVS315 B, TGE186 C'
         +' Where A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' And'
         +'((A.ASOID = B.ASOID) Or'
         +' (A.ASOCODMOD = B.COD_MOD And Substr(A.ASOAPENOM,1,5) = Substr(B.NOM_GEN,1,5)) Or'
         +' (A.ASODNI = B.LIB_ELE And Substr(A.ASOAPENOM,1,5) = Substr(B.NOM_GEN,1,5)) Or'
         +' (A.ASOAPENOM = B.NOM_GEN And A.ASODNI = B.LIB_ELE) Or'
         +' (A.ASOAPENOM = B.NOM_GEN And A.ASOCODMOD = B.COD_MOD)'
         +')'
         +' And B.COD_BEN = C.TIPBENEF';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         edtTipBen.Text := DM1.cdsQry.FieldByName('ESTLIQ').AsString;
         edtEstBen.Text := DM1.cdsQry.FieldByName('BENEFDES').AsString;
      End;
      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And (Trim(edtTipBen.Text) = '') Then
      Begin
         edtEstBen.Text := 'OFICIO';
      End;
   End;
   edtTipBen.Font.Color := clRed;
   edtEstBen.Font.Color := clRed;

   Ingresomax;
   ImageBoton.Picture := ImagAso.Picture;
   IF NOT BitFoto.Enabled THEN ImageBoton.Visible := False;

   ObsSinResolver(DM1.cdsAso.FieldByName('ASOID').AsString);
   IF CDSOBSSINRESOLVER.RecordCount > 0 THEN
   BEGIN
      TRY
         FMantAsociadoObsSinRes := TFMantAsociadoObsSinRes.Create(self);
         FMantAsociadoObsSinRes.EnlazarDatos(DSOBSSINRESOLVER);
         FMantAsociadoObsSinRes.ShowModal;
      FINALLY
         CDSOBSSINRESOLVER.EmptyDataSet;
         FMantAsociadoObsSinRes.Free;
         pnlControl.Enabled := true;
      END;
   END;
  // Cargando datos del colegio
   ActualizaColegios;
   Cargado := true;

    xSQL := ' SELECT ASOID,  '
        +  ' EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) EDAD '
        +  ' FROM APO201     '
        +  ' WHERE EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) >= 65 '
        +  '       AND ASOID='+ QuotedStr( DM1.cdsAso.fieldbyname('ASOID').AsString )
        +  '       AND ASOTIPID = ''DO''   ';

   If DM1.CountReg(xSQL) > 0 Then
   BEGIN
      MessageDlg('DOCENTE TIENE MAS DE 65 AÑOS DE EDAD PROXIMO A ' + #13#10 + '    CESAR SEGÚN LEY DE REFORMA MAGISTERIAL', mtInformation, [mbOk], 0);
      edtanos.Font.Color := clWhite;
      edtanos.Color := clRed;

   END
   Else
   BEGIN
      edtanos.Font.Color := clNavy;               // "$00E8FFFF";
      edtanos.Color := clWhite;
   END;
  if EdtCodMod.Text <> '' then DM1.FG_VALIDA_CODIGO_MODULAR(EdtCodMod.Text);
  ValidarAsignarRegalo;
END;

PROCEDURE TFMantAsociado.FormClose(Sender: TObject; VAR Action: TCloseAction);
VAR
   xAsoId: STRING;
BEGIN
   TRY
      IF (DM1.cdsAso.State = dsInsert) OR (DM1.cdsAso.State = dsEdit) THEN
         DM1.cdsAso.CancelUpdates;

      IF DM1.cdsAso.fieldbyname('ASOID').AsString = '' THEN Exit;

      IF (DM1.cdsAso.fieldbyname('ASOCODMOD').AsString = '')
         OR (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = '') THEN
      BEGIN
         ShowMessage('Advertencia : Falta registrar datos...');
         Exit;
      END;
      
      BorraFotos;
      xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
      DM1.cdsAso.Close;
      DM1.DCOM1.Connected := False;
      Application.Terminate;

   EXCEPT
   END;
END;

PROCEDURE TFMantAsociado.FormCreate(Sender: TObject);
VAR
   inifile: TIniFile;
   xIP_Reniec,XSQL: STRING;
BEGIN

   Cargado := false;
   IF DM1.xInsert = '1' THEN
   BEGIN
      XSQL := 'SELECT solicitud, asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid,'+
              'upagoid, asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto,'+
              'asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum,'+
              'asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov,'+
              'asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese, fgarante,'+
              'zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser,'+
              'cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, asonomdni,'+
              'asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+
              'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni,'+
              'actarcrenant, actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo,'+
              'gencodbar, envautdes, corenvautdes, codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv,'+
              'numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio, codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo,'+
              'usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv,'+
              'codmotdestcuo, fecactpad, est_aut_cli, usu_aut_cli, fec_aut_cli, obs_aut_cli, usu_cre_cli, fec_cre_cli, obs_aut_cli_uge,'+
              'obs_aut_cli_pad, obs_aut_cli_otr, ceneduid, fallecido, tipo_fall_id, codtiptel1, codreftel1, codtiptel2, codreftel2, codpension,'+
              'fecregautdesapo, codleypen, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, asoaptser, fecactsit, codciutelfij1,'+
              'codciutelfij2, fecreccadaps, usureccadaps, codmotautcadaps, codpre '+
              ' FROM ASO_NUE_CLI WHERE ASOID = ''AAAAAAAAAA''';
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(XSQL);
      DM1.cdsAso.Open;
      DM1.cdsAso.Insert;
   END;
   DM1.BlqComponentes(Self);
   lkcDpto2.Enabled := False;
   xSQL := 'SELECT ESTCIVID,ESTCIVDES,ESTCIVDESFEM FROM TGE125 ORDER BY ESTCIVID';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;
   dblEstadoCivil.LookupTable := DM1.cdsUSES;
   dblEstadoCivil.Selected.Clear;
   IF DbLlSexo.Text = 'F' THEN
   begin
      dblEstadoCivil.LookupField := 'ESTCIVDESFEM';
      dblEstadoCivil.Selected.Add('ESTCIVDESFEM'#9'15'#9'Estado'#9#9);
   end
   Else
   begin
      dblEstadoCivil.LookupField := 'ESTCIVDES';
      dblEstadoCivil.Selected.Add('ESTCIVDES'#9'15'#9'Estado'#9#9);
   end; 

   xTIPDOCCOD:=DM1.CrgDescrip('FLGACT=''S'' AND FLGDNI=''S'' ','TGE159','TIPDOCCOD');

   xSQL:='SELECT TIPDOCCOD,TIPDOCABR,FLGDNI,LONCAM FROM TGE159 WHERE FLGACT=''S'' ';
   DM1.cdsCbcos.Close;
   DM1.cdsCbcos.DataRequest(xSQL);
   DM1.cdsCbcos.Open;
   dblTipDoc.LookupTable:= Dm1.cdsCbcos;
   dblTipDoc.LookupField:= 'TIPDOCCOD';
   dblTipDoc.Selected.Clear;
   dblTipDoc.Selected.Add('TIPDOCCOD'#9'02'#9'Cod.'#9#9);
   dblTipDoc.Selected.Add('TIPDOCABR'#9'02'#9'Descripción'#9#9);
   dblTipDocChange(Self);

   dblTipDoc.Text := Dm1.cdsAso.Fieldbyname('TIPDOCCOD').AsString;

  IF DM1.xInsert <> '1' THEN
  BEGIN
    XSQL := 'SELECT I1.ESTCIV FROM INF_RENIEC_CAP I1 WHERE I1.DNI = ' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ' AND I1.FECACT = (SELECT MAX(I2.FECACT) FROM INF_RENIEC_CAP I2 WHERE I2.DNI = I1.DNI)';
    DM1.cdsQry25.Close;
    DM1.cdsQry25.DataRequest(XSQL);
    DM1.cdsQry25.Open;
    edtEstadoCivil.Text := DM1.cdsQry25.FieldByName('ESTCIV').AsString;
    DM1.cdsQry25.Close;
    Dm1.cdsUSES.Locate('ESTCIVID',Dm1.cdsAso.Fieldbyname('ESTCIVID').AsString,[]);
    IF DbLlSexo.Text = 'F' THEN
       dblEstadoCivil.Text := DM1.cdsUSES.FieldByName('ESTCIVDESFEM').AsString
    Else dblEstadoCivil.Text := DM1.cdsUSES.FieldByName('ESTCIVDES').AsString;

    xSql := 'SELECT DESREFTEL FROM ASO_REF_TELF_MAE WHERE CODREFTEL = ' + QuotedStr(DM1.cdsAso.FieldByName('CODREFTEL1').AsString);
    DM1.cdsQry25.Close;
    DM1.cdsQry25.DataRequest(xSql);
    DM1.cdsQry25.Open;
    dbeProp1.Text := DM1.cdsQry25.FieldByName('DESREFTEL').AsString;
    DM1.cdsQry25.Close;

    xSql := 'SELECT DESREFTEL FROM ASO_REF_TELF_MAE WHERE CODREFTEL = ' + QuotedStr(DM1.cdsAso.FieldByName('CODREFTEL2').AsString);
    DM1.cdsQry25.Close;
    DM1.cdsQry25.DataRequest(xSql);
    DM1.cdsQry25.Open;
    dbeProp2.Text := DM1.cdsQry25.FieldByName('DESREFTEL').AsString;
    DM1.cdsQry25.Close;
  END;

     DM1.cdsOfidesAso.Close;
     DM1.cdsOfidesAso.DataRequest('SELECT VALDATASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + ''' ');
     DM1.cdsOfidesAso.Open;

   IF DM1.cdsOfidesAso.FieldByName('VALDATASO').AsString = 'S' THEN
      BitVerifica.Enabled := True
   ELSE
      BitVerifica.Enabled := False;

   IF (DM1.cdsOfidesAso.FieldByName('ACTDATREN').AsString <> 'S') OR
     ((DM1.xOfiDes <> '01') and (Length(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))=0) ) THEN
   BEGIN
      btnActualizaReniec.Visible := False;
      xReniec := 'N';
      IF DM1.cdsAso.FieldByName('ACTARCREN').AsString = 'S' THEN
      BEGIN
         bitImpReniec.Enabled := True
      END
      ELSE
      BEGIN
         bitImpReniec.Enabled := False;
      END;
   END
   ELSE
   BEGIN
      btnActualizaReniec.Visible := True;
    //Conexión al servidor RENIEC
      IF DM1.cdsAso.FieldByName('ACTARCREN').AsString <> 'S' THEN
      BEGIN
         btnActualizaReniec.Caption := 'Captura de RENIEC ';
         xReniec := 'S';
         try
            ISipObj := GetISIPService(false,K_URL_WEB_SERVICE);
         except
            //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
            on E: Exception do
            Begin
            showmessage('Existe un problema de conexión al Web Service, comuníquese con Helpdesk ('+E.Message+')');
            End;
         end;
      END
      ELSE
      BEGIN
       If dblTipDoc.Text=xTIPDOCCOD Then
       Begin
         btnActualizaReniec.Caption := 'Actualizado de RENIEC';
         bitImpReniec.Enabled := True;
         Timer1.Enabled := False;
         btnActualizaReniec.Font.Color := clWhite;
       End;
      END;
   END;

   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';

   BitPrest.Enabled := True; //siempre activo a no ser que sea insert

   IF DM1.xInsert = '0' THEN //Cuando se Modifica no se debe tener acceso a estos campos
   BEGIN
      DbLUniPro.Enabled := False;
      DbLUniPag.Enabled := False;
      DbLUses.Enabled := False;
      pnlResoluciones.Enabled := False;
      DM1.xDNI := DM1.cdsAso.FieldByName('ASODNI').AsString;
   END;

   IF DM1.xInsert = '1' THEN //Cuando se Adiciona no debe tener acceso a estos botones
   BEGIN
      BitPrest.Enabled := False;
      BitMstApo.Enabled := False;
      BitModifica.Enabled := False;
      BitVerifica.Enabled := False;
      btnObservacion.Enabled := False;
      BitReasignacion.Enabled := False;
      BitResol.Enabled := False;
      BitCuentas.Enabled := False;
      BitSocio.Enabled := False;
      DbLUniPro.Enabled := True;
      DbLUniPag.Enabled := True;
      DbLUses.Enabled := True;
      pnlResoluciones.Enabled := True;
      DbLlTipAso.Text := 'CE';
      edtTipAso.Text := 'CESANTE';
   END;

   IF DM1.cdsAso.FieldByName('VALCODMODDNI').AsString = 'S' THEN
   BEGIN
      dbeLibDni.Enabled := False;
      dbeLibDni.Color := $0097FF97
   END
   ELSE
      dbeLibDni.Enabled := dbeLibDni.Enabled;

   IF DM1.cdsAso.FieldByName('REINGRESO').AsString = 'S' THEN
      msgReingreso.Visible := True
   ELSE
      msgReingreso.Visible := False;

   xSQL:='SELECT asoid, fecval, usuval, equusu, ofiusu, campo, feccad, datval, objeto, status, usudesval, fecdesval, obsdesval '
        +'FROM VAL_DAT_ASO WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND STATUS=''S''';
   DM1.cdsVAL_DAT_ASO.Close;
   DM1.cdsVAL_DAT_ASO.DataRequest(XSQL);
   DM1.cdsVAL_DAT_ASO.Open;

   xActRENIEC:='N';
   llenaCamposValida;
   VerificaCamposValidados;
   If xsinvalidar>0 Then
   Begin
     Validacionautomatica(DM1.cdsAso.FieldbyName('ASODNI').AsString,DM1.cdsAso.FieldbyName('ASOID').AsString);
   End;
    VerificaCamposValidados;
   pintaCamposValidados(Self);


   IF DM1.sAPO201 = 'APO201' THEN
   BEGIN
      bbtnN3.Visible := False;
   END;

  //Si en Fallecido tiene acceso solo a ver la primera pantalla
  //El Nivel 03 puede modificar datos de un fallecido
   IF (DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)) + ' AND PVSESTADO NOT IN (''04'',''13'')', 'PVS301', 'PVSTIPBEN') = '02') AND
      (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03') THEN
   BEGIN
      BitPrest.Enabled := True;
      BitMstApo.Enabled := True;
      btnObservacion.Enabled := True;
      BitModifica.Enabled := False;
      BitVerifica.Enabled := False;
      BitReasignacion.Enabled := False;
      BitResol.Enabled := False;
      BitCuentas.Enabled := False;
      BitSocio.Enabled := False;
      BitGrabar.Enabled := False;
      lblFallecido.Visible := True;
   END
   ELSE
      IF (DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)) + ' AND PVSESTADO NOT IN (''04'',''13'')', 'PVS301', 'PVSTIPBEN') = '02') AND
      (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) = '03') THEN
         lblFallecido.Visible := True
      ELSE
         lblFallecido.Visible := False;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
    lblFallecido.Visible := false
  ELSE
    lblFallecido.Visible := true;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
  BEGIN
    IF DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' THEN
      lblFallecido.Caption := 'FALLECIDO'
    ELSE
      lblFallecido.Caption := 'FALLECIDA';
    FechaFall; // se añade a Etiqueta de Fallecido, la fecha de Fallecimiento
    //No se pueden realizar Validaciones
    BitVerifica.Enabled := false;
  END;

   IF DM1.xInsert = '1' THEN
   BEGIN
      lblAsoApeNom.Caption := 'Ingreso de Nuevo Asociado';
      gbIdentidadAso.Enabled := True;
      gbLaboralAso.Enabled := True;
      pnlRegPension.Enabled := True;
      pnlCodPension.Enabled := True;
      BitModifica.Enabled := False;
      BitGrabar.Enabled := True;
      pnlCodMod.Enabled := True;
      pnlResoluciones.Enabled := True;
   END;

   IF DM1.xCnd = 'DESAUT' THEN
   BEGIN
    bitAutoriza.Caption := 'Desautorizar';
   END;
   fn_muestra_msj_hoja_cargo_exp(DM1.cdsAso.FieldByName('ASOID').AsString);
END;

PROCEDURE TFMantAsociado.FormKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
   IF Key = #13 THEN
   BEGIN
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   END
END;

PROCEDURE TFMantAsociado.DbLlSexoChange(Sender: TObject);
BEGIN
   IF DM1.cdsSexo.Locate('ID', DbLlSexo.Text, []) THEN
   BEGIN
      dbeSexo.Text := DM1.cdsSexo.FieldByName('DESCRIP').asstring
   END
   ELSE
   BEGIN
      IF Length(DbLlSexo.Text) <> 2 THEN
      BEGIN
         Beep;
         dbeSexo.Text := '';
      END;

   END;

   IF DbLlSexo.Text = 'F' THEN
   begin
      dblEstadoCivil.LookupField := 'ESTCIVDESFEM';
      dblEstadoCivil.Selected.Clear;
      dblEstadoCivil.Selected.Add('ESTCIVDESFEM'#9'15'#9'Estado'#9#9);
   end
   Else
   begin
      dblEstadoCivil.LookupField := 'ESTCIVDES';
      dblEstadoCivil.Selected.Clear;
      dblEstadoCivil.Selected.Add('ESTCIVDES'#9'15'#9'Estado'#9#9);
   end;

   If  DM1.xInsert  <> '1' Then
   Begin
     dblTipDoc.Enabled := False;
     edtnumdoc.Enabled := False;
   End;
END;

PROCEDURE TFMantAsociado.DbLlTipAsoChange(Sender: TObject);
BEGIN
   IF DM1.cdsTAso.Locate('ASOTIPID', DbLlTipAso.Text, []) THEN
   BEGIN
      edtTipAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').asstring;
      if (DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02') then
      begin
        edtCodPensionista.Enabled := true;
        dblcdCodLeyPen.Enabled := true;
        dblcdCodPrestacion.Enabled := True;
        pnlCodPension.Enabled := True;
      end
      else
      begin
        IF Cargado then
        begin
          edtCodPensionista.Text := '';
          edtCodPensionista.Enabled := false;
          dblcdCodLeyPen.Text := '';
          dblcdCodLeyPen.Enabled := false;
          dblcdCodLeyPen.Color := $00E8FFFF;
          dblcdCodPrestacion.Text := '';
          dblcdCodPrestacion.Enabled := false;
          dblcdCodPrestacion.Color := $00E8FFFF;
          pnlCodPension.Enabled := False;
        end;
      end;
   END
   ELSE
   BEGIN
      IF Cargado and (Length(DbLlTipAso.Text) <> 2) then
      begin
        edtCodPensionista.Text := '';
        edtCodPensionista.Enabled := false;

        dblcdCodLeyPen.Text := '';
        dblcdCodLeyPen.Enabled := false;
        dblcdCodLeyPen.Color := $00E8FFFF;
        dblcdCodPrestacion.Text := '';
        dblcdCodPrestacion.Enabled := false;
        dblcdCodPrestacion.Color := $00E8FFFF;
        pnlCodPension.Enabled := False;
        Beep;
        edtTipAso.Text := '';
      end;
   END;
END;

PROCEDURE TFMantAsociado.lkcDptoChange(Sender: TObject);
BEGIN
   IF DM1.cdsPadre.Active = True Then
     Begin
        IF DM1.cdsPadre.Locate('DPTOID', VarArrayof([lkcDpto.text]), []) THEN
           BEGIN
             EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring;
             IF lkcDpto.Enabled THEN
                lkcProv.Enabled := True;
           END
        ELSE
          BEGIN
           IF Length(lkcDpto.Text) <> 2 THEN
            BEGIN
             Beep;
             lkcProv.Enabled := False;
             EdtDpto.Text := '';
            END;
          END;
     End;
END;

PROCEDURE TFMantAsociado.lkcProvChange(Sender: TObject);
BEGIN
   IF DM1.cdsHijo.Active and DM1.cdsHijo.Locate('PROVID', lkcProv.Text, []) THEN
   BEGIN
      edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').AsString;
      IF lkcProv.Enabled THEN
         lkcDist.Enabled := True;
   END
   ELSE
   BEGIN
      edtProv.Text := '';
      lkcDist.Enabled := False;
   END;
END;

PROCEDURE TFMantAsociado.lkcDistChange(Sender: TObject);
BEGIN
   IF DM1.cdsSAso.Active and DM1.cdsSAso.Locate('ZIPID', lkcDist.Text, []) THEN
      edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').AsString
   ELSE
      edtDist.Text := '';
END;

PROCEDURE TFMantAsociado.DbLlRegPenChange(Sender: TObject);
BEGIN
   IF DM1.cdsResol.Locate('REGPENID', DbLlRegPen.Text, []) THEN
   BEGIN
      edtRegPen.Text := DM1.cdsResol.FieldByName('REGPENDES').AsString;
      IF DbLlRegPen.Text = '03' THEN
         DbLlAfp.Enabled := True
      ELSE
      BEGIN
         DbLlAfp.Text := '';
         DbLlAfp.Enabled := False;
      END;
      if (DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02') then
      begin
        dblcdCodLeyPen.Enabled := true;
        dblcdCodLeyPen.Color := clWindow;
        edtCodPensionista.Enabled := true;
        dblcdCodPrestacion.Enabled := true;
        dblcdCodPrestacion.Color := clWindow;
        pnlCodPension.Enabled := True;
      end
      else
      begin
        if Cargado then
        begin
          dblcdCodLeyPen.Text := '';
          dblcdCodLeyPen.Enabled := false;
          dblcdCodLeyPen.Color := $00E8FFFF;
          edtCodPensionista.Text := '';
          edtCodPensionista.Enabled := false;
          dblcdCodPrestacion.Text := '';
          dblcdCodPrestacion.Enabled := false;
          dblcdCodPrestacion.Color := $00E8FFFF;
          pnlCodPension.Enabled := False;
        end;
      end;
   END
   ELSE
   BEGIN
      IF Cargado and (Length(DbLlRegPen.Text) <> 2) THEN
      BEGIN
         Beep;
         dblcdCodLeyPen.Text := '';
         dblcdCodLeyPen.Enabled := false;
         dblcdCodLeyPen.Color := $00E8FFFF;
         edtCodPensionista.Text := '';
         edtCodPensionista.Enabled := false;
         edtRegPen.Text := '';
         dblcdCodPrestacion.Text := '';
         dblcdCodPrestacion.Enabled := false;
         dblcdCodPrestacion.Color := $00E8FFFF;
         pnlCodPension.Enabled := False;
      END;
   END;
END;

PROCEDURE TFMantAsociado.DbLlRegPenExit(Sender: TObject);
BEGIN
   IF Trim(DbLlRegPen.Text) = '03' THEN
      DbLlAfp.Enabled := True
   ELSE
   BEGIN
      DbLlAfp.Text := '';
      DbLlAfp.Enabled := False;
   END;
END;

PROCEDURE TFMantAsociado.DbLlAfpChange(Sender: TObject);
BEGIN
   IF DM1.cdscarta.Locate('IDAFP', DbLlAfp.Text, []) THEN
   BEGIN
      EdtAfp.Text := DM1.cdscarta.FieldByName('PROVDES').AsString
   END
   ELSE
   BEGIN
      IF Length(DbLlAfp.Text) <> 2 THEN
      BEGIN
         Beep;
         EdtAfp.Text := '';
      END;
   END
END;

PROCEDURE TFMantAsociado.DbLUniProChange(Sender: TObject);
BEGIN
   IF DM1.cdsUPro.Locate('UPROID', VarArrayof([DbLUniPro.text]), []) THEN
   BEGIN
      dbeUproDes.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString
   END
   ELSE
   BEGIN
      IF Length(DbLUniPro.Text) <> 3 THEN
      BEGIN
         Beep;
         dbeUproDes.Text := '';
      END;
   END
END;

PROCEDURE TFMantAsociado.DbLUniPagChange(Sender: TObject);
BEGIN
   IF DM1.cdsUPago.Locate('UPROID;UPAGOID', VarArrayof([DbLUniPro.Text, DbLUniPag.Text]), []) THEN
   BEGIN
      dbeUpagDes.Text := DM1.cdsUPago.FieldByName('UPAGONOM').Asstring;
   END
   ELSE
   BEGIN
      IF Length(DbLUniPag.Text) <> 2 THEN
      BEGIN
         Beep;
         dbeUpagDes.Text := '';
      END;
   END;
   DbLUsesChange(self);
END;

PROCEDURE TFMantAsociado.DbLUsesChange(Sender: TObject);
BEGIN
   IF DM1.cdsUse.Locate('UPROID;UPAGOID;USEID', VarArrayof([DbLUniPro.Text, DbLUniPag.Text, DbLUses.Text]), []) THEN
   BEGIN
      dbeUses.Text := DM1.cdsUse.FieldByName('USENOM').AsString;
   END
   ELSE
   BEGIN
      IF Length(DbLUses.Text) <> 2 THEN
      BEGIN
         Beep;
         dbeUses.Text := '';
      END;
   END
END;

PROCEDURE TFMantAsociado.lkcDpto2Change(Sender: TObject);
BEGIN
   IF DM1.cdsRec.Locate('DPTOID', lkcDpto2.Text, []) THEN
   BEGIN
      EdtDpto2.Text := DM1.cdsRec.FieldByName('DPTODES').asstring;
   END
   ELSE
   BEGIN
      IF Length(lkcDpto2.Text) <> 2 THEN
      BEGIN
         Beep;
         EdtDpto2.Text := '';
         lkcProv2.Enabled := False;
      END;
   END
END;

PROCEDURE TFMantAsociado.lkcProv2Change(Sender: TObject);
BEGIN
   IF DM1.cdsTRela.Locate('PROVID', lkcProv2.Text, []) THEN
   BEGIN
      EdtProv2.Text := DM1.cdsTRela.FieldByName('PROVDES').asstring;
   END
   ELSE
   BEGIN
      EdtProv2.Text := '';
      lkcDist2.Enabled := False;
   END;
END;

PROCEDURE TFMantAsociado.lkcDist2Change(Sender: TObject);
BEGIN
   IF DM1.cdsQry7.Active and DM1.cdsQry7.Locate('ZIPID', lkcDist2.Text, []) THEN
      EdtDist2.Text := DM1.cdsQry7.FieldByName('ZIPDES').asstring
   ELSE
      EdtDist2.Text := '';
END;

PROCEDURE TFMantAsociado.BitResolClick(Sender: TObject);
VAR
   xSQL, xAsoid: STRING;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;
   If  (DM1.cdsAso.fieldbyname('FALLECIDO').AsString <> 'S') Then
   Begin
       xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
       IF Length(trim(xAsoid)) = 0 THEN
       BEGIN
          MessageDlg('Es Asociado Nuevo, No Se Puede Ingresar Informacion Por Esta Opción', mtError, [mbOk], 0);
          Exit;
       END;
       TRY
          fResNomb2 := TfResNomb2.create(self);
          DM1.cdsRecursos.Close;
          xSQL := 'SELECT TIPRESID,TIPRESDES FROM APO104';
          DM1.cdsRecursos.DataRequest(xSQL);
          DM1.cdsRecursos.Open;

          IF DM1.sAPO201 = 'APO201' THEN
          BEGIN
             DM1.sResolucion := 'ASO_RESOLUCIONES';
             DM1.XSELECT     := 'asoid, asocodmod, asocodaux, asoresnom, asofresnom, asorescese, asofrescese, resvig, correlativo,'
                               +'usuario, freg, hreg, liquidado, numliq, fecliq, reingreso, anulado, obsanu, usuanu, fecanu, numexpliq,'
                               +'fecexpliq';
             DM1.sReso_where := '';
          END
          ELSE
          BEGIN
             DM1.sResolucion := 'ASO_RESOLUCIONES_NUE';
             DM1.XSELECT     := 'solicitud, asoid, asocodmod, asocodaux, asoresnom, asofresnom, asorescese, asofrescese, resvig,'
                               +'correlativo, usuario,freg, hreg, liquidado, numliq, fecliq, reingreso, anulado, obsanu, usuanu,'
                               +'fecanu, numexpliq, fecexpliq ';
             DM1.sReso_where := 'SOLICITUD=''' + DM1.cdsAso.fieldbyname('SOLICITUD').AsString + ''' and ';
          END;

          xSQL := 'SELECT '+DM1.XSELECT+' FROM ' + DM1.sResolucion + ' WHERE ' + DM1.sReso_where + ' ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString) + ' ORDER BY CORRELATIVO ';
          DM1.cdsGradoA.Close;
          DM1.cdsGradoA.DataRequest(xSQL);
          DM1.cdsGradoA.Open;
          IF DM1.cdsGradoA.RecordCount > 1 THEN DM1.cdsGradoA.First;
          fResNomb2.Showmodal;
       FINALLY
          DM1.cdsRecursos.Close;
          DM1.cdsGradoA.Close;
          fResNomb2.Free;
       END;

       IF DM1.cdsAso.FieldByName('REINGRESO').AsString = 'S' THEN
          msgReingreso.Visible := True
       ELSE
          msgReingreso.Visible := False;

      IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
      BEGIN
        ModiDestinofTickes;
      END;
   End
   Else
   Begin
       If  (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0)Then
       begin
            xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
           IF Length(trim(xAsoid)) = 0 THEN
           BEGIN
              MessageDlg('Es Asociado Nuevo, No Se Puede Ingresar Informacion Por Esta Opción', mtError, [mbOk], 0);
              Exit;
           END;
           TRY
              fResNomb2 := TfResNomb2.create(self);
              DM1.cdsRecursos.Close;
              xSQL := 'SELECT TIPRESID,TIPRESDES FROM APO104';
              DM1.cdsRecursos.DataRequest(xSQL);
              DM1.cdsRecursos.Open;

              IF DM1.sAPO201 = 'APO201' THEN
              BEGIN
                 DM1.sResolucion := 'ASO_RESOLUCIONES';
                 DM1.XSELECT     := 'asoid, asocodmod, asocodaux, asoresnom, asofresnom, asorescese, asofrescese, resvig, correlativo,'
                                   +'usuario, freg, hreg, liquidado, numliq, fecliq, reingreso, anulado, obsanu, usuanu, fecanu, numexpliq,'
                                   +'fecexpliq';
                 DM1.sReso_where := '';
              END
              ELSE
              BEGIN
                 DM1.sResolucion := 'ASO_RESOLUCIONES_NUE';
                 DM1.XSELECT     := 'solicitud, asoid, asocodmod, asocodaux, asoresnom, asofresnom, asorescese, asofrescese, resvig,'
                                    +'correlativo, usuario,freg, hreg, liquidado, numliq, fecliq, reingreso, anulado, obsanu, usuanu,'
                                    +'fecanu, numexpliq, fecexpliq ';
                 DM1.sReso_where := 'SOLICITUD=''' + DM1.cdsAso.fieldbyname('SOLICITUD').AsString + ''' and ';
              END;

              xSQL := 'SELECT '+DM1.XSELECT+' FROM ' + DM1.sResolucion + ' WHERE ' + DM1.sReso_where + ' ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString) + ' ORDER BY CORRELATIVO ';
              DM1.cdsGradoA.Close;
              DM1.cdsGradoA.DataRequest(xSQL);
              DM1.cdsGradoA.Open;
              IF DM1.cdsGradoA.RecordCount > 1 THEN DM1.cdsGradoA.First;
              fResNomb2.Showmodal;
           FINALLY
              DM1.cdsRecursos.Close;
              DM1.cdsGradoA.Close;
              fResNomb2.Free;
           END;

           IF DM1.cdsAso.FieldByName('REINGRESO').AsString = 'S' THEN
              msgReingreso.Visible := True
           ELSE
              msgReingreso.Visible := False;
       End
       Else
       Begin
           MessageDlg('No puede modificar fecha Resolución de Nombramiento porque tiene Expediente en Trámite', mtError, [mbOk], 0);
           Exit;
       End;
   End;
END;

PROCEDURE TFMantAsociado.BitCuentasClick(Sender: TObject);
VAR
   xSQL, xasoid: STRING;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   IF Length(trim(xAsoid)) = 0 THEN
   BEGIN
      MessageDlg('Es Asociado Nuevo, No se puede Ingresar Informacion por esta Opción', mtError, [mbOk], 0);
      Exit;
   END;

   TRY
      fCtasAhorro := TfCtasAhorro.create(self);
      DM1.cdsRecursos.Close;
      xSQL := 'SELECT BANCOID,BANCONOM FROM TGE105 ORDER BY CPTOID';
      DM1.cdsRecursos.DataRequest(xSQL);
      DM1.cdsRecursos.Open;
      xSQL := 'SELECT SITCTAID,SITCTADES FROM COB103 ORDER BY SITCTAID';
      DM1.cdsSitCta.Close;
      DM1.cdsSitCta.DataRequest(xSQL);
      DM1.cdsSitCta.Open;
      xSql := 'SELECT A.ASOITEM, ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA,B.SITCTADES, A.USUARIO, A.FREG, A.HREG, ASOITEM, A.BANCOID, C.BANCONOM'
      +' FROM APO207 A,COB103 B,TGE105 C WHERE A.SITCTA  = B.SITCTAID AND A.BANCOID = C.BANCOID'
      +' AND ASOID = '+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' ORDER BY A.ASOITEM DESC';
      DM1.cdsGradoA.Close;
      DM1.cdsGradoA.DataRequest(xSQL);
      DM1.cdsGradoA.Open;
      IF DM1.cdsGradoA.RecordCount > 1 THEN DM1.cdsGradoA.First;
      fCtasAhorro.Showmodal;
   FINALLY
      DM1.cdsGradoA.Close;
      DM1.cdsRecursos.Close;
      DM1.cdsSitCta.Close;
      fCtasAhorro.Free;
   END;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
  BEGIN
    ModiDestinofTickes;
  END;
END;

PROCEDURE TFMantAsociado.BitSocioClick(Sender: TObject);
VAR
   xSQL, xAsoId: STRING;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;

   IF Length(trim(xAsoid)) = 0 THEN
   BEGIN
      MessageDlg('Es Asociado Nuevo, No Se Puede Ingresar Informacion Por Esta Opcion', mtError, [mbOk], 0);
      Exit;
   END;

   IF DM1.xCnd <> 'VRF' THEN
   BEGIN
      xSQL := 'SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM '
         + '     FROM ASO003 A, APO110 B '
         + '    WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND'
         + '          DATSOCIOECO IS NOT NULL AND'
         + '          IDESTADO IS NULL AND'
         + '          A.OFDESID=B.OFDESID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      IF DM1.cdsQry.RecordCount > 0 THEN
      BEGIN
         MessageDlg(' Los datos del Asociado se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  ' + DM1.cdsQry.FieldByName('OFDESNOM').AsString, mtError, [mbOk], 0);
         DM1.cdsQry.Close;
         Exit;
      END;
      DM1.cdsQry.Close;
   END;

   TRY
      xSQL := 'SELECT GRAINSID,GRAINSABR FROM TGE119 ORDER BY GRAINSID';
      DM1.cdsGradoI.Close;
      DM1.cdsGradoI.DataRequest(xSQL);
      DM1.cdsGradoI.Open;

      xSQL := 'SELECT TIPVIVID,TIPVIVABR FROM APO109 ORDER BY TIPVIVID';
      DM1.cdsReclamo.Close;
      DM1.cdsReclamo.DataRequest(xSql);
      DM1.cdsReclamo.Open;

      xSQL := 'SELECT PARENID,PARENABR FROM TGE149 ORDER BY PARENID';
      DM1.cdsTVia.Close;
      DM1.cdsTVia.DataRequest(xSQL);
      DM1.cdsTVia.Open;
      fDatosSocEco := TfDatosSocEco.create(self);

      IF DM1.xCnd = 'VRF' THEN
      BEGIN

      END;

      IF DM1.xCnd = 'AUT' THEN
      BEGIN
      END;

      fDatosSocEco.Showmodal;
   FINALLY

      fDatosSocEco.free;
   END;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
  BEGIN
    ModiDestinofTickes;
  END;
END;

PROCEDURE TFMantAsociado.dbeUproDesChange(Sender: TObject);
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT UPROID,UPAGOID,UPAGONOM FROM APO103 WHERE UPROID=' + QuotedStr(Trim(DbLUniPro.Text));
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
   IF DbLUniPro.Enabled THEN DbLUniPag.Enabled := True;
   DbLUniPag.LookupTable := DM1.cdsUPago;
END;

PROCEDURE TFMantAsociado.dbeUpagDesChange(Sender: TObject);
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT UPROID,UPAGOID,USEID,USENOM,DPTOID FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' AND UPAGOID=' + QuotedStr(Trim(DbLUniPag.Text)) + ' AND SUBSTR(USENOM,1,1)<>''X'' ';
   DM1.cdsUSE.Close;
   DM1.cdsUSE.DataRequest(xSQL);
   DM1.cdsUSE.Open;
   DbLUses.LookupTable := DM1.CdsUSE;
   IF DbLUniPro.Enabled THEN DbLUses.Enabled := True;
END;

PROCEDURE TFMantAsociado.edtDptoChange(Sender: TObject);
VAR
   xSql: STRING;
BEGIN
   xSql := 'SELECT DPTOID||CIUDID AS PROVID, CIUDDES AS PROVDES FROM TGE121'
         + ' WHERE DPTOID = ' + QuotedStr(lkcDpto.Text);
   DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest(xSql);
   DM1.cdsHijo.Open;
END;

PROCEDURE TFMantAsociado.edtProvChange(Sender: TObject);
VAR
   xSql: STRING;
BEGIN
   xSql := 'SELECT zipid, zipabr, zipdes, ciudid, dptoid FROM APO122 WHERE CIUDID= ' + QuotedStr(TRIM(lkcProv.Text));
   DM1.cdsSAso.Close;
   DM1.cdsSAso.DataRequest(xSql);
   DM1.cdsSAso.Open;
END;

PROCEDURE TFMantAsociado.edtDpto2Change(Sender: TObject);
BEGIN
   DM1.cdsTRela.Close;
   DM1.cdsTRela.DataRequest('SELECT DPTOID||CIUDID AS PROVID,' +
      'CIUDDES AS PROVDES' +
      ' FROM TGE121' +
      ' WHERE DPTOID=''' + TRIM(lkcDpto2.Text) + ''' ');
   DM1.cdsTRela.Open;
END;

PROCEDURE TFMantAsociado.edtProv2Change(Sender: TObject);
BEGIN
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest('SELECT zipid, zipabr, zipdes, ciudid, dptoid FROM APO122 WHERE CIUDID=''' + TRIM(lkcProv2.Text) + ''' ');
   DM1.cdsQry7.Open;
END;

// Se retira la actualización del campo ESTCIVID en el APO201, desde el APO206 al momento de presionar el boton SALIR.
PROCEDURE TFMantAsociado.BitSalirClick(Sender: TObject);
BEGIN
   IF (xYaGrabe <> 'S') AND (BitGrabar.Enabled) AND (dm1.xentra <> 'S') THEN
   BEGIN
      IF MessageDlg('NO GRABO INFORMACION, ESTA SEGURO(A) DE SALIR', mtConfirmation, [mbYes, mbNo], 0) = mrNo THEN exit;
   END;

   IF (xvalido <> 'S') AND (BitVerifica.Enabled) AND (xsinvalidar > 0) AND (dm1.xentra <> 'S') THEN
   BEGIN
      IF MessageDlg('NO VALIDO INFORMACION, ESTA SEGURO(A) DE SALIR', mtConfirmation, [mbYes, mbNo], 0) = mrNo THEN exit;
   END;
   close;
END;

PROCEDURE TFMantAsociado.dbdtFecNacChange(Sender: TObject);
BEGIN

END;

//Verifica condiciones de grabacion
FUNCTION TFMantAsociado.VerifGraba: Boolean;
BEGIN
   Result := True;

If Not (DM1.cdsAso.fieldbyname('FALLECIDO').AsString = 'S') and (length(edtTipBen.text)=0) Then
Begin
   IF (Length(trim(dbeLibDni.Text)) <> 8) and  (dblTipDoc.Text=xTIPDOCCOD) THEN
   BEGIN
      MessageDlg('DNI Incorrecto...', mtError, [mbOk], 0);
      Result := False;
   END;

   IF  (dblTipDoc.Text<>xTIPDOCCOD) and (Length(Trim(dblEstadoCivil.Text))=0) Then
   BEGIN
      MessageDlg('Debe Ingresar Estado Civil', mtError, [mbOk], 0);
      Result := False;
   END;

   IF  (dblTipDoc.Text<>xTIPDOCCOD) and (Length(Trim(edtnumdoc.Text))=0) Then
   BEGIN
      MessageDlg('Debe Ingresar número de documento de identificación', mtError, [mbOk], 0);
      Result := False;
   END;

   IF Length(Trim(EdtApePatDNI.Text)) + Length(Trim(EdtApeMatDNI.Text)) = 0 THEN
   BEGIN
      MessageDlg('Debe Ingresar Apellidos !!!', mtError, [mbOk], 0);
      Result := False;
   END;

   IF Length(Trim(EdtAsoNomDNI.Text)) = 0 THEN
   BEGIN
      MessageDlg('Debe Ingresar El Nombre Del Asociado !!!', mtError, [mbOk], 0);
      Result := False;
   END;

   IF Length(trim(dbdtFecNac.Text)) = 0 THEN
   BEGIN
      MessageDlg('Debe Ingresar La Fecha De Nacimiento Del Asociado!!!', mtError, [mbOk], 0);
      Result := False;
   END;

   dbdtFecNacExit(self);

   IF DbLUniPro.Enabled THEN
   BEGIN

      dbeUproDesChange(self);
      IF Length(Trim(dbeUproDes.Text)) = 0 THEN
      BEGIN
         MessageDlg('Debe Seleccionar Una Unidad De Proceso !!!', mtError, [mbOk], 0);
         Result := False;
      END;

      DbLUniPagChange(self);
      IF Length(Trim(dbeUpagDes.Text)) = 0 THEN
      BEGIN
         MessageDlg('Debe Seleccionar Una Unidad De Pago !!!', mtError, [mbOk], 0);
         Result := False;
      END;

      DbLUsesChange(self);
      IF Length(Trim(dbeUses.Text)) = 0 THEN
      BEGIN
         MessageDlg('Debe Seleccionar Una Use/Ugel !!!', mtError, [mbOk], 0);
         Result := False;
      END;

   END;

   IF Length(Trim(dbeCodPag.Text)) = 0 THEN
   BEGIN
      MessageDlg(' Falta Ingresar El CODIGO DE PAGO ', mtError, [mbOk], 0);
      Result := False;
   END;

   IF Length(Trim(EdtCodMod.Text)) = 0 THEN
   BEGIN
      MessageDlg('Debe Ingresar El Codigo Modular !!!', mtError, [mbOk], 0);
      Result := False;
   END
   ELSE
      IF DM1.xInsert = '1' THEN
      BEGIN
         EdtCodMod.Text := Format('%.10d', [StrToInt64(EdtCodMod.Text)]);
         IF Length(Trim(EdtCodMod.Text)) <> 10 THEN
         BEGIN
            MessageDlg('El Codigo Modular Debe Ser De 10 Caracteres!!!', mtError, [mbOk], 0);
            Result := False;
         END;
      END;

   IF (dm1.xInsert = '1') AND (DbLlTipAso.Text = 'CE') THEN
   BEGIN
      IF DBDTResCes.Date > StrToDate('31/12/1996') THEN
      BEGIN
         MessageDlg(' Fecha de Cese debe ser Maximo hasta el 31/12/1996 ', mtError, [mbOk], 0);
         Result := False;
      END;
   END;

   IF (LengtH(trim(dbeNroCes.Text)) = 0) AND (DbLlTipAso.Text = 'CE') THEN
   BEGIN
      MessageDlg(' Falta Ingresar El NUMERO De La RESOLUCION DE CESE ', mtError, [mbOk], 0);
      Result := False;
   END;

   IF (lengTH(trim(DBDTResCes.Text)) = 0) AND (DbLlTipAso.Text = 'CE') THEN
   BEGIN
      MessageDlg(' Falta Ingresar La FECHA De La RESOLUCION DE CESE ', mtError, [mbOk], 0);
      Result := False;
   END;
End;

END;

PROCEDURE TFMantAsociado.dbdtFecNacExit(Sender: TObject);
BEGIN
   IF dbdtFecNac.Date > StrToDate('30/12/1899') THEN
   BEGIN
      edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys, dbdtFecNac.Date);
      edtanos2 := FloatToStr(int(YearSpan(dm1.FechaSys, dbdtFecNac.Date)));

      IF (dm1.Valores(edtanos2) < 18) OR (dm1.Valores(edtanos2) > 100) THEN
      BEGIN
         MessageDlg('El Rango de Edad debe estar entre 18 y 100 !!!', mtError, [mbOk], 0);
         edtanos.Font.Color := clred;
         dbdtFecNac.SetFocus;
         exit;
      END
      ELSE
         edtanos.Font.Color := clBlack;
   END;
END;

//define el ingreso máximo de caracteres
PROCEDURE TFMantAsociado.Ingresomax;
BEGIN
   EdtApePatDni.MaxLength := DM1.cdsAso.FieldByName('ASOAPEPATDNI').Size;
   EdtApeMatDni.MaxLength := DM1.cdsAso.FieldByName('ASOAPEMATDNI').Size; 
   EdtApeCasDni.MaxLength :=  DM1.cdsAso.FieldByName('ASOAPECASDNI').Size;
   EdtAsoNomDni.MaxLength := DM1.cdsAso.FieldByName('ASONOMDNI').Size;
   dbeLibDni.MaxLength := DM1.cdsAso.FieldByName('ASODNI').Size;
   dbeDirec.MaxLength := DM1.cdsAso.FieldByName('ASODIR').Size;
   dbeTel1.MaxLength := DM1.cdsAso.FieldByName('ASOTELF1').Size;
   dbeTel2.MaxLength := DM1.cdsAso.FieldByName('ASOTELF2').Size;
   dbeAsoEmail.MaxLength := DM1.cdsAso.FieldByName('ASOEMAIL').Size;
END;

PROCEDURE TFMantAsociado.EdtCodModExit(Sender: TObject);
BEGIN
   IF Length(trim(EdtCodMod.Text)) > 0 THEN
   BEGIN
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASOCODMOD').AsString := Format('%.10d', [StrToInt64(EdtCodMod.Text)]);
   END;
END;

PROCEDURE TFMantAsociado.ImageBotonClick(Sender: TObject);
BEGIN
   DM1.xSgr := 'IDE';
   fIdentAso := TfIdentAso.Create(self);
   fIdentAso.ImagAso.Picture := FMantAsociado.ImagAso.Picture;
   fIdentAso.ImaFirma.Picture := FMantAsociado.ImaFirma.Picture;
   fIdentAso.Showmodal;
   fIdentAso.free;
END;

PROCEDURE TFMantAsociado.BitReasignacionClick(Sender: TObject);
VAR
   xSQL, xAsoId: STRING;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;

   IF MaxNroItem(xAsoId) <> '000' THEN
   BEGIN
      xSQL := 'SELECT ESTADO,OBSERVACION,ITEM FROM ASO007 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ITEM=' + QuotedStr(MaxNroItem(xAsoId));
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      IF DM1.cdsQry2.RecordCount > 0 THEN
      BEGIN
         IF DM1.cdsQry2.fieldbyname('ESTADO').AsString = 'I' THEN
         BEGIN
            MessageDlg(' El Registro Se Encuentra INACTIVO Por  :  ' + StrUpper(pChar(DM1.cdsQry2.fieldbyname('OBSERVACION').AsString)), mtError, [mbOk], 0);
            DM1.cdsQry2.Close;
            Exit;
         END;
      END;
      DM1.cdsQry2.Close;
   END;

   IF DM1.xCnd <> 'VRF' THEN
   BEGIN
      xSQL := 'SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND REASIGNACION IS NOT NULL  AND IDESTADO IS NULL AND A.OFDESID=B.OFDESID   ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      IF DM1.cdsQry.RecordCount > 0 THEN
      BEGIN
         MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  ' + DM1.cdsQry.FieldByName('OFDESNOM').AsString, mtError, [mbOk], 0);
         DM1.cdsQry.Close;
         Exit;
      END;
      DM1.cdsQry.Close;
   END;
   TRY
      fNueAsociado := TfNueAsociado.create(self);
      xSQL := 'SELECT UPROID,UPRONOM FROM APO102';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      fNueAsociado.Caption := 'Mantenimiento De Asociados / Reasignación';

      IF DM1.xCnd = 'VRF' THEN
      BEGIN
         fNueAsociado.Pan01.Enabled := False;
         fNueAsociado.Pan02.Enabled := False;
         fNueAsociado.Pan03.Enabled := False;
         fNueAsociado.Pan04.Enabled := False;
         fNueAsociado.Pan05.Enabled := False;
         fNueAsociado.BitGrabar.Enabled := False;
      END;
      IF DM1.xCnd = 'AUT' THEN
      BEGIN
         fNueAsociado.Pan01.Enabled := False;
         fNueAsociado.Pan02.Enabled := False;
         fNueAsociado.Pan03.Enabled := False;
         fNueAsociado.Pan04.Enabled := False;
         fNueAsociado.Pan05.Enabled := False;
         fNueAsociado.BitGrabar.Enabled := False;
      END;

      IF DM1.xOfiDes > '01' THEN
      BEGIN
         fNueAsociado.Pan01.Enabled := False;
         fNueAsociado.Pan02.Enabled := False;
         fNueAsociado.Pan03.Enabled := False;
         fNueAsociado.Pan04.Enabled := False;
         fNueAsociado.Pan05.Enabled := False;
         fNueAsociado.BitGrabar.Enabled := False;
         IF ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') AND (DM1.cdsAso.FieldByName('REGPENID').AsString = '01')) OR
            (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') OR (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'VO') THEN
         BEGIN
            fNueAsociado.Pan03.Enabled := True;
            fNueAsociado.BitGrabar.Enabled := True;
            fNueAsociado.mecodcargo.Enabled := True;
         END;
      END;

      IF (DM1.sAPO201 = 'APO201') AND (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03') THEN
      BEGIN
         fNueAsociado.Pan01.Enabled := False;
         fNueAsociado.Pan02.Enabled := False;
         fNueAsociado.Pan03.Enabled := False;
         fNueAsociado.Pan04.Enabled := False;
         fNueAsociado.Pan05.Enabled := False;
         fNueAsociado.BitGrabar.Enabled := False;
         fNueAsociado.mecodcargo.Enabled := False;
      END;

// Habilita actualizacion de Código Modular, Apellidos y Nombres para Nivel 3 de Sede Central
      IF (DM1.xOfiDes = '01') and (DM1.sAPO201 = 'APO201') and (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) = '03') THEN
      BEGIN
         fNueAsociado.Pan03.Enabled := True;
         fNueAsociado.Pan04.Enabled := True;
         fNueAsociado.Pan05.Enabled := True;
      END;
      IF (DM1.sAPO201 = 'ASO_NUE_CLI') AND (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03') THEN
      BEGIN
         fNueAsociado.Pan01.Enabled := True;
         fNueAsociado.Pan02.Enabled := True;
         fNueAsociado.BitGrabar.Enabled := True;
      END;

      fNueAsociado.Pan01.Enabled := True;
      fNueAsociado.Pan02.Enabled := True;
      fNueAsociado.BitGrabar.Enabled := True;

      IF DM1.cdsAso.FieldByName('VALCODMODDNI').AsString = 'S' THEN
      BEGIN
         fNueAsociado.Pan03.Enabled := False;
         fNueAsociado.EdtCodMod.Color := $0097FF97
      END
      ELSE
         fNueAsociado.Pan03.Enabled := True;

// Habilita actualizacion de Código Modular, Apellidos y Nombres para Nivel 3 de Sede Central
      IF (DM1.xOfiDes = '01') and (DM1.sAPO201 = 'APO201') and (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) = '03') THEN
      BEGIN
      END
      ELSE
      BEGIN
      fNueAsociado.Pan04.Enabled := False;
      fNueAsociado.Pan05.Enabled := False;
      END;

      fNueAsociado.Showmodal;
   FINALLY
      fNueAsociado.Close;
      fNueAsociado.free;
   END;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
  BEGIN
    ModiDestinofTickes;
  END;
END;

PROCEDURE TFMantAsociado.BitVerificaClick(Sender: TObject);
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   IF DM1.xOfiDes > '01' THEN
   BEGIN
      IF DM1.sAPO201 <> 'APO201' THEN
      BEGIN
         Exit;
      END;
   END;

   IF xgrabo = 'S' THEN //Marca los campos actualizados de RENIEC en forma automatica
   BEGIN

      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEPATDNI']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPECASDNI']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEMATDNI']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOFECNAC']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOSEXO']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASONOMDNI']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
      IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASODNI']), []) THEN
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '1';
      END;
   END;

   TRY
      CDSVALIDA.First;
      FMantAsociadoDatosValidar := TFMantAsociadoDatosValidar.Create(self);
      FMantAsociadoDatosValidar.xsinvalidar := self.xsinvalidar;
      FMantAsociadoDatosValidar.xReniec := self.xReniec;
      FMantAsociadoDatosValidar.xvalido := self.xvalido;
      FMantAsociadoDatosValidar.EnlazarDatos(DSVALIDA);

      FMantAsociadoDatosValidar.ShowModal;

      self.xsinvalidar := FMantAsociadoDatosValidar.xsinvalidar;
      self.xReniec := FMantAsociadoDatosValidar.xReniec;

      IF NOT FMantAsociadoDatosValidar.bPintarCamposValidados THEN
         exit;

      pintaCamposValidados(self);

      ActivaPantPrincipal;
      IF DM1.xInsert <> '1' THEN
         BitGrabarClick(SELF)
      ELSE
      BEGIN
         VerificaCamposValidados;
         gbIdentidadAso.Enabled := False;
         gbLaboralAso.Enabled := False;
         pnlRegPension.Enabled := False;
         pnlCodPension.Enabled := False;
      END;
      ActivaPantPrincipal;
   FINALLY
      FMantAsociadoDatosValidar.Free;
   END;

   IF BitGrabar.Enabled THEN
      ActivaPantPrincipal
   ELSE
      pnlControl.Enabled := True;

   IF DM1.xCnd = 'AUT' THEN
      ActivaPantPrincipal;
END;

//Las imágenes las carga a Memoria stream
Procedure TFMantAsociado.CargaMemStreamImg;
Begin
   // Foto
   DM1.Jpg    := Nil;
   DM1.Stream := Nil;
   DM1.jpg    := TJPEGImage.Create;
   DM1.Stream := TMemoryStream.Create;
   DM1.Stream.Position := 0;
   DM1.Jpg.LoadFromStream(DM1.Stream);
   DM1.jpg.LoadFromFile('C:\Solexes\_Fot'+Trim(dbeLibDni.Text)+'.JPG');
   //crea una corriente en memoria
   DM1.Stream := TMemoryStream.Create;
   //Graba en la corriente el archivo Jpg
   DM1.Jpg.SaveToStream(DM1.Stream);
   DM1.Stream.Position := 0;
   // Firma
   DM1.JpgFirma    := Nil;
   DM1.StreamFirma := Nil;
   DM1.jpgFirma    := TJPEGImage.Create;
   DM1.StreamFirma := TMemoryStream.Create;
   DM1.StreamFirma.Position := 0;
   DM1.jpgFirma.LoadFromStream(DM1.StreamFirma);
   DM1.jpgFirma.LoadFromFile('C:\Solexes\_Fir'+Trim(dbeLibDni.Text)+'.JPG');
   //crea una corriente en memoria
   DM1.StreamFirma := TMemoryStream.Create;
   //Graba en la corriente el archivo Jpg
   DM1.jpgFirma.SaveToStream(DM1.StreamFirma);
   DM1.StreamFirma.Position := 0;
End;

   
PROCEDURE TFMantAsociado.btnActualizaReniecClick(Sender: TObject);
BEGIN
   If (DM1.xOfiDes <> '01') AND
      (Length(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))=0) Then
   Begin
      ShowMessage('Debe Actualizar los datos de RENIEC por la Sede Central, comuníquese con el área de Actualización de Datos');
      Exit;
   End;
   //Se valida que el dni tenga 8 dígitos
   If Length(trim(dbeLibDni.Text)) <> 8 Then
   Begin
      MessageDlg('DNI Incorrecto...', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsAso.FieldByName('ACTARCREN').AsString = 'S' Then
   Begin
      Screen.Cursor := crHourGlass;
      CargaFicha;
   End
   Else
   Begin //Busca y actualiza datos de Reniec
      If (dm1.xInsert = '1') And (Length(trim(dbeLibDni.Text)) <> 0) Then
      Begin
         If validaAsoDni(trim(dbeLibDni.Text)) Then
         Begin
            MessageDlg('DNI Ya Existe en Maestro de Asociados', mtError, [mbOk], 0);
            If (gbIdentidadAso.Enabled) And (dbeLibDni.Enabled) Then dbeLibDni.SetFocus;
            Exit;
         End;
      End;
      If xReniec = 'N' Then
      Begin
         MessageDlg('DNI Observado, Verifique en la Pagina Web de RENIEC', mtError, [mbOk], 0);
         Exit
      End;
      If Length(trim(dbeLibDni.Text)) < 8 Then
      Begin
         MessageDlg('Debe ingresar El DNI...', mtError, [mbOk], 0);
         dbeLibDni.SetFocus;
         exit;
      End;
      Screen.Cursor := crHourGlass;
      try
        ActDatReniec(trim(dbeLibDni.Text));
      finally
        Screen.Cursor := crDefault;
      end;
   End;
   Screen.Cursor := crDefault;
End;

FUNCTION TFMantAsociado.ActDatReniec(xAsoDni: STRING): Boolean;
VAR
   dwToken, FindByNameResult: Int64;
   lin: integer;
   arr: CPersonDataMember2;
BEGIN

       xusuRENIEC:=DM1.wUsuario;
      try
        Reg := ISipObj.FindByDocument(5,0,xusuRENIEC,xAsoDni);
      Except
        on E: Exception do
        begin
           showmessage('Existe un posible problema en la conexión a RENIEC, comuníquese con Helpdesk ('+E.Message+')');
           Exit;
        End;
      End;
      If Reg.dcResultCode <> '0000' Then
      Begin
         If Trim(Reg.dcResultCode) = '' Then
            MessageDlg('Código de error no especificado ', mtError, [mbOk], 0)
         Else
            If (Trim(Reg.dcResultCode) ='5031') OR (Trim(Reg.dcResultCode) ='5036') Then
            Begin
              xusuRENIEC:='JRODRIGUEZ';
              try
                Reg := ISipObj.FindByDocument(5,0,xusuRENIEC,xAsoDni);
              Except
                on E: Exception do
                begin
                  showmessage('Existe un posible problema en la conexión a RENIEC, comuníquese con Helpdesk ('+E.Message+')');
                  Exit;
                End;
              End;
              If Reg.dcResultCode <> '0000' Then
              Begin
                If Trim(Reg.dcResultCode) = '' Then
                   MessageDlg('Código de error no especificado ', mtError, [mbOk], 0)
                Else
                   MessageDlg(DM1.DevuelveValor('ASO_ERR_REN', 'DESERR', 'CODERR', Reg.dcResultCode), mtError, [mbOk], 0);
                Exit;
              End;
            End
            Else
            Begin
              MessageDlg(DM1.DevuelveValor('ASO_ERR_REN', 'DESERR', 'CODERR', Reg.dcResultCode), mtError, [mbOk], 0);
              Exit;
            End;
      End;

   If Length(Trim(reg.dcLastName1))+Length(Trim(reg.dcLastName2)) = 0 Then
   Begin
      MessageDlg('DNI no encontrado...', mtError, [mbOk], 0);
      result := false;
      exit;
   End;

   //Los Apellidos y Nombres deben ser iguales

   //Si tiene actualizaciones de RENIEC
   If dm1.validaAso_Old(dm1.cdsAso.fieldbyname('Asoid').AsString,dm1.cdsAso.fieldbyname('AsoDni').AsString) Then
   Begin
     If (Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) = TRIM(reg.dcLastName1)) And (Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) = TRIM(reg.dcLastName2)) And (Trim(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) = TRIM(reg.dcFirstName)) Then
     Begin
        LlenaConfirmacion(xAsoDni);
     End
     Else
     Begin
       //Existe datos de nombres diferentes, en el caso de un nuevo asociado
       //o que el usuario haya seleccionado una persona con datos diferentes
        LlenaComparacion(xAsoDni,'R');
     End;
   End
   Else //Si es primera vez aa Planilla
   Begin
    If (Trim(DM1.cdsAso.FieldByName('ASOAPEPAT').AsString)  = TRIM(reg.dcLastName1)) And
       (Trim(DM1.cdsAso.FieldByName('ASOAPEMAT').AsString)  = TRIM(reg.dcLastName2)) And
       (Trim(DM1.cdsAso.FieldByName('ASONOMBRES').AsString) = TRIM(reg.dcFirstName)) Then
    Begin
      LlenaConfirmacion(xAsoDni);
    end
    Else
    Begin
      //Existe datos de nombres diferentes, en el caso de un nuevo asociado
      //o que el usuario haya seleccionado una persona con datos diferentes
       LlenaComparacion(xAsoDni,'P');
    End;
   End;
   result := true;
End;

//ActivaPantalla Principal
PROCEDURE TFMantAsociado.ActivaPantPrincipal;
BEGIN
   IF NOT BitModifica.Enabled THEN gbIdentidadAso.Enabled := True;
// Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados
   IF NOT BitModifica.Enabled THEN
   Begin
    gbLaboralAso.Enabled := True;

        pnlRegPension.Enabled := True;
        pnlCodPension.Enabled := True;
   End;
   pnlControl.Enabled := True;
   dbeTel1.Enabled := True;
   dbeTel2.Enabled := True;
   IF DM1.xCnd = 'AUT' THEN
   BEGIN
      gbIdentidadAso.Enabled := True;
      dbeTel1.Enabled := False;
      dbeTel2.Enabled := False;
      bitAutoriza.Caption := 'Autorizar';
      IF DM1.cdsAso.FieldByName('ACTARCREN').AsString = 'S' THEN
      BEGIN
         btnActualizaReniec.Visible := False;
         bitAutoriza.Visible := true;
         bitRechaza.Visible := true;
         bbtnN1.Visible := true;
         bitAutoriza.Enabled := true;
         bitRechaza.Enabled := true;
         bbtnN1.Enabled := true;
      END
      ELSE
      BEGIN
         btnActualizaReniec.Visible := True;
         btnActualizaReniec.Enabled := True;
         bitAutoriza.Visible := False;
         bitRechaza.Visible := False;
         bbtnN1.Visible := False;
      END;
   END;
   IF DM1.xCnd = 'DESAUT' THEN
   BEGIN
      gbIdentidadAso.Enabled := False;
      dbeTel1.Enabled := False;
      dbeTel2.Enabled := False;
      bitAutoriza.Caption := 'Desautorizar';
      btnActualizaReniec.Visible := False;
      bitAutoriza.Visible := true;
      bitRechaza.Visible := False;
      bbtnN1.Visible := False;
      bitAutoriza.Enabled := true;
      bitRechaza.Enabled := False;
      bbtnN1.Enabled := False;
   END;
END;

//Desactiva la Pantalla Principal
PROCEDURE TFMantAsociado.DesactivaPantPrincipal;
BEGIN
   gbIdentidadAso.Enabled := False;
   gbLaboralAso.Enabled := False;
   pnlRegPension.Enabled := False;
   pnlCodPension.Enabled := False;
   pnlControl.Enabled := False;
   bitAutoriza.Enabled := False;
   bitRechaza.Enabled := False;
   bbtnN1.Visible := False;
END;

PROCEDURE TFMantAsociado.Timer1Timer(Sender: TObject);
BEGIN
   IF btnActualizaReniec.Font.Color = clred THEN
      btnActualizaReniec.Font.Color := clwhite
   ELSE
      btnActualizaReniec.Font.Color := clred;
END;

//Llena los Campos a Validar
PROCEDURE TFMantAsociado.llenaCamposValida;
VAR
   xsql: STRING;
BEGIN
   DM1.cdsCamposValida.First;
   CDSVALIDA.EmptyDataSet;
   WHILE NOT DM1.cdsCamposValida.Eof DO
   BEGIN
       CDSVALIDA.Insert;
       CDSVALIDA.FieldByName('Descripcion').AsString := DM1.cdsCamposValida.FieldByName('Descripcion').AsString;
       CDSVALIDA.FieldByName('Flag').AsString        := DM1.cdsCamposValida.FieldByName('Flag').AsString;
       CDSVALIDA.FieldByName('Campo').AsString       := DM1.cdsCamposValida.FieldByName('Campo').AsString;
       CDSVALIDA.FieldByName('Objeto').AsString      := DM1.cdsCamposValida.FieldByName('Objeto').AsString;
       CDSVALIDA.FieldByName('Tiempo').AsInteger     := DM1.cdsCamposValida.FieldByName('Tiempo').AsInteger;
       DM1.cdsCamposValida.Next;
   END;
   CDSVALIDA.First;
END;

//PINTA CAMPOS VALIDADOS
PROCEDURE TFMantAsociado.pintaCamposValidados(xForm: tForm);
VAR
   xsql, xcomponente, permanente: STRING;
   i, alerta: integer;
   dFechaSys : tDateTime;
BEGIN
      xSQL:='SELECT asoid, fecval, usuval, equusu, ofiusu, campo, feccad, datval, objeto, status, usudesval, fecdesval, obsdesval '
        +'FROM VAL_DAT_ASO WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND STATUS=''S''';
   DM1.cdsVAL_DAT_ASO.Close;
   DM1.cdsVAL_DAT_ASO.DataRequest(XSQL);
   DM1.cdsVAL_DAT_ASO.Open;

   DM1.cdsVAL_DAT_ASO.First;

   dFechaSys := dm1.FechaSys;

   WHILE NOT DM1.cdsVAL_DAT_ASO.Eof DO
   BEGIN
      xcomponente := trim(DM1.cdsVAL_DAT_ASO.FieldByName('OBJETO').AsString);
      FOR i := 0 TO xform.ComponentCount - 1 DO
      BEGIN
         IF UpperCase(xcomponente) = UpperCase(xForm.Components[i].Name) THEN
         BEGIN
            DM1.cdsCamposValida.First;
            DM1.cdsCamposValida.SetKey;
            DM1.cdsCamposValida.FieldByName('CAMPO').AsString := DM1.cdsVAL_DAT_ASO.FieldByName('CAMPO').AsString;
            DM1.cdsCamposValida.GotoKey;

            alerta     := DM1.cdsCamposValida.FieldByName('TIEALE').AsInteger;
            permanente := DM1.cdsCamposValida.FieldByName('VALPER').AsString;
            IF dblTipDoc.Text=xTIPDOCCOD Then
            TwwDBEdit(xForm.Components[i]).Enabled := False;
            IF DM1.cdsVAL_DAT_ASO.FieldByName('FECCAD').AsDateTime - dFechaSys <= alerta THEN
               TwwDBEdit(xForm.Components[i]).Color := clYellow
            ELSE
               TwwDBEdit(xForm.Components[i]).Color := $0097FF97;
        //Ya caduco la Validacion y no es validacion permanente
            IF (DM1.cdsVAL_DAT_ASO.FieldByName('FECCAD').AsDateTime - dFechaSys <= 0) AND (permanente <> 'S') THEN
            BEGIN
               TwwDBEdit(xForm.Components[i]).Color := clWindow;
               TwwDBEdit(xForm.Components[i]).Enabled := True;
               DM1.cdsVAL_DAT_ASO.Edit;
               DM1.cdsVAL_DAT_ASO.FieldByName('STATUS').AsString := '';
               DM1.cdsVAL_DAT_ASO.ApplyUpdates(-1);
            END;
        //Validación Permanenete
            IF permanente = 'S' THEN
            BEGIN
               TwwDBEdit(xForm.Components[i]).Color := $0097FF97;
               IF dblTipDoc.Text=xTIPDOCCOD Then
               TwwDBEdit(xForm.Components[i]).Enabled := False;
            END;
            Break;
         END;
      END;

      DM1.cdsVAL_DAT_ASO.Next;
   END;

END;

PROCEDURE TFMantAsociado.btnObservacionClick(Sender: TObject);
BEGIN
   TRY
      FMantAsociadoObservacion := TFMantAsociadoObservacion.Create(self);
      FMantAsociadoObservacion.ShowModal;
   FINALLY
      FMantAsociadoObservacion.Free;
   END;
END;

PROCEDURE TFMantAsociado.DBDTResCesExit(Sender: TObject);
BEGIN
   IF (dm1.xInsert = '1') AND (DbLlTipAso.Text = 'CE') THEN
   BEGIN
      IF DBDTResCes.Date > StrToDate('31/12/1996') THEN
      BEGIN
         MessageDlg(' Fecha de Cese debe ser Maximo hasta el 31/12/1996 ', mtError, [mbOk], 0);
         DBDTResCes.SetFocus;
      END;
   END;

   IF DbLlTipAso.Text = 'CO' THEN
   BEGIN
      IF DBDTResCes.Date <= Date THEN
      BEGIN
         MessageDlg(' La fecha de fin de Contrato ha Caducado ', mtError, [mbOk], 0);
      END;
   END;

END;

//Valida el Asociado por Dni
FUNCTION TFMantAsociado.validaAsoDni(xDni: STRING): boolean;
VAR
   xsql: STRING;
BEGIN
   XSQL := 'SELECT ''1'' FROM APO201 WHERE ASODNI=' + QuotedStr(XDni);
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;

   IF DM1.cdsMGrupo.RecordCount > 0 THEN
      Result := True
   ELSE
      Result := False;
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';
END;

FUNCTION TFMantAsociado.validaAsoDniNuevo(xDni: STRING): boolean;
VAR
   xsql: STRING;
BEGIN

   XSQL := 'SELECT ''1'' FROM ASO_NUE_CLI WHERE ASODNI=' + QuotedStr(XDni) + ' and EST_AUT_CLI<>''RE''';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;

   IF DM1.cdsMGrupo.RecordCount > 0 THEN
      Result := True
   ELSE
      Result := False;
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';
END;

PROCEDURE TFMantAsociado.dbeLibDniExit(Sender: TObject);
BEGIN
   IF BitSalir.Focused THEN exit;
   IF ( ((dm1.xInsert = '1') AND (Length(trim(dbeLibDni.Text)) <> 0)) OR (xModifDNI) ) AND (dblTipDoc.Text=xTIPDOCCOD) THEN
   BEGIN
      IF NOT xModifDNI THEN
      BEGIN
         IF validaAsoDni(trim(dbeLibDni.Text)) THEN
         BEGIN
            MessageDlg('DNI Ya Existe en Maestro de Asociados', mtError, [mbOk], 0);
            IF (gbIdentidadAso.Enabled) AND (dbeLibDni.Enabled) THEN dbeLibDni.SetFocus;
            Exit;
         END;

         IF validaAsoDniNuevo(trim(dbeLibDni.Text)) THEN
         BEGIN
            MessageDlg('DNI Ya Existe, Solicitud fue creada', mtError, [mbOk], 0);
            IF (gbIdentidadAso.Enabled) AND (dbeLibDni.Enabled) THEN dbeLibDni.SetFocus;
            Exit;
         END;
      END;


    IF (DM1.xOfiDes = '01') Then
    Begin
      IF NOT xModifDNI THEN
      BEGIN
         btnActualizaReniecClick(self);
      END;
    End;


   END;
END;

//Valida si existe asociados en prevision con el mismo apellido paterno y materno
PROCEDURE TFMantAsociado.ValAsoPrev(xnombres: STRING);
BEGIN
   TRY
      FMantAsociadoIguApeLiqAnt := TFMantAsociadoIguApeLiqAnt.Create(self);
      FMantAsociadoIguApeLiqAnt.CargarDatos(xnombres);
      FMantAsociadoIguApeLiqAnt.ShowModal;
      IF NOT FMantAsociadoIguApeLiqAnt.bExistenDatos THEN
         Grabacion2
      ELSE
         IF FMantAsociadoIguApeLiqAnt.bExistenDatos AND FMantAsociadoIguApeLiqAnt.bConfirmado THEN
            Grabacion2;
   FINALLY
      FMantAsociadoIguApeLiqAnt.Free;
   END;
END;

//Grabacion
PROCEDURE TFMantAsociado.GrabacionXX;

VAR
   xAsoid, xCodReg, xSQL, vAsoid, vAsoCodAux, xantes: STRING;
   Boton,xItem: Integer;
BEGIN

   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;

//Inserta o modifica Informacion
   IF DM1.xInsert = '1' THEN
   BEGIN
      Boton := Application.MessageBox('Esta Seguro De Crear Este Nuevo Asociado?', 'Mantenimiento y Control De Asociados', MB_YESNO + MB_ICONQUESTION);
   END
   ELSE
   BEGIN
      Boton := Application.MessageBox('Esta Seguro De Actualizar Datos Del Asociado?', 'Mantenimiento y Control De Asociados', MB_YESNO + MB_ICONQUESTION);
   END;

   IF Boton = ID_YES THEN
   BEGIN
      IF (DM1.cdsAso.fieldbyname('ACTARCREN').AsString <> 'S') AND (xReniec = 'S') AND (dblTipDoc.Text=xTIPDOCCOD) THEN
      BEGIN
         MessageDlg(' Falta Capturar Datos de RENIEC', mtError, [mbOk], 0);
         Exit;
      END

      ELSE
         IF (xvalido <> 'S') AND (BitVerifica.Enabled) AND (xsinvalidar > 0) THEN
         BEGIN
            MessageDlg('Existen Datos Sin Validar ....', mtError, [mbOk], 0);
            BitVerificaClick(self);
            exit;
         END

         ELSE
            IF (xgrabo = 'S') AND (xvalido = 'N') AND (xsinvalidar > 0) AND (dm1.xInsert <> '1') THEN // Validacion de los campos actualizados de RENIEC en forma automatica,siempre que no halla sido validado
            BEGIN
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEPATDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEMATDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOFECNAC']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOSEXO']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASONOMDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASODNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               xgrabo := 'N';
          //Validación automática datos capturados de Reniec
               fcShapeBtn1Click(Self);
            END;

      Screen.Cursor := crHourGlass;

      IF DM1.xInsert = '1' THEN //Genera C digo unico del Asociado y el ASOCODAUX
      BEGIN
         vAsoid := DM1.AsignaAsoId(DM1.sAPO201);
         vAsoCodAux := DM1.AsignaNroAux(DM1.sAPO201, EdtCodMod.Text);
         DM1.cdsAso.FieldByName('ASOID').AsString := vAsoid;
         DM1.cdsAso.FieldByName('ASOCODAUX').AsString := vAsoCodAux;
         DM1.cdsAso.ApplyUpdates(0);
         xAsoid := vAsoid;

        //Inserta en APO205 LA FEECHA DE RESOLUCION
         IF Length(TRIM(DM1.cdsAso.FieldByName('ASORESNOM').AsString)) <> 0 THEN
         BEGIN
            xSQL := 'INSERT INTO APO205(ASOID,ASOCODMOD,ASOCODAUX,ASONRES,ASOFRES,RESID,RESFVIG,FREG,HREG,USUARIO) ' +
               'VALUES (' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOCODAUX').AsString) + ',' +
               QuotedStr(DM1.cdsAso.fieldbyname('ASORESNOM').AsString) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOFRESNOM').AsString) + ',''01'',''S'',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' + QuotedStr(DM1.wUsuario) + ')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;

         IF Length(TRIM(DM1.cdsAso.FieldByName('ASORESCESE').AsString)) <> 0 THEN
         BEGIN
            xSQL := 'INSERT INTO APO205(ASOID,ASOCODMOD,ASOCODAUX,ASONRES,ASOFRES,RESID,RESFVIG,FREG,HREG,USUARIO) ' +
               'VALUES (' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOCODAUX').AsString) + ',' +
               QuotedStr(DM1.cdsAso.fieldbyname('ASORESCESE').AsString) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOFRESCESE').AsString) + ',''04'',''S'',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' + QuotedStr(DM1.wUsuario) + ')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;
      END;

      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASOAPENOM').AsString := TRIM(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) + ' ' + TRIM(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) + ' ' + TRIM(DM1.cdsAso.FieldByName('ASONOMDNI').AsString);
      DM1.cdsAso.FieldByName('ASOAPEPAT').AsString := TRIM(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString);
      DM1.cdsAso.FieldByName('ASOAPEMAT').AsString := TRIM(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString);
      DM1.cdsAso.FieldByName('ASONOMBRES').AsString := TRIM(DM1.cdsAso.FieldByName('ASONOMDNI').AsString);

      xCodReg := CodReg;
      Registro_Aud(xAsoId, '0', xCodReg);
      DM1.cdsAso.ApplyUpdates(-1);

      Apo201_NueCLi;
      DM1.cdsAsoX.Close;
      DM1.cdsAsoX.DataRequest('SELECT '+DM1.XSELECT+' FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=' + QuotedStr(Trim(xAsoId)));
      DM1.cdsAsoX.Open;
      IF DM1.cdsAsoX.RecordCount > 0 THEN
      BEGIN
         DM1.cdsAsoX.Edit;
         DM1.cdsAsoX.fieldbyname('ASOAPENOMDNI').AsString := Trim(EdtApePatDni.Text) + ' ' + Trim(EdtApeMatDni.Text) + ' ' + Trim(EdtAsoNomDni.Text);
         DM1.cdsAsoX.fieldbyname('ASODPTLABID').AsString := Trim(lkcDpto2.Text);
         DM1.cdsAsoX.fieldbyname('ASOPRVLABID').AsString := Trim(lkcProv2.Text);
         DM1.cdsAsoX.fieldbyname('ASODSTLABID').AsString := Trim(lkcDist2.Text);
         DM1.cdsAsoX.fieldbyname('ASODPTO').AsString := Trim(lkcDpto.Text);
         DM1.cdsAsoX.fieldbyname('CIUDID').AsString := Trim(lkcProv.Text);
         DM1.cdsAsoX.fieldbyname('ZIPID').AsString := Trim(lkcDist.Text);
         DM1.cdsAsoX.ApplyUpdates(0);
         DM1.cdsAso.ApplyUpdates(0);
         Registro_Aud(xAsoId, '1', xCodReg);

         DM1.cdsAso.Close;
         Apo201_NueCLi;
         DM1.cdsAso.DataRequest('SELECT '+DM1.XSELECT+' FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=' + QuotedStr(Trim(xAsoId)));
         DM1.cdsAso.Open;

         lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
         lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
         lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
         edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID=' + QuotedStr(Trim(lkcProv2.Text)), 'TGE121', 'CIUDDES');
         edtDist2.Text := DM1.CrgDescrip('ZIPID=' + QuotedStr(Trim(lkcDist2.Text)), 'APO122', 'ZIPDES');
         DbLUniProChange(self);
         DbLUniPagChange(self);
         DbLUsesChange(self);

         IF DM1.xOfiDes > '01' THEN
         BEGIN
            xSQL := 'SELECT ASOID,FHREGISTRO FROM ASO003 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND IDESTADO IS NULL ';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            IF DM1.cdsQry.RecordCount > 0 THEN
            BEGIN
               xSQL := 'UPDATE ASO003 SET DATGENERAL=''S'' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND IDESTADO IS NULL ';
            END
            ELSE
            BEGIN

            DM1.cdsQry.Close;
            xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(xAsoId));
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;

            xSQL := 'INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID, DATGENERAL, ITEM) VALUES ' +
                  '( ' + QuotedStr(Trim(xAsoId)) + ',' + QuotedStr(Trim(EdtApePatDni.Text) + ' ' + Trim(EdtApeMatDni.Text) + ' ' + Trim(EdtAsoNomDni.Text)) + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(DM1.xOfiDes) + ',''S'','+IntToStr(xItem+1)+' )';

            END;
            DM1.cdsQry.Close;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;

         IF (DM1.xCnd <> 'M') AND (DM1.xCnd <> 'AUT') THEN DM1.CrgDatos;
         IF DM1.xSgr = 'N' THEN Close;
         xantes := DM1.xInsert;
         DM1.xInsert := '0';
         FMantAsociado.FormCreate(self);
         DM1.xInsert := xantes;
         BitModifica.Enabled := True;
         BitGrabar.Enabled := False;
         gbIdentidadAso.Enabled := False;
         gbLaboralAso.Enabled := False;
         pnlRegPension.Enabled := False;
         pnlCodPension.Enabled := False;
         btnActualizaReniec.Font.Color := clWhite;
         Timer1.Enabled := False;
         MessageDlg(' <<< Se Grabo Con Exito >>> ', mtInformation, [mbOk], 0);
         xYaGrabe := 'S';
      END
      ELSE
         MessageDlg(' <<< NO se Grabo, comuniquese con sistemas>>> ', mtInformation, [mbOk], 0);
      
   END;

   Screen.Cursor := crDefault;
END;

//Verifica campos validados que esten activos
PROCEDURE TFMantAsociado.VerificaCamposValidados;
VAR
   xsql: STRING;
BEGIN

   DM1.cdsCamposValida.First;
   dm1.cdsVAL_DAT_ASO.First;

   xSql := 'SELECT COUNT(1) CANT FROM APO103 U WHERE U.UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
     + ' AND U.UPAGOID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ' AND U.FLGESCFIS = ''S''';
   DM1.cdsQry25.Close;
   DM1.cdsQry25.DataRequest(xSQL);
   DM1.cdsQry25.Open;

   xsinvalidar := 0;
   WHILE NOT dm1.cdsCamposValida.Eof DO
   BEGIN
      IF dm1.cdsVAL_DAT_ASO.Locate('CAMPO', VarArrayOf([DM1.cdsCamposValida.FieldByName('CAMPO').AsString]), []) THEN
      BEGIN
         IF CDSVALIDA.Locate('CAMPO', VarArrayOf([DM1.cdsCamposValida.FieldByName('CAMPO').AsString]), []) THEN
         BEGIN
            CDSVALIDA.Edit;
            CDSVALIDA.FieldByName('VALIDADO').AsString := '1';
         END
         ELSE
           if ( ((DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02'))
             or
             ((DM1.sAPO201 = 'ASO_NUE_CLI') and (DM1.cdsQry25.FieldByName('CANT').AsInteger > 0)) ) then
           begin
             //no valida la cuenta de ahorros
           end
           else
           begin
               xsinvalidar := xsinvalidar + 1;
           end;
      END
      ELSE
         if ( ((DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02'))
           or
           ((DM1.sAPO201 = 'ASO_NUE_CLI') and (DM1.cdsQry25.FieldByName('CANT').AsInteger > 0)) ) then
         begin
           //no valida la cuenta de ahorros
         end
         else
         begin
            xsinvalidar := xsinvalidar + 1;
         end;
      dm1.cdsCamposValida.Next;
   END;
   DM1.cdsQry25.Close;

END;

PROCEDURE TFMantAsociado.bitImpReniecClick(Sender: TObject);
VAR XSQL:STRING;
BEGIN

   XSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ESTATURA, CODUBIDEPDOM, CODUBIPRODOM,'
   +' CODUBIDISDOM, DESDEPDOM, DESPRODOM, DESDISDOM, CODUBIDEPNAC, CODUBIPRONAC, CODUBIDISNAC, DESDEPNAC, DESPRONAC, DESDISNAC,'
   +' APECAS, PRECODDIRECC, PREDESDIRECC, DESDIRECC, NUMDIRECC, DESETAPA, DESMANZA, DESLOTE, PRECODBLOCK, PREDESBLOCK, DESBLOCK,'
   +' PRECODINTER, PREDESINTER, DESINTER, PRECODURBAN, PREDESURBAN, DESURBAN, CODDOCSUS, FLACONVOT, CODRES, CODGRAINS, NUMDOCSUS,'
   +' CODESTCIV, SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, DIRECCION, FOTO, FIRMA, USUACT, FECACT, FECEXP,'
   +' OFIACT, EQUUSU, UNICO, CASE WHEN FECEXP >= SYSDATE THEN ''VIGENTE'' ELSE ''CADUCADO'' END FLAG_EXPIRA'
   +' FROM INF_RENIEC_CAP'
   +' WHERE DNI = '+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))
   +' AND FOTO IS NOT NULL'
   +' AND (FECEMIDOC IN (SELECT MAX(FECEMIDOC) FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))
   +' AND FOTO IS NOT NULL) )'
   +' ORDER BY  FECACT DESC ';

   DM1.cdsParam.Close;
   DM1.cdsParam.DataRequest(XSQL);
   DM1.cdsParam.Open;
   ppBDEReniec.DataSource := DM1.dsParam;
   CargaImagenes;
   ppFoto.Picture.Assign(DM1.JPG);
   ppFirma.Picture.Assign(DM1.jpgFirma);
   pplDocAltRepRen.Caption := DM1.cdsParam.FieldByName('CODDOCSUS').AsString+' '+DM1.CrgDescrip('CODDOCSUS='+QuotedStr(DM1.cdsParam.FieldByName('CODDOCSUS').AsString),'ASO_DOC_SUS','DESDOCSUS');
   pplEstCivRepRen.Caption := DM1.cdsParam.FieldByName('CODESTCIV').AsString+' '+DM1.cdsParam.FieldByName('ESTCIV').AsString;
   If DM1.cdsParam.FieldByName('SEXO').AsString = 'M' Then
      pplSexoRepRen.Caption   := 'M MASCULINO'
   Else
      pplSexoRepRen.Caption   := 'F FEMENINO';
   pplEstVotRepRen.Caption := DM1.cdsParam.FieldByName('FLACONVOT').AsString+' '+DM1.CrgDescrip('CODESTVOT='+QuotedStr(DM1.cdsParam.FieldByName('FLACONVOT').AsString),'ASO_COD_EST_VOT','DESESTVOT');
   pplGraInsRepRen.Caption := DM1.cdsParam.FieldByName('CODGRAINS').AsString+' '+DM1.cdsParam.FieldByName('GRAINS').AsString;
   If Trim(DM1.cdsParam.FieldByName('CODRES').AsString) = '' Then
       pplResRepRen.Caption := 'X-NINGUNO'
   Else
       pplResRepRen.Caption := DM1.cdsParam.FieldByName('CODRES').AsString+' '+DM1.cdsParam.FieldByName('RESTRICCIONES').AsString;
   pplLugDomRepRen.Caption := DM1.cdsParam.FieldByName('LUGDOM').AsString;
   pplPreUrbImpRen.Caption := DM1.cdsParam.FieldByName('PRECODURBAN').AsString+' '+DM1.cdsParam.FieldByName('PREDESURBAN').AsString;
   pplPreUrbImpRen.Caption := DM1.cdsParam.FieldByName('PRECODURBAN').AsString+' '+DM1.cdsParam.FieldByName('PREDESURBAN').AsString;
   pplDesUrbImpRen.Caption := DM1.cdsParam.FieldByName('DESURBAN').AsString;
   pplPreDirImpRen.Caption := DM1.cdsParam.FieldByName('PRECODDIRECC').AsString+' '+DM1.cdsParam.FieldByName('PREDESDIRECC').AsString;
   pplDesDirImpRen.Caption := DM1.cdsParam.FieldByName('DESDIRECC').AsString;
   pplNumDirImpRen.Caption := DM1.cdsParam.FieldByName('NUMDIRECC').AsString;
   pplEtaDirImpRen.Caption := DM1.cdsParam.FieldByName('DESETAPA').AsString;
   pplPreBloImpRen.Caption := DM1.cdsParam.FieldByName('PRECODBLOCK').AsString+' '+DM1.cdsParam.FieldByName('PREDESBLOCK').AsString;
   pplDesBloImpRen.Caption := DM1.cdsParam.FieldByName('DESBLOCK').AsString;
   pplPreIntImpren.Caption := DM1.cdsParam.FieldByName('PRECODINTER').AsString+' '+DM1.cdsParam.FieldByName('PREDESINTER').AsString;
   pplDesIntImpRen.Caption := DM1.cdsParam.FieldByName('DESINTER').AsString;
   pplManImpren.Caption := DM1.cdsParam.FieldByName('DESMANZA').AsString;
   pplLotImpren.Caption := DM1.cdsParam.FieldByName('DESLOTE').AsString;
   ppRReniec.Print;
   ppRReniec.Stop;
END;

Procedure TFMantAsociado.Grabacion2;
Var
   xCodReg, xSQL, vAsoCodAux, xantes, xvalcodmoddni, xAsoApenomDNI: String; 
   xasoid: String;
   xestcivid,xasodocnum:String;
   wsUbica: WSUbicabilidadSoap;
   tel: ASO_UBICA_TELF_HIS;
   email: ASO_UBICA_EMAIL_HIS;
   dir: ASO_UBICA_DIR_HIS;
   fecAct: TXSDateTime;
   xItem: Integer;
Begin
   xasoid := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   Begin
      Screen.Cursor := crHourGlass;
      xCodReg := CodReg; //Genera Numero de Log
      If '10' + trim(dbeLibDni.Text) = trim(EdtCodMod.Text) Then
      Begin
         xvalcodmoddni     := 'S';
         dbeLibDni.Enabled := False;
         dbeLibDni.Color   := $0097FF97
      End
      Else
         xvalcodmoddni := 'N';
      If DM1.cdsAso.FieldByName('ASOCODAUX').AsString = '' Then
      Begin
         vAsoCodAux := DM1.AsignaNroAux(DM1.sAPO201, EdtCodMod.Text);
         DM1.cdsAso.Edit;
         DM1.cdsAso.FieldByName('ASOCODAUX').AsString := vAsoCodAux;
      End;
      // registra el nuevo dato de Ubicabilidad
      If DM1.sAPO201 = 'APO201' Then
      Begin
         xSql := 'SELECT ASOEMAIL, CENEDUID FROM ' + DM1.sAPO201 + ' WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         if DM1.cdsQry.RecordCount > 0 then
         begin
           if (Trim(dbeAsoEmail.Text) <> '')
           and
             (DM1.cdsQry.FieldByName('ASOEMAIL').AsString <> Trim(dbeAsoEmail.Text))
           then
           begin
             fecAct := TXSDateTime.Create;
             wsUbica := GetWSUbicabilidadSoap(false, '');
             email := ASO_UBICA_EMAIL_HIS.Create;
             email.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
             email.CODPROV := 3; //Previsión
             email.CODPROC := 3; //Actualización de Datos
             fecAct.AsDateTime := DM1.FechaSys();
             email.FECACT := fecAct;
             email.USUREG := DM1.wUsuario;
             email.ASOEMAIL := Trim(dbeAsoEmail.Text);
             wsUbica.Crear_Ubicabilidad_Email(email);
             email.Free;
           end;
           if (Trim(DM1.cdsAso.FieldByName('CENEDUID').AsString) <> '')
           and
             (DM1.cdsQry.FieldByName('CENEDUID').AsString <> Trim(DM1.cdsAso.FieldByName('CENEDUID').AsString))
           then
           begin
             xSql := 'SELECT C.UBIGEO_DIR, C.NOMCENEDU, C.DIREC FROM ASO_CEN_EDU C WHERE C.CENEDUID = ' + QuotedStr(DM1.cdsAso.FieldByName('CENEDUID').AsString);
             DM1.cdsClaCre.Close;
             DM1.cdsClaCre.DataRequest(xSql);
             DM1.cdsClaCre.Open;
             if DM1.cdsClaCre.RecordCount > 0 then
             begin
               fecAct := TXSDateTime.Create;
               wsUbica := GetWSUbicabilidadSoap(false, '');
               dir := ASO_UBICA_DIR_HIS.Create;
               dir.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
               dir.CODPROV := 3; //Previsión
               dir.CODPROC := 3; //Actualización de Datos
               dir.CODTIPDIR := 2; //Laboral
               dir.CODDPTO_TRANSACCIONAL := Copy(Trim(DM1.cdsClaCre.FieldByName('UBIGEO_DIR').AsString),1,2);
               dir.CODPRV_TRANSACCIONAL := Copy(Trim(DM1.cdsClaCre.FieldByName('UBIGEO_DIR').AsString),1,4);
               dir.CODDIST_TRANSACCIONAL := Copy(Trim(DM1.cdsClaCre.FieldByName('UBIGEO_DIR').AsString),1,6);
               fecAct.AsDateTime := DM1.FechaSys();
               dir.FECACT := fecAct;
               dir.ASODIR := Trim(DM1.cdsClaCre.FieldByName('DIREC').AsString);
               dir.DESOBS := 'CEN.EDU.: ' + Trim(DM1.cdsClaCre.FieldByName('NOMCENEDU').AsString);
               dir.USUREG := DM1.wUsuario;
               wsUbica.Crear_Ubicabilidad_Direccion(dir);
               dir.Free;
             end;
           end;
         end;
       end;
      IF (pnlResoluciones.Enabled) AND (DM1.sAPO201 = 'ASO_NUE_CLI') THEN
      BEGIN
      //Inserta en ASO_RESOLUCIONES
         XSQL := 'INSERT INTO ASO_RESOLUCIONES_NUE (SOLICITUD, ASOID,ASOCODMOD,ASOCODAUX,ASORESNOM,ASOFRESNOM,ASORESCESE,ASOFRESCESE,RESVIG,CORRELATIVO,USUARIO,FREG,HREG,REINGRESO) VALUES (' +
            QuotedStr(DM1.cdsAso.FieldByName('SOLICITUD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
            QuotedStr(dbeNroRes.Text) + ',' +
            QuotedStr(DBDTResNom.Text) + ',' +
            QuotedStr(dbeNroCes.Text) + ',' +
            QuotedStr(DBDTResCes.Text) + ',' +
            QuotedStr('S') + ',' +
            QuotedStr('01') + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' +
            QuotedStr('N') + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      END;
      xAsoApeNomDni := '';
      If Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString)+ ' ';
      If Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString)+ ' ';
      If Trim(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString)+ ' ';
      xAsoApeNomDni := xAsoApeNomDni + Trim(DM1.cdsAso.FieldByName('ASONOMDNI').AsString);
      Registro_Aud(xAsoId, '0', xCodReg); //Antes del Cambio
      If dblTipDoc.Text<>xTIPDOCCOD Then
      Begin
        estadocivil(dblEstadoCivil.Text);
        xestcivid  :=Dm1.cdsUSES.Fieldbyname('ESTCIVID').AsString;
        xasodocnum :=edtnumdoc.Text;
      End
      Else
      Begin
        estadocivil(edtEstadoCivil.Text);
        xestcivid  :=Dm1.cdsUSES.Fieldbyname('ESTCIVID').AsString;
        xasodocnum :=dbeLibDni.Text;
      End;
      XSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ' +
      'ASOAPENOM=' + QuotedStr(xAsoApeNomDni)+ ',' +
      'ASOAPEPAT=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) + ',' +
      'ASOAPEMAT=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) + ',' +
      'ASONOMBRES=' + QuotedStr(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) + ',' +
      'ASOEMAIL=' + QuotedStr(DM1.cdsAso.FieldByName('ASOEMAIL').AsString) + ',' +
      'TIPDOCCOD='+ QuotedStr(dbltipdoc.Text) + ',' +
      'ASOAPENOMDNI=' + QuotedStr(xAsoApenomDNI) + ',' +
      'ESTCIVID='+ QuotedStr(trim(xestcivid)) + ',' +
      'ASODOCNUM='+QuotedStr(trim(xasodocnum)) + ',' +
      'ASODPTO=' + QuotedStr(trim(lkcDpto.Text)) + ',' +
       'CIUDID=' + QuotedStr(trim(lkcProv.Text)) + ',' +
       'ZIPID=' + QuotedStr(trim(lkcDist.Text)) + ',' +
       'ASODIR=' + QuotedStr(Copy(Trim(dbeDirec.Text), 1, 250)) + ',' +
       'ASOAPEPATDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) + ',' +
       'ASOAPEMATDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) + ',' +
       'ASOAPECASDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString) + ',' +
       'ASONOMDNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) + ',' +
       'ASODNI=' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
       'ASOFECNAC=' + QuotedStr(DM1.cdsAso.FieldByName('ASOFECNAC').AsString) + ',' +
       'ASOSEXO=' + QuotedStr(DM1.cdsAso.FieldByName('ASOSEXO').AsString) + ',' +
       'ASOTELF1=' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELF1').AsString) + ',' +
       'ASOTELF2=' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELF2').AsString) + ',' +
       'ASOCODMOD=' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
       'ASOCODAUX=' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
       'ASOTIPID=' + QuotedStr(DbLlTipAso.Text) + ',' +
       'REGPENID=' + QuotedStr(DbLlRegPen.Text) + ',' +
       'CODAFP=' + QuotedStr(DbLlAfp.Text) + ',' +
       'UPROID=' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
       'UPAGOID=' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
       'USEID=' + QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
       'ASORESNOM=' + QuotedStr(DM1.cdsAso.FieldByName('ASORESNOM').AsString) + ',' +
       'ASOFRESNOM=' + QuotedStr(DM1.cdsAso.FieldByName('ASOFRESNOM').AsString) + ',' +
       'ASORESCESE=' + QuotedStr(DM1.cdsAso.FieldByName('ASORESCESE').AsString) + ',' +
       'ASOFRESCESE=' + QuotedStr(DM1.cdsAso.FieldByName('ASOFRESCESE').AsString) + ',' +
       'ASOCODPAGO=' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODPAGO').AsString) + ',' +
       'ASONCTA=' + QuotedStr(DM1.cdsAso.FieldByName('ASONCTA').AsString) + ',' +
       'CARGO=' + QuotedStr(DM1.cdsAso.FieldByName('CARGO').AsString) + ',' +
       'SITCTA=' + QuotedStr(DM1.cdsAso.FieldByName('SITCTA').AsString) + ',' +
       'ASODESLAB=' + QuotedStr(DM1.cdsAso.FieldByName('ASODESLAB').AsString) + ',' +
         'ASODIRLAB=' + QuotedStr(DM1.cdsAso.FieldByName('ASODIRLAB').AsString) + ',' +
         'ASOTELLAB=' + QuotedStr(DM1.cdsAso.FieldByName('ASOTELLAB').AsString) + ',' +
         'ASODPTLABID=' + QuotedStr(trim(lkcDpto2.Text)) + ',' +
         'ASOPRVLABID=' + QuotedStr(trim(lkcProv2.Text)) + ',' +
         'ASODSTLABID=' + QuotedStr(trim(lkcDist2.Text)) + ',' +
         'CENEDUID=' + QuotedStr(dbeCenEduId.Text) + ',' +
         'VALCODMODDNI=' + QuotedStr(xvalcodmoddni) + ',' +
         'USUARIO=' + QuotedStr(DM1.wUsuario) + ',' +
         'FREG=' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
         'HREG=SYSDATE,' +
         'ACTARCREN=' + QuotedStr(DM1.cdsAso.FieldByName('ACTARCREN').AsString) +','+
         'CODPENSION=' + QuotedStr(DM1.cdsAso.FieldByName('CODPENSION').AsString) +','+
         'CODLEYPEN=' + QuotedStr(DM1.cdsAso.FieldByName('CODLEYPEN').AsString) +
         ',' + 'CODPRE=' + QuotedStr(DM1.cdsAso.FieldByName('CODPRE').AsString) +
         ' WHERE ' + DM1.sAso_where + ' ASOID= ' + QuotedStr(XASOID);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Registro_Aud(xAsoId, '1', xCodReg);
      IF (DM1.xOfiDes > '01') AND (DM1.xOfiDes <> '27') THEN
      BEGIN
         xSQL := 'SELECT ASOID,FHREGISTRO FROM ASO003 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND IDESTADO IS NULL ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         IF DM1.sAPO201 = 'APO201' THEN
         BEGIN
            IF DM1.cdsQry.RecordCount > 0 THEN
            BEGIN
               xSQL := 'UPDATE ASO003 SET DATGENERAL=''S'' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND IDESTADO IS NULL ';
            END
            ELSE
            BEGIN
               DM1.cdsQry.Close;
               xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(xAsoId));
               DM1.cdsQry.DataRequest(xSQL);
               DM1.cdsQry.Open;
               xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
               xSQL := 'INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID, DATGENERAL, ITEM) VALUES ' +
                 '( ' + QuotedStr(Trim(xAsoId)) + ',' + QuotedStr(Trim(EdtApePatDni.Text) + ' ' + Trim(EdtApeMatDni.Text) + ' ' + Trim(EdtAsoNomDni.Text)) + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(DM1.xOfiDes) + ',''S'','+IntToStr(xItem+1)+' )';
            END;
            DM1.cdsQry.Close;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;
      END;
      IF (DM1.cdsAso.fieldbyname('ACTARCREN').AsString <> 'S') AND (xReniec = 'S') and (dblTipDoc.Text=xTIPDOCCOD) THEN
      BEGIN
         IF DM1.xOfiDes = '01' THEN
            MessageDlg(' Falta Capturar Datos de RENIEC', mtError, [mbOk], 0);
      END
      ELSE
      BEGIN
         IF ((xvalido <> 'S') AND (BitVerifica.Enabled AND BitVerifica.Visible) AND (xsinvalidar > 0)) or
             (xActRENIEC='S') THEN
         Begin
           Validacionautomatica(DM1.cdsAso.FieldbyName('ASODNI').AsString,DM1.cdsAso.FieldbyName('ASOID').AsString);
           pintaCamposValidados(Self);
           VerificaCamposValidados;
         End;
         IF (xvalido <> 'S') AND (BitVerifica.Enabled AND BitVerifica.Visible) AND (xsinvalidar > 0) THEN
         BEGIN
            IF MessageDlg('Existen Datos Sin Validar.... Desea Validarlos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BEGIN
               BitGrabar.Enabled := False;
               BitVerificaClick(self);
               exit;
            END;
         END
         ELSE
            IF (xgrabo = 'S') AND (xvalido = 'N') AND (xsinvalidar > 0) AND (dm1.xInsert <> '1') THEN // Validacion de los campos actualizados de RENIEC en forma automatica,siempre que no halla sido validado
            BEGIN
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEPATDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOAPEMATDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOFECNAC']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASOSEXO']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASONOMDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               IF CDSVALIDA.Locate('CAMPO', VarArrayOf(['ASONDNI']), []) THEN
               BEGIN
                  CDSVALIDA.Edit;
                  CDSVALIDA.FieldByName('FLAG').AsString := '1';
               END;
               xgrabo := 'N';
               BitGrabar.Enabled := False;
               fcShapeBtn1Click(Self);
            END;
      END;
      IF (DM1.xCnd <> 'M') AND (DM1.xCnd <> 'AUT') THEN DM1.CrgDatos;
      IF DM1.xSgr = 'N' THEN Close;
      xantes := DM1.xInsert;
      DM1.xInsert := '0';
      DM1.cdsAso.Close;
      Apo201_NueCLi;
      DM1.cdsAso.DataRequest('SELECT '+DM1.XSELECT+' FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=' + QuotedStr(Trim(xAsoId)));
      DM1.cdsAso.Open;
      FMantAsociado.FormCreate(self);
      DM1.xInsert := xantes;
      BitModifica.Enabled := True;
      BitGrabar.Enabled := False;
      gbIdentidadAso.Enabled := False;
      gbLaboralAso.Enabled := False;
      pnlRegPension.Enabled := False;
      pnlCodPension.Enabled := False;
      IF DM1.xOfiDes > '01' THEN
         btnActualizaReniec.Visible := False
      ELSE
      BEGIN
         btnActualizaReniec.Font.Color := clWhite;
         Timer1.Enabled := False;
      END;

      edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID=' + QuotedStr(Trim(lkcProv2.Text)), 'TGE121', 'CIUDDES');
      edtDist2.Text := DM1.CrgDescrip('ZIPID=' + QuotedStr(Trim(lkcDist2.Text)), 'APO122', 'ZIPDES');
      edtTipAso.Text := DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(DbLlTipAso.Text)), 'APO107', 'ASOTIPDES');
      DbLUniProChange(self);
      DbLUniPagChange(self);
      DbLUsesChange(self);
      lblAsoApeNom.Caption := DM1.cdsAso.fieldbyname('ASOAPENOM').AsString + ' (Dato de Planillas)';

      MessageDlg('<<<Se Grabó Con Exito>>>', mtInformation, [mbOk], 0);

      IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
      BEGIN
        xInsertaTicket := False;
        ModiDestinofTickes;
        xInsertaTicket := True;
      END;
   END;
END;

//Genera datos de la Ficha de Actualizacion
PROCEDURE TFMantAsociado.FichaActualizacion;
VAR
   xSql, foto, xValReniec: STRING;
BEGIN
   CDSINCOMPLETOS.EmptyDataSet;
   DM1.xsindata := 0;
   xValReniec := '';
   foto := trim(DM1.cdsAso.FieldByName('IDIMAGE').Asstring);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT USERNOM FROM USERTABLE WHERE USERID=''' + DM1.WUsuario + '''');
   DM1.cdsGradoI.Open;
   ppusuario.Caption := DM1.WUsuario + '-' + DM1.cdsGradoI.FieldByname('USERNOM').AsString;
   ppMaquina.Caption := DM1.wcomputadora;
   ppFechaHora.Caption := DM1.FechaHora;
   ppLusuario.Caption := ppUsuario.Caption;
   ppLMaquina.Caption := ppMaquina.Caption;
   ppLFechaHora.Caption := ppFechaHora.Caption;

  //Datos a Imprimir
   pplCodMod.Caption := EdtCodMod.Text;
   VerificaSinData(EdtCodMod.Text, 'CODIGO MODULAR');
   ppLNombres.Caption := EdtAsoNomDni.Text;
   VerificaSinData(EdtAsoNomDni.Text, 'NOMBRES');
   IF Length(trim(ppLApePat.Caption)) + Length(trim(ppLApeMat.Caption)) = 0 THEN
      VerificaSinData(EdtApePatDni.Text, 'APELLIDO PATERNO y/o APELLIDO MATERNO');
   ppLApePat.Caption := EdtApePatDni.Text;
   ppLApeMat.Caption := EdtApeMatDni.Text;
   pplAsoEmail.Caption := dbeAsoEmail.Text;

   VerificaSinData(DbLlRegPen.Text, 'REGIMEN DE PENSION');
   IF TRIM(DbLlRegPen.Text) = '01' THEN
      ppLRegPen1.Visible := True
   ELSE
      ppLRegPen1.Visible := False;
   IF TRIM(DbLlRegPen.Text) = '02' THEN
      ppLRegPen2.Visible := True
   ELSE
      ppLRegPen2.Visible := False;
   IF TRIM(DbLlRegPen.Text) = '03' THEN
   BEGIN
      ppLRegPen3.Visible := True;
      VerificaSinData(DbLlAfp.Text, 'AFP');
      xSql := 'SELECT PROVDES FROM TGE201 WHERE PROV=''A00' + TRIM(DbLlAfp.Text) + ''' ';
      DM1.cdsGradoI.Close;
      DM1.cdsGradoI.DataRequest(xSql);
      DM1.cdsGradoI.Open;
      pplAFP.Caption := DM1.cdsGradoI.FieldByName('PROVDES').AsString;
   END
   ELSE
      ppLRegPen3.Visible := False;

  //Unidad de Proceso
   DM1.cdsGradoI.Close;
   xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(trim(DbLUniPro.Text));
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   VerificaSinData(DbLUniPro.Text, 'UNIDAD DE PROCESO');
   lblUniPro.Caption := DbLUniPro.Text + ' ' + DM1.cdsGradoI.FieldByName('UPRONOM').AsString;

  //Unidad de Pago
   DM1.cdsGradoI.Close;
   xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = ' + QuotedStr(Trim(DbLUniPro.Text)) + ' AND UPAGOID = ' + QuotedStr(Trim(DbLUniPag.Text));
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   VerificaSinData(DbLUniPag.Text, 'UNIDAD DE PAGO');
   lblCodPag.Caption := Trim(DbLUniPag.Text) + ' ' + DM1.cdsGradoI.FieldByName('UPAGONOM').AsString;

   DM1.cdsGradoI.Close;
   xsql := 'select GRAINSTID, CONVIVID, TIPPROID, INMUEBLE, NROHIJOS, ESTCIVID, VEHICULO from ' +
      '(SELECT MAX(ITEM) ITEM FROM APO206 WHERE ASOID = ''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''') A, APO206 B ' +
      'Where ASOID = ''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND A.ITEM = B.ITEM';
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   pplestciv.Caption := DM1.cdsGradoI.FieldByName('ESTCIVID').AsString;
   VerificaSinData(DM1.cdsGradoI.FieldByName('ESTCIVID').AsString, 'ESTADO CIVIL');

   VerificaSinData(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString, 'GRADO DE INSTRUCCION');
   IF TRIM(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString) = '02' THEN
      ppLgrado2.Visible := True
   ELSE
      ppLgrado2.Visible := False;
   IF TRIM(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString) = '03' THEN
      ppLgrado3.Visible := True
   ELSE
      ppLgrado3.Visible := False;
   IF TRIM(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString) = '04' THEN
      ppLgrado4.Visible := True
   ELSE
      ppLgrado4.Visible := False;
   IF TRIM(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString) = '05' THEN
      ppLgrado5.Visible := True
   ELSE
      ppLgrado5.Visible := False;

   VerificaSinData(DM1.cdsGradoI.FieldByName('CONVIVID').AsString, 'CONDICION DE VIVIENDA');
   IF TRIM(DM1.cdsGradoI.FieldByName('CONVIVID').AsString) = '01' THEN
      ppLCondViv1.Visible := True
   ELSE
      ppLCondViv1.Visible := False;
   IF TRIM(DM1.cdsGradoI.FieldByName('CONVIVID').AsString) = '02' THEN
      ppLCondViv2.Visible := True
   ELSE
      ppLCondViv2.Visible := False;
   IF TRIM(DM1.cdsGradoI.FieldByName('CONVIVID').AsString) = '03' THEN
      ppLCondViv3.Visible := True
   ELSE
      ppLCondViv3.Visible := False;

   IF TRIM(DM1.cdsGradoI.FieldByName('TIPPROID').AsString) = '01' THEN
      ppLPropie1.Visible := True
   ELSE
      ppLPropie1.Visible := False;
   IF TRIM(DM1.cdsGradoI.FieldByName('TIPPROID').AsString) = '02' THEN
      ppLPropie2.Visible := True
   ELSE
      ppLPropie2.Visible := False;
   IF TRIM(DM1.cdsGradoI.FieldByName('TIPPROID').AsString) = '03' THEN
      ppLPropie3.Visible := True
   ELSE
      ppLPropie3.Visible := False;

  //INMUEBLE
   IF Length(TRIM(dm1.cdsGradoI.FieldByname('INMUEBLE').AsString)) = 0 THEN
      ppLNegocioNo.Visible := True
   ELSE
      ppLNegocioNo.Visible := False;
   IF Length(TRIM(dm1.cdsGradoI.FieldByname('INMUEBLE').AsString)) > 0 THEN
      ppLNegocioSi.Visible := True
   ELSE
      ppLNegocioSi.Visible := False;
   ppLInmueble.Caption := dm1.cdsGradoI.FieldByname('INMUEBLE').AsString;

  //HIJOS
   ppLNroHijos.Caption := IntToStr(dm1.cdsGradoI.FieldByname('NROHIJOS').asInteger);

  //VEHICULO
   IF Length(TRIM(dm1.cdsGradoI.FieldByname('VEHICULO').AsString)) <= 2 THEN
      pplVehiculoNo.Visible := True
   ELSE
      pplVehiculoNo.Visible := False;
   IF Length(TRIM(dm1.cdsGradoI.FieldByname('VEHICULO').AsString)) > 2 THEN
      pplVehiculoSi.Visible := True
   ELSE
      pplVehiculoSi.Visible := False;
   pplVehiculo.Caption := dm1.cdsGradoI.FieldByname('VEHICULO').AsString;

  //Imprimiendo estado civil
   xSql := 'SELECT ESTCIVDES FROM TGE125 WHERE ESTCIVID = ' + QuotedStr(TRIM(pplestciv.Caption));
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   pplestciv.Caption := DM1.cdsGradoI.FieldByName('ESTCIVDES').AsString;

  //UGEL
   VerificaSinData(DbLUses.Text, 'USE/UGEL');
   DM1.cdsGradoI.Close;
   xSql := 'SELECT USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' AND UPROID = ' + QuotedStr(trim(DbLUniPro.Text))
      + ' AND UPAGOID = ' + QuotedStr(trim(DbLUniPag.Text)) + ' AND USEID = ' + QuotedStr(trim(DbLUses.Text));
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   lblUgel.Caption := DbLUses.Text + ' ' + DM1.cdsGradoI.FieldByName('USENOM').AsString;

  //Cuenta de Ahorro
   ppLCtaAhorro.Caption := trim(dbeCuenta.Text);
   VerificaSinData(dbeCuenta.Text, 'CUENTA DE AHORRO');
   pplEstadocta.Caption := '(' + trim(dbeSitCta.Text) + ')';
   VerificaSinData(dbeSitCta.Text, 'SITUACION DE LA CUENTA');

  //Sexo del asociado
   VerificaSinData(DbLlSexo.Text, 'SEXO');
   IF DbLlSexo.Text = 'F' THEN
      ppLsexo.Caption := 'Femenino'
   ELSE
      IF DbLlSexo.Text = 'M' THEN ppLsexo.Caption := 'Masculino';

  //Situación del asociado
   VerificaSinData(DbLlTipAso.Text, 'TIPO DE ASOCIADO');
   IF DbLlTipAso.Text = 'DO' THEN
   BEGIN

      VerificaSinData(dbeNroRes.Text, 'NRO DE RESOLUCION DE NOMBRAMIENTO');
      VerificaSinData(DBDTResNom.Text, 'FECHA DE RESOLUCION DE NOMBRAMIENTO');
      ppLDOFlag.Visible := True;
      ppLCEFlag.Visible := False;
   END
   ELSE
      IF DbLlTipAso.Text = 'CE' THEN
      BEGIN
         VerificaSinData(dbeNroCes.Text, 'NRO DE RESOLUCION DE CESE');
         VerificaSinData(DBDTResCes.Text, 'FECHA DE RESOLUCION DE CESE');
         ppLDOFlag.Visible := False;
         ppLCEFlag.Visible := True;
      END;

  //Flag de tipo de Documento (SIEMPRE DNI)
   ppLDNIFLAG.Visible := True;

   pptelefono.Caption := trim(dbeTel1.Text);
   VerificaSinData(dbeTel1.Text, 'TELEFONO (DOMICILIO)');
   ppLDni.Caption := dbeLibDni.Text;
   If dblTipDoc.Text=xTIPDOCCOD Then
   VerificaSinData(dbeLibDni.Text, 'DNI');
   ppLFecNac.Caption := dbdtFecNac.Text;
   VerificaSinData(dbdtFecNac.Text, 'FECHA DE NACIMIENTO');

   ppLResCes.Caption := dbeNroCes.Text;
   ppLFResCes.Caption := DBDTResCes.Text;

   ppLResNom.Caption := dbeNroRes.Text;
   ppLFResNom.Caption := DBDTResNom.Text;

   ppLAsodir.Caption := dbeDirec.Text;
   VerificaSinData(dbeDirec.Text, 'DIRECCION (DOMICILIO)');

   VerificaSinData(lkcDpto.Text, 'DEPARTAMENTO (DOMICILIO)');
   VerificaSinData(lkcProv.Text, 'PROVINCIA (DOMICILIO)');
   VerificaSinData(lkcDist.Text, 'DISTRITO (DOMICILIO)');
   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist.Text, 1, 2) + '0000');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir.Caption := DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist.Text, 1, 4) + '00');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir.Caption := ppLUbigeoDir.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   xSql := 'SELECT TRIM(UBIGEODES) DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(lkcDist.Text);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir.Caption := ppLUbigeoDir.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

  //VerificaSinData(dbeTel2.Text);
   ppLTelefonoRef.Caption := trim(dbeTel2.Text);

  //Descripción del lugar donde trabaja
   ppLAsoCenLab.Caption := measoDesLab.Text;
   ppLAsoDirLab.Caption := measoDirLab.Text;
   ppLAsoTelLab.Caption := measoTelLab.Text;

   IF DbLlTipAso.Text = 'DO' THEN
   BEGIN
      VerificaSinData(measodeslab.Text, 'CENTRO LABORAL');
      VerificaSinData(measodirlab.Text, 'DIRECCION (CENTRO LOABORAL)');
      VerificaSinData(measotellab.Text, 'TELEFONO (CENTRO LABORAL)');
      VerificaSinData(lkcDpto2.Text, 'DEPARTAMENTO (CENTRO LABORAL)');
      VerificaSinData(lkcProv2.Text, 'PROVINCIA (CENTRO LABORAL)');
      VerificaSinData(lkcDist2.Text, 'DISTRITO (CENTRO LABORAL )');
   END;

   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist2.Text, 1, 2) + '0000');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab.Caption := DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;
   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist2.Text, 1, 4) + '00');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab.Caption := ppLUbigeoLab.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;
   xSql := 'SELECT TRIM(UBIGEODES) DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(lkcDist2.Text);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab.Caption := ppLUbigeoLab.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT IDFIRMA,IDASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + '''');
   DM1.cdsGradoI.Open;
   xValReniec := DM1.cdsGradoI.FieldByName('ACTDATREN').AsString;

   pplSinFot.Visible := False;
   pplSinFirma.Visible := False;
   IF (dm1.xFto = 'N') AND (DM1.cdsGradoI.FieldByName('IDASO').AsString = 'S') THEN
   BEGIN
      pplSinFot.Visible := True;
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FOTO'
   END
   ELSE
      IF dm1.xFto = 'S' THEN
         ppImgfoto.Picture := ImagAso.Picture;

   IF (dm1.xFma = 'N') AND (DM1.cdsGradoI.FieldByName('IDFIRMA').AsString = 'S') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      pplSinFirma.Visible := True;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FIRMA'
   END
   ELSE
      IF dm1.xFma = 'S' THEN
         ppImgFrima.Picture := ImaFirma.Picture;

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT ACTARCREN FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + '''');
   DM1.cdsGradoI.Open;
   IF DM1.cdsGradoI.FieldByName('ACTARCREN').AsString = 'S' THEN
      pplVerificaReniec.Caption := 'VERIFICADO DE RENIEC'
   ELSE
      IF xValReniec = 'S' THEN
      BEGIN
         pplVerificaReniec.Caption := 'NO VERIFICADO DE RENIEC';
         DM1.cdsGradoI.Close;
         DM1.cdsGradoI.DataRequest('SELECT IDFIRMA,IDASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + '''');
         DM1.cdsGradoI.Open;
         IF DM1.cdsGradoI.FieldByName('ACTDATREN').AsString = 'S' THEN
         BEGIN
            DM1.xsindata := DM1.xsindata + 1;
            CDSINCOMPLETOS.Insert;
            CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO ACTUALIZO DE RENIEC'
         END;
      END;

   IF DM1.xsindata > 0 THEN
      pplDatIncompletos.Visible := True
   ELSE
      pplDatIncompletos.Visible := False;

   CDSINCOMPLETOS.First;
   PPDBP1.DataSource := dm1.dsAso;
   ppBDEReniec.DataSource := DSINCOMPLETOS;
   PPR1.Print;
   GrabaLogImpFicha;
   PPR1.Stop;
END;

//Verifica el campo sin data
PROCEDURE TFMantAsociado.VerificaSinData(xVerData, xfaLtante: STRING);
BEGIN
   IF Length(trim(xVerData)) = 0 THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := xfaltante;
   END;
END;

PROCEDURE TFMantAsociado.BitFichaAsoClick(Sender: TObject);
BEGIN
   FichaActualizacion2;
END;

PROCEDURE TFMantAsociado.DbLlTipAsoExit(Sender: TObject);
BEGIN
   IF Length(trim(edtTipAso.Text)) = 0 THEN
   BEGIN
      Beep;
      MessageDlg('Tipo de Asociado no Catalogado...', mtError, [mbOk], 0);
      DbLlTipAso.SetFocus;
      Exit;
   END;

   if (copy(DM1.cdsAso.FieldByname('ASONCTA').AsString,1,3)='CI_') and
      (copy(DM1.cdsAso.FieldByname('ASOTIPID').AsString,1,3)<>'CE') then
   Begin
      Beep;
      MessageDlg('El Tipo de Asociado debe ser CEsante si hay Cuenta Interna asignada', mtError, [mbOk], 0);
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByname('ASOTIPID').AsString := 'CE';
      DM1.cdsAso.Post;
      DbLlTipAso.SetFocus;
      Exit;
   End;

   IF DbLlTipAso.text = 'CO' THEN
   BEGIN
      lblResNom.Caption := 'N° Contrato';
      lblFecNom.Caption := 'Fec.Inicio';
      lblResCes.Caption := '';
      dbeNroCes.Visible := False;
      lblFecCes.Caption := 'Fec.Fin';
   END
   ELSE
   BEGIN
      lblResNom.Caption := 'N°Resol.Nomb';
      lblFecNom.Caption := 'Fecha';
      lblResCes.Caption := 'N°Resol.Cese';
      dbeNroCes.Visible := True;
      lblFecCes.Caption := 'Fecha';
   END;
END;

PROCEDURE TFMantAsociado.Button10Click(Sender: TObject);
BEGIN
   ActivaPantPrincipal;
END;

//IBservaciones sin resolver
PROCEDURE TFMantAsociado.ObsSinResolver(xasoid: STRING);
VAR
   xsql: STRING;
BEGIN
   CDSOBSSINRESOLVER.EmptyDataSet;
   XSQL := 'SELECT A.ASOID, A.CODOBS, C.OFDESNOM OFICINA, B.DESOBS, CASE WHEN B.RECOBS = ''S'' THEN ''RESTRICTIVO'' ELSE ''NO RESTRICTIVO'' END CARACTER,'
   +' A.OBSERVA COMENTARIO, A.USUARIO, A.FECHA, A.EQUUSU, A.OFIUSU FROM OBSERVACION_ASOCIADO A,  ASO_TIP_OBS_MAN B, APO110 C'
   +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND  A.CODOBS = B.CODOBS AND A.OFIUSU = C.OFDESID'
   +' ORDER BY A.FECHA DESC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   IF Dm1.cdsQry.RecordCount > 0 THEN
   BEGIN
      IF Dm1.cdsQry.FieldByName('CODOBS').AsString <> '07' THEN //Si es 07 las observaciones ya fueron resueltas
      BEGIN
         WHILE NOT Dm1.cdsQry.Eof DO
         BEGIN
            IF Dm1.cdsQry.FieldByName('CODOBS').AsString = '07' THEN Break;
            CDSOBSSINRESOLVER.Insert;
            CDSOBSSINRESOLVER.FieldByName('PROCEDENCIA').AsString := 'ASOCIADOS';
            CDSOBSSINRESOLVER.FieldByName('OFICINA').AsString := Dm1.cdsQry.FieldByName('OFICINA').AsString;
            CDSOBSSINRESOLVER.FieldByName('OBSERVACION').AsString := Dm1.cdsQry.FieldByName('DESOBS').AsString;
            CDSOBSSINRESOLVER.FieldByName('COMENTARIO').AsString := Dm1.cdsQry.FieldByName('COMENTARIO').AsString;
            CDSOBSSINRESOLVER.FieldByName('CARACTER').AsString := Dm1.cdsQry.FieldByName('CARACTER').AsString;
            CDSOBSSINRESOLVER.FieldByName('USUARIO').AsString := Dm1.cdsQry.FieldByName('USUARIO').AsString;
            CDSOBSSINRESOLVER.FieldByName('FECHA').AsString := Dm1.cdsQry.FieldByName('FECHA').AsString;
            Dm1.cdsQry.Next
         END;
      END;
   END;
   XSQL := 'Select C.OFDESNOM, A.MTOOBSR, A.FECOBSR, A.USROBSR From OBS000 A, USERTABLE B, APO110 C'
   +' Where A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
   +' And A.FECAPRO Is Null And A.USROBSR = B.USERNOM And B.ORIGEN = C.OFDESID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   IF Dm1.cdsQry.RecordCount > 0 THEN
   BEGIN
      WHILE NOT Dm1.cdsQry.Eof DO
      BEGIN
         CDSOBSSINRESOLVER.Insert;
         CDSOBSSINRESOLVER.FieldByName('PROCEDENCIA').AsString := 'CREDITOS';
         CDSOBSSINRESOLVER.FieldByName('CARACTER').AsString := 'RESTRICTIVO';
         CDSOBSSINRESOLVER.FieldByName('OFICINA').AsString := Dm1.cdsQry.FieldByName('OFDESNOM').AsString;
         CDSOBSSINRESOLVER.FieldByName('OBSERVACION').AsString := Dm1.cdsQry.FieldByName('MTOOBSR').AsString;
         CDSOBSSINRESOLVER.FieldByName('FECHA').AsString := Dm1.cdsQry.FieldByName('FECOBSR').AsString;
         CDSOBSSINRESOLVER.FieldByName('USUARIO').AsString := Dm1.cdsQry.FieldByName('USROBSR').AsString;
         Dm1.cdsQry.Next
      END;
   END;
   DM1.cdsQry.IndexFieldNames := '';
   CDSOBSSINRESOLVER.Last;
   DM1.cdsQry.Close;
END;

//Valida si existe algun campo en blanco;
PROCEDURE TFMantAsociado.validar;
VAR
   xValReniec: STRING;
   xSql: string;
BEGIN
   CDSINCOMPLETOS.EmptyDataSet;
   DM1.xsindata := 0;

   VerificaSinData(EdtCodMod.Text, 'CODIGO MODULAR');
   VerificaSinData(EdtAsoNomDni.Text, 'NOMBRES');
   IF Length(trim(ppLApePat2.Caption)) + Length(trim(ppLApeMat2.Caption)) = 0 THEN VerificaSinData(EdtApePatDni.Text, 'APELLIDO PATERNO y/o APELLIDO MATERNO');
   VerificaSinData(DbLlRegPen.Text, 'REGIMEN DE PENSION');
   IF TRIM(DbLlRegPen.Text) = '03' THEN VerificaSinData(DbLlAfp.Text, 'AFP');
   VerificaSinData(DbLUniPro.Text, 'UNIDAD DE PROCESO');
   VerificaSinData(DbLUniPag.Text, 'UNIDAD DE PAGO');
   DM1.cdsGradoI.Close;
   xsql := 'SELECT GRAINSTID,CONVIVID,TIPPROID,INMUEBLE,NROHIJOS,ESTCIVID,VEHICULO FROM ' +
      '(SELECT MAX(ITEM) ITEM FROM APO206 WHERE ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''') A, APO206 B ' +
      'Where ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND A.ITEM=B.ITEM ';
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   VerificaSinData(DM1.cdsGradoI.FieldByName('ESTCIVID').AsString, 'ESTADO CIVIL');

   If DbLlTipAso.Text<>'VO' Then
      Begin
        VerificaSinData(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString, 'GRADO DE INSTRUCCION');
        VerificaSinData(DM1.cdsGradoI.FieldByName('CONVIVID').AsString, 'CONDICION DE VIVIENDA');
      End;
   VerificaSinData(DbLUses.Text, 'USE/UGEL');

   xSql := 'SELECT COUNT(1) CANT FROM APO103 U WHERE U.UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
     + ' AND U.UPAGOID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ' AND U.FLGESCFIS = ''S''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if ( ((DbLlTipAso.Text = 'CE') and (DbLlRegPen.Text = '02'))
     or
     ((DM1.sAPO201 = 'ASO_NUE_CLI') and (DM1.cdsQry.FieldByName('CANT').AsInteger > 0)) ) then
   begin
   end
   else
   begin
     VerificaSinData(dbeCuenta.Text, 'CUENTA DE AHORRO');
     VerificaSinData(dbeSitCta.Text, 'SITUACION DE LA CUENTA');
   end;
   DM1.cdsQry.Close;

   IF (dbeCuenta.Text <> '') AND (dbeSitCta.Text <> '') THEN
   BEGIN
      xSQL := 'SELECT ASOID, ASONCTA, SITCTA '
         + '  FROM APO207 '
         + ' WHERE ASOID   =' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
         + '   AND ASONCTA =' + QuotedStr(dbeCuenta.Text)
         + '   AND SITCTA  =' + QuotedStr(dbeSitCta.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      IF DM1.cdsQry.RecordCount <= 0 THEN
      BEGIN
         VerificaSinData('', 'CUENTA DE AHORRO EN DETALLE');
         VerificaSinData('', 'SITUACION DE CUENTA EN DETALLE');
      END;
   END;

   VerificaSinData(dbeCargo.Text, 'CODIGO DE CARGO');
   VerificaSinData(DbLlSexo.Text, 'SEXO');
   VerificaSinData(DbLlTipAso.Text, 'TIPO DE ASOCIADO');
   IF (DbLlTipAso.Text = 'DO') OR (DbLlTipAso.Text = 'VO') THEN
   BEGIN
      VerificaSinData(dbeNroRes.Text, 'NRO DE RESOLUCION DE NOMBRAMIENTO');
      VerificaSinData(DBDTResNom.Text, 'FECHA DE RESOLUCION DE NOMBRAMIENTO');
   END
   ELSE
      IF DbLlTipAso.Text = 'CE' THEN
      BEGIN
         VerificaSinData(dbeNroCes.Text, 'NRO DE RESOLUCION DE CESE');
         VerificaSinData(DBDTResCes.Text, 'FECHA DE RESOLUCION DE CESE');
      END
      ELSE
         IF DbLlTipAso.Text = 'CO' THEN
         BEGIN
            VerificaSinData(dbeNroRes.Text, 'NRO DE CONTRATO');
            VerificaSinData(DBDTResNom.Text, 'FECHA DE INICIO DE CONTRATO');
            VerificaSinData(DBDTResCes.Text, 'FECHA DE FIN DE CONTRATO');
         END;

      If DbLlTipAso.Text<>'VO' Then
         Begin
          VerificaSinData(dbeTel1.Text, 'TELEFONO (DOMICILIO)');
         End;

      If dblTipDoc.Text=xTIPDOCCOD Then
      VerificaSinData(dbeLibDni.Text, 'DNI');
      VerificaSinData(dbdtFecNac.Text, 'FECHA DE NACIMIENTO');

      If DbLlTipAso.Text<>'VO' Then
         Begin
             VerificaSinData(dbeDirec.Text, 'DIRECCION (DOMICILIO)');
             VerificaSinData(lkcDpto.Text, 'DEPARTAMENTO (DOMICILIO)');
             VerificaSinData(lkcProv.Text, 'PROVINCIA (DOMICILIO)');
             VerificaSinData(lkcDist.Text, 'DISTRITO (DOMICILIO)');
         End;

   IF (DbLlTipAso.Text = 'DO') OR (DbLlTipAso.Text = 'VO') OR (DbLlTipAso.Text = 'CO') THEN
   BEGIN
      VerificaSinData(measodeslab.Text, 'CENTRO LABORAL');
      VerificaSinData(measodirlab.Text, 'DIRECCION (CENTRO LABORAL)');
      VerificaSinData(lkcDpto2.Text, 'DEPARTAMENTO (CENTRO LABORAL)');
      VerificaSinData(lkcProv2.Text, 'PROVINCIA (CENTRO LABORAL)');
      VerificaSinData(lkcDist2.Text, 'DISTRITO (CENTRO LABORAL )');
   END;

   IF (DM1.vanos >= 100) AND (DbLlTipAso.Text = 'CE') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'PASO LIMITE DE EDAD';
   END;

  //Verifica Foto y Firma Reniec
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT IDFIRMA, IDASO, ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + '''');
   DM1.cdsGradoI.Open;
   xValReniec := DM1.cdsGradoI.FieldByName('ACTDATREN').AsString;

  //-- si no procede bloquear desde aqui   (RMZ)
   IF ((dm1.xFto = 'N') OR (dm1.xFto = '')) AND (DM1.cdsGradoI.FieldByName('IDASO').AsString = 'S') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FOTO'
   END;

   IF ((dm1.xFma = 'N') OR (dm1.xFma = '')) AND (DM1.cdsGradoI.FieldByName('IDFIRMA').AsString = 'S') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FIRMA'
   END;
  //--hasta aqui

  //Verifica Reniec
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT ACTARCREN, AUTDESAPO, ASOTIPID FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + '''');
   DM1.cdsGradoI.Open;

  // SOLO VALIDA SI ESTA EN TABLA APO201
   IF DM1.sAPO201 = 'APO201' THEN
   BEGIN
      IF (DM1.cdsGradoI.FieldByName('ASOTIPID').AsString = 'VO') AND (DM1.cdsGradoI.FieldByName('AUTDESAPO').AsString <> 'S') THEN
      BEGIN
         DM1.xsindata := DM1.xsindata + 1;
         CDSINCOMPLETOS.Insert;
         CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO AUTORIZO DSCTO. DE APORTES';
      END;
   END;

   IF DM1.sAPO201 = 'APO201' THEN
   BEGIN
      IF (xValReniec = 'S') AND (Trim(DM1.cdsGradoI.FieldByName('ACTARCREN').AsString) <> 'S') THEN
      BEGIN
         DM1.xsindata := DM1.xsindata + 1;
         CDSINCOMPLETOS.Insert;
         CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO ACTUALIZO DE RENIEC';
      END;
   END
   ELSE
   BEGIN
      IF DM1.xOfiDes = '01' THEN
      BEGIN
         IF (xValReniec = 'S') AND (Trim(DM1.cdsGradoI.FieldByName('ACTARCREN').AsString) <> 'S') THEN
         BEGIN
            DM1.xsindata := DM1.xsindata + 1;
            CDSINCOMPLETOS.Insert;
            CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO ACTUALIZO DE RENIEC';
         END;
      END;
   END;

  //Descuento de aportes
   IF (DM1.cdsGradoI.FieldByName('ASOTIPID').AsString = 'DO') AND (DM1.cdsGradoI.FieldByName('AUTDESAPO').AsString <> 'S') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO AUTORIZO DSCTO. DE APORTES';
   END;

   IF DM1.sAPO201 = 'APO201' THEN
   BEGIN
    //Si no Valido todos los datos
      IF xsinvalidar > 0 THEN
      BEGIN
         DM1.xsindata := DM1.xsindata + 1;
         CDSINCOMPLETOS.Insert;
         CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'EXISTEN DATOS SIN VALIDAR'
      END;
   END
   ELSE
   BEGIN
      IF DM1.xOfiDes = '01' THEN
      BEGIN
      //Si no Valido todos los datos
         IF xsinvalidar > 0 THEN
         BEGIN
            DM1.xsindata := DM1.xsindata + 1;
            CDSINCOMPLETOS.Insert;
            CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'EXISTEN DATOS SIN VALIDAR'
         END;
      END;
   END;
   CDSINCOMPLETOS.First;
END;

//Modifica el destino del Tickets
PROCEDURE TFMantAsociado.ModiDestinofTickes;
VAR
   xdestino,XSQL: STRING;
BEGIN
  //Verifica si toda la informacion esta ingresada
   Validar;

  //Solo pasa a Creditos si esta actualizado toda su informacin
   IF DM1.xsindata = 0 THEN
      xdestino := 'CRE'
   ELSE
      xdestino := 'ASO';

  //Manda a la Etiquetera Inserta en ASO_TICKETS_DESTINO
   TRY
  // controla la adicion en tickets, para que inserte sólo una vez
      IF (DM1.xInsert = '1') and (xInsertaTicket) THEN
      BEGIN
         XSQL := 'INSERT INTO TICKET.ASO_TICKETS_DESTINO (ASOID,ASODNI,FECACT,OPERACION) VALUES(' +
            QuotedStr(TRIM(DM1.cdsAso.FieldByName('Asoid').AsString)) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',SYSDATE,' +
            QuotedStr(xdestino) + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xsql);
      END
      ELSE
      BEGIN
         xSQL := 'SELECT asoid, asodni, fecact, operacion, motivo FROM TICKET.ASO_TICKETS_DESTINO '
            + ' WHERE ASOID=''' + Trim(DM1.cdsAso.FieldByName('Asoid').AsString) + ''' ';
         DM1.cdsReclamo1.Close;
         DM1.cdsReclamo1.DataRequest(xSQL);
         DM1.cdsReclamo1.Open;
         IF DM1.cdsReclamo1.RecordCount > 0 THEN
            XSQL := 'UPDATE TICKET.ASO_TICKETS_DESTINO '
               + '   SET ASODNI    = ''' + dbeLibDni.Text + ''', '
               + '       OPERACION = ''' + xdestino + ''' WHERE ASOID=''' + Trim(DM1.cdsAso.FieldByName('Asoid').AsString) + ''' '
         ELSE
            XSQL := 'INSERT INTO TICKET.ASO_TICKETS_DESTINO (ASOID,ASODNI,FECACT,OPERACION) VALUES(' + QuotedStr(TRIM(DM1.cdsAso.FieldByName('Asoid').AsString)) + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',SYSDATE,' + QuotedStr(xdestino) + ')';

         DM1.DCOM1.AppServer.EjecutaSql(xsql);
      END;
   EXCEPT
   END;

   IF DM1.xsindata > 0 THEN
   BEGIN
      TRY
         FMantAsociadoCompletar := TFMantAsociadoCompletar.create(self);
         FMantAsociadoCompletar.EnlazarDatos(self.DSINCOMPLETOS);
         FMantAsociadoCompletar.ShowModal;
      FINALLY
         FMantAsociadoCompletar.Free;
      END;
   END;
END;

//Inserta registro en el Log de Impresion de Ficha
PROCEDURE TFMantAsociado.GrabaLogImpFicha;
VAR
   Xsql: STRING;
BEGIN
   Xsql := 'INSERT INTO ASO_IMP_FICHA_LOG (ASOID,ASODNI,ASOAPENOM,FECHA,HORA,USUARIO,OFICINA,ORIDAT) VALUES(' +
      QuotedStr(DM1.cdsAso.FieldByName('Asoid').AsString) + ',' +
      QuotedStr(dbeLibDni.Text) + ',' +
      QuotedStr(EdtApePatDni.Text + ' ' + EdtApeMatDni.Text + ' ' + EdtAsoNomDni.Text) + ',' +
      QuotedStr(Copy(DM1.FechaHora, 1, 10)) + ',' +
      QuotedStr(Copy(DM1.FechaHora, 12, 8)) + ',' +
      QuotedStr(DM1.wUsuario) + ',' + QuotedStr(DM1.wofides) + ',''ASO'')';
   DM1.DCOM1.AppServer.EjecutaSql(xsql);
END;

PROCEDURE TFMantAsociado.FichaActualizacion2;
VAR
   xSql, foto, xValReniec: STRING;
BEGIN
   CDSINCOMPLETOS.EmptyDataSet;
   DM1.xsindata := 0;
   xValReniec := '';
   foto := trim(DM1.cdsAso.FieldByName('IDIMAGE').Asstring);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT USERNOM FROM USERTABLE WHERE USERID=''' + DM1.WUsuario + '''');
   DM1.cdsGradoI.Open;

   ppLUsuario_2.Caption := DM1.WUsuario + '-' + DM1.cdsGradoI.FieldByname('USERNOM').AsString;
   ppLmaquina_2.Caption := DM1.wcomputadora;
   ppLFechaHora_2.Caption := DM1.FechaHora;

   ppLUsuario_3.Caption := ppLUsuario_2.Caption;
   ppLMaquina_3.Caption := ppLmaquina_2.Caption;
   pplFechaHora_3.Caption := ppLFechaHora_2.Caption;

   //Datos a Imprimir
   ppLCodMod2.Caption := EdtCodMod.Text;
   VerificaSinData(EdtCodMod.Text, 'CODIGO MODULAR');
   ppLNombres2.Caption := EdtAsoNomDni.Text;
   VerificaSinData(EdtAsoNomDni.Text, 'NOMBRES');
   IF Length(trim(pplapepat2.Caption)) + Length(trim(pplapemat2.Caption)) = 0 THEN
      VerificaSinData(EdtApePatDni.Text, 'APELLIDO PATERNO y/o APELLIDO MATERNO');
   pplapepat2.Caption := EdtApePatDni.Text;
   ppLApeMat2.Caption := EdtApeMatDni.Text;
   ppLEmail.Caption := dbeAsoEmail.Text;

   VerificaSinData(DbLlRegPen.Text, 'REGIMEN DE PENSION');
   ppLAFP2.Visible := False;
   ppLTipoPension2.Caption := DM1.DisplayDescrip('', 'APO105', 'REGPENABR', 'REGPENID=''' + TRIM(DbLlRegPen.Text) + '''', 'REGPENABR');
   IF TRIM(DbLlRegPen.Text) = '03' THEN
   BEGIN
      VerificaSinData(DbLlAfp.Text, 'AFP');
      ppLAFP2.Visible := True;
      ppLAFP2.Caption := DM1.DisplayDescrip('', 'TGE201', 'PROVDES', 'PROV=''A00' + TRIM(DbLlAfp.Text) + ''' ', 'PROVDES');
   END;

      //Unidad de Proceso
   VerificaSinData(DbLUniPro.Text, 'UNIDAD DE PROCESO');
   ppLUniPro2.Caption := DbLUniPro.Text + ' ' + DM1.DisplayDescrip('', 'APO102', 'UPRONOM', 'UPROID = ' + QuotedStr(trim(DbLUniPro.Text)), 'UPRONOM');

      //Unidad de Pago
   VerificaSinData(DbLUniPag.Text, 'UNIDAD DE PAGO');

      //Codigo de Pago
   VerificaSinData(dbeCodPag.Text, 'CODIGO DE PAGO');
   ppLCodPag2.Caption := dbeCodPag.Text;

      //Estado Civil;
   DM1.cdsGradoI.Close;
   xsql := 'SELECT GRAINSTID,CONVIVID,TIPPROID,INMUEBLE,NROHIJOS,ESTCIVID,VEHICULO '
      + '  FROM (SELECT MAX(ITEM) ITEM FROM APO206 WHERE ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''') A, APO206 B ' +
      ' WHERE ASOID = ''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND A.ITEM=B.ITEM ';
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   VerificaSinData(DM1.cdsGradoI.FieldByName('ESTCIVID').AsString, 'ESTADO CIVIL');
   ppLEstCiv2.Caption := DM1.DisplayDescrip('', 'TGE125', 'ESTCIVDES', 'ESTCIVID = ' + QuotedStr(TRIM(DM1.cdsGradoI.FieldByName('ESTCIVID').AsString)), 'ESTCIVDES');

      //Grado de Instruccion
   VerificaSinData(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString, 'GRADO DE INSTRUCCION');
   ppLGradoInst2.Caption := DM1.DisplayDescrip('', 'TGE119', 'GRAINSDES', 'GRAINSID=''' + TRIM(dm1.cdsGradoI.FieldByName('GRAINSTID').AsString) + '''', 'GRAINSDES');

      //Condicion de Vivienda
   ppLCondicionViv2.Caption := DM1.DisplayDescrip('', 'APO109', 'TIPVIVDES', 'TIPVIVID=''' + TRIM(dm1.cdsGradoI.FieldByName('CONVIVID').AsString) + '''', 'TIPVIVDES');

    //UGEL
   VerificaSinData(DbLUses.Text, 'USE/UGEL');
   DM1.cdsGradoI.Close;

   xSql := 'SELECT USENOM FROM APO101 '
      + ' WHERE NVL(FDESHABILITADO,''S'') =''N'' AND'
      + '       UPROID  = ' + QuotedStr(trim(DbLUniPro.Text))
      + '   AND UPAGOID = ' + QuotedStr(trim(DbLUniPag.Text)) + ' AND USEID = ' + QuotedStr(trim(DbLUses.Text));
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUgel2.Caption := DbLUses.Text + ' ' + DM1.cdsGradoI.FieldByName('USENOM').AsString;

    //Cuenta de Ahorro
   ppLCtaAhorros2.Caption := trim(dbeCuenta.Text);
   VerificaSinData(dbeCuenta.Text, 'CUENTA DE AHORRO');
   ppLEstCta2.Caption := '(' + trim(dbeSitCta.Text) + ')';
   VerificaSinData(dbeSitCta.Text, 'SITUACION DE LA CUENTA');

    //Sexo del asociado
   VerificaSinData(DbLlSexo.Text, 'SEXO');
   ppLSEXO2.Caption := DbLlSexo.Text;

    //Situacin del asociado
   VerificaSinData(DbLlTipAso.Text, 'TIPO DE ASOCIADO');

   ppLTipAso2.Caption := '';
   IF DbLlTipAso.Text = 'DO' THEN
   BEGIN
      VerificaSinData(dbeNroRes.Text, 'NRO DE RESOLUCION DE NOMBRAMIENTO');
      VerificaSinData(DBDTResNom.Text, 'FECHA DE RESOLUCION DE NOMBRAMIENTO');
      ppLTipAso2.Caption := 'ACTIVO'
   END
   ELSE
      IF DbLlTipAso.Text = 'CE' THEN
      BEGIN
         VerificaSinData(dbeNroCes.Text, 'NRO DE RESOLUCION DE CESE');
         VerificaSinData(DBDTResCes.Text, 'FECHA DE RESOLUCION DE CESE');
         ppLTipAso2.Caption := 'CESANTE'
      END
      ELSE
         IF DbLlTipAso.Text = 'CO' THEN
         BEGIN
            VerificaSinData(dbeNroCes.Text, 'NRO DE RESOLUCION DE CESE');
            VerificaSinData(DBDTResCes.Text, 'FECHA DE RESOLUCION DE CESE');
            ppLTipAso2.Caption := 'CONTRATADO'
         END;

   //Flag de tipo de Documento (SIEMPRE DNI)
   ppLDNIFLAG.Visible := True;

   ppLTelefono2.Caption := trim(dbeTel1.Text);
   VerificaSinData(dbeTel1.Text, 'TELEFONO (DOMICILIO)');
   ppLDNI2.Caption := dbeLibDni.Text;
   If dblTipDoc.Text=xTIPDOCCOD Then
         VerificaSinData(dbeLibDni.Text, 'DNI')
   Else  VerificaSinData(edtnumdoc.Text, 'NÚMERO DE DOCUMENTO');
   ppLFecNac2.Caption := dbdtFecNac.Text;
   VerificaSinData(dbdtFecNac.Text, 'FECHA DE NACIMIENTO');

   ppLResCes2.Caption := dbeNroCes.Text;
   ppLFResCes2.Caption := DBDTResCes.Text;

   ppLResNom2.Caption := dbeNroRes.Text;
   ppLFResNom2.Caption := DBDTResNom.Text;

   ppLAsodir2.Caption := dbeDirec.Text;
   VerificaSinData(dbeDirec.Text, 'DIRECCION (DOMICILIO)');

   VerificaSinData(lkcDpto.Text, 'DEPARTAMENTO (DOMICILIO)');
   VerificaSinData(lkcProv.Text, 'PROVINCIA (DOMICILIO)');
   VerificaSinData(lkcDist.Text, 'DISTRITO (DOMICILIO)');
   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist.Text, 1, 2) + '0000');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir2.Caption := DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist.Text, 1, 4) + '00');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir2.Caption := ppLUbigeoDir2.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   xSql := 'SELECT TRIM(UBIGEODES) DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(lkcDist.Text);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoDir2.Caption := ppLUbigeoDir2.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

      //VerificaSinData(dbeTel2.Text);
   ppLTelefonoRef2.Caption := trim(dbeTel2.Text);

      // Descripción del lugar donde trabaja
   ppLAsoCenLab2.Caption := measodeslab.Text;
   ppLAsoDirLab2.Caption := measodirlab.Text;
   ppLTelfCol2.Caption := measotellab.Text;

   IF DbLlTipAso.Text = 'DO' THEN
   BEGIN

      VerificaSinData(measodeslab.Text, 'CENTRO LABORAL');
      VerificaSinData(measodirlab.Text, 'DIRECCION (CENTRO LOABORAL)');
      VerificaSinData(measotellab.Text, 'TELEFONO (CENTRO LABORAL)');
      VerificaSinData(lkcDpto2.Text, 'DEPARTAMENTO (CENTRO LABORAL)');
      VerificaSinData(lkcProv2.Text, 'PROVINCIA (CENTRO LABORAL)');
      VerificaSinData(lkcDist2.Text, 'DISTRITO (CENTRO LABORAL )');
   END;

   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist2.Text, 1, 2) + '0000');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab2.Caption := DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;
   xSql := 'SELECT TRIM(UBIGEODES)||''/'' DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(copy(lkcDist2.Text, 1, 4) + '00');
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab2.Caption := ppLUbigeoLab2.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;
   xSql := 'SELECT TRIM(UBIGEODES) DESCRIP '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(lkcDist2.Text);
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSql);
   DM1.cdsGradoI.Open;
   ppLUbigeoLab2.Caption := ppLUbigeoLab2.Caption + DM1.cdsGradoI.FieldByName('DESCRIP').Asstring;

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT IDFIRMA,IDASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + '''');
   DM1.cdsGradoI.Open;
   xValReniec := DM1.cdsGradoI.FieldByName('ACTDATREN').AsString;

   pplSinFot2.Visible := False;
   pplSinFirma2.Visible := False;
   IF (dm1.xFto = 'N') AND (DM1.cdsGradoI.FieldByName('IDASO').AsString = 'S') THEN
   BEGIN
      ppLSINFOT2.Visible := True;
      DM1.xsindata := DM1.xsindata + 1;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FOTO'
   END
   ELSE
      IF dm1.xFto = 'S' THEN ppImgfoto2.Picture := ImagAso.Picture;

   IF (dm1.xFma = 'N') AND (DM1.cdsGradoI.FieldByName('IDFIRMA').AsString = 'S') THEN
   BEGIN
      DM1.xsindata := DM1.xsindata + 1;
      ppLSINFIRMA2.Visible := True;
      CDSINCOMPLETOS.Insert;
      CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'SIN FIRMA'
   END

   ELSE
      IF dm1.xFma = 'S' THEN ppImgFrima.Picture := ImaFirma.Picture;

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT ACTARCREN FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + '''');
   DM1.cdsGradoI.Open;
   IF DM1.cdsGradoI.FieldByName('ACTARCREN').AsString = 'S' THEN
      pplValReniec.Caption := 'SI'
   ELSE
      IF xValReniec = 'S' THEN
      BEGIN
         pplValReniec.Caption := 'NO';
         DM1.cdsGradoI.Close;
         DM1.cdsGradoI.DataRequest('SELECT IDFIRMA,IDASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + '''');
         DM1.cdsGradoI.Open;
         IF DM1.cdsGradoI.FieldByName('ACTDATREN').AsString = 'S' THEN
         BEGIN
            DM1.xsindata := DM1.xsindata + 1;
            CDSINCOMPLETOS.Insert;
            CDSINCOMPLETOS.FieldByName('CAMPO').AsString := 'NO ACTUALIZO DE RENIEC'
         END;
      END;

   IF DM1.xsindata > 0 THEN
      pplDatIncompletos2.Visible := true
   ELSE
      pplDatIncompletos2.Visible := False;

   IF DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO' THEN
   BEGIN
      ppLabel215.Caption := 'Inicio';
      ppLabel217.Caption := 'Fin';
      ppLabel225.Caption := 'Contrato';
      ppLabel218.Caption := '';
      ppLabel177.Caption := '';
      ppLresCes2.Caption := '';
   END;

// se agrega caption de fallecido el cual se hace visible si esta fallecido
   pplblFallecido.Visible := False;
   if DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' then
   begin
      pplblFallecido.Caption := 'FALLECIDO';
      if length(trim(lblFallecido.Caption))>0 then
         pplblFallecido.Caption := lblFallecido.Caption;
      pplblFallecido.Visible := True;
   end;

   CDSINCOMPLETOS.First;
   PPDBP1.DataSource := dm1.dsAso;
   ppBDEReniec.DataSource := DSINCOMPLETOS;

   PPR2.Print;
   GrabaLogImpFicha;
   PPR2.Stop;

END;

PROCEDURE TFMantAsociado.btnactdirClick(Sender: TObject);
VAR
   sSQL: STRING;
BEGIN

   IF (DM1.sAPO201 = 'ASO_NUE_CLI') and (dblTipDoc.Text=xTIPDOCCOD) THEN

   BEGIN
      sSQL := 'SELECT ASOID FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASODNI=' + QuotedStr(dbeLibDni.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      IF DM1.cdsQry.RecordCount <= 0 THEN
      BEGIN
         ShowMessage('Advertencia: Antes de actualizar la dirección debe Capturar los datos de RENIEC');
         Exit;
      END;
   END;

   Try
      FNueManDom := TFNueManDom.create(self);
      FNueManDom.Showmodal;
   Finally
      FNueManDom.free;
   End;

End;

PROCEDURE TFMantAsociado.dbeTel1Enter(Sender: TObject);
BEGIN
   ExisteSolicitud;
END;

PROCEDURE TFMantAsociado.ExisteSolicitud;
BEGIN
   IF DM1.xInsert = '1' THEN
   BEGIN
      sSQL := 'SELECT ASOID FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASODNI=' + QuotedStr(dbeLibDni.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      IF DM1.cdsQry.RecordCount <= 0 THEN
      BEGIN
         IF DM1.xOfiDes > '01' THEN
         BEGIN
            dbeLibDni.Enabled := True;
            dbeLibDni.SetFocus;
         END
         ELSE
         BEGIN
            ShowMessage('Advertencia : Primero debe capturar los datos de la RENIEC');
            btnActualizaReniec.SetFocus;
         END;
      END;
   END;
END;

PROCEDURE TFMantAsociado.dbeTel2Enter(Sender: TObject);
BEGIN
   ExisteSolicitud;
END;

PROCEDURE TFMantAsociado.bitAutorizaClick(Sender: TObject);
var
  xSql: string;
  cant: integer;
BEGIN
   if DM1.xCnd = 'AUT' then
   begin
     Validar;

     IF DM1.xsindata > 0 THEN
     BEGIN
        TRY
           FMantAsociadoCompletar := TFMantAsociadoCompletar.create(self);
           FMantAsociadoCompletar.EnlazarDatos(self.DSINCOMPLETOS);
           FMantAsociadoCompletar.ShowModal;
        FINALLY
           FMantAsociadoCompletar.Free;
        END;
        Exit;
     END;

     TRY
        FAutoriza := TFAutoriza.create(self);
        FAutoriza.Showmodal;
     FINALLY
        FAutoriza.Close;
        FAutoriza.free;
     END;
   end
   else if DM1.xCnd = 'DESAUT' then
   begin
      xSql := 'SELECT COUNT(1) CANT FROM COB319 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' AND ROWNUM < 2';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      cant := DM1.cdsQry.FieldByName('CANT').AsInteger;
      if cant > 0 then
      begin
        MessageDlg('El asociado tiene aporte(s) enviados, no puede retornar al Nivel 1', mtError,[mbOk], 0);
        Exit;
      end;

      xSql := 'SELECT COUNT(1) CANT FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' AND ROWNUM < 2';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      cant := DM1.cdsQry.FieldByName('CANT').AsInteger;
      if cant > 0 then
      begin
        MessageDlg('El asociado tiene aporte(s), no puede retornar al Nivel 1', mtError,[mbOk], 0);
        Exit;
      end;

      xSql := 'SELECT COUNT(1) CANT FROM EVAL_RES_CAB WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' AND ROWNUM < 2';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      cant := DM1.cdsQry.FieldByName('CANT').AsInteger;
      if cant > 0 then
      begin
        MessageDlg('El asociado tiene solicitudes de crédito registradas, no puede retornar al Nivel 1', mtError,[mbOk], 0);
        Exit;
      end;

      xSql := 'SELECT COUNT(1) CANT FROM CRE301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' AND ROWNUM < 2';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      cant := DM1.cdsQry.FieldByName('CANT').AsInteger;
      if cant > 0 then
      begin
        MessageDlg('El asociado tiene crédito(s) otorgado(s), no puede retornar al Nivel 1', mtError,[mbOk], 0);
        Exit;
      end;

      If Application.MessageBox('¿Desea desautorizar al asociado y retornarlo al Nivel 1?', 'Confirmar desautorización', MB_YESNO + MB_ICONQUESTION) <> ID_YES Then Exit;

      xSql := 'BEGIN DB2ADMIN.SP_ASO_DESAUT_ASO_NUE(' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ', ' + QuotedStr(DM1.wUsuario) + '); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      MessageDlg('Registro actualizado', mtInformation, [mbOk], 0);
      Close;
   end;
END;

PROCEDURE TFMantAsociado.bitRechazaClick(Sender: TObject);
BEGIN
   TRY
      FRechazar := TFRechazar.create(self);
      FRechazar.Showmodal;
   FINALLY
      FRechazar.Close;
      FRechazar.free;
   END;
END;

PROCEDURE TFMantAsociado.bbtnN3Click(Sender: TObject);
VAR
   xSQL: STRING;
BEGIN
   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   validar;

   IF DM1.xsindata > 0 THEN
   BEGIN
      TRY
         FMantAsociadoCompletar := TFMantAsociadoCompletar.create(self);
         FMantAsociadoCompletar.EnlazarDatos(self.DSINCOMPLETOS);
         FMantAsociadoCompletar.ShowModal;
      FINALLY
         FMantAsociadoCompletar.Free;
      END;
      IF DSINCOMPLETOS.DataSet.RecordCount > 0 THEN Exit;
      DesactivaPantPrincipal;
   END;

   IF MessageDlg('Envia Asociado a Autorizar con Usuario de Nivel 3. ¿ Está seguro ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo THEN exit;

   xSQL := 'SELECT ASOID FROM ASO_NUE_CLI '
         + ' WHERE SOLICITUD   = ' + QuotedStr(DM1.cdsAso.FieldByname('SOLICITUD').AsString)
         + '   and EST_AUT_CLI = ''NU''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   IF DM1.cdsQry.RecordCount <= 0 THEN
   BEGIN
      ShowMessage('NO Existe Asociado Nuevo para enviar a Autorizar, con DNI ' + dbeLibDni.Text + '. Verificar...');
      Exit;
   END;

   xSQL := 'UPDATE ASO_NUE_CLI '
      + '   SET EST_AUT_CLI = ''N3'', '
      + '       USU_CRE_CLI = ''' + DM1.wUsuario + ''', '
      + '       FEC_CRE_CLI = sysdate '
      + ' WHERE SOLICITUD   = ' + QuotedStr(DM1.cdsAso.FieldByname('SOLICITUD').AsString)
      + '   AND ASOID       = ' + QuotedStr(DM1.cdsAso.FieldByname('ASOID').AsString)
      + '   AND EST_AUT_CLI = ''NU''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   bbtnN3.Enabled := False;
   ActivaSalir;

   ShowMessage('Asociado enviado');
END;

PROCEDURE TFMantAsociado.bbtnCartaClick(Sender: TObject);
VAR
   sSQL: STRING;
BEGIN

// se valida para que no imprima para Asociados Fallecidos
   if DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' then
   begin
      ShowMessage('No se permite la Impresión de este documento si el Asociado está Fallecido');
      exit;
   end;

   IF (BitGrabar.Enabled) AND (BitGrabar.Visible) THEN
   BEGIN
      ShowMessage('Debe [Grabar] para continuar...');
      Exit;
   END;

   IF (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'DO') OR
      (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'VO') OR
      (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'CE') THEN

   ELSE
   BEGIN
      MessageDlg('Solo Asociados tipo DO, VO y CE tienen accesos a este botón.!!!', mtConfirmation, [mbOk], 0);
      Screen.Cursor := crDefault;
      Exit;
   END;
   sSQL := 'SELECT asoapenomdni, asodni, asofresnom, asoresnom, asodeslab, to_char(asofresnom,''yyyy'') Ano_Nomb, '
      + '       a.useid, c.usenom, a.dptoid, b.dptodes, asodir, asotelf1, a.asoemail, '
      + '       ASOTELF2, CEN.DIRREGEDU,SUBSTR(asofresnom,1,2) FERESDIA, SUBSTR(asofresnom,4,2) FERESMES,SUBSTR(asofresnom,7,4) FERESANIO,'
      + '       to_char(sysdate,''dd'') dia, to_char(sysdate,''mm'') mes, '
      + '       to_char(sysdate,''yy'') ano, '
      + '       case when to_char(asofresnom,''mm'')=''01'' then ''ENERO'' '
      + '       when to_char(asofresnom,''mm'')=''02'' then ''FEBRERO'' '
      + '       when to_char(asofresnom,''mm'')=''03'' then ''MARZO'' '
      + '       when to_char(asofresnom,''mm'')=''04'' then ''ABRIL'' '
      + '       when to_char(asofresnom,''mm'')=''05'' then ''MAYO'' '
      + '       when to_char(asofresnom,''mm'')=''06'' then ''JUNIO'' '
      + '       when to_char(asofresnom,''mm'')=''07'' then ''JULIO'' '
      + '       when to_char(asofresnom,''mm'')=''08'' then ''AGOSTO'' '
      + '       when to_char(asofresnom,''mm'')=''09'' then ''SETIEMBRE'' '
      + '       when to_char(asofresnom,''mm'')=''10'' then ''OCTUBRE'' '
      + '       when to_char(asofresnom,''mm'')=''11'' then ''NOVIEMBRE'' '
      + '       when to_char(asofresnom,''mm'')=''12'' then ''DICIEMBRE'' '
      + '       end mesres, '
      + '       case when to_char(sysdate,''mm'')=''01'' then ''ENERO'' '
      + '       when to_char(sysdate,''mm'')=''02'' then ''FEBRERO'' '
      + '       when to_char(sysdate,''mm'')=''03'' then ''MARZO'' '
      + '       when to_char(sysdate,''mm'')=''04'' then ''ABRIL'' '
      + '       when to_char(sysdate,''mm'')=''05'' then ''MAYO'' '
      + '       when to_char(sysdate,''mm'')=''06'' then ''JUNIO'' '
      + '       when to_char(sysdate,''mm'')=''07'' then ''JULIO'' '
      + '       when to_char(sysdate,''mm'')=''08'' then ''AGOSTO'' '
      + '       when to_char(sysdate,''mm'')=''09'' then ''SETIEMBRE'' '
      + '       when to_char(sysdate,''mm'')=''10'' then ''OCTUBRE'' '
      + '       when to_char(sysdate,''mm'')=''11'' then ''NOVIEMBRE'' '
      + '       when to_char(sysdate,''mm'')=''12'' then ''DICIEMBRE'' '
      + '       end mesdes '
      + '  FROM ' + DM1.sAPO201 + ' a,  APO101 C,  APO158 B , ASO_CEN_EDU CEN'
      + ' WHERE asodni=''' + DM1.cdsAso.FieldByname('ASODNI').AsString + ''' '
      +'  AND A.CENEDUID=CEN.CENEDUID(+)'
      + '   AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) AND A.USEID=C.USEID(+) '

      + '   AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.DPTOID = B.DPTOID(+)';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(sSQL);
   DM1.cdsQry2.Open;

   ppdb1.DataSource := dm1.dsQry2;
   ppr3.DataPipeline := ppdb1;
   ppr3.Print;
END;

PROCEDURE TFMantAsociado.bbtnN1Click(Sender: TObject);
VAR
   xSQL: STRING;
BEGIN
   IF MessageDlg('Envia Asociado a Usuario de Nivel 1. ¿ Está seguro ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo THEN exit;

   xSQL := 'SELECT ASOID FROM ASO_NUE_CLI '
         + ' WHERE SOLICITUD   = ' + QuotedStr(DM1.cdsAso.FieldByname('SOLICITUD').AsString)
         + '   AND EST_AUT_CLI = ''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   IF DM1.cdsQry.RecordCount <= 0 THEN
   BEGIN
      ShowMessage('NO Existe Asociado Nuevo para enviar a Usuario de Nivel 1, con DNI ' + dbeLibDni.Text + '. Verificar...');
      Exit;
   END;

   xSQL := 'UPDATE ASO_NUE_CLI '
      + '      SET EST_AUT_CLI    = ''NU'','
      + '          USU_CRE_CLI    = ''' + DM1.wUsuario + ''','
      + '          FEC_CRE_CLI    = sysdate, '
      + '          obs_aut_cli    = null, '
      + '          obs_aut_cli_uge= null, '
      + '          obs_aut_cli_pad= null, '
      + '          obs_aut_cli_otr= null '
      + '    WHERE SOLICITUD      = ' + QuotedStr(DM1.cdsAso.FieldByname('SOLICITUD').AsString)
      + '      AND ASOID          = ' + QuotedStr(DM1.cdsAso.FieldByname('ASOID').AsString)
      + '      AND EST_AUT_CLI    = ''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   bbtnN1.Enabled := False;
   bitAutoriza.Enabled := False;
   bitRechaza.Enabled := False;
   ActivaSalir;

   ShowMessage('Asociado enviado');
END;


PROCEDURE TFMantAsociado.GrabaArchivo(xImage: TByteDynArray; NomArchivo: STRING);
VAR
   xArchivo: FILE;
   i, nWrite: integer;
BEGIN

  //Asigno un nombre a un File (archivo)
   AssignFile(xArchivo, NomArchivo);
  //Crea un archivo "Xarchivo"  fisico
   Rewrite(Xarchivo, 1);
  //escribo dentro del archivo el TByteDynArray capturado
   FOR i := low(xImage) TO high(xImage) DO
      BlockWrite(xArchivo, xImage[i], 1, nWrite);
  //Cierro el archivo fisico
   CloseFile(xArchivo);
END;

Procedure TFMantAsociado.LlenaConfirmacion(xAsoDni:String);

Var xFirma, xFoto: String;
Begin
   xFirma := '_Fir'+Trim(xAsoDni);
   xFoto  := '_Fot'+Trim(xAsoDni);
   FMantAsociadoConfirmaReniec := TFMantAsociadoConfirmaReniec.create(self);
   Grabar_Imagen(xFoto, 'JPG', reg.photo);
   Leer_Imagen(xFoto, 'JPG', FMantAsociadoConfirmaReniec.ImgFotoConfirme);
   Grabar_Imagen(xFirma, 'TIF', reg.Signature);
//   OpenPictureDialog1.Filter:='All images ('+BitmapLoaders.GetLoadFilter;
   With TLinearBitmap.Create do
   Try
      FMantAsociadoConfirmaReniec.ImgFirmaConfirme.Picture := nil;
      LoadFromFile('C:\SOLEXES\'+xFirma+'.TIF');
      AssignTo(FMantAsociadoConfirmaReniec.ImgFirmaConfirme.Picture.Bitmap);
   Finally
      Free;
   End;
   // Graba de TIF a JPG
   With TLinearBitmap.Create do
   Try
      Assign(FMantAsociadoConfirmaReniec.ImgFirmaConfirme.Picture.Bitmap);
      SaveToFile('C:\SOLEXES\'+xFirma+'.JPG');
   Finally
      Free;
   End;
   Leer_Imagen(xFirma, 'JPG', FMantAsociadoConfirmaReniec.ImgFirmaConfirme);
   FMantAsociadoConfirmaReniec.sDocument               := Trim(reg.dcDocument);
   FMantAsociadoConfirmaReniec.sLastName1              := Trim(reg.dcLastName1);
   FMantAsociadoConfirmaReniec.sLastName2              := Trim(reg.dcLastName2);
   FMantAsociadoConfirmaReniec.sFirstName              := Trim(reg.dcFirstName);
   FMantAsociadoConfirmaReniec.sMerriedName            := Trim(reg.dcMerriedName);
   FMantAsociadoConfirmaReniec.sMotherName             := Trim(reg.dcMotherName);
   FMantAsociadoConfirmaReniec.sFatherName             := Trim(reg.dcFatherName);
   FMantAsociadoConfirmaReniec.sCivilState             := Trim(reg.dcCivilState);
   FMantAsociadoConfirmaReniec.sGender                 :=  Trim(reg.dcGender);
   FMantAsociadoConfirmaReniec.sAltDocumentType        := Trim(reg.dcAltDocumentType);
   FMantAsociadoConfirmaReniec.sAltDocument            := Trim(reg.dcAltDocument);
   FMantAsociadoConfirmaReniec.sVoteStatus             := Trim(reg.dcVoteStatus);
   FMantAsociadoConfirmaReniec.sRegisterDate           := Trim(reg.dcRegisterDate);
   FMantAsociadoConfirmaReniec.sExpeditionDate         := Trim(reg.dcExpeditionDate);
   FMantAsociadoConfirmaReniec.sExpirationDate         := Trim(reg.dcExpirationDate);
   FMantAsociadoConfirmaReniec.sInstGrade              := Trim(reg.dcInstGrade);
   FMantAsociadoConfirmaReniec.sRestrictionCode        := Trim(reg.dcRestrictionCode);
   FMantAsociadoConfirmaReniec.sRestrictionDes         := Trim(reg.dcRestrictionDes);
   FMantAsociadoConfirmaReniec.sAddDepUbigCode         := Trim(reg.dcAddDepUbigCode);
   FMantAsociadoConfirmaReniec.sDepartmentAddress      := Trim(reg.dcDepartmentAddress);
   FMantAsociadoConfirmaReniec.sAddProvUbigCode        := Trim(reg.dcAddProvUbigCode);
   FMantAsociadoConfirmaReniec.sProvinceAddress        := Trim(reg.dcProvinceAddress);
   FMantAsociadoConfirmaReniec.sAddDistUbigCode        := Trim(reg.dcAddDistUbigCode);
   FMantAsociadoConfirmaReniec.sDistritAddress         := Trim(reg.dcDistritAddress);
   FMantAsociadoConfirmaReniec.sAddressUrbPrefix       := Trim(reg.dcAddressUrbPrefix);
   FMantAsociadoConfirmaReniec.sAddressUrbPrefixDes    := Trim(reg.dcAddressUrbPrefixDes);
   FMantAsociadoConfirmaReniec.sAddressUrb             := Trim(reg.dcAddressUrb);
   FMantAsociadoConfirmaReniec.sAddPrefix              := Trim(reg.dcAddPrefix);
   FMantAsociadoConfirmaReniec.sAddPrefixDes           := Trim(reg.dcAddPrefixDes);
   FMantAsociadoConfirmaReniec.sAddress                := Trim(reg.dcAddress);
   FMantAsociadoConfirmaReniec.sAddressEt              := Trim(reg.dcAddressEt);
   FMantAsociadoConfirmaReniec.sAddressBlock           := Trim(reg.dcAddressBlock);
   FMantAsociadoConfirmaReniec.sAddressBlockPrefix     := Trim(reg.dcAddressBlockPrefix);
   FMantAsociadoConfirmaReniec.sAddressBlockPrefixDes  := Trim(reg.dcAddressBlockPrefixDes);
   FMantAsociadoConfirmaReniec.sAddressIntPrefix       := Trim(reg.dcAddressIntPrefix);
   FMantAsociadoConfirmaReniec.sAddressIntPrefixDes    := Trim(reg.dcAddressIntPrefixDes);
   FMantAsociadoConfirmaReniec.sAddressInterior        := Trim(reg.dcAddressInterior);
   FMantAsociadoConfirmaReniec.sAddressLt              := Trim(reg.dcAddressLt);
   FMantAsociadoConfirmaReniec.sAddressMz              := Trim(reg.dcAddressMz);
   FMantAsociadoConfirmaReniec.sAddressNumber          := Trim(reg.dcAddressNumber);
   FMantAsociadoConfirmaReniec.sBornDate               := Trim(reg.dcBornDate);
   FMantAsociadoConfirmaReniec.sBornDepartmentUbigCode := Trim(reg.dcBornDepartmentUbigCode);
   FMantAsociadoConfirmaReniec.sBornDepartment         := Trim(reg.dcBornDepartment);
   FMantAsociadoConfirmaReniec.sBonrProvinceUbigCode   := Trim(reg.dcBonrProvinceUbigCode);
   FMantAsociadoConfirmaReniec.sBornProvince           := Trim(reg.dcBornProvince);
   FMantAsociadoConfirmaReniec.sBonrDistritUbigCode    := Trim(reg.dcBonrDistritUbigCode);
   FMantAsociadoConfirmaReniec.sBornDistrit            := Trim(reg.dcBornDistrit);
   FMantAsociadoConfirmaReniec.nHeight                 := reg.dnHeight;
   FMantAsociadoConfirmaReniec.sResultCode             := Trim(reg.dcResultCode);
   FMantAsociadoConfirmaReniec.sResultErrorDescription := Trim(reg.dcResultErrorDescription);
   FMantAsociadoConfirmaReniec.MuestraDatos;
   FMantAsociadoConfirmaReniec.ShowModal;
   If FMantAsociadoConfirmaReniec.bConfirmado Then btnconfirmaClick(self);
   FMantAsociadoConfirmaReniec.Free;
End;

Procedure TFMantAsociado.LlenaComparacion(xAsoDni,xflag:String);

Var xtemp, xarchivo:String;
    xFirma, xFoto, xDni :String;
Begin
   xFirma := '_Fir'+Trim(xAsoDni);
   xFoto  := '_Fot'+Trim(xAsoDni);
   FMantAsociadoCompara := TFMantAsociadoCompara.create(self);
   // -- presentar FOTO
   Grabar_Imagen(xFoto, 'JPG', reg.photo);
   Leer_Imagen(xFoto, 'JPG', FMantAsociadoCompara.imgFotoRenCompara);
   // -- presentar FIRMA
   Grabar_Imagen(xFirma, 'TIF', reg.Signature);
   OpenPictureDialog1.Filter:='All images ('+BitmapLoaders.GetLoadFilter;
   With TLinearBitmap.Create do
   Try
      FMantAsociadoCompara.imgFirmaRenCompara.Picture := nil;
      LoadFromFile('C:\SOLEXES\'+xFirma+'.TIF');
      AssignTo(FMantAsociadoCompara.imgFirmaRenCompara.Picture.Bitmap);
   Finally
       Free;
   End;
   // -- Graba de TIF a JPG
   With TLinearBitmap.Create do
   Try
      Assign(FMantAsociadoCompara.imgFirmaRenCompara.Picture.Bitmap);
      SaveToFile('C:\SOLEXES\'+xFirma+'.JPG');
   Finally
        Free;
   End;

   If xflag='P' Then
   Begin
     FMantAsociadoCompara.sAsoapepat:= DM1.cdsAso.FieldByName('ASOAPEPAT').AsString ;
     FMantAsociadoCompara.sAsoapemat:= DM1.cdsAso.FieldByName('ASOAPEMAT').AsString ;
     FMantAsociadoCompara.sAsoapenom:= DM1.cdsAso.FieldByName('ASONOMBRES').AsString ;
     FMantAsociadoCompara.sAsoapepatTIT := 'Apellido Paterno - (PLANILLA)';
     FMantAsociadoCompara.sAsoapematTIT := 'Apellido Materno - (PLANILLA)';
     FMantAsociadoCompara.sAsoapenomTIT := 'Nombre(s) - (PLANILLA)';
     FMantAsociadoCompara.sFlag := 'P';
   End;

   If xflag='R' Then
   Begin
     FMantAsociadoCompara.sAsoapepat:= DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString ;
     FMantAsociadoCompara.sAsoapemat:= DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString ;
     FMantAsociadoCompara.sAsoapenom:= DM1.cdsAso.FieldByName('ASONOMDNI').AsString ;
     FMantAsociadoCompara.sFlag := 'R';
     FMantAsociadoCompara.sAsoapepatTIT := 'Apellido Paterno - (RENIEC)';
     FMantAsociadoCompara.sAsoapematTIT := 'Apellido Materno - (RENIEC)';
     FMantAsociadoCompara.sAsoapenomTIT := 'Nombre(s) - (RENIEC)';
   End;

   Leer_Imagen(xFirma, 'JPG', FMantAsociadoCompara.imgFirmaRenCompara);
   // presentar FOTO y Firma Tomados de la base de Derrama
   FMantAsociadoCompara.imgFotoDerrCompara.Picture  := FMantAsociado.ImagAso.Picture;
   FMantAsociadoCompara.imgFirmaDerrCompara.Picture := FMantAsociado.ImaFirma.Picture;
   // Mostrar datos de RENIEC
   FMantAsociadoCompara.sDocument    := Trim(reg.dcDocument);
   FMantAsociadoCompara.sLastName1   := Trim(reg.dcLastName1);
   FMantAsociadoCompara.sLastName2   := Trim(reg.dcLastName2);
   FMantAsociadoCompara.sFirstName   := Trim(reg.dcFirstName);
   FMantAsociadoCompara.sMerriedName := Trim(reg.dcMerriedName);
   FMantAsociadoCompara.sMotherName  := Trim(reg.dcMotherName);
   FMantAsociadoCompara.sFatherName  := Trim(reg.dcFatherName);
   FMantAsociadoCompara.sCivilState  := Trim(reg.dcCivilState);
   FMantAsociadoCompara.sGender   :=  Trim(reg.dcGender);
   FMantAsociadoCompara.sAltDocumentType := Trim(reg.dcAltDocumentType);
   FMantAsociadoCompara.sAltDocument      := Trim(reg.dcAltDocument);
   FMantAsociadoCompara.sVoteStatus      := Trim(reg.dcVoteStatus);
   FMantAsociadoCompara.sRegisterDate      := Trim(reg.dcRegisterDate);
   FMantAsociadoCompara.sExpeditionDate      := Trim(reg.dcExpeditionDate);
   FMantAsociadoCompara.sExpirationDate      := Trim(reg.dcExpirationDate);
   FMantAsociadoCompara.sInstGrade      := Trim(reg.dcInstGrade);
   FMantAsociadoCompara.sRestrictionCode      := Trim(reg.dcRestrictionCode);
   FMantAsociadoCompara.sRestrictionDes      := Trim(reg.dcRestrictionDes);
   FMantAsociadoCompara.sAddDepUbigCode      := Trim(reg.dcAddDepUbigCode);
   FMantAsociadoCompara.sDepartmentAddress      := Trim(reg.dcDepartmentAddress);
   FMantAsociadoCompara.sAddProvUbigCode      := Trim(reg.dcAddProvUbigCode);
   FMantAsociadoCompara.sProvinceAddress      := Trim(reg.dcProvinceAddress);
   FMantAsociadoCompara.sAddDistUbigCode      := Trim(reg.dcAddDistUbigCode);
   FMantAsociadoCompara.sDistritAddress      := Trim(reg.dcDistritAddress);
   FMantAsociadoCompara.sAddressUrbPrefix := Trim(reg.dcAddressUrbPrefix);
   FMantAsociadoCompara.sAddressUrbPrefixDes := Trim(reg.dcAddressUrbPrefixDes);
   FMantAsociadoCompara.sAddressUrb := Trim(reg.dcAddressUrb);
   FMantAsociadoCompara.sAddPrefix := Trim(reg.dcAddPrefix);
   FMantAsociadoCompara.sAddPrefixDes := Trim(reg.dcAddPrefixDes);
   FMantAsociadoCompara.sAddress := Trim(reg.dcAddress);
   FMantAsociadoCompara.sAddressEt := Trim(reg.dcAddressEt);
   FMantAsociadoCompara.sAddressBlock := Trim(reg.dcAddressBlock);
   FMantAsociadoCompara.sAddressBlockPrefix := Trim(reg.dcAddressBlockPrefix);
   FMantAsociadoCompara.sAddressBlockPrefixDes := Trim(reg.dcAddressBlockPrefixDes);
   FMantAsociadoCompara.sAddressInterior := Trim(reg.dcAddressInterior);
   FMantAsociadoCompara.sAddressIntPrefix := Trim(reg.dcAddressIntPrefix);
   FMantAsociadoCompara.sAddressIntPrefixDes := Trim(reg.dcAddressIntPrefixDes);
   FMantAsociadoCompara.sAddressLt := Trim(reg.dcAddressLt);
   FMantAsociadoCompara.sAddressMz := Trim(reg.dcAddressMz);
   FMantAsociadoCompara.sAddressNumber := Trim(reg.dcAddressNumber);
   FMantAsociadoCompara.sBornDate := Trim(reg.dcBornDate);
   FMantAsociadoCompara.sBornDepartmentUbigCode := Trim(reg.dcBornDepartmentUbigCode);
   FMantAsociadoCompara.sBornDepartment := Trim(reg.dcBornDepartment);
   FMantAsociadoCompara.sBonrProvinceUbigCode := Trim(reg.dcBonrProvinceUbigCode);
   FMantAsociadoCompara.sBornProvince := Trim(reg.dcBornProvince);
   FMantAsociadoCompara.sBonrDistritUbigCode := Trim(reg.dcBonrDistritUbigCode);
   FMantAsociadoCompara.sBornDistrit := Trim(reg.dcBornDistrit);
   FMantAsociadoCompara.nHeight := reg.dnHeight;
   FMantAsociadoCompara.MuestraDatos;
   FMantAsociadoCompara.ShowModal;
   If FMantAsociadoCompara.bConfirmado Then btnconfirmaClick(self);
   FMantAsociadoCompara.Free;

End;


Procedure TFMantAsociado.btnconfirmaClick(Sender: TObject);
Var
   xsql, xAsoDni, xAsoid, xSolicitud: String;
   xSexo, xEstCiv, xrestriccion, xgrains:String;
   xItem : String;
   xasotipid :  String;

   xAsoApeNomDni: String;
   wsUbica: WSUbicabilidadSoap;
   dir: ASO_UBICA_DIR_HIS;
   fecAct: TXSDateTime;
   hayRegReniec: boolean;
   hayRegPrevioReniec: boolean;
Begin
   //Adicionar en Solicitud de Cliente Nuevo
   If dm1.xInsert = '1' Then
   Begin
   //Si aun no tiene asignado un código de solicitud
      If DM1.cdsAso.fieldbyname('SOLICITUD').AsString = '' Then
      Begin
      //Valida que el dni no haya sido ingresado en una solicitud anterior
         If validaAsoDniNuevo(dbeLibDni.Text) Then
         Begin
            MessageDlg('DNI Ya Existe, Solicitud fue creada', mtError, [mbOk], 0);
            self.Close;
            exit;
         End;
         //Pide confirmación final al usuario
         If MessageDlg('¿Está seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
         Begin
            self.Close;
            exit;
         End;
         xSolicitud := AsignaSolicitud;
         xAsoid := AsignaAsoId;
         xSQL := 'INSERT INTO ' + DM1.sAPO201 + ' (SOLICITUD, ASOID, ASODNI, EST_AUT_CLI,ASODOCNUM,TIPDOCCOD)'
            + ' VALUES (''' + xSolicitud + ''', ''' + xAsoid + ''', ''' + trim(dbeLibDni.Text) + ''', ''NU'','''+trim(dbeLibDni.Text)+''','''+dblTipDoc.Text+''')';
         dm1.cdsQry2.Close;
         dm1.cdsQry2.DataRequest(xSQL);
         dm1.cdsQry2.Execute;
         Apo201_NueCLi;
         xSQL := 'SELECT '+DM1.XSELECT+' FROM ' + DM1.sAPO201 + ' WHERE SOLICITUD = ''' + xSolicitud + ''' AND ASOID = ' + QuotedStr(Trim(xAsoid));
         DM1.sAso_where := 'SOLICITUD = ''' + xSolicitud + ''' AND ';
         DM1.cdsAso.Close;
         DM1.cdsAso.DataRequest(xSQL);
         DM1.cdsAso.Open;
         xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
      End;
   End
   Else
   Begin
      If MessageDlg('Está seguro de Reemplazar', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         self.Close;
         exit;
      End;
   End;
   xAsoDni := Trim(dbeLibDni.Text);
 If dblTipDoc.Text=xTIPDOCCOD Then
 Begin
   If REG.dcGender = '1' Then
   Begin
      xEstCiv := DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(reg.dcCivilState,2)),'TGE125','ESTCIVDES');
      xSexo := 'M';
   End
   Else
   Begin
      xEstCiv := DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(reg.dcCivilState,2)),'TGE125','ESTCIVDESFEM');
      xSexo := 'F';
   End;
   xgrains := DM1.CrgDescrip('CODGRAINS='+QuotedStr(reg.dcInstGrade),'ASO_GRA_INS','DESGRAINS');
   If Trim(reg.dcRestrictionCode) = '' Then xrestriccion := 'NINGUNO';
   If reg.dcRestrictionCode = 'A' Then xrestriccion := 'FALLECIMIENTO';
   xsql := 'INSERT INTO INF_RENIEC_CAP (DNI, APEPAT, APEMAT, NOMBRE, NOMPAD, NOMMAD, FECNAC, ESTATURA,SEXO, ESTCIV,  FECINS,'
   + 'FECEMIDOC, FECACT,OFIACT,EQUUSU, USUACT, LUGNAC, LUGDOM, FECEXP,'
   + 'CODUBIDEPDOM, CODUBIPRODOM, CODUBIDISDOM, DESDEPDOM, DESPRODOM, DESDISDOM,'
   + 'CODUBIDEPNAC, CODUBIPRONAC, CODUBIDISNAC, DESDEPNAC, DESPRONAC, DESDISNAC, APECAS,'
   + 'PRECODDIRECC, PREDESDIRECC, DESDIRECC, NUMDIRECC, DESMANZA, DESLOTE, DESETAPA,'
   + 'PRECODBLOCK, PREDESBLOCK, DESBLOCK, PRECODINTER, PREDESINTER, DESINTER,'
   + 'PRECODURBAN, PREDESURBAN, DESURBAN, CODGRAINS, CODDOCSUS, NUMDOCSUS, FLACONVOT, CODRES, CODESTCIV, OTRDOC, GRAINS, RESTRICCIONES,USURENIEC)'
   + ' VALUES ('
   + QuotedStr(Trim(reg.dcDocument))+ ','+ QuotedStr(Trim(reg.dcLastName1))+ ',' + QuotedStr(Trim(reg.dcLastName2))+ ','+ QuotedStr(Trim(reg.dcFirstName))+ ','
   + QuotedStr(Trim(reg.dcFatherName))+','+QuotedStr(Trim(reg.dcMotherName))+','
   + QuotedStr(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4))+ ','
   + FloatToStrF(reg.dnHeight/100,ffNumber,5,2)+','+QuotedStr(xSexo)+','+ QuotedStr(xEstCiv)+ ','
   + QuotedStr(Copy(reg.dcRegisterDate,7,2)+'/'+Copy(reg.dcRegisterDate,5,2)+'/'+Copy(reg.dcRegisterDate,1,4))+ ','
   + QuotedStr(Copy(reg.dcExpeditionDate,7,2)+'/'+Copy(reg.dcExpeditionDate,5,2)+'/'+Copy(reg.dcExpeditionDate,1,4))+','
   + 'SYSDATE,'
   + QuotedStr(Trim(DM1.wofides))+ ','
   + QuotedStr(Trim(DM1.wcomputadora)) + ','
   + QuotedStr(Trim(DM1.wUsuario))+','
   + QuotedStr(Trim(reg.dcBornDepartment)+', '+Trim(reg.dcBornProvince)+', '+Trim(reg.dcBornDistrit))+','
   + QuotedStr(Trim(reg.dcDepartmentAddress)+', '+Trim(reg.dcProvinceAddress)+', '+Trim(reg.dcDistritAddress))+','
   + QuotedStr(Copy(reg.dcExpirationDate,7,2)+'/'+Copy(reg.dcExpirationDate,5,2)+'/'+Copy(reg.dcExpirationDate,1,4))+','
   + QuotedStr(Trim(reg.dcAddDepUbigCode))+', '+QuotedStr(Trim(reg.dcAddProvUbigCode))+', '+QuotedStr(Trim(reg.dcAddDistUbigCode))+','
   + QuotedStr(Trim(reg.dcDepartmentAddress))+','+QuotedStr(Trim(reg.dcProvinceAddress))+','+QuotedStr(Trim(reg.dcDistritAddress))+','
   + QuotedStr(Trim(reg.dcBornDepartmentUbigCode))+','+QuotedStr(Trim(reg.dcBonrProvinceUbigCode))+','+QuotedStr(Trim(reg.dcBonrDistritUbigCode))+','
   + QuotedStr(Trim(reg.dcBornDepartment))+','+QuotedStr(Trim(reg.dcBornProvince))+','+QuotedStr(Trim(reg.dcBornDistrit))+','+QuotedStr(Trim(reg.dcMerriedName))+','
   + QuotedStr(Trim(reg.dcAddPrefix))+','+QuotedStr(Trim(reg.dcAddPrefixDes))+','+QuotedStr(Trim(reg.dcAddress))+','+QuotedStr(Trim(reg.dcAddressNumber))+','
   + QuotedStr(Trim(reg.dcAddressMz))+','+QuotedStr(Trim(reg.dcAddressLt))+','+QuotedStr(Trim(reg.dcAddressEt))+','
   + QuotedStr(Trim(reg.dcAddressBlockPrefix))+','+QuotedStr(Trim(reg.dcAddressBlockPrefixDes))+','+QuotedStr(Trim(reg.dcAddressBlockPrefixDes))+','
   + QuotedStr(Trim(reg.dcAddressIntPrefix))+','+QuotedStr(Trim(reg.dcAddressIntPrefixDes))+','+QuotedStr(Trim(reg.dcAddressInterior))+','
   + QuotedStr(Trim(reg.dcAddressUrbPrefix))+','+QuotedStr(Trim(reg.dcAddressUrbPrefixDes))+','+QuotedStr(Trim(reg.dcAddressUrb))+','
   + QuotedStr(Trim(reg.dcInstGrade))+','+QuotedStr(Trim(reg.dcAltDocumentType))+','+QuotedStr(Trim(reg.dcAltDocument))+', '
   + QuotedStr(Trim(reg.dcVoteStatus))+','+QuotedStr(Trim(reg.dcRestrictionCode))+', '
   + QuotedStr(reg.dcCivilState)+', '
   + QuotedStr(Trim(reg.dcAltDocument))+', '
   + QuotedStr(xgrains)+', '
   + QuotedStr(reg.dcRestrictionDes)+','
   + QuotedStr(xusuRENIEC)
   + ')';

   DM1.DCOM1.AppServer.EjecutaSql(xsql);
   // Guarda foto y firma
   CargaMemStreamImg;
   GrabafotoAtabla(xAsoDni);
   //Asigno Valores Capturados
   xasoid := DM1.cdsAso.FieldByName('ASOID').AsString;
   DM1.cdsAso.Edit;
   DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString := Trim(reg.dcLastName1);
   DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString := Trim(reg.dcLastName2);
   DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString := Trim(reg.dcMerriedName); 
   DM1.cdsAso.FieldByName('ASONOMDNI').AsString    := Trim(reg.dcFirstName);
   DM1.cdsAso.FieldByName('ASOFECNAC').AsString    := Trim(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4));
   DM1.cdsAso.FieldByName('ACTARCREN').AsString    := 'S';

 End;

   // Se captura los datos de los padrones
   If DM1.sAPO201 = 'ASO_NUE_CLI' Then
   Begin
      xSql := 'Select Max(ASOCODMOD) ASOCODMOD, Max(ASOTIPID) ASOTIPID, Max(REGPENID) REGPENID, Max(UPROID) UPROID, Max(UPAGOID) UPAGOID, Max(USEID) USEID,'
      +' Max(ASOCODPAGO) ASOCODPAGO, Max(CARGO) CARGO, Max(CASE WHEN LENGTH(TRIM(ASONCTA)) = 10 THEN ASONCTA ELSE NULL END) ASONCTA,'
      +' Max(CASE WHEN LENGTH(TRIM(ASONCTA)) = 10 THEN ''A'' ELSE NULL END) SITCTA, Max(CODMOD) CODMOD, Max(CARLAB) CARLAB, Max(SITACT) SITACT,'
      +' Max(TIPSER) TIPSER, Max(HABER) HABER, Max(LIQUIDO) LIQUIDO From ASO_PAD_HIS'
      +' where ASODNI = '+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+' AND CODPAD IN (SELECT MAX(CODPAD) CODPAD  FROM ASO_PAD_HIS WHERE ASODNI = '+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+')';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsql);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.FieldByName('ASOCODMOD').AsString <> '' Then
      Begin
         DM1.cdsAso.FieldByName('ASOCODMOD').AsString  := DM1.cdsQry2.FieldByName('ASOCODMOD').AsString;
         If DM1.cdsQry2.FieldByName('ASOTIPID').AsString = 'DO' Then
            xasotipid := 'VO'
         Else
            xasotipid := DM1.cdsQry2.FieldByName('ASOTIPID').AsString;
         DM1.cdsAso.FieldByName('ASOTIPID').AsString   := xasotipid;
         DM1.cdsAso.FieldByName('REGPENID').AsString   := DM1.cdsQry2.FieldByName('REGPENID').AsString;
         DM1.cdsAso.FieldByName('UPROID').AsString     := DM1.cdsQry2.FieldByName('UPROID').AsString;
         DM1.cdsAso.FieldByName('UPAGOID').AsString    := DM1.cdsQry2.FieldByName('UPAGOID').AsString;
         DM1.cdsAso.FieldByName('USEID').AsString      := DM1.cdsQry2.FieldByName('USEID').AsString;
         DM1.cdsAso.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString;
         DM1.cdsAso.FieldByName('CARGO').AsString      := DM1.cdsQry2.FieldByName('CARGO').AsString;
         DM1.cdsAso.FieldByName('ASONCTA').AsString    := DM1.cdsQry2.FieldByName('ASONCTA').AsString;
         DM1.cdsAso.FieldByName('SITCTA').AsString     := DM1.cdsQry2.FieldByName('SITCTA').AsString;
         // Se captura datos del colegio
         xSql := 'SELECT CENEDUID, NOMCENEDU, DIREC, TELEFONO, UBIGEO_DIR FROM ASO_CEN_EDU WHERE CODMOD = '+QuotedStr(DM1.cdsQry2.FieldByName('CODMOD').AsString)
         +' AND CENEDUID IN (SELECT MAX(CENEDUID) FROM ASO_CEN_EDU WHERE CODMOD = '+QuotedStr(DM1.cdsQry2.FieldByName('CODMOD').AsString)+')';
         DM1.cdsQry3.Close;
         DM1.cdsQry3.DataRequest(xSql);
         DM1.cdsQry3.Open;
         If DM1.cdsQry3.FieldByName('CENEDUID').AsString <> '' Then
         Begin
            DM1.cdsAso.FieldByName('CENEDUID').AsString    := DM1.cdsQry3.FieldByName('CENEDUID').AsString;
            DM1.cdsAso.FieldByName('ASODESLAB').AsString   := DM1.cdsQry3.FieldByName('NOMCENEDU').AsString;
            DM1.cdsAso.FieldByName('ASODIRLAB').AsString   := DM1.cdsQry3.FieldByName('DIREC').AsString;
            DM1.cdsAso.FieldByName('ASODPTLABID').AsString := Copy(DM1.cdsQry3.FieldByName('UBIGEO_DIR').AsString,1,2);
            DM1.cdsAso.FieldByName('ASOPRVLABID').AsString := Copy(DM1.cdsQry3.FieldByName('UBIGEO_DIR').AsString,1,4);
            DM1.cdsAso.FieldByName('ASODSTLABID').AsString := DM1.cdsQry3.FieldByName('UBIGEO_DIR').AsString;
            DM1.cdsAso.FieldByName('ASOTELLAB').AsString   := DM1.cdsQry3.FieldByName('TELEFONO').AsString;
         End;
      End;
   End;

   DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
   // Actualizando Sexo
   If dblTipDoc.Text=xTIPDOCCOD then
   Begin
   If reg.dcGender = '1' Then DM1.cdsAso.FieldByName('ASOSEXO').AsString := 'M'
   Else If reg.dcGender = '2' Then DM1.cdsAso.FieldByName('ASOSEXO').AsString := 'F';
   // Se actualiza el campo ESTCIVID desde RENIEC solo si el campo esta vacio.
   If Length(Trim(DM1.cdsAso.FieldByName('ESTCIVID').AsString)) = 0 Then
   Begin
      DM1.cdsAso.FieldByName('ESTCIVID').AsString := DM1.StrZero(reg.dcCivilState,2);
      edtEstadoCivil.EditText := DM1.DevuelveValor('TGE125', 'ESTCIVDES', 'ESTCIVID', DM1.StrZero(reg.dcCivilState,2));
      // Actualizando en el APO201
      XSQL := 'UPDATE ' + DM1.sAPO201+ ' SET ESTCIVID = ' + QuotedStr(DM1.StrZero(reg.dcCivilState,2))+' WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      // Tomando valor para el campo Item
      XSQL := 'SELECT LPAD(MAX(ITEM+1),2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('ITEM').AsString = '' Then xItem := '01' Else xItem := DM1.cdsQry.FieldByName('ITEM').AsString;
      XSQL := 'INSERT INTO APO206 (ASOID, ASOCODMOD, FREG, HREG, PERIODO, ESTCIVID, USUARIO, ITEM, CARLAB, SITACT, TIPSER, AINGFAM, AINGMAG) VALUES ('
      +QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
      +QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)+', TO_DATE(SYSDATE), SYSDATE, TO_CHAR(SYSDATE,''YYYYMM''),'
      +QuotedStr(DM1.cdsAso.FieldByName('ESTCIVID').AsString)+','
      +QuotedStr(DM1.wUsuario)+','
      +QuotedStr(xItem)+','
      +QuotedStr(DM1.cdsQry2.FieldByName('CARLAB').AsString)+','
      +QuotedStr(DM1.cdsQry2.FieldByName('SITACT').AsString)+','
      +QuotedStr(DM1.cdsQry2.FieldByName('TIPSER').AsString)+','
      +QuotedStr(DM1.cdsQry2.FieldByName('HABER').AsString)+','
      +QuotedStr(DM1.cdsQry2.FieldByName('LIQUIDO').AsString)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   xAsoApeNomDni := '';
   If Trim(reg.dcLastName1) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcLastName1)+ ' ';
   If Trim(reg.dcLastName2) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcLastName2)+ ' ';
   If Trim(reg.dcMerriedName) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcMerriedName) + ' ';
   xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcFirstName);
   XSQL := 'UPDATE ' + DM1.sAPO201
   + ' SET ASOAPEPATDNI = ' + QuotedStr(Trim(reg.dcLastName1))+ ','
   + ' ASOAPEMATDNI = ' + QuotedStr(Trim(reg.dcLastName2))+','
   + ' ASONOMDNI = ' + QuotedStr(Trim(reg.dcFirstName)) + ','
   + ' ASOAPECASDNI = ' + QuotedStr(Trim(reg.dcMerriedName)) + ','
   + ' ASOAPENOMDNI = ' + QuotedStr(xAsoApeNomDni) + ','
   + ' ASOSEXO = ' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOSEXO').AsString))+','
   + ' ASODNI = ' + QuotedStr(Trim(dbeLibDni.Text))+','
   + ' ACTARCREN = ' + QuotedStr('S')+', '
   + ' ASOFECNAC = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOFECNAC').AsString)
   + ' WHERE ' + DM1.sAso_where + ' ASOID = ' + QuotedStr(xasoid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   btnActualizaReniec.visible := True;
   btnActualizaReniec.Font.Color := clWhite;
   btnActualizaReniec.Caption := 'Actualizado de RENIEC';
   bitImpReniec.Enabled := True;
   Timer1.Enabled := False;
   xActRENIEC:='S';
   ActivaPantPrincipal;
   dbeLibDni.Enabled := False;
   IF DM1.xCnd = 'AUT' THEN
   BEGIN
      bitAutoriza.Visible := True;
      bitRechaza.Visible := True;
      bbtnN1.Visible := True;
   END;
   End;
END;

FUNCTION TFMantAsociado.AsignaSolicitud: STRING;
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT MAX(SOLICITUD) SOLICITUD FROM ASO_NUE_CLI';
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   IF Length(Trim(DM1.cdsAsoX.FieldByName('SOLICITUD').AsString)) = 0 THEN
   BEGIN
      Result := '0000000001';
   END
   ELSE
   BEGIN
      Result := Format('%.10d', [DM1.cdsAsoX.FieldByName('SOLICITUD').AsInteger + 1]);
   END;
   DM1.cdsAsoX.Close;
END;

FUNCTION TFMantAsociado.AsignaAsoid: STRING;
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'select max(asoid) ASOID from ('
      + 'select max(asoid) asoid from apo201 '
      + 'union all '
      + 'select max(asoid) asoid from aso_nue_cli) a';
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   IF Length(Trim(DM1.cdsAsoX.FieldByName('ASOID').AsString)) = 0 THEN
   BEGIN
      Result := '0000000001';
   END
   ELSE
   BEGIN
      Result := Format('%.10d', [DM1.cdsAsoX.FieldByName('ASOID').AsInteger + 1]);
   END;

   DM1.cdsAsoX.Close;
END;

//Aqui grabo la foto a la tabla
PROCEDURE TFMantAsociado.GrabafotoAtabla(xDni: STRING);
VAR
   xSql: STRING;
BEGIN
   xSql := 'SELECT dni, numlib, apepat, apemat, nombre, otrdoc, lugnac, nompad, nommad, fecnac, estatura, sexo, estciv, grains, lugdom,'+
                 ' restricciones, fecins, stavot, fecemidoc, direccion, foto, firma, usuact, fecact, ofiact, equusu, flag_expira, unico,'+
                 ' apecas, codubidepnac, desdepnac, codubipronac, despronac, codubidisnac, desdisnac, codgrains, codestciv, coddocsus, numdocsus,'+
                 ' flaconvot, codres, fecexp, codubidepdom, desdepdom, codubiprodom, desprodom, codubidisdom, desdisdom, precoddirecc, predesdirecc,'+
                 ' desdirecc, numdirecc, desetapa, desmanza, deslote, precodblock, predesblock, desblock, precodinter, predesinter, desinter,'+
                 ' precodurban, predesurban, desurban, usureniec '+
           'FROM INF_RENIEC_CAP WHERE DNI = ''' + TRIM(xDni) + ''' ORDER BY FECACT DESC';
   DM1.cdsParam.Close;
   DM1.cdsParam.DataRequest(xSql);
   DM1.cdsParam.Open;
   IF DM1.cdsParam.RecordCount > 0 THEN
   BEGIN
      DM1.cdsParam.Edit;
      TBlobField(DM1.cdsParam.FieldByName('Foto')).LoadFromStream(DM1.Stream);
      TBlobField(DM1.cdsParam.FieldByName('Firma')).LoadFromStream(DM1.StreamFirma);
      DM1.cdsParam.ApplyUpdates(-1);
   END;
   xSql := 'SELECT dni, numlib, apepat, apemat, nombre, otrdoc, lugnac, nompad, nommad, fecnac, estatura, sexo, estciv, grains, lugdom,'+
                 ' restricciones, fecins, stavot, fecemidoc, direccion, foto, firma, usuact, fecact, ofiact, equusu, flag_expira, unico,'+
                 ' apecas, codubidepnac, desdepnac, codubipronac, despronac, codubidisnac, desdisnac, codgrains, codestciv, coddocsus, numdocsus,'+
                 ' flaconvot, codres, fecexp, codubidepdom, desdepdom, codubiprodom, desprodom, codubidisdom, desdisdom, precoddirecc, predesdirecc,'+
                 ' desdirecc, numdirecc, desetapa, desmanza, deslote, precodblock, predesblock, desblock, precodinter, predesinter, desinter,'+
                 ' precodurban, predesurban, desurban, usureniec '+
           'FROM INF_RENIEC_CAP WHERE DNI = ''' + TRIM(xDni) + ''' ORDER BY FECACT DESC';
   DM1.cdsParam.Close;
   DM1.cdsParam.DataRequest(xSql);
   DM1.cdsParam.Open;
END;

//Convierte de Gif a Pcx
PROCEDURE TFMantAsociado.DeGifJpg(xGif, xJpg: STRING);
BEGIN
   DM1.gifFirma := TGIFImage.Create;
   DM1.gifFirma.LoadFromFile(xGif);
   DM1.jpgFirma := TJPEGImage.Create;
   DM1.jpgFirma.Assign(DM1.gifFirma);
   DM1.jpgFirma.CompressionQuality := 33;
   DM1.jpgFirma.SaveToFile(xJpg);
END;

PROCEDURE TFMantAsociado.fcShapeBtn1Click(Sender: TObject);
VAR
   xfeccaduca: tdate;
   Xsql, Xdatovalidado: STRING;
BEGIN
   IF (DM1.cdsAso.fieldbyname('ACTARCREN').AsString <> 'S') AND (xReniec = 'S') THEN
   BEGIN
      MessageDlg(' Falta Capturar Datos de RENIEC', mtError, [mbOk], 0);
      Exit;
   END;

   IF MessageDlg('Desea Validar La Información de Asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
   BEGIN
    //Primero DESACTIVO VALIDACUONES ANTERIORES
      CDSVALIDA.First;
      WHILE NOT CDSVALIDA.Eof DO
      BEGIN
         IF CDSVALIDA.FieldByName('FLAG').AsString = '1' THEN
         BEGIN
            XSQL := 'UPDATE VAL_DAT_ASO SET STATUS='''' WHERE ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND ' +
               'CAMPO=''' + CDSVALIDA.FieldByName('CAMPO').AsString + ''' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;
         CDSVALIDA.Next;
      END;

    //Inserto Los Datos Validados
      CDSVALIDA.First;
      WHILE NOT CDSVALIDA.Eof DO
      BEGIN
         IF CDSVALIDA.FieldByName('FLAG').AsString = '1' THEN
         BEGIN
            xfeccaduca := dm1.FechaSys + CDSVALIDA.FieldByName('TIEMPO').AsInteger;
            Xdatovalidado := DM1.cdsAso.FieldByName(CDSVALIDA.FieldByName('CAMPO').AsString).Asstring;
            XSQL := 'INSERT INTO VAL_DAT_ASO (ASOID,FECVAL,USUVAL,EQUUSU,OFIUSU,CAMPO,DATVAL,FECCAD,OBJETO,STATUS) '
               + 'VALUES ('
               + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',SYSDATE,'
               + QuotedStr(DM1.wUsuario) + ','
               + QuotedStr(DM1.wcomputadora) + ','
               + QuotedStr(DM1.wofides) + ','
               + QuotedStr(CDSVALIDA.FieldByName('CAMPO').AsString) + ','
               + QuotedStr(Xdatovalidado) + ','
               + QuotedStr(DateToStr(xfeccaduca)) + ','
               + QuotedStr(CDSVALIDA.FieldByName('OBJETO').AsString) + ','
               + QuotedStr('S') + ')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xsinvalidar := xsinvalidar - 1;
         END;
         CDSVALIDA.Next;
      END;

      pintaCamposValidados(SELF);
      IF xsinvalidar = 0 THEN
         xvalido := 'S'
      ELSE
         xvalido := 'N';
      CDSVALIDA.First;
      WHILE NOT CDSVALIDA.Eof DO
      BEGIN
         CDSVALIDA.Edit;
         CDSVALIDA.FieldByName('FLAG').AsString := '';
         CDSVALIDA.Next;
      END;
      CDSVALIDA.First;
      ActivaPantPrincipal;
      IF DM1.xInsert <> '1' THEN
         BitGrabarClick(SELF)
      ELSE
      BEGIN
         VerificaCamposValidados;
         gbIdentidadAso.Enabled := False;
         gbLaboralAso.Enabled := False;
         pnlRegPension.Enabled := False;
         pnlCodPension.Enabled := False;
      END;
      ActivaPantPrincipal;
   END;
END;

//Carga Imagenes del blob
PROCEDURE TFMantAsociado.CargaImagenes;
BEGIN
   DM1.Jpg := NIL;
   DM1.Stream := NIL;
   DM1.JpgFirma := NIL;
   DM1.StreamFirma := NIL;
   TRY
    //Crear una corriente y cargarle el contenido de un campo Blob
      DM1.Stream := TMemoryStream.Create;
      TBlobField(DM1.cdsParam.FieldByName('FOTO')).SaveToStream(DM1.Stream);
      DM1.StreamFirma := TMemoryStream.Create;
      TBlobField(DM1.cdsParam.FieldByName('FIRMA')).SaveToStream(DM1.StreamFirma);
      IF DM1.Stream.Size > 0 THEN
      BEGIN
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.Jpg := TJpegImage.Create;
         DM1.Stream.Position := 0;
         DM1.Jpg.LoadFromStream(DM1.Stream);
      END
      ELSE
         DM1.Jpg := NIL;

      IF DM1.StreamFirma.Size > 0 THEN
      BEGIN
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFirma := TJpegImage.Create;
         DM1.StreamFirma.Position := 0;
         DM1.jpgFirma.LoadFromStream(DM1.StreamFirma);
      END
      ELSE
         DM1.jpgFirma := NIL;
   EXCEPT
      DM1.Jpg := NIL;
      DM1.jpgFirma := NIL;
   END;


END;


PROCEDURE TFMantAsociado.CargaFicha;
BEGIN
   TRY
      FMantAsociadoDatosReniec := TFMantAsociadoDatosReniec.Create(self);
      FMantAsociadoDatosReniec.ShowModal;
   FINALLY
      FMantAsociadoDatosReniec.Free;
   END;
END;

PROCEDURE TFMantAsociado.BitBtn6Click(Sender: TObject);
BEGIN
   TRY
      FFiltrarColegios := TFFiltrarColegios.create(self);
      FFiltrarColegios.Showmodal;
   FINALLY
      FFiltrarColegios.free;
   END;
   ActualizaColegios;
END;

PROCEDURE TFMantAsociado.ActualizaColegios;
VAR
   xSql: STRING;
BEGIN
   IF Trim(DM1.cdsAso.FieldByName('CENEDUID').AsString) = '' THEN
   BEGIN
      measodeslab.Text := DM1.cdsAso.FieldByName('ASODESLAB').AsString;
      measodirlab.Text := DM1.cdsAso.FieldByName('ASODIRLAB').AsString;
      measotellab.Text := DM1.cdsAso.FieldByName('ASOTELLAB').AsString;
      lkcDpto2.Text := Copy(DM1.cdsAso.FieldByName('ASODSTLABID').AsString, 1, 2);
      lkcProv2.Text := Copy(DM1.cdsAso.FieldByName('ASODSTLABID').AsString, 1, 4);
      lkcDist2.Text := DM1.cdsAso.FieldByName('ASODSTLABID').AsString;
   END
   ELSE
   BEGIN
      xSql := 'SELECT codmod, nomcenedu, nivmod, gesdep, codloc, dirregedu, uniges, direc, cenpo, telefono, director, genero, forma, serrec, estado,'
            + 'turno, email, anexo, ubigeo_dir, uproid, upagoid, useid, ceneduid, codurbviv, numetaviv, codtiplug, desmanviv, desintviv, desrefviv,'
            + 'desetaviv, desurbviv, numintviv, numlotviv, nummanviv, numdirviv, nomdirviv, freg, ureg, nivedu_id, codpago, latitud, longitud,'
            + 'ges_dep, d_niv_mod, cod_car, d_cod_car, tipssexo, gestion, d_gestion, pagweb, referencia, localidad, codcp_inei, codccpp, area_sig,'
            + 'd_areasig, d_dpto, d_prov, d_dist, codooii, d_dreugel, lengua, len_etnica, d_crecer, d_juntos, d_vraem, tipoprog, d_tipoprog,'
            + 'd_estado, d_fte_dato, talum_hom, talum_muj, talumno, tdocente, tseccion, cod_tur, d_cod_tur, est_reg '
            + 'FROM ASO_CEN_EDU '
            + 'WHERE CENEDUID = ' + QuotedStr(DM1.cdsAso.FieldByName('CENEDUID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      measodeslab.Text := DM1.cdsQry.FieldByName('NOMCENEDU').AsString;
      measodirlab.Text := DM1.cdsQry.FieldByName('DIREC').AsString;
      measotellab.Text := DM1.cdsQry.FieldByName('TELEFONO').AsString;
      lkcDpto2.Text := Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString, 1,
         2);
      lkcProv2.Text := Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString, 1,
         4);
      lkcDist2.Text := DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString;
   END;
END;

procedure TFMantAsociado.FechaFall;
var
   xSQL : String;
begin
// rutina para determinar la fecha de fallecimiento que ira como label adicional a la
// palabra fallecido
   if DM1.cdsAso.FieldByName('TIPO_FALL_ID').AsString='X LIQ.FALL' then
   begin
      xSQL := 'select ASOFRESCESE FECHA_FALL '
             +'from PVS301 '
             +'where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
             +'  and PVSESTADO not in (''13'',''04'') ';
   end
   else
   begin
      xSQL := 'select FECFALGES FECHA_FALL from ASO_FAC_GES_DET '
             +'where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
   end;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      lblFallecido.Caption := lblFallecido.Caption +chr(13)+ DM1.cdsQry.FieldByName('FECHA_FALL').AsString;
      lblFallecido.Height := 67;
   end;
end;

procedure TFMantAsociado.btnacttelClick(Sender: TObject);
VAR
   xSql: string;
BEGIN
  IF (DM1.sAPO201 = 'ASO_NUE_CLI')  and (dblTipDoc.Text=xTIPDOCCOD)  THEN
  BEGIN
    xSql := 'SELECT ASOID FROM ' + DM1.sAPO201 + ' WHERE ' + DM1.sAso_where + ' ASODNI=' + QuotedStr(dbeLibDni.Text);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    IF DM1.cdsQry.RecordCount <= 0 THEN
    BEGIN
      ShowMessage('Advertencia: Antes de actualizar la dirección debe Capturar los datos de RENIEC');
      Exit;
    END;
  END;

  Try
     FNueManTel := TFNueManTel.Create(Self);
     FNueManTel.ShowModal;
  Finally
     FNueManTel.Free;
  End;
end;

procedure TFMantAsociado.edtCodPensionistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;
end;

procedure TFMantAsociado.btnCtaIndividualClick(Sender: TObject);
Var
   xSql: String;
begin
   xSql := 'SELECT A.*, C.ASOTIPDES, C.ASOTIPABR, B.USENOM FROM APO201 A, APO101 B, APO107 C'
      + ' WHERE A.ASOID = ' + DM1.cdsAso.FieldByName('ASOID').AsString
      + ' AND A.USEID = B.USEID'
      + ' AND A.UPAGOID = B.UPAGOID AND A.UPROID = B.UPROID AND A.ASOTIPID = C.ASOTIPID';
   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSql);
   DM1.cdsAsociado.Open;

   xSql := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') ANOMESACT FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.xanomesact := DM1.cdsQry.FieldByName('ANOMESACT').AsString;

    If (DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'DO') and
       (DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'CE') Then
   Begin
      MessageDlg('No es un Asociado Activo', mtInformation, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString = '' Then
   Begin
      MessageDlg('Asociado no cuenta con resolución de nombramiento', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.asoresnom := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
   DM1.asorescese := DM1.cdsAsociado.FieldByName('ASORESCESE').AsString;
   DM1.asofresnom := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
   DM1.tipben := '01';
   xSql := 'SELECT MAX(APOSEC) APOSEC FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.FieldByName('APOSEC').AsString = '' then
   begin
     MessageDlg('El docente no tiene aportes', mtInformation, [mbOk], 0);
     Exit;
   end;
   DM1.anoultapo := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 1, 4);
   DM1.mesultapo := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 5, 2);
   DM1.xanomesultapo := DM1.cdsQry.FieldByName('APOSEC').AsString;
   DM1.xanomestop := inttostr(StrToInt(DM1.anoultapo) + 2) + DM1.mesultapo;

   If DM1.xanomestop > DM1.xanomesact Then
      DM1.asofrescese := '28/' + Copy(DM1.xanomesact, 5, 2) + '/' + Copy(DM1.xanomesact, 1, 4)
   Else
      DM1.asofrescese := '28/' + Copy(DM1.xanomestop, 5, 2) + '/' + Copy(DM1.xanomestop, 1, 4);

   If DM1.asofrescese = '' Then
   Begin
      MessageDlg('Ingrese fecha de resolución de cese para esa opción', mtInformation, [mbOk], 0);
      Exit;
   End;
   If Copy(DM1.asofrescese, 7, 4) + Copy(DM1.asofrescese, 4, 2) < '199912' Then
   Begin
      If DM1.tipben = '' Then
      Begin
         MessageDlg('Ingrese el tipo de beneficio para procesar esta opción', mtInformation, [mbOk], 0);
         Exit;
      End;
   End;
   If (DM1.tipben = '03') And (Copy(DM1.asofrescese, 7, 4) < '1997') And (DM1.cdsAsociado.FieldByName('ASOFECNAC').AsString = '') Then
   Begin
      MessageDlg('Ingrese la fecha de nacimiento del asociado para procesar esta opción', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.xpvslbennr := '';
   DM1.xSgr := 'R';

        Try
            Fnuerepcueind := TFnuerepcueind.create(Self);
            Fnuerepcueind.ShowModal;
        Finally
            Fnuerepcueind.Free;
        End;
end;


procedure TFMantAsociado.BitFonSolClick(Sender: TObject);
Var
   xSQL: String;
Begin
   // Implementación de una ventana con información del FSC
   xSQL := 'SELECT ASOID '
          +' FROM COB_FSC_DEUDA_FSC_CAB '
          +' WHERE ASOID = '+ QuotedStr( DM1.cdsAso.fieldbyname('ASOID').AsString ) + ' AND ID_EST_FSC <> ''13'' ';
   If DM1.CountReg(xSQL) = 0 Then
   BEGIN
      MessageDlg('EL ASOCIADO NO TIENE APLICACIONES DE FSC !!!', mtInformation, [mbOk], 0);
      Exit;
   END;

   Try
      fMstFonSol := TfMstFonSol.Create(Self);
      fMstFonSol.ShowModal;
   Finally
      fMstFonSol.Free;
   End;
End;

procedure TFMantAsociado.BorraFotos;
Var search: TSearchRec;
    nFiles: integer;
begin
   nFiles:=FindFirst('C:\SOLEXES\*.JPG', faAnyFile,  search );
   while nFiles=0 do
   begin
      SysUtils.DeleteFile('C:\SOLEXES\'+ Search.Name);
      nFiles:=FindNext( Search );
   end;
   FindClose(Search);
   nFiles:=FindFirst('C:\SOLEXES\*.TIF', faAnyFile,  search );
   while nFiles=0 do
   begin
      SysUtils.DeleteFile('C:\SOLEXES\'+ Search.Name);
      nFiles:=FindNext( Search );
   end;
   FindClose(Search);
End;
FUNCTION TFMantAsociado.emailValido(CONST Value: String): boolean;
VAR
  i,len: Integer;
  namePart, serverPart: String;
BEGIN // of IsValidEmail
  Result:= False;
  i:= Pos('@', Value);
  IF (i=0) OR (Pos('..',Value) > 0) THEN Exit;
  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value,i+1,Length(Value));
  len:=Length(serverPart);
  // must have dot and at least 3 places from end, 2 places from begin
  IF (len<4) OR
     (Pos('.',serverPart)=0) OR
     (serverPart[1]='.') OR
     (serverPart[len]='.') OR
     (serverPart[len-1]='.') THEN Exit;
  Result:= CheckAllowed(namePart) AND CheckAllowed(serverPart);
END;

 FUNCTION TFMantAsociado.CheckAllowed(CONST s: String): boolean;
  VAR i: Integer;
 BEGIN
  Result:= False;
  FOR i:= 1 TO Length(s) DO // illegal char in s -> no valid address
  IF NOT (s[i] IN ['a'..'z','A'..'Z','0'..'9','_','-','.']) THEN Exit;
  Result:= true;
 END;

function TFMantAsociado.Validacionautomatica(xDNi, xAsoid: String): Boolean;
var XSQL: String;
begin
   If DM1.ValidaAutoCtas(xAsoid) Then
   Begin
      DM1.cdsCamposValida.First;
      While NOT DM1.cdsCamposValida.Eof do
      Begin
      If DM1.cdsCamposValida.FieldByName('GRUPO').AsString = 'C'  then  //Los campos de cuentas estan marcados GRUPO='S'
      Begin
        GrabaValidacion;
      End;
      DM1.cdsCamposValida.Next;
      End;
   End;

   //Valida automaticamente  los campos de DATOS PERSONALES DEL ASOCIADO, SEGUN  DNI CADUCO
   If DM1.VerDNICaduco(xDNi)= 'NO CADUCO' Then
   Begin
      DM1.cdsCamposValida.First;
      While NOT DM1.cdsCamposValida.Eof do
      Begin
      If DM1.cdsCamposValida.FieldByName('GRUPO').AsString = 'D' then  //Los campos de cuentas estan marcados GRUPO='D'
      Begin
        //Sí actualiza de RENIEC VALIDA AUTOMATICAMENTE los DATOS GENERALES del ASOCIADO
        If xActRENIEC='S' Then
        Begin
           //Se desmarca el campo validado
           If CDSVALIDA.Locate('CAMPO',DM1.cdsCamposValida.FieldByName('CAMPO').AsString,[]) Then
           Begin
              CDSVALIDA.Edit;
              CDSVALIDA.FieldByName('VALIDADO').AsString := '';
           End;
        End;

        GrabaValidacion;
      End;
      DM1.cdsCamposValida.Next;
      End;
   End;

   xSQL:='SELECT asoid, fecval, usuval, equusu, ofiusu, campo, feccad, datval, objeto, status, usudesval, fecdesval, obsdesval '
        +'FROM VAL_DAT_ASO WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString + ''' AND STATUS=''S''';
   DM1.cdsVAL_DAT_ASO.Close;
   DM1.cdsVAL_DAT_ASO.DataRequest(XSQL);
   DM1.cdsVAL_DAT_ASO.Open;

   xActRENIEC:='N';

end;

procedure TFMantAsociado.GrabaValidacion;
var  xfeccaduca: tdate;
  Xsql, Xdatovalidado: string;
begin

    If CDSVALIDA.Locate('CAMPO',DM1.cdsCamposValida.FieldByName('CAMPO').AsString,[]) Then
    Begin
     If  Length(Trim(CDSVALIDA.FieldByName('VALIDADO').AsString))=0 Then
     Begin
       //Desativo el datos anterior
        XSQL := 'UPDATE VAL_DAT_ASO SET STATUS = '''' WHERE ASOID = '''+DM1.cdsAso.FieldByName('ASOID').AsString+''' AND' +
               ' CAMPO = ''' + DM1.cdsCamposValida.FieldByName('CAMPO').AsString + '''';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      //Inserto El nuevo Datos Validados
        xfeccaduca    := dm1.FechaSys+DM1.cdsCamposValida.FieldByName('TIEMPO').AsInteger;
        Xdatovalidado := DM1.cdsAso.FieldByName(DM1.cdsCamposValida.FieldByName('CAMPO').AsString).Asstring ;
        XSQL := 'INSERT INTO VAL_DAT_ASO (ASOID,FECVAL,USUVAL,EQUUSU,OFIUSU,CAMPO,DATVAL,FECCAD,OBJETO,STATUS) VALUES ('+
        QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+',SYSDATE,'+
        QuotedStr(DM1.wUsuario)+','+
        QuotedStr(DM1.wcomputadora)+','+
        QuotedStr(DM1.wofides)+','+
        QuotedStr(DM1.cdsCamposValida.FieldByName('CAMPO').AsString)+','+
        QuotedStr(Xdatovalidado)+','+
        QuotedStr(DateToStr(xfeccaduca))+','+
        QuotedStr(DM1.cdsCamposValida.FieldByName('OBJETO').AsString)+','+
        QuotedStr('S')+')';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        CDSVALIDA.Edit;
        CDSVALIDA.FieldByName('VALIDADO').AsString:='1';
     end;
   End;
end;

Procedure TFMantAsociado.dbeAsoEmailExit(Sender: TObject);
Var xSql:String;
Begin
   If Trim(dbeAsoEmail.Text) <> '' Then
   Begin
      xSql := 'SELECT SF_ASO_VALIDA_DIR_CORREO('+QuotedStr(Trim(dbeAsoEmail.Text))+') VALOR FROM DUAL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('VALOR').AsInteger <> 0 Then
      Begin
         MessageDlg('Email no valido, o debe dejar en blanco', mtInformation, [mbOk], 0);
         dbeAsoEmail.SetFocus;
      End;
   End;
End;

procedure TFMantAsociado.dbeCodPagExit(Sender: TObject);
begin
   If Copy(Trim(dbeCodPag.Text),1,2) <> Trim(DbLUses.Text) Then
   Begin
      MessageDlg('Los 2 primeros caracteres del código de pago debe ser igual al código de ugel.', mtInformation, [mbOk], 0);
      DM1.cdsAso.FieldByName('ASOCODPAGO').AsString := '';
      Exit;
   End;
end;

(******************************************************************************)
// MUESTRA MENSAJE DE HOJA DE CARGO DE EXPEDIENTE
procedure TFMantAsociado.fn_muestra_msj_hoja_cargo_exp(psAsoid : string);
var xsSql : string;
begin
   xsSql := 'SELECT A.FECHA FECHA_HORA, NVL(B.USERNOM, A.USERID) USUARIO FROM'
   +' (SELECT B.FECHA, B.USERID ,DENSE_RANK() OVER(PARTITION BY A.CODCAREXP ORDER BY B.NUMIMP DESC) DNRK'
   +' FROM PRE_CARGO_EXPEDIENTE_MOV A, PRE_CARGO_EXPEDIENTE_IMP_MAE B'
   +' WHERE A.ASOID = '+QuotedStr(psAsoid)+' AND A.CODCAREXPEST = ''PENDIENTE'' AND A.CODCAREXP = B.CODCAREXP) A, TGE006 B'
   +' WHERE A.USERID = B.USERID AND A.DNRK = 1';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount >= 1 then begin
      bgHojaCargoExp.Visible := true;
      lblHojaCargoExpFecha.Caption := 'FECHA : ' + DM1.cdsQry.fieldbyname('FECHA_HORA').AsString;
      lblHojaCargoExpUsuario.Caption := 'USR : ' + DM1.cdsQry.fieldbyname('USUARIO').AsString;
   end else begin
      bgHojaCargoExp.Visible := false;
   end;
end;


// CREA LA HOJA DE CARGO DE EXPEDIENTE
procedure TFMantAsociado.btnHojaCargoExpedienteClick(Sender: TObject);
VAR xsSql : String;
begin
   xsSql :=
      'SELECT DB2ADMIN.PCK_PRE_CARGO_EXPEDIENTE.SF_PRE_OBTIENE_CODIGO_PENDIENT '
    + '       (' + QuotedStr(DM1.xOfiDes) + ', ' + QuotedStr(DM1.wUsuario) + ', ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ', SYSDATE) CODCAREXP '
    + '  FROM DUAL ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSql);
   DM1.cdsQry5.Open;
   If DM1.cdsQry5.FieldByName('CODCAREXP').AsString = 'NULL'Then Begin
      MessageDlg('Solo se pueden crear Hojas de Cargo para asociado del tipo ''DO'' y ''CE'' que registren aportes', mtInformation, [mbOk], 0);
      Exit;
   End;
   xsSql := 'SELECT A.CODCAREXP, SUBSTR(A.CODCAREXP, 1, 4) ANHO, SUBSTR(A.CODCAREXP,5,8) CORRELATIVO, C.ASOAPENOM,'
   +' C.ASODNI, C.ASOTELF1||'' / ''||C.ASOTELF2 TELEFONOS,'
   +' C.ASOEMAIL, TO_CHAR(A.FECREG,''DD/MM/YYYY HH24:MI:SS'') FECHA_HORA,'
   +' UPPER(NVL(G.USERNOM ,A.USERID)) USUARIO, E.OFDESNOM'
   +' FROM PRE_CARGO_EXPEDIENTE_MOV A, APO201 C, APO110 E, TGE006 G'
   +' WHERE A.CODCAREXP = '+QuotedStr(DM1.cdsQry5.FieldByName('CODCAREXP').AsString)
   +' AND A.CODCAREXPEST = ''PENDIENTE'' AND A.ASOID = C.ASOID AND A.OFDESID = E.OFDESID AND A.USERID = G.USERID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   IF DM1.cdsQry.RecordCount = 1 THEN
   BEGIN
      ppLblCodCarExp.Text := 'N° '+DM1.cdsQry.FieldByName('ANHO').AsString+'-'+DM1.cdsQry.FieldByName('CORRELATIVO').AsString+'-PS';
      ppLblTitular.Text   := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
      pplblDNI.Text       := DM1.cdsQry.FieldByName('ASODNI').AsString;
      pplblTelefonos.Text := DM1.cdsQry.FieldByName('TELEFONOS').AsString;
      pplblCorreo.Text    := DM1.cdsQry.FieldByName('ASOEMAIL').AsString;
      pplblFechaHora.Text := DM1.cdsQry.FieldByName('FECHA_HORA').AsString;
      pplblUsuario.Text   := DM1.cdsQry.FieldByName('USUARIO').AsString;
      pplblOficina.Text   := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
      xsSql := 'SELECT FECHA, USERID FROM (SELECT B.FECHA, B.USERID ,DENSE_RANK() OVER(PARTITION BY A.CODCAREXP ORDER BY B.NUMIMP DESC) DNRK'
      +' FROM PRE_CARGO_EXPEDIENTE_MOV A, PRE_CARGO_EXPEDIENTE_IMP_MAE B'
      +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND A.CODCAREXPEST = ''PENDIENTE'' AND A.CODCAREXP = B.CODCAREXP)'
      +' WHERE DNRK = 1';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSql);
      DM1.cdsQry.Open;
      pplfechahoraimpresion.Caption := DM1.cdsQry.FieldByName('FECHA').AsString;
     pprHojaCargoExp.Print;
   END
   ELSE
   BEGIN
      MessageDlg('No existe un registro de la hoja de cargo en la base de datos!', mtInformation, [mbOk], 0);
   END;
   fn_muestra_msj_hoja_cargo_exp(DM1.cdsAso.FieldByName('ASOID').AsString);
end;

procedure TFMantAsociado.dblcdCodPrestacionExit(Sender: TObject);
begin
   If trim(dblcdCodPrestacion.Text) = '' Then
   Begin
      edtdesprestacion.Text := '';
      Exit;
   End;
   edtdesprestacion.Text := DM1.DevuelveValor('ASO_COD_PRE_MAE', 'DESPRE', 'CODPRE', dblcdCodPrestacion.Text);
   If Trim(edtdesprestacion.Text) = '' Then
   Begin
     MessageDlg('Código de prestación no valido.', mtError, [mbOk], 0);
     dblcdCodPrestacion.Text := '';
     edtdesprestacion.Text := '';
     dblcdCodPrestacion.SetFocus;
     Exit;
   End;
end;

procedure TFMantAsociado.dblcdCodLeyPenExit(Sender: TObject);
begin
   If trim(dblcdCodLeyPen.Text) = '' Then
   Begin
      edtCodLeyPen.Text := '';
      Exit;
   End;
   edtCodLeyPen.Text := DM1.DevuelveValor('ASO_LEY_PEN_MAE', 'DESLEYPEN', 'CODLEYPEN', dblcdCodLeyPen.Text);
   If Trim(edtCodLeyPen.Text) = '' Then
   Begin
     MessageDlg('Código de ley de pensión no valido.', mtError, [mbOk], 0);
     dblcdCodLeyPen.Text := '';
     edtCodLeyPen.Text := '';
     dblcdCodLeyPen.SetFocus;
     Exit;
   End;
End;

// Guarda ultima impresion de la hoja de cargo
procedure TFMantAsociado.pprHojaCargoExpPrintDialogCreate(Sender: TObject);
Var xsSql:String;
begin
   xsSql :=
      'BEGIN DB2ADMIN.PCK_PRE_CARGO_EXPEDIENTE.SP_PRE_GUARDA_IMPRESION(''S'', ' + QuotedStr(DM1.cdsQry5.FieldByName('CODCAREXP').AsString) + ', ' + QuotedStr(DM1.wUsuario) + '); END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   xsSql := 'SELECT FECHA, USERID FROM (SELECT B.FECHA, B.USERID ,DENSE_RANK() OVER(PARTITION BY A.CODCAREXP ORDER BY B.NUMIMP DESC) DNRK'
   +' FROM PRE_CARGO_EXPEDIENTE_MOV A, PRE_CARGO_EXPEDIENTE_IMP_MAE B'
   +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND A.CODCAREXPEST = ''PENDIENTE'' AND A.CODCAREXP = B.CODCAREXP)'
   +' WHERE DNRK = 1';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   pplfechahoraimpresion.Caption := DM1.cdsQry.FieldByName('FECHA').AsString;
end;

//Se implementa el tipo de documento
Function TFMantAsociado.estadocivil(xestado: String): String;
begin
  If DbLlSexo.Text='M' Then
     Dm1.cdsUSES.Locate('ESTCIVDES',xestado,[]);


  If DbLlSexo.Text='F' Then
     Dm1.cdsUSES.Locate('ESTCIVDESFEM',xestado,[]);

  Result := Dm1.cdsUSES.Fieldbyname('ESTCIVID').AsString;

end;

//Se implementa el tipo de documento
procedure TFMantAsociado.editaRENIEC;
begin
  If dblTipDoc.Text=xTIPDOCCOD Then
  Begin
     pnlRENIEC1.Enabled  := False;
     PnlRENIEC1B.Enabled := False;
     pnlRENIEC2.Enabled  := False;
     pnlRENIEC3.Enabled  := False;
     pnlRENIEC4.Enabled  := False;
  End
  Else
  Begin
     pnlRENIEC1.Enabled  := True;
     PnlRENIEC1B.Enabled := True;
     pnlRENIEC2.Enabled  := True;
     pnlRENIEC3.Enabled  := True;
     pnlRENIEC4.Enabled  := True;
  End
end;

//Se implementa el tipo de documento
procedure TFMantAsociado.dblTipDocChange(Sender: TObject);
begin

 If DM1.cdsCbcos.Locate('TIPDOCCOD',dblTipDoc.Text,[]) Then
      edtTipDoc.Text := Dm1.cdsCbcos.Fieldbyname('TIPDOCABR').AsString
 Else edtTipDoc.Text := '';
 dbeLibDni.MaxLength:= Dm1.cdsCbcos.Fieldbyname('LONCAM').AsInteger;
 edtnumdoc.MaxLength:= Dm1.cdsCbcos.Fieldbyname('LONCAM').AsInteger;
 If   (Dm1.cdsCbcos.Fieldbyname('FLGDNI').AsString='S') or  (Length(Trim(dblTipDoc.Text))=0) Then
 Begin
    edtnumdoc.Text         := DM1.cdsAso.fieldbyname('ASODOCNUM').AsString;;
    pnlRENIEC1.Enabled     := False;
    PnlRENIEC1B.Enabled    := False;
    pnlRENIEC2.Enabled     := False;
    pnlRENIEC3.Enabled     := False;
    btnActualizaReniec.Enabled := True;
    bitImpReniec.Enabled   := True;
    edtnumdoc.Visible      := False;
    dbeLibDni.Visible      := True;
    dblEstadoCivil.Visible := False;
    edtEstadoCivil.Visible := True;
    pnlRENIEC4.Enabled     := False;
 End
 Else
 Begin
    dbeLibDni.Text         := DM1.cdsAso.fieldbyname('ASODNI').AsString;;
    edtnumdoc.Visible      := True;
    dbeLibDni.Visible      := False;
    btnActualizaReniec.Enabled := False;
    dblEstadoCivil.Visible := True;
    edtEstadoCivil.Visible := False;
    bitImpReniec.Enabled   := False;
    pnlRENIEC1.Enabled     := False;
    PnlRENIEC1B.Enabled    := False;
    pnlRENIEC2.Enabled     := False;
    pnlRENIEC3.Enabled     := False;
    pnlRENIEC4.Enabled     := False;
    If (DM1.xCnd <> 'AUT') and (DM1.sAPO201 <> 'APO201') Then
    Begin
    pnlRENIEC1.Enabled     := True;
    PnlRENIEC1B.Enabled    := True;
    pnlRENIEC2.Enabled     := True;
    pnlRENIEC3.Enabled     := True;
    pnlRENIEC4.Enabled     := True;
    End
    Else
    Begin
     edtnumdoc.Enabled := False;
     dblEstadoCivil.Enabled := False;
    End;
 End;
   If  (DM1.xInsert  <> '1') And (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) <> 'N3') Then
   Begin
     dblTipDoc.Enabled := False;
     edtnumdoc.Enabled := False;
   End
   Else
   Begin
       If (dblTipDoc.Text <> '10') Then
       Begin
          dblEstadoCivil.Visible := True;
          pnlRENIEC4.Enabled := True;
          dblEstadoCivil.Enabled := True;
          edtEstadoCivil.Visible := False;
          edtnumdoc.Enabled := True;
       End
       Else
       Begin
          dblEstadoCivil.Visible := False;
          edtEstadoCivil.Visible := True;
       End
   End;

End;

function TFMantAsociado.GrabaApo201NO_DNI: Boolean;
Var xAsoApeNomDni:String;
    xsql, xAsoDni, xAsoid, xSolicitud,xestcivid: String;
begin

   xestcivid:=estadocivil(dblEstadoCivil.Text);
   If dm1.xInsert = '1' Then
   Begin
   //Si aun no tiene asignado un código de solicitud
      If DM1.cdsAso.fieldbyname('SOLICITUD').AsString = '' Then
      Begin
      //Valida que el dni no haya sido ingresado en una solicitud anterior
         If validaAsoDniNuevo(dbeLibDni.Text) Then
         Begin
            MessageDlg('DNI Ya Existe, Solicitud fue creada', mtError, [mbOk], 0);
            self.Close;
            exit;
         End;
         //Pide confirmación final al usuario
         If MessageDlg('¿Está seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
         Begin
            self.Close;
            exit;
         End;
         xSolicitud := AsignaSolicitud;
         xAsoid := AsignaAsoId;
         xSQL := 'INSERT INTO ' + DM1.sAPO201 + ' (SOLICITUD, ASOID, ASODNI, EST_AUT_CLI,ASODOCNUM,TIPDOCCOD)'
            + ' VALUES (''' + xSolicitud + ''', ''' + xAsoid + ''', ''' + trim(dbeLibDni.Text) + ''', ''NU'','''+Trim(edtnumdoc.Text)+''','''+dblTipDoc.Text+''')';
         dm1.cdsQry2.Close;
         dm1.cdsQry2.DataRequest(xSQL);
         dm1.cdsQry2.Execute;
      End;
   End;

   xAsoApeNomDni := '';
   If Trim(EdtApePatDni.Text) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(EdtApePatDni.Text)+ ' ';
   If Trim(EdtApeMatDni.Text) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(EdtApeMatDni.Text)+ ' ';
   If Trim(EdtApeCasDni.Text) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(EdtApeCasDni.Text)+ ' ';

   xAsoApeNomDni := xAsoApeNomDni + Trim(EdtAsoNomDni.Text);

   XSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ' +
      '      ASOAPENOM   =' + QuotedStr(xAsoApeNomDni) + ',' +
      '      ASOAPEPAT   =' + QuotedStr(EdtApePatDni.Text) + ',' +
      '      ASOAPEMAT   =' + QuotedStr(EdtApeMatDni.Text) + ',' +
      '      ASOAPECASDNI =' + QuotedStr(EdtApeCasDni.Text) + ',' +
      '      ASONOMBRES  =' + QuotedStr(EdtAsoNomDni.Text) + ',' +
      '      ASOEMAIL    =' + QuotedStr(dbeAsoEmail.Text) + ',' +
      '      ASOAPENOMDNI=' + QuotedStr(xAsoApeNomDni) + ',' +
      '      ASODPTO     =' + QuotedStr(trim(lkcDpto.Text)) + ',' +
      '      CIUDID      =' + QuotedStr(trim(lkcProv.Text)) + ',' +
      '      ZIPID       =' + QuotedStr(trim(lkcDist.Text)) + ',' +
      '      ASODIR      =' + QuotedStr(Copy(Trim(dbeDirec.Text), 1, 250)) + ',' +
      '      ASOAPEPATDNI=' + QuotedStr(EdtApePatDni.Text) + ',' +
      '      ASOAPEMATDNI=' + QuotedStr(EdtApeMatDni.Text) + ',' +
      '      ASONOMDNI   =' + QuotedStr(EdtAsoNomDni.Text) + ',' +
      '      ASODNI      =' + QuotedStr(dbeLibDni.Text) + ',' +
      '      ASODOCNUM   =' + QuotedStr(edtnumdoc.Text) + ',' +
      '      ASOFECNAC   =' + QuotedStr(dbdtFecNac.Text) + ',' +
      '      ESTCIVID    =' + QuotedStr(xestcivid) + ',' +
      '      ASOSEXO     =' + QuotedStr(DbLlSexo.Text) + ',' +
      '      ASOTELF1    =' + QuotedStr(dbeTel1.Text) + ',' +
      '      ASOTELF2    =' + QuotedStr(dbetel2.Text) + ',' +
      '      ASOCODMOD   =' + QuotedStr(EdtCodMod.Text) + ',' +
      '      ASOTIPID    =' + QuotedStr(DbLlTipAso.Text) + ',' +
      '      REGPENID    =' + QuotedStr(DbLlRegPen.Text) + ',' +
      '      CODAFP      =' + QuotedStr(DbLlAfp.Text) + ',' +
      '      UPROID      =' + QuotedStr(DbLUniPro.Text) + ',' +
      '      UPAGOID     =' + QuotedStr(DbLUniPag.Text) + ',' +
      '      USEID       =' + QuotedStr(DbLUses.Text) + ',' +
      '      ASORESNOM   =' + QuotedStr(dbeNroRes.Text) + ',' +
      '      ASOFRESNOM  =' + QuotedStr(DBDTResNom.Text) + ',' +
      '      ASORESCESE  =' + QuotedStr(dbeNroCes.Text) + ',' +
      '      ASOFRESCESE =' + QuotedStr(DBDTResCes.Text) + ',' +
      '      ASOCODPAGO  =' + QuotedStr(dbeCodPag.Text) + ',' +
      '      ASONCTA     =' + QuotedStr(dbeCuenta.Text) + ',' +
      '      SITCTA      =' + QuotedStr(dbeSitCta.Text) + ',' +
      '      ASODESLAB   =' + QuotedStr(measodeslab.Text) + ',' +
      '      ASODIRLAB   =' + QuotedStr(measodirlab.Text) + ',' +
      '      ASOTELLAB   =' + QuotedStr(measotellab.Text) + ',' +
      '      ASODPTLABID =' + QuotedStr(trim(lkcDpto2.Text)) + ',' +
      '      ASOPRVLABID =' + QuotedStr(trim(lkcProv2.Text)) + ',' +
      '      ASODSTLABID =' + QuotedStr(trim(lkcDist2.Text)) + ',' +
      '      CENEDUID    =' + QuotedStr(trim(dbeCenEduId.Text)) + ',' +
      '      USUARIO     =' + QuotedStr(DM1.wUsuario) + ',' +
      '      FREG        =' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
      '      HREG        =    SYSDATE,' +
      '      ACTARCREN   =' + QuotedStr('S') +
      ' WHERE ASOID= ' + QuotedStr(xAsoid);

      Try
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Except
          ShowMessage('Error al Actualizar el Maestro de Asociados');
          Exit;
      End;

   xSQL := 'SELECT solicitud, asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid,'+
           '       asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto,'+
           '       zonaid, zonanomb, ubigeoid, dptoid, paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil,'+
           '       asoruc, estcivid, asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging,'+
           '       asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese, fgarante, zipid, ciudid,'+
           '       archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser, cargo, variascuot,'+
           '       crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, asonomdni, asoapenomdni, asodeslab,'+
           '       asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador,'+
           '       ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, reingreso,'+
           '       autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes, codtiplug,'+
           '       numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+
           '       codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid,'+
           '       mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, est_aut_cli, usu_aut_cli, fec_aut_cli, obs_aut_cli, usu_cre_cli,'+
           '       fec_cre_cli, obs_aut_cli_uge, obs_aut_cli_pad, obs_aut_cli_otr, ceneduid, fallecido, tipo_fall_id, codtiptel1, codreftel1, codtiptel2, codreftel2,'+
           '       codpension, fecregautdesapo, codleypen, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, asoaptser, fecactsit, codciutelfij1,'+
           '       codciutelfij2, fecreccadaps, usureccadaps, codmotautcadaps, codpre '+
           ' FROM ' + DM1.sAPO201 + ' WHERE SOLICITUD = ''' + xSolicitud + ''' AND ASOID = ' + QuotedStr(Trim(xAsoid));
   DM1.sAso_where := 'SOLICITUD = ''' + xSolicitud + ''' AND ';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   result := true;
   
end;

procedure TFMantAsociado.edtnumdocKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ','°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_',chr(39)] Then
      Key := #0;
end;

function TFMantAsociado.validaNumerodoc(xnumerodoc: String): Boolean;
VAR
   xsql: STRING;
BEGIN
   XSQL := 'SELECT ''1'' FROM ASO_NUE_CLI WHERE TIPDOCCOD='+QuotedStr(dblTipDoc.Text) + ' and ASODOCNUM='+QuotedStr(xnumerodoc) +
           ' UNION ALL '+
           'SELECT ''1'' FROM APO201 WHERE TIPDOCCOD='+QuotedStr(dblTipDoc.Text) + ' and ASODOCNUM='+QuotedStr(edtnumdoc.Text);
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;

   IF DM1.cdsMGrupo.RecordCount > 0 THEN
      Result := True
   ELSE
      Result := False;
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';
end;

procedure TFMantAsociado.edtnumdocExit(Sender: TObject);
begin
IF (dm1.xInsert='1') AND (Length(trim(edtnumdoc.Text))<>0) AND (dblTipDoc.Text<>xTIPDOCCOD) THEN
Begin
   If validaNumerodoc(Trim(edtnumdoc.Text)) Then
   BEGIN
     MessageDlg('Número de documento Ya Existe, verifique', mtError, [mbOk], 0);
     edtnumdoc.Color := $00E8FFFF;
     edtnumdoc.SetFocus;
     Exit;
   END;
End;
end;

procedure TFMantAsociado.btnAsignarRegaloClick(Sender: TObject);
begin
    FMantRegalo:=TFMantRegalo.Create(Self);
    FMantRegalo.sOficinaId :=  DM1.xOfiDes;
    FMantRegalo.sUserReg :=  DM1.wUsuario;
    FMantRegalo.sAsociadoId :=  DM1.cdsAso.fieldbyname('ASOID').AsString;
    FMantRegalo.ShowModal;
    FMantRegalo.Free;
end;

procedure TFMantAsociado.ValidarAsignarRegalo;
var
    xSQL: STRING;
begin
    xSQL := 'SELECT COUNT(1) cuenta ' +
            ' FROM APO301 ' +
            ' WHERE ASOID =' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) +
            ' AND   TRANSANO||TRANSMES>=TO_CHAR(ADD_MONTHS(SYSDATE,-3),''YYYYMM'')' +
            ' AND   TRANSANO||TRANSMES<=TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'')' +
            ' UNION ' +
            ' SELECT COUNT(1) cuenta ' +
            ' FROM   ASO_NUE_CLI A ' +
            ' WHERE  A.ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) +
            ' AND    TO_CHAR(FREG,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM'') ' +
            ' AND    ASOTIPID=''VO'' '+
            ' AND    EST_AUT_CLI=''AP'' '+
            ' AND    (SELECT COUNT(B.ASOID) ' +
            '         FROM  APO201 B ' +
            '         WHERE B.ASOID=A.ASOID ' +
            '         AND   B.ASOTIPID=''DO'' ' +
            '         AND   NVL(B.AUTDESAPO,''N'')=''S'' )=1 ';

    xSQL := ' SELECT SUM(D.cuenta) CUENTA  FROM ( ' + xSQL + ' ) D ';
    DM1.cdsQryRegalo.Close;
    DM1.cdsQryRegalo.DataRequest( xSQL );
    DM1.cdsQryRegalo.Open;

    btnAsignarRegalo.Enabled := False;

   If (DM1.cdsQryRegalo.FieldByName('CUENTA').AsInteger > 0 ) Then
        btnAsignarRegalo.Enabled := True;
end;

procedure TFMantAsociado.Apo201_NueCLi;
begin
      If  DM1.sAPO201='APO201' Then
          DM1.xSelect:='asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid,'
                  +'asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto,'
                  +'asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum,'
                  +'asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov,'
                  +'asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese, fgarante,'
                  +'zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben,'
                  +'ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni,'
                  +'asoapematdni, asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab,'
                  +'dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado,'
                  +'valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, reingreso, autdesapo, fecautdesapo,'
                  +'usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes, codtiplug, numdirviv,'
                  +'nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv,'
                  +'envio, codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo,'
                  +'mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido,'
                  +'tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2, codreftel2, codpension, fecregautdesapo, codleypen, numautonp,'
                  +'codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez, tipo_inva_id, fecautonp, asoaptser, fecactsit,'
                  +'codreglab, usuautonp, oriopeonp, codciutelfij1, codciutelfij2, fecreccadaps, usureccadaps, codmotautcadaps, codpre, asocci,'
                  +'latitud_dir, longitud_dir ';

    If DM1.sAPO201='ASO_NUE_CLI' Then
         DM1.xSelect:=
               'solicitud, asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid,'+
               'upagoid, asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto,'+
               'asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum,'+
               'asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov,'+
               'asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese, fgarante,'+
               'zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser,'+
               'cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, asonomdni,'+
               'asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+
               'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni,'+
               'actarcrenant, actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo,'+
               'gencodbar, envautdes, corenvautdes, codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv,'+
               'numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio, codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo,'+
               'usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv,'+
               'codmotdestcuo, fecactpad, est_aut_cli, usu_aut_cli, fec_aut_cli, obs_aut_cli, usu_cre_cli, fec_cre_cli, obs_aut_cli_uge,'+
               'obs_aut_cli_pad, obs_aut_cli_otr, ceneduid, fallecido, tipo_fall_id, codtiptel1, codreftel1, codtiptel2, codreftel2, codpension,'+
               'fecregautdesapo, codleypen, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, asoaptser, fecactsit, codciutelfij1 '+
               'codciutelfij2, fecreccadaps, usureccadaps, codmotautcadaps, codpre ';
end;

End.

//Final HPC_201801_MAS
