object FrmListaClientes: TFrmListaClientes
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'FrmListaClientes'
  OnShow = UnimFormShow
  BorderIcons = []
  DisplayCaption = False
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object TabClientes: TUnimTabPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 467
    Hint = ''
    ActivePage = TabListaClientes
    Align = alClient
    object TabListaClientes: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 312
      Height = 412
      Hint = ''
      Caption = 'TabListaClientes'
      TabVisible = False
      object UnimScrollBoxClientes: TUnimScrollBox
        Left = 0
        Top = 0
        Width = 312
        Height = 412
        Hint = ''
        Align = alClient
        ScrollHeight = 129
        ScrollWidth = 0
        object PnlListaClienteTop: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 310
          Height = 33
          Hint = ''
          Align = alTop
          object LblListaClientes: TUnimLabel
            Left = 0
            Top = 0
            Width = 310
            Height = 33
            Hint = ''
            Alignment = taCenter
            AutoSize = False
            Caption = 'Clientes'
            Align = alClient
            ParentColor = False
            Color = 16250871
            Transparent = False
            ParentFont = False
            Font.Color = 157
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
          end
        end
        object UnimContainerPanel2: TUnimContainerPanel
          Left = 0
          Top = 33
          Width = 310
          Height = 96
          Hint = ''
          Align = alTop
          object UnimLabel3: TUnimLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 304
            Height = 20
            Hint = ''
            AutoSize = False
            Caption = 'Cliente:'
            Align = alTop
            ParentFont = False
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
          end
          object UnimContainerPanel3: TUnimContainerPanel
            Left = 0
            Top = 26
            Width = 222
            Height = 70
            Hint = ''
            Align = alClient
            ExplicitLeft = 24
            ExplicitTop = 29
            ExplicitWidth = 216
            ExplicitHeight = 52
            object EdBuscaListaClientes: TUnimEdit
              Left = 0
              Top = 20
              Width = 222
              Height = 50
              Hint = ''
              Margins.Right = 8
              Align = alBottom
              Text = ''
              ClearButton = False
              CharCase = ecUpperCase
              FieldLabelFont.Height = -17
              ParentFont = False
              Font.Height = -27
              TabOrder = 1
              InputType = 'text'
              ExplicitTop = 0
            end
          end
          object UnimContainerPanel4: TUnimContainerPanel
            Left = 222
            Top = 26
            Width = 88
            Height = 70
            Hint = ''
            Align = alRight
            object BtBuscaListaClientes: TUnimButton
              Left = 0
              Top = 0
              Width = 65
              Height = 70
              Hint = ''
              Align = alLeft
              Caption = ''
              ClientEvents.ExtEvents.Strings = (
                'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10' ;'#13#10'}')
              IconAlign = iaCenter
              IconCls = 'search'
              UI = 'normal'
              OnClick = BtBuscaListaClientesClick
            end
          end
        end
        object UnimDBListGrid1: TUnimDBListGrid
          Left = 0
          Top = 129
          Width = 310
          Height = 281
          Hint = ''
          BodyRTL = True
          Align = alClient
          DataSource = UniMainModule.dsClientes
          ClientEvents.ExtEvents.Strings = (
            
              'initialize=function initialize(sender, eOpts)'#13#10'{'#13#10'   sender.blur' +
              '();'#13#10'}'
            'refresh=function refresh(sender, eOpts)'#13#10'{'#13#10'   sender.blur();'#13#10'}')
          WebOptions.Paged = False
          ScrollToSelected = True
          Columns = <
            item
              Title.Caption = 'C'#243'd.'
              Title.Font.Height = -17
              FieldName = 'CODIGO'
              Width = 54
            end
            item
              Title.Caption = 'Nome do Cliente'
              Title.Font.Height = -17
              FieldName = 'NOME'
              Width = 1104
            end>
        end
      end
    end
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 467
    Width = 320
    Height = 60
    Hint = ''
    Align = alBottom
    Color = 8277275
    BorderStyle = ubsNone
    object UnimContainerPanel1: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 72
      Height = 60
      Hint = ''
      Align = alLeft
      Color = 8277275
      object UnimButton1: TUnimButton
        Left = 0
        Top = 0
        Width = 72
        Height = 60
        Hint = ''
        Align = alClient
        Caption = '<i class="fa fa-credit-card fa-2x" aria-hidden="true"></i>'
        Font.Color = clWhite
      end
    end
    object UnimLabel1: TUnimLabel
      Left = 72
      Top = 0
      Width = 248
      Height = 60
      Hint = ''
      Alignment = taRightJustify
      AutoSize = False
      Caption = 
        '<i class="fa fa-arrow-alt-circle-left fa-4x" aria-hidden="true">' +
        '</i>'
      Align = alClient
      ParentColor = False
      Color = 12615680
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      OnClick = UnimLabel1Click
    end
  end
end
