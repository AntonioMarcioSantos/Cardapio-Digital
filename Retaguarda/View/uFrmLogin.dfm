object fLogin: TfLogin
  Left = 0
  Top = 0
  ClientHeight = 448
  ClientWidth = 801
  Caption = 'flogin'
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poDesigned
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  LayoutConfig.Cls = 'fLogin'
  OnBeforeShow = UniLoginFormBeforeShow
  OnScreenResize = UniLoginFormScreenResize
  PixelsPerInch = 96
  TextHeight = 13
  object imgBG: TUniImage
    Left = 0
    Top = 0
    Width = 801
    Height = 801
    Hint = ''
    Center = True
    Align = alTop
    LayoutConfig.Padding = '0'
    LayoutConfig.Height = '101%'
    LayoutConfig.Width = '101%'
    LayoutConfig.Margin = '0'
  end
  object pnLogin: TUniPanel
    Left = 200
    Top = 96
    Width = 313
    Height = 393
    Hint = ''
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = 2302755
    AlwaysOnTop = True
    LayoutConfig.Cls = 'pnLogin'
    DesignSize = (
      313
      393)
    object EdUsuario: TUniEdit
      Left = 56
      Top = 88
      Width = 217
      Height = 25
      Hint = ''
      CharCase = ecUpperCase
      BorderStyle = ubsSingle
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      EmptyText = 'Usu'#225'rio'
      LayoutConfig.Cls = 'icone-user'
    end
    object EdSenha: TUniEdit
      Left = 56
      Top = 147
      Width = 217
      Hint = ''
      PasswordChar = '@'
      CharCase = ecUpperCase
      BorderStyle = ubsNone
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      EmptyText = 'Senha'
      LayoutConfig.Cls = 'icone-pass'
    end
    object UniBitBtn1: TUniBitBtn
      Left = 56
      Top = 304
      Width = 217
      Height = 33
      Hint = ''
      Caption = 'Entrar'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      OnClick = UniBitBtn1Click
    end
    object lbkey: TUniLabel
      Left = 0
      Top = 0
      Width = 313
      Height = 40
      Hint = ''
      Margins.Top = 15
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = ''
      Align = alTop
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 4
      LayoutConfig.Cls = 'key'
    end
    object UniComboBox1: TUniComboBox
      Left = 56
      Top = 207
      Width = 217
      Height = 25
      Hint = ''
      Text = 'Informe a Empresa'
      Items.Strings = (
        'EMPRESA')
      ItemIndex = 0
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      IconItems = <>
    end
    object UniLabel1: TUniLabel
      Left = 184
      Top = 238
      Width = 82
      Height = 13
      Hint = ''
      Visible = False
      Caption = 'Recuperar senha'
      ParentFont = False
      Font.Color = clSilver
      ParentColor = False
      Color = 2302755
      TabOrder = 6
    end
    object UniLabel2: TUniLabel
      Left = 56
      Top = 69
      Width = 61
      Height = 17
      Hint = ''
      Caption = 'Usu'#225'rio:'
      ParentFont = False
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Lucida Calligraphy'
      ParentColor = False
      Color = 2302755
      TabOrder = 7
    end
    object UniLabel3: TUniLabel
      Left = 56
      Top = 124
      Width = 46
      Height = 17
      Hint = ''
      Caption = 'Senha:'
      ParentFont = False
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Lucida Calligraphy'
      ParentColor = False
      Color = 2302755
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 112
      Top = 6
      Width = 85
      Height = 36
      Hint = ''
      Caption = 'Login'
      ParentFont = False
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Lucida Calligraphy'
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2302755
      TabOrder = 9
    end
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Aten'#231#227'o'
    Text = 'Usu'#225'rio ou Senha Inv'#225'lido.'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    AlertType = atError
    Padding = 20
    Left = 552
    Top = 208
  end
end
