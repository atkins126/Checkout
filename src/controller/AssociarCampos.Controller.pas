unit AssociarCampos.Controller;

interface

Type
  TAssociarCampos = class

  public
    procedure AssociarCamposFuncionarios;
    procedure AssociarCamposCargos;
    procedure AbilitarCamposCargos;
  end;

implementation

{ TAssociarCampos }

uses model.Checkout.Conexao, Checkout.CadastroCargos.View;

procedure TAssociarCampos.AbilitarCamposCargos;
begin
  FrmCadastroDeCargos.EDT_NOME.Enabled := True;
end;

procedure TAssociarCampos.AssociarCamposCargos;
begin
  AbilitarCamposCargos;
  modelCheckout.FDT_CARGOS.FieldByName('CARGO').Value :=
    FrmCadastroDeCargos.EDT_NOME.Text;
end;

procedure TAssociarCampos.AssociarCamposFuncionarios;
begin
  //
end;

end.
