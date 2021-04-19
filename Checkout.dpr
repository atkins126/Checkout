program Checkout;

uses
  Vcl.Forms,
  Checkout.Login.View in 'src\view\Checkout.Login.View.pas' {FrmLogin} ,
  model.Checkout.Conexao
    in 'src\model\model.Checkout.Conexao.pas' {modelCheckout: TDataModule} ,
  Checkout.Menu.View in 'src\view\Checkout.Menu.View.pas' {FrmMenu} ,
  Checkout.CadastroUsuarios.View
    in 'src\view\Checkout.CadastroUsuarios.View.pas' {FrmCadastroDeUsuarios} ,
  Vcl.Themes,
  Vcl.Styles,
  AssociarCampos.Controller in 'src\controller\AssociarCampos.Controller.pas',
  Checkout.CadastroFunvionarios.View
    in 'src\view\Checkout.CadastroFunvionarios.View.pas' {FrmCadastroDeFuncionarios} ,
  Checkout.CadastroCargos.View
    in 'src\view\Checkout.CadastroCargos.View.pas' {FrmCadastroDeCargos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TmodelCheckout, modelCheckout);
  Application.Run;

end.
