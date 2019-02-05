// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO260D.pas
// Formulario		        :	FMantAsociadoZoom
// Fecha de Creación	    :	15/05/2018
// Autor			        :	Equipo de Desarrollo de Sistemas DM
// Objetivo		            :   Información Reniec
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS
unit ASO260D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFMantAsociadoZoom = class(TForm)
    pnlzoom: TPanel;
    imgDerramaFoto: TImage;
    imgReniecFoto: TImage;
    imgDerramafirma: TImage;
    imgReniecFirma: TImage;
    Shape11: TShape;
    Shape10: TShape;
    Label40: TLabel;
    Label41: TLabel;
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  FMantAsociadoZoom: TFMantAsociadoZoom;

implementation

{$R *.dfm}

procedure TFMantAsociadoZoom.Button6Click(Sender: TObject);
begin
  self.Close;
end;

end.
//Fin HPC_201801_MAS
