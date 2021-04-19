unit Checkout.CadastroUsuarios.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroDeUsuarios = class(TForm)
    P_TOPO: TPanel;
    P_RODAPE: TPanel;
    P_GRID: TPanel;
    P_CONTAINER: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    DBG_USUARIOS: TDBGrid;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroDeUsuarios: TFrmCadastroDeUsuarios;

implementation

{$R *.dfm}

end.
