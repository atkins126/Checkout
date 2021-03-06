unit Checkout.Login.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Checkout.Menu.View;

type
  TFrmLogin = class(TForm)
    P_LOGIN: TPanel;
    EDT_USUARIO: TEdit;
    EDT_PASSWORD: TEdit;
    IMG_LOGIN: TImage;
    SB_LOGIN: TSpeedButton;
    procedure SB_LOGINClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure Login;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}






{ TForm1 }



procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//
end;

procedure TFrmLogin.Login;
begin
  FrmMenu := TFrmMenu.create(nil);
  try
    FrmMenu.ShowModal;
  finally
    FrmMenu.Free;
  end;
end;

procedure TFrmLogin.SB_LOGINClick(Sender: TObject);
begin
  if (Trim(EDT_USUARIO.Text) = '') or (Trim(EDT_PASSWORD.Text) = '') then
  begin
    MessageDlg('Usu?rio e/ou senha inv?lidos!', mtInformation, mbOKCancel, 0);
    EDT_USUARIO.SetFocus;
    Exit;
  end
  else
  begin
    Login;
  end;
end;

end.
