unit Checkout.CadastroDeFuncionarios.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadastroDeFuncionarios = class(TForm)
    Panel1: TPanel;
    P_MENU: TPanel;
    P_RODAPE: TPanel;
    SB_NOVO: TSpeedButton;
    P_GRID: TPanel;
    DBGrid1: TDBGrid;
    EDT_NOME: TEdit;
    EDT_ENDERECO: TEdit;
    EDT_BUSCAR_NOME: TEdit;
    DBG_USUARIO: TComboBox;
    CB_NOME: TCheckBox;
    CB_CPF: TCheckBox;
    SB_SALVAR: TSpeedButton;
    SB_EDITAR: TSpeedButton;
    SB_DELETAR: TSpeedButton;
    ME_BUSCAR_CPF: TMaskEdit;
    ME_CPF: TMaskEdit;
    ME_TELEFONE: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroDeFuncionarios: TFrmCadastroDeFuncionarios;

implementation

{$R *.dfm}

end.
