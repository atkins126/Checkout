program Checkout;

uses
  Vcl.Forms,
  Checkout.View in 'src\view\Checkout.View.pas' {FrmLogin},
  Checkout.Menu.View in 'src\view\Checkout.Menu.View.pas' {FrmMenu},
  Checkout.CadastroDeCargos.View in 'src\view\Checkout.CadastroDeCargos.View.pas' {FrmCadastroDeCargos},
  Checkout.CadastroDeUsuarios.View in 'src\view\Checkout.CadastroDeUsuarios.View.pas' {FrmCadastroDeUsuarios},
  Checkout.CadastroDeFuncionarios.View in 'src\view\Checkout.CadastroDeFuncionarios.View.pas' {FrmCadastroDeFuncionarios},
  model.Checkout.Conexao in 'src\model\model.Checkout.Conexao.pas' {modelCheckout: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TmodelCheckout, modelCheckout);
  Application.Run;

end.
