unit Checkout.CadastroDeUsuarios.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFrmCadastroDeUsuarios = class(TForm)
    Panel1: TPanel;
    P_MENU: TPanel;
    P_RODAPE: TPanel;
    SB_NOVO: TSpeedButton;
    P_GRID: TPanel;
    DBGrid1: TDBGrid;
    EDT_NOME: TEdit;
    EDT_ENDERECO: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    CB_NOME: TCheckBox;
    CB_CPF: TCheckBox;
    SB_SALVAR: TSpeedButton;
    SB_EDITAR: TSpeedButton;
    SB_DELETAR: TSpeedButton;
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
