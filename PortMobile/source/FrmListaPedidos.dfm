object FrmListaPedido: TFrmListaPedido
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'FrmListaPedido'
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    Align = alClient
    object TabListaPedido: TUnimTabPanel
      Left = 0
      Top = 0
      Width = 320
      Height = 480
      Hint = ''
      ActivePage = TabListaPedidosAtendidos
      Align = alClient
      TabBarVisible = False
      object TabListaPedidosAtendidos: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 312
        Height = 425
        Hint = ''
        Caption = 'Pedidos'
        object UnimPanel1: TUnimPanel
          Left = 0
          Top = 365
          Width = 312
          Height = 60
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
          object UnimContainerPanel2: TUnimContainerPanel
            Left = 0
            Top = 0
            Width = 72
            Height = 60
            Hint = ''
            Align = alLeft
            Color = 8277275
            OnAjaxEvent = UnimContainerPanel2AjaxEvent
          end
          object UnimLabel1: TUnimLabel
            Left = 72
            Top = 0
            Width = 240
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
        object UnimContainerPanel3: TUnimContainerPanel
          Left = 0
          Top = 33
          Width = 312
          Height = 332
          Hint = ''
          Align = alClient
          ExplicitLeft = 32
          ExplicitTop = 64
          ExplicitWidth = 240
          ExplicitHeight = 240
          object UnimDBGrid1: TUnimDBGrid
            Left = 0
            Top = 0
            Width = 312
            Height = 332
            Hint = ''
            Align = alClient
            DataSource = UniMainModule.dsListaPedidos
            WebOptions.Paged = False
            DirectionLock = True
            OnDblClick = UnimDBGrid1DblClick
            Columns = <
              item
                Font.Height = -17
                Title.Caption = 'Pedido'
                FieldName = 'PEDIDO'
                Width = 93
              end
              item
                Font.Height = -17
                Title.Caption = 'Nome do Cliente'
                FieldName = 'NOME_CLIENTE'
                Width = 454
              end
              item
                Font.Height = -17
                Title.Caption = 'Data Emiss'#227'o'
                FieldName = 'DATA_EMISSAO'
                Width = 129
              end
              item
                Font.Height = -17
                Title.Caption = 'VD.'
                FieldName = 'VENDEDOR'
                Width = 94
              end
              item
                Font.Height = -17
                Title.Caption = 'Cobran'#231'a'
                FieldName = 'LOCAL_COBRANCA'
                Width = 94
              end
              item
                Font.Height = -17
                Title.Caption = 'C'#243'd.Cliente'
                FieldName = 'CLIENTE'
                Width = 110
              end
              item
                Font.Height = -17
                Title.Caption = 'ST'
                FieldName = 'STATUS'
                Width = 28
              end>
          end
        end
        object UnimContainerPanel6: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Hint = ''
          Align = alTop
          ExplicitWidth = 309
          object UnimLabel3: TUnimLabel
            Left = 0
            Top = 0
            Width = 312
            Height = 33
            Hint = ''
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pedidos'
            Align = alClient
            ParentColor = False
            Color = 16250871
            Transparent = False
            ParentFont = False
            Font.Color = 157
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ExplicitWidth = 308
          end
        end
      end
      object TabListaitensPedidosAtendidos: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 312
        Height = 425
        Hint = ''
        Caption = 'Itens'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 320
        ExplicitHeight = 480
        object UnimContainerPanel4: TUnimContainerPanel
          Left = 0
          Top = 33
          Width = 312
          Height = 332
          Hint = ''
          Align = alClient
          ExplicitLeft = 72
          ExplicitTop = 119
          ExplicitWidth = 240
          ExplicitHeight = 240
          object UnimDBGrid2: TUnimDBGrid
            Left = 0
            Top = 0
            Width = 312
            Height = 332
            Hint = ''
            Align = alClient
            DataSource = UniMainModule.dsListaItensPedidos
            WebOptions.Paged = False
            Columns = <
              item
                Font.Height = -17
                Title.Caption = 'Nome do Produto'
                FieldName = 'NOME_PRODUTO'
                Width = 250
              end
              item
                Font.Height = -17
                Title.Caption = 'Quantidade'
                FieldName = 'QUANTIDADE'
                Width = 100
              end
              item
                Font.Height = -17
                Title.Caption = 'UNID'
                FieldName = 'UNID'
                Width = 70
              end
              item
                Font.Height = -17
                Title.Caption = 'C'#243'd.'
                FieldName = 'CODIGO_PRODUTO'
                Width = 58
              end>
          end
        end
        object UnimPanel2: TUnimPanel
          Left = 0
          Top = 365
          Width = 312
          Height = 60
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
          object UnimContainerPanel5: TUnimContainerPanel
            Left = 0
            Top = 0
            Width = 72
            Height = 60
            Hint = ''
            Align = alLeft
            Color = 8277275
          end
          object UnimLabel2: TUnimLabel
            Left = 72
            Top = 0
            Width = 240
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
            OnClick = UnimLabel2Click
          end
        end
        object UnimContainerPanel7: TUnimContainerPanel
          Left = 0
          Top = 0
          Width = 312
          Height = 33
          Hint = ''
          Align = alTop
          ExplicitTop = 8
          object UnimLabel4: TUnimLabel
            Left = 0
            Top = 0
            Width = 312
            Height = 33
            Hint = ''
            Alignment = taCenter
            AutoSize = False
            Caption = 'Itens'
            Align = alClient
            ParentColor = False
            Color = 16250871
            Transparent = False
            ParentFont = False
            Font.Color = 157
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ExplicitWidth = 308
          end
        end
      end
    end
  end
end
