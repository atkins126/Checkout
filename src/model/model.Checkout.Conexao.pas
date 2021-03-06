unit model.Checkout.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TmodelCheckout = class(TDataModule)
    FCONEXAO: TFDConnection;
    FMYSQLDRIVER: TFDPhysMySQLDriverLink;
    FDT_CARGOS: TFDTable;
    FDQ_CARGOS: TFDQuery;
    DS_CARGOS: TDataSource;
    FDT_CARGOSid: TFDAutoIncField;
    FDT_CARGOScargo: TStringField;
    DS_USUARIOS: TDataSource;
    FDQ_USUARIOS: TFDQuery;
    FDT_USUARIOS: TFDTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LocalizarDados;
  end;

var
  modelCheckout: TmodelCheckout;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TmodelCheckout }

procedure TmodelCheckout.DataModuleCreate(Sender: TObject);
begin
  FDT_CARGOS.Active := True;
end;

procedure TmodelCheckout.LocalizarDados;
begin
  FDT_CARGOS.Close;
  FDT_CARGOS.Open;
end;

end.
