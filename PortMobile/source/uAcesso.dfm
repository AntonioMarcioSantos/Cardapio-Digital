object FrmAcesso: TFrmAcesso
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'FrmAcesso'
  OnShow = UnimLoginFormShow
  LayoutConfig.Cls = 'loader'
  BorderIcons = []
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimScrollBox1: TUnimScrollBox
    Left = 0
    Top = 0
    Width = 320
    Height = 527
    Hint = ''
    Align = alClient
    Color = 14803425
    DirectionLock = True
    ScrollHeight = 0
    ScrollWidth = 0
    object ContainerPanelPrincipal: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 318
      Height = 525
      Hint = ''
      AutoScroll = True
      Align = alClient
      Color = 12615680
      LayoutConfig.Cls = 'bg-img'
      ScrollHeight = 525
      ScrollWidth = 318
      object UnimContainerPanel1: TUnimContainerPanel
        Left = 0
        Top = 401
        Width = 318
        Height = 124
        Hint = ''
        Align = alClient
        Color = clWhite
        ExplicitTop = 324
        ExplicitHeight = 201
        DesignSize = (
          318
          124)
        object UnimBitBtn1: TUnimBitBtn
          Left = 52
          Top = 30
          Width = 214
          Height = 59
          Hint = ''
          Anchors = [akLeft, akTop, akRight]
          UI = 'normal'
          IconCls = 'user'
          Caption = 'Acessar'
          OnClick = UnimBitBtn1Click
        end
        object UnimContainerPanel9: TUnimContainerPanel
          Left = 0
          Top = 14
          Width = 49
          Height = 46
          Hint = ''
          Align = alLeft
        end
        object UnimContainerPanel10: TUnimContainerPanel
          Left = 269
          Top = 14
          Width = 49
          Height = 46
          Hint = ''
          Align = alRight
        end
        object UnimContainerPanel11: TUnimContainerPanel
          Left = 0
          Top = -17
          Width = 318
          Height = 141
          Hint = ''
          Align = alBottom
          Color = clWhite
          ExplicitTop = 60
          object UnimContainerPanel13: TUnimContainerPanel
            Left = 0
            Top = 80
            Width = 318
            Height = 61
            Hint = ''
            Align = alBottom
            Color = 8277275
            object UnimLabel2: TUnimLabel
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 312
              Height = 42
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'Desenvolvido por Marcio Santos: 91-980551764'
              Align = alBottom
              ParentColor = False
              Color = 8404992
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -16
              Font.Style = [fsBold]
            end
          end
        end
        object UnimContainerPanel12: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 318
          Height = 14
          Hint = ''
          Align = alTop
        end
      end
      object UnimContainerPanel2: TUnimContainerPanel
        Left = 0
        Top = 324
        Width = 318
        Height = 77
        Hint = ''
        Align = alTop
        Color = clWhite
        ExplicitTop = 247
        object UnimContainerPanel7: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 77
          Hint = ''
          Align = alLeft
          Color = clWhite
        end
        object UnimContainerPanel8: TUnimContainerPanel
          Left = 269
          Top = 0
          Width = 49
          Height = 77
          Hint = ''
          Align = alRight
          Color = clWhite
        end
        object UnimDBLookupComboBox1: TUnimDBLookupComboBox
          AlignWithMargins = True
          Left = 52
          Top = 3
          Width = 214
          Height = 71
          Hint = ''
          Align = alClient
          Text = ''
          FieldLabel = 'Empresa:'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = 12615680
          FieldLabelFont.Height = -17
          FieldLabelFont.Style = [fsBold]
          Font.Height = -23
          TabOrder = 3
          ListField = 'NOME_EMPRESA'
          ListSource = UniMainModule.dsQryEmpresa
          KeyField = 'ID'
          ListFieldIndex = 1
          ExplicitLeft = 49
          ExplicitTop = 0
          ExplicitWidth = 220
        end
      end
      object UnimContainerPanel3: TUnimContainerPanel
        Left = 0
        Top = 137
        Width = 318
        Height = 110
        Hint = ''
        Align = alTop
        Color = clWhite
        object EdNomeUsuario: TUnimEdit
          AlignWithMargins = True
          Left = 52
          Top = 36
          Width = 214
          Height = 71
          Hint = ''
          Align = alClient
          Text = ''
          ClearButton = False
          CharCase = ecUpperCase
          FieldLabel = 'Usu'#225'rio:'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = 12615680
          FieldLabelFont.Height = -17
          FieldLabelFont.Style = [fsBold]
          ParentFont = False
          Font.Height = -23
          TabOrder = 1
          InputType = 'text'
        end
        object UnimContainerPanel5: TUnimContainerPanel
          Left = 0
          Top = 33
          Width = 49
          Height = 77
          Hint = ''
          Align = alLeft
          Color = clWhite
        end
        object UnimContainerPanel6: TUnimContainerPanel
          Left = 269
          Top = 33
          Width = 49
          Height = 77
          Hint = ''
          Align = alRight
          Color = clWhite
        end
        object UnimContainerPanel14: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 318
          Height = 33
          Hint = ''
          Align = alTop
        end
      end
      object UnimContainerPanel4: TUnimContainerPanel
        Left = 0
        Top = 0
        Width = 318
        Height = 137
        Hint = ''
        Margins.Bottom = 10
        Align = alTop
        Color = 8277275
        object UnimLabel1: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 48
          Width = 312
          Height = 86
          Hint = ''
          Alignment = taCenter
          AutoSize = False
          Caption = 'Comercial Vit'#243'ria'
          Align = alBottom
          ParentColor = False
          Color = 8404992
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -33
          Font.Name = 'Georgia'
          Font.Style = [fsBold]
        end
      end
      object UnimContainerPanel15: TUnimContainerPanel
        Left = 0
        Top = 247
        Width = 318
        Height = 77
        Hint = ''
        Align = alTop
        Color = clWhite
        object EdSenhausuario: TUnimEdit
          AlignWithMargins = True
          Left = 52
          Top = 3
          Width = 214
          Height = 71
          Hint = ''
          BodyRTL = False
          Align = alClient
          Text = ''
          ClearButton = False
          CharCase = ecUpperCase
          PasswordChar = #1
          FieldLabel = 'Senha:'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = 12615680
          FieldLabelFont.Height = -17
          FieldLabelFont.Style = [fsBold]
          ParentFont = False
          Font.Height = -23
          TabOrder = 1
        end
        object UnimContainerPanel16: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 77
          Hint = ''
          Align = alLeft
          Color = clWhite
        end
        object UnimContainerPanel17: TUnimContainerPanel
          Left = 269
          Top = 0
          Width = 49
          Height = 77
          Hint = ''
          Align = alRight
          Color = clWhite
        end
      end
    end
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    TitleText = 'Verifique Usu'#225'rio / Senha'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    InputAutoTrim = False
    AlertType = atError
    Padding = 10
    ImageWidth = 150
    Animation = False
    Left = 124
    Top = 19
  end
end
