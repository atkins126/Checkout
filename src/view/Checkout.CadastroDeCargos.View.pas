unit Checkout.CadastroDeCargos.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadastroDeCargos = class(TForm)
    Panel1: TPanel;
    P_MENU: TPanel;
    P_RODAPE: TPanel;
    SB_NOVO: TSpeedButton;
    P_GRID: TPanel;
    DBG_CARGOS: TDBGrid;
    EDT_CARGO: TEdit;
    SB_SALVAR: TSpeedButton;
    SB_EDITAR: TSpeedButton;
    SB_DELETAR: TSpeedButton;
    Label1: TLabel;
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_SALVARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_DELETARClick(Sender: TObject);
    procedure DBG_CARGOSCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure associarCampos;
    procedure SalvarCargos;

  public
    { Public declarations }
  end;

var
  FrmCadastroDeCargos: TFrmCadastroDeCargos;

implementation

{$R *.dfm}

uses model.Checkout.Conexao;

procedure TFrmCadastroDeCargos.associarCampos;
begin
  with modelCheckout do
  begin
    FDT_CARGOS.FieldByName('CARGO').Value := EDT_CARGO.Text;
  end;
end;

procedure TFrmCadastroDeCargos.DBG_CARGOSCellClick(Column: TColumn);
begin
  SB_DELETAR.Enabled := True;
end;

procedure TFrmCadastroDeCargos.FormActivate(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Active := True;
end;

procedure TFrmCadastroDeCargos.FormCreate(Sender: TObject);
begin
  modelCheckout.LocalizarDados;
end;

procedure TFrmCadastroDeCargos.SalvarCargos;
var
  cargo: string;
begin
  if Trim(EDT_CARGO.Text) = '' then
    MessageDlg('Informe o cargo!', mtInformation, mbOKCancel, 0);

  EDT_CARGO.SetFocus;

  { Verifica se o cargo j� est� cadastrado }
  modelCheckout.FDT_CARGOS.Close;
  modelCheckout.FDQ_CARGOS.SQL.Clear;
  modelCheckout.FDQ_CARGOS.SQL.Add('SELECT CARGO FROM CARGOS WHERE CARGO = ' +
    QuotedStr(Trim(EDT_CARGO.Text)));
  modelCheckout.FDQ_CARGOS.Open;
  if not modelCheckout.FDQ_CARGOS.IsEmpty then
  begin
    cargo := modelCheckout.FDQ_CARGOS['CARGO'];
    MessageDlg('O cargo ' + cargo + 'j� est� cadastrado!', mtInformation,
      mbOKCancel, 0);

  end;
  modelCheckout.FDT_CARGOS.Post;
  ShowMessage('Salvo com sucesso!');
  DBG_CARGOS.Refresh;
  EDT_CARGO.Text := '';
  EDT_CARGO.Enabled := False;
  SB_SALVAR.Enabled := False;
  modelCheckout.LocalizarDados;

end;

procedure TFrmCadastroDeCargos.SB_DELETARClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Delete;
  ShowMessage('Deletado com sucesso!');
  DBG_CARGOS.Refresh;
end;

procedure TFrmCadastroDeCargos.SB_NOVOClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Insert;
  EDT_CARGO.Enabled := True;
  EDT_CARGO.Text := '';
  EDT_CARGO.SetFocus;
  SB_SALVAR.Enabled := True;

end;

procedure TFrmCadastroDeCargos.SB_SALVARClick(Sender: TObject);
begin
  associarCampos;
  SalvarCargos;
end;

end.
