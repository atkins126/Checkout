unit Checkout.Menu.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Fornecedores1: TMenuItem;
    MI_USUARIOS: TMenuItem;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    N2: TMenuItem;
    Relatrio1: TMenuItem;
    N3: TMenuItem;
    Relatrio2: TMenuItem;
    N4: TMenuItem;
    Sair1: TMenuItem;
    N5: TMenuItem;
    MI_FUNCIONARIOS: TMenuItem;
    N6: TMenuItem;
    MI_CARGOS: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure MI_USUARIOSClick(Sender: TObject);
    procedure MI_FUNCIONARIOSClick(Sender: TObject);
    procedure MI_CARGOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses model.Checkout.Conexao, Checkout.CadastroUsuarios.View,
  Checkout.CadastroFunvionarios.View, Checkout.CadastroCargos.View;

procedure TFrmMenu.MI_USUARIOSClick(Sender: TObject);
begin
  FrmCadastroDeUsuarios := TFrmCadastroDeUsuarios.Create(nil);
  try
    FrmCadastroDeUsuarios.ShowModal;
  finally
    FrmCadastroDeUsuarios.Free;

  end;
end;

procedure TFrmMenu.MI_CARGOSClick(Sender: TObject);
begin
  FrmCadastroDeCargos := TFrmCadastroDeCargos.Create(nil);
  try
    FrmCadastroDeCargos.ShowModal;
  finally
    FrmCadastroDeCargos.Free;
  end;
end;

procedure TFrmMenu.MI_FUNCIONARIOSClick(Sender: TObject);
begin
  FrmCadastroDeFuncionarios := TFrmCadastroDeFuncionarios.Create(nil);
  try
    FrmCadastroDeFuncionarios.ShowModal;
  finally
    FrmCadastroDeFuncionarios.Free;
  end;
end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
