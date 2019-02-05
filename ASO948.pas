// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO948.pas
// Formulario              :  fIdentAso
// Fecha de Creación       : 15/05/2018
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Otorgamiento de Créditos
// Actualizaciones:
// HPC_201801_MAS

//Inicio HPC_201801_MAS
unit ASO948;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfIdentAso = class(TForm)
    GroupBox1: TGroupBox;
    ImagAso: TImage;
    GroupBox2: TGroupBox;
    ImaFirma: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIdentAso: TfIdentAso;

implementation

{$R *.dfm}

end.
//Fin HPC_201801_MAS

