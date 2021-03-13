object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 221
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  StyleElements = [seBorder]
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object P_LOGIN: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 221
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object IMG_LOGIN: TImage
      Left = 0
      Top = 0
      Width = 394
      Height = 217
      Align = alClient
      ExplicitLeft = -2
      ExplicitTop = 48
    end
    object SB_LOGIN: TSpeedButton
      Left = 128
      Top = 176
      Width = 121
      Height = 22
      Caption = 'Entrar'
      OnClick = SB_LOGINClick
    end
    object EDT_USUARIO: TEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EDT_PASSWORD: TEdit
      Left = 128
      Top = 136
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
