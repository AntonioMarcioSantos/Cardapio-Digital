object FrmLancaProduto: TFrmLancaProduto
  Left = 0
  Top = 0
  ClientHeight = 514
  ClientWidth = 334
  Caption = ''
  Color = 15724527
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  ShowAnimation = 'fade'
  DesignSize = (
    334
    514)
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object lblDisplayProduto: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 328
    Height = 28
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Produto'
    Align = alTop
    ParentColor = False
    Color = 16250871
    Transparent = False
    ParentFont = False
    Font.Color = 157
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
  end
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 145
    Top = 69
    Width = 107
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Quantidade'
    ParentFont = False
  end
  object EdQtde: TUnimSpinner
    AlignWithMargins = True
    Left = 72
    Top = 98
    Width = 196
    Height = 49
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    MaxValue = 1000.000000000000000000
    MinValue = 1.000000000000000000
    Step = 1.000000000000000000
    ParentFont = False
    Font.Height = -27
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'roundborda'
    TabOrder = 3
    OnEnter = EdQtdeEnter
  end
  object UnimLabel2: TUnimLabel
    AlignWithMargins = True
    Left = 145
    Top = 161
    Width = 101
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Unidade'
    ParentFont = False
  end
  object edUnid: TUnimEdit
    AlignWithMargins = True
    Left = 117
    Top = 190
    Width = 100
    Height = 59
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    CharCase = ecUpperCase
    ParentFont = False
    Font.Height = -27
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'roundborda'
    TabOrder = 5
  end
  object BtPedir: TUnimButton
    Left = 72
    Top = 271
    Width = 196
    Height = 58
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Confirmar'
    IconCls = 'add'
    UI = 'confirm'
    LayoutConfig.Cls = 'btn btn-primary'
    OnClick = BtPedirClick
  end
  object PnlBottom: TUnimPanel
    Left = 0
    Top = 445
    Width = 334
    Height = 69
    Hint = ''
    Align = alBottom
    Color = 8277275
    BorderStyle = ubsNone
    object LblBottom: TUnimLabel
      Left = 0
      Top = 0
      Width = 334
      Height = 69
      Hint = ''
      Alignment = taRightJustify
      AutoSize = False
      Caption = 
        '<i class="fa fa-arrow-alt-circle-left fa-5x" aria-hidden="true">' +
        '</i>'
      Align = alClient
      ParentColor = False
      Color = 8277275
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      OnClick = UnimLabel1Click
    end
  end
  object UniSweetAlertQtde: TUniSweetAlert
    AllowOutsideClick = False
    Title = 'Title'
    TitleText = 'Qtde. inv'#225'lida.'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    AlertType = atInfo
    Padding = 10
    ImageWidth = 150
    Animation = False
    Left = 60
    Top = 27
  end
  object UniSweetAlertUN: TUniSweetAlert
    Title = 'Title'
    TitleText = 'unidade inv'#225'lida.'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    AlertType = atInfo
    Padding = 10
    ImageWidth = 150
    Animation = False
    Left = 140
    Top = 35
  end
end
