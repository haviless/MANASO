//---------------------------------------------------------------------------------------------------------------------------
// Unidad                   : ASO959a
// Formulario               : fResNombHist
// Fecha de Creación        : 15/05/2018
// Autor                    : Equipo de Desarrollo.
// Objetivo                 : Historial de Cambios.
// Fecha de Actualización   :
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS

Unit ASO959a;

Interface

Uses

   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
   wwdbdatetimepicker, Mask, wwdbedit, wwcheckbox, DBCtrls, db;

Type
   TfResNombHist = Class(TForm)
      grpResoluciones: TGroupBox;
    dbgResolucionesHist: TwwDBGrid;
      BitSalir: TBitBtn;

      Procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
      xinsert, xNroResNomb, xNroResCese, xFechaResNomb, xFechaResCese: String;

    { Public declarations }
   End;

Var
   fResNombHist: TfResNombHist;
   xReingreso: boolean;

Implementation

Uses ASODM, ASO260;

{$R *.dfm}



Procedure TfResNombHist.BitSalirClick(Sender: TObject);
Begin
   close;
End;

End.

//FIN HPC_201801_MAS

