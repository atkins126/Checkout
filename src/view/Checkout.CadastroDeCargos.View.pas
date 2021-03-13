unit Checkout.CadastroDeCargos.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  model.Checkout.Conexao;

type
  TFrmCadastroDeCargos = class(TForm)
    Panel1: TPanel;
    P_MENU: TPanel;
    P_RODAPE: TPanel;
    SB_NOVO: TSpeedButton;
    P_GRID: TPanel;
    DBG_CARGOS: TDBGrid;
    SB_SALVAR: TSpeedButton;
    SB_EDITAR: TSpeedButton;
    SB_DELETAR: TSpeedButton;
    Label1: TLabel;
    DBE_NOME: TDBEdit;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_DELETARClick(Sender: TObject);
    procedure DBG_CARGOSCellClick(Column: TColumn);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_SALVARClick(Sender: TObject);
    procedure SB_EDITARClick(Sender: TObject);
  private
    { Private declarations }
    procedure SalvarCargos;

  public
    { Public declarations }
  end;

var
  FrmCadastroDeCargos: TFrmCadastroDeCargos;

implementation

{$R *.dfm}

procedure TFrmCadastroDeCargos.DBG_CARGOSCellClick(Column: TColumn);
begin

  SB_DELETAR.Enabled := True;
  SB_EDITAR.Enabled := True;
end;

procedure TFrmCadastroDeCargos.FormActivate(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Active := True;
end;

procedure TFrmCadastroDeCargos.FormCreate(Sender: TObject);
begin
  DBE_NOME.Enabled := False;
  modelCheckout.LocalizarDados;
end;

procedure TFrmCadastroDeCargos.SalvarCargos;
var
  cargo: string;
begin
  if DBE_NOME.Text = '' then
  begin
    MessageDlg('Informe o cargo', mtInformation, mbOKCancel, 0);
    SB_SALVAR.Enabled := False;
    DBE_NOME.Enabled := False;
    Exit;
  end;
  { Verificar se ja está cadastrado }
  // modelCheckout.FDT_CARGOS.SQL.Clear;
  // modelCheckout.FDT_CARGOS.SQL.Add
  // ('SELECT CARGO FROM CARGOS WHERE CARGO = CARGO =' +
  // QuotedStr(Trim(DBE_NOME.Text)));
  // modelCheckout.FDT_CARGOS.Open;
  //
  // if not modelCheckout.FDT_CARGOS.IsEmpty then
  // begin
  // cargo := modelCheckout.FDT_CARGOS['CARGO'];
  // MessageDlg('O cargo ' + cargo + ' já está cadastrado!', mtInformation,
  // mbOKCancel, 0);
  // DBE_NOME.Text := '';
  // DBE_NOME.SetFocus;
  // Exit;
  // end;

  modelCheckout.FDT_CARGOS.Post;
  modelCheckout.FDT_CARGOS.ApplyUpdates(-1);
  ShowMessage('Salvo com sucesso!');
  DBE_NOME.Enabled := False;
  SB_SALVAR.Enabled := False;
end;

procedure TFrmCadastroDeCargos.SB_DELETARClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Delete;
  ShowMessage('Deletado com sucesso!');
  modelCheckout.LocalizarDados;
end;

procedure TFrmCadastroDeCargos.SB_EDITARClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Edit;
  DBE_NOME.Enabled := True;
  SB_SALVAR.Enabled := True;
end;

procedure TFrmCadastroDeCargos.SB_NOVOClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Insert;
  DBE_NOME.Enabled := True;
  SB_SALVAR.Enabled := True;

end;

procedure TFrmCadastroDeCargos.SB_SALVARClick(Sender: TObject);
begin
  SalvarCargos;
  SB_SALVAR.Enabled := False;
end;

end.
