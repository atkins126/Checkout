program Checkout;

uses
  Vcl.Forms,
  Checkout.View in 'src\view\Checkout.View.pas' {FrmLogin},
  Checkout.Menu.View in 'src\view\Checkout.Menu.View.pas' {FrmMenu},
  Checkout.CadastroDeUsuarios.View in 'src\view\Checkout.CadastroDeUsuarios.View.pas' {FrmCadastroDeUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmCadastroDeUsuarios, FrmCadastroDeUsuarios);
  Application.Run;
end.
