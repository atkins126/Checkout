unit Checkout.CadastroCargos.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, AssociarCampos.Controller, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmCadastroDeCargos = class(TForm)
    P_CONTAINER: TPanel;
    P_TOPO: TPanel;
    P_RODAPE: TPanel;
    P_GRID: TPanel;
    DBG_CARGOS: TDBGrid;
    EDT_NOME: TEdit;
    Label1: TLabel;
    SB_DELETAR: TSpeedButton;
    SB_SALVAR: TSpeedButton;
    SB_EDITAR: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_SALVARClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    lCampos: TAssociarCampos;

  end;

var
  FrmCadastroDeCargos: TFrmCadastroDeCargos;

implementation

{$R *.dfm}

uses model.Checkout.Conexao;

procedure TFrmCadastroDeCargos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  lCampos.Free;
end;

procedure TFrmCadastroDeCargos.FormCreate(Sender: TObject);
begin
  lCampos := TAssociarCampos.Create;
end;

procedure TFrmCadastroDeCargos.SB_NOVOClick(Sender: TObject);

begin
  modelCheckout.FDT_CARGOS.Insert;
  lCampos.AssociarCamposCargos;
end;

procedure TFrmCadastroDeCargos.SB_SALVARClick(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Post;
  modelCheckout.FDT_CARGOS.ApplyUpdates(-1);

end;

procedure TFrmCadastroDeCargos.SpeedButton1Click(Sender: TObject);
begin
  modelCheckout.FDT_CARGOS.Cancel;
end;

end.
