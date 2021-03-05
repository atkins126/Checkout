unit Checkout.Menu.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    N2: TMenuItem;
    Relatrio1: TMenuItem;
    N3: TMenuItem;
    Relatrio2: TMenuItem;
    N4: TMenuItem;
    Sair1: TMenuItem;
    N5: TMenuItem;
    Produtos2: TMenuItem;
    N6: TMenuItem;
    Produt1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses Checkout.CadastroDeUsuarios.View;

procedure TFrmMenu.Produtos1Click(Sender: TObject);
begin
  FrmCadastroDeUsuarios := TFrmCadastroDeUsuarios.Create(nil);
  try
    FrmCadastroDeUsuarios.ShowModal;
  finally
    FrmCadastroDeUsuarios.Free;

  end;
end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
