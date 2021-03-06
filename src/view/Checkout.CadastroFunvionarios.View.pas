unit Checkout.CadastroFunvionarios.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmCadastroDeFuncionarios = class(TForm)
    P_CONTAINER: TPanel;
    P_RODAPE: TPanel;
    P_TOPO: TPanel;
    P_GRID: TPanel;
    DBG_FUNCIONARIOS: TDBGrid;
    EDT_NOME: TEdit;
    EDT_BUSCAR_NOME: TEdit;
    CB_CPF: TCheckBox;
    CB_NOME: TCheckBox;
    EDT_ENDERECO: TEdit;
    MEDT_CPF: TMaskEdit;
    MEDT_TELEFONE: TMaskEdit;
    CBB_CARGOS: TComboBox;
    SB_EDITAR: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_SALVAR: TSpeedButton;
    SB_DELETAR: TSpeedButton;
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
