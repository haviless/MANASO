// Inicio Uso Estándares     :   01/08/2011
// Unidad                    :   ASO260H.pas
// Formulario                :   FMantAsociadoCompletar
// Fecha de Creación         :   15/05/2018
// Autor                     :   Equipo de Sistemas
// Objetivo                  :   Funciones globales
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS
unit ASO260H;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DB,
  DBClient;

type
  TFMantAsociadoCompletar = class(TForm)
    pnlCompletaInf: TPanel;
    Shape15: TShape;
    Label48: TLabel;
    Shape16: TShape;
    Label49: TLabel;
    wwDBGrid2: TwwDBGrid;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EnlazarDatos(pDSINCOMPLETOS: TDataSource);
  end;

var
  FMantAsociadoCompletar: TFMantAsociadoCompletar;

implementation

{$R *.dfm}

procedure TFMantAsociadoCompletar.BitBtn5Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFMantAsociadoCompletar.EnlazarDatos(pDSINCOMPLETOS: TDataSource);
begin
  wwDBGrid2.DataSource := pDSINCOMPLETOS;
  wwDBGrid2.Selected.clear;
  wwDBGrid2.Selected.Add('campo'#9'32'#9'INFORMACION INCOMPLETA'#9#9);
  wwDBGrid2.ApplySelected;
end;

end.
//Fin HPC_201801_MAS 
