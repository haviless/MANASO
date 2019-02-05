// Inicio Uso Estándares : 01/08/2011
// Unidad                : MANASO.dpr
// Formulario            : Proyecto
// Fecha de Creación     : 15/05/2018
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Proyecto del Mantenimiento de Asociados
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS
program MANASO;

uses
  Forms,
  Windows,
  Msgdlgs,
  ASODM in 'ASODM.pas' {DM1: TDataModule},
  ASO908 in 'ASO908.pas' {fMatAso_old},
  ASO938 in 'ASO938.pas' {fCtasAhorro},
  ASO936 in 'ASO936.pas' {fNueAsociado},
  ASO260J in 'ASO260J.pas' {FMantAsociadoDatosValidar},
  ASO260H in 'ASO260H.pas' {FMantAsociadoCompletar},
  ASO916 in 'ASO916.pas' {FNueManDom},
  ASO958B in 'ASO958B.pas' {FAutoriza},
  ASO958D in 'ASO958D.pas' {FRechazar},
  ASO260G in 'ASO260G.pas' {FMantAsociadoConfirmaReniec},
  ASO260F in 'ASO260F.pas' {FMantAsociadoCompara},
  ASO260E in 'ASO260E.pas' {FMantAsociadoDatosReniec},
  ASO907 in 'ASO907.pas' {FFiltrarColegios},
  ASO903B in 'ASO903B.pas' {FNueManTel},
  PRE295 in 'PRE295.pas' {Fnuerepcueind},
  ASO261 in 'ASO261.pas' {fMstFonSol},
  ASO264 in 'ASO264.pas' {FvalregCADAPS},
  ASO265 in 'ASO265.pas' {fenvarchico},
  ASO266 in 'ASO266.pas' {Fverificaasociado},
  ASO267 in 'ASO267.pas' {Flotesenviados},
  ASO263 in 'ASO263.pas' {FRepControl},
  ASO260 in 'ASO260.pas' {FMantAsociado},
  ASO957 in 'ASO957.pas' {fMstPrest},
  ASO900 in 'ASO900.pas' {FOtorPre},
  ASO944 in 'ASO944.pas' {fRegApor},
  COB903 in 'COB903.pas' {fCronoPag},
  ASO948 in 'ASO948.pas' {fIdentAso},
  ASO260A in 'ASO260A.pas' {FMantAsociadoObservacion},
  ASO901 in 'ASO901.pas' {fSeleccion},
  ASO942 in 'ASO942.pas' {fAuditoria},
  ASO937 in 'ASO937.pas' {fResNomb},
  ASO943 in 'ASO943.pas' {fDatosSocEco};

{$R *.res}
var
  HMutex: THandle;

begin
  HMutex := CreateMutex (nil, False, 'OneCopyMutexMLC');
  if WaitForSingleObject (HMutex, 0) <> wait_TimeOut then
   begin
    Application.Initialize;
    Application.Title := 'MANTENIMIENTO DEL MAESTRO DEL ASOCIADO';
    Application.CreateForm(TDM1, DM1);
  Application.Run;
   end
 else
  ErrorMsg('El Mantenimiento del maestro de Asociados', 'Ya se Encuentra en ejecución');
end.
//Final HPC_201801_MAS

