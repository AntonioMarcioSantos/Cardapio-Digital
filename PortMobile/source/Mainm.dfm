object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'MainmForm'
  Color = clWhite
  OnShow = UnimFormShow
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutConfig.Cls = 'loading'
  DisplayCaption = False
  ScreenMask.WaitData = True
  ScreenMask.Message = 'teste'
  ScreenMask.Target = ListMarcas
  ShowTitle = False
  TitleButtons = <>
  ShowAnimation = 'fade'
  OnBeforeShow = UnimFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimScrollBoxGeral: TUnimScrollBox
    Left = 0
    Top = 0
    Width = 320
    Height = 527
    Hint = ''
    Align = alClient
    ScrollIndicators = False
    ScrollHeight = 0
    ScrollWidth = 0
    object TabPai: TUnimTabPanel
      Left = 0
      Top = 0
      Width = 318
      Height = 525
      Hint = ''
      ActivePage = TabGrupos
      Align = alClient
      TabBarVisible = False
      object TabGrupos: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        Caption = 'Menu'
        object UnimURLFrame1: TUnimURLFrame
          Left = 0
          Top = 0
          Width = 310
          Height = 153
          Hint = ''
          Visible = False
          HTML.Strings = (
            '<!DOCTYPE HTML>'
            '<html lang="pt-br">'
            '<head>'
            '<style>'
            ' .bg{'
            #9' background-image: url(/files/logo.jpg);'
            #9' background-repeat: no-repeat ;'
            #9' background-size: cover ;'
            #9' background-position: center ;'
            #9' background-attachment: fixed ;'
            ' }'
            ''
            '.logo img {'
            '    max-width:620px;'
            '    width: auto;'
            ' '
            '   max-height:150px;'
            '    height:auto ;'
            '    display: block;   '
            '    aligin:center ;'
            '}'
            '</style>'
            ''
            '</head>'
            ''
            ''
            '<body>'
            '  <div>'
            '  </div>'
            '</body>'
            '</html>')
          LayoutConfig.Cls = 'bg-menu'
          Align = alTop
          TabOrder = 1
          ParentColor = False
          Color = clSilver
        end
        object ListGrupos: TUnimDBListGrid
          Left = 0
          Top = 153
          Width = 310
          Height = 262
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsGrupos
          ClientEvents.ExtEvents.Strings = (
            
              'select=function select(sender, selected, eOpts)'#13#10'{'#13#10'  return fal' +
              'se;'#13#10'}')
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config) '#13#10'{'#13#10' config.load' +
              'ingText='#39'carregando...'#39';'#13#10' config.grouped=false;        '#13#10' confi' +
              'g.itemTpl='#13#10'   '#39'<div class="container-menu">'#39'+'#13#10'            '#39'<di' +
              'v class="card-grupo card-left">'#39'+'#13#10'                 '#39'<image src=' +
              '"{3}"/>'#39'+'#13#10'            '#39'<h2>'#39'+'#13#10'                    '#39'{1}'#39'+'#13#10'    ' +
              '        '#39'</h2>'#39'+                '#13#10#13#10'            '#39'</div>'#39'+ '#13#10'    ' +
              #39'</div>'#39';                 '#13#10'                '#13#10' }')
          Flex = 1
          Options = [dgColLines, dgRowLines, dgConfirmDelete]
          WebOptions.Paged = False
          Striped = True
          DirectionLock = True
          LayoutConfig.Cls = 'loading loading-indicator'
          LayoutConfig.Width = '100%'
          OnClick = ListGruposClick
          Columns = <
            item
              Title.Caption = 'CODIGO'
              FieldName = 'CODIGO'
              Width = 114
            end
            item
              Title.Caption = 'DESCRICAO'
              Title.Font.Name = 'Vivaldi'
              FieldName = 'NOME'
              Width = 554
            end
            item
              Title.Caption = 'UNID'
              FieldName = 'DESCRICAO'
              Width = 26
            end
            item
              Title.Caption = 'FOTO'
              FieldName = 'FOTO'
              Width = 3304
            end>
        end
        object UnimPanel1: TUnimPanel
          Left = 0
          Top = 415
          Width = 310
          Height = 55
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
        end
      end
      object TabMarcas: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        ClientEvents.ExtEvents.Strings = (
          
            'show=function window.show(sender, eOpts)'#13#10'{'#13#10' '#13#10'        var dom ' +
            '= Ext.dom.Query.select('#39'.x-mask'#39');'#13#10'        var el = Ext.get(dom' +
            '[0]);'#13#10'        el.addCls('#39'customWindow'#39');'#13#10'    '#13#10'}')
        Caption = 'Marcas'
        TabVisible = False
        object PnlExibeMarcas: TUnimPanel
          Left = 0
          Top = 0
          Width = 310
          Height = 63
          Hint = ''
          Align = alTop
          Color = 3026478
          BorderStyle = ubsNone
          object lblGrupos: TUnimLabel
            Left = 0
            Top = 0
            Width = 238
            Height = 63
            Hint = ''
            AutoSize = False
            Caption = '....'
            Align = alClient
            Anchors = [akLeft, akTop, akBottom]
            ParentColor = False
            Color = 3026478
            Transparent = False
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -24
            Font.Style = [fsBold]
          end
          object PnlShop: TUnimContainerPanel
            Left = 238
            Top = 0
            Width = 72
            Height = 63
            Hint = ''
            Visible = False
            Align = alRight
            Color = 3026478
            object BtCarrinho: TUnimButton
              Left = 0
              Top = 0
              Width = 72
              Height = 63
              Hint = ''
              BadgeText = '0'
              Align = alClient
              Caption = '<i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>'
              LayoutConfig.Cls = 'btn-shop'
            end
          end
        end
        object ListMarcas: TUnimDBListGrid
          Left = 0
          Top = 63
          Width = 310
          Height = 357
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsSubGrupos
          ClientEvents.ExtEvents.Strings = (
            
              'select=function select(sender, selected, eOpts)'#13#10'{'#13#10'  return fal' +
              'se;'#13#10'}')
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit='#13#10'function beforeInit(sender, config) '#13#10'{'#13#10#13#10' Ext.uti' +
              'l.Format.thousandSeparator = '#39','#39';'#13#10' Ext.util.Format.decimalSepar' +
              'ator  = '#39','#39';'#13#10#13#10' config.selectedCls = '#39#39';'#13#10' config.loadingText='#39 +
              'carregando...'#39';'#13#10' config.grouped=false; '#13#10' config.itemTpl='#39#39' ;  ' +
              '     '#13#10' config.itemTpl= new Ext.XTemplate'#13#10'  ('#13#10'  '#13#10'    '#39'<div cl' +
              'ass="container-marcas">'#39'+'#13#10'            '#39'<div class="card-marcas ' +
              'card-marcas-left">'#39'+'#13#10'                 '#39'<image src="{3}"/>'#39'+    ' +
              '                      '#13#10'                '#13#10'            '#39'</div>'#39'+'#13 +
              #10'            '#39'<div class="bloco-marcas ">'#39'+'#13#10'                  '#39 +
              '<h2>'#39'+'#13#10'                    '#39'{1}'#39'+'#13#10'                  '#39'</h2>'#39'+ '#13 +
              #10'                 '#39'<h4>'#39'+ '#13#10'                   '#39'{2}'#39'+ '#13#10'        ' +
              '         '#39'</h4>'#39'+                     '#13#10'                   '#13#10'   ' +
              '         '#39'</div>'#39'+    '#13#10'    '#39'</div>'#39' , '#13#10'                 '#13#10'  );' +
              #13#10'                '#13#10'}'#13#10' '#13#10)
          Flex = 1
          Options = [dgRowLines, dgConfirmDelete]
          WebOptions.Paged = False
          Striped = True
          DirectionLock = True
          LayoutConfig.Cls = 'loading loading-indicator'
          LayoutConfig.Width = '100%'
          OnSelect = ListMarcasSelect
          OnClick = ListMarcasClick
          OnFieldImage = ListMarcasFieldImage
          Columns = <
            item
              Title.Caption = 'ID'
              FieldName = 'ID'
              Width = 114
            end
            item
              Title.Caption = 'DESCRICAO'
              FieldName = 'DESCRICAO'
              Width = 334
            end
            item
              Title.Caption = 'COMPOSICAO'
              FieldName = 'COMPOSICAO'
              Width = 1654
            end
            item
              Title.Caption = 'FOTO'
              FieldName = 'FOTO'
              Width = 3304
            end>
        end
        object PnlBottomBack: TUnimPanel
          Left = 0
          Top = 420
          Width = 310
          Height = 50
          Hint = ''
          Align = alBottom
          Color = 3026478
          BorderStyle = ubsNone
          object LblBackMarcaHome: TUnimLabel
            Left = 0
            Top = 0
            Width = 310
            Height = 50
            Hint = ''
            Alignment = taRightJustify
            AutoSize = False
            Caption = 
              '<i class="fa fa-arrow-alt-circle-left fa-4x" aria-hidden="true">' +
              '</i>'
            Align = alClient
            ParentColor = False
            Color = 3026478
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            OnClick = LblBackMarcaHomeClick
          end
        end
      end
      object TabProdutos: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        Caption = 'Produtos'
        object PnlExibeProdutos: TUnimPanel
          Left = 0
          Top = 0
          Width = 310
          Height = 57
          Hint = ''
          Align = alTop
          Color = clWhite
          BorderStyle = ubsNone
          object BtPesquisaProdutos: TUnimButton
            Left = 244
            Top = 0
            Width = 66
            Height = 57
            Hint = ''
            Align = alRight
            Caption = ''
            ClientEvents.ExtEvents.Strings = (
              'added=    '
              
                'beforehide=function beforehide(sender, eOpts)'#13#10'{'#13#10#13#10'    var me=s' +
                'ender.inputEl;      '#13#10'    me.set({'#13#10'        inputmode: "none"'#13#10' ' +
                '   });'#13#10#13#10'}'
              
                'show=function show(sender, eOpts)'#13#10'{'#13#10'      var me=sender.inputE' +
                'l;      '#13#10'    me.set({'#13#10'        inputmode: "none"'#13#10'    });'#13#10'}')
            IconAlign = iaCenter
            IconCls = 'search'
            UI = 'round'
            OnClick = BtPesquisaProdutosClick
          end
          object EdtBuscaProdutos: TUnimEdit
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 238
            Height = 51
            Hint = ''
            InputRTL = False
            Align = alClient
            Text = ''
            CharCase = ecUpperCase
            EmptyText = 'digite a pesquisa'
            ParentFont = False
            Font.Height = -23
            Font.Name = 'Bahnschrift Light'
            LayoutConfig.Cls = 'roundborda'
            TabOrder = 1
            InputType = 'text'
            OnKeyUp = EdtBuscaProdutosKeyUp
          end
        end
        object ListProdutos: TUnimDBListGrid
          Left = 0
          Top = 57
          Width = 310
          Height = 353
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsProdutos
          ClientEvents.ExtEvents.Strings = (
            
              'select=function select(sender, selected, eOpts)'#13#10'{'#13#10'  return fal' +
              'se;'#13#10'}')
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit='#13#10'function beforeInit(sender, config) '#13#10'{'#13#10#13#10' Ext.uti' +
              'l.Format.thousandSeparator = '#39','#39';'#13#10' Ext.util.Format.decimalSepar' +
              'ator  = '#39','#39';'#13#10#13#10' config.selectedCls = '#39#39';'#13#10' config.loadingText='#39 +
              'carregando...'#39';'#13#10' config.grouped=false; '#13#10' config.itemTpl='#39#39' ;  ' +
              '     '#13#10' config.itemTpl= new Ext.XTemplate'#13#10'  ('#13#10'  '#13#10'   '#39'<div cla' +
              'ss="container-menu-produtos">'#39'+'#13#10'            '#39'<div class="card-g' +
              'rupo-produto card-left">'#39'+'#13#10'                 '#39'<image src="{4}"/>' +
              #39'+'#13#10'            '#39'</div>'#39'+  '#13#10'            '#39'<div class="bloco-prod' +
              'utos">'#39'+'#13#10'                  '#39'<h4>'#39'+'#13#10'                    '#39'{1}'#39'+'#13 +
              #10'                  '#39'</h4>'#39'+  '#13#10'                 '#39'<h4>'#39'+ '#13#10'      ' +
              '              '#39'{2}'#39'+  '#13#10'                 '#39'</h4>'#39'+  '#13#10'           ' +
              ' '#39'</div>'#39'+ '#13#10'            '#39'<button class="btn" id="ExibeProduto" ' +
              'onclick="javascript:ev_ChamaExibeProduto()">Inserir</button>'#39'+'#13#10 +
              '            '#39'</div>'#39'+    '#13#10'    '#39'</div>'#39' ,                       ' +
              '                                             '#13#10'                 ' +
              #13#10'  );'#13#10'                '#13#10'}'#13#10' '#13#10)
          Flex = 1
          Options = [dgRowLines, dgConfirmDelete]
          WebOptions.Paged = False
          Striped = True
          DirectionLock = True
          LayoutConfig.Cls = 'loading loading-indicator'
          LayoutConfig.Width = '100%'
          OnAjaxEvent = ListProdutosAjaxEvent
          OnSelect = ListProdutosSelect
          Columns = <
            item
              Title.Caption = 'CODIGO'
              FieldName = 'CODIGO'
              Width = 114
            end
            item
              Title.Caption = 'DESCRICAO'
              FieldName = 'DESCRICAO'
              Width = 334
            end
            item
              Title.Caption = 'COMPOSICAO'
              FieldName = 'COMPOSICAO'
              Width = 1654
            end
            item
              Title.Caption = 'VALOR'
              FieldName = 'VALOR'
              Width = 213
            end
            item
              Title.Caption = 'FOTO'
              FieldName = 'FOTO'
              Width = 3304
            end>
        end
        object PnlBottomBackMarcas: TUnimPanel
          Left = 0
          Top = 410
          Width = 310
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
            object BtCarroPedido: TUnimButton
              Left = 0
              Top = 0
              Width = 72
              Height = 60
              Hint = ''
              Align = alClient
              Caption = '<i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>'
              Font.Color = clWhite
              OnClick = BtCarroPedidoClick
            end
          end
          object LblBottom: TUnimLabel
            Left = 72
            Top = 0
            Width = 238
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
            OnClick = LblBottomClick
          end
        end
      end
      object TabItens: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        Caption = 'Itens'
        TabVisible = False
        object ListItens: TUnimDBListGrid
          Left = 0
          Top = 0
          Width = 310
          Height = 410
          Hint = ''
          Align = alClient
          DataSource = UniMainModule.dsItens
          ClientEvents.ExtEvents.Strings = (
            
              'select=function select(sender, selected, eOpts)'#13#10'{'#13#10'  return fal' +
              'se;'#13#10'}')
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit='#13#10'function beforeInit(sender, config) '#13#10'{'#13#10#13#10' Ext.uti' +
              'l.Format.thousandSeparator = '#39','#39';'#13#10' Ext.util.Format.decimalSepar' +
              'ator  = '#39','#39';'#13#10#13#10' config.selectedCls = '#39#39';'#13#10' config.loadingText='#39 +
              'carregando...'#39';'#13#10' config.grouped=false; '#13#10' config.itemTpl='#39#39' ;  ' +
              '     '#13#10' config.itemTpl= new Ext.XTemplate'#13#10'  ('#13#10'  '#13#10'   '#39'<div cla' +
              'ss="container-menu-itens">'#39'+'#13#10'            '#39'<div class="bloco-ite' +
              'ns">'#39'+'#13#10'                  '#39'<h3>'#39'+'#13#10'                    '#39'C'#243'd.:'#39'+'#13 +
              #10'                    '#39'{2}  '#39'+'#13#10'                    '#39'{3}'#39'+'#13#10'     ' +
              '             '#39'</h3>'#39'+  '#13#10'                 '#39'<h4>Quantidade: '#39'+   ' +
              '                  '#13#10'                    '#39'{4}'#39'+'#13#10'                ' +
              '    '#39'  Emb: '#39'+'#13#10'                    '#39'{5}'#39'+                      ' +
              #13#10'                 '#39'</h4>'#39'+  '#13#10'                '#13#10'            '#39'</' +
              'div>'#39'+ '#13#10'            '#39'<button class="btn-itens" id="DeletaItens"' +
              ' onclick="javascript:ev_ChamaDeletaItens()"><i class="fa fa-tras' +
              'h" aria-hidden="true"></i></button>'#39'+'#13#10'            '#39'</div>'#39'+    ' +
              #13#10'    '#39'</div>'#39' ,                                                ' +
              '                    '#13#10'                 '#13#10'  );'#13#10'                '#13 +
              #10'}'#13#10' '#13#10)
          Flex = 1
          Options = [dgRowLines, dgConfirmDelete]
          WebOptions.Paged = False
          Striped = True
          DirectionLock = True
          LayoutConfig.Cls = 'loading loading-indicator'
          LayoutConfig.Width = '100%'
          OnAjaxEvent = ListItensAjaxEvent
          Columns = <
            item
              Title.Caption = 'ID'
              FieldName = 'ID'
              Width = 114
            end
            item
              Title.Caption = 'PEDIDO'
              FieldName = 'PEDIDO'
              Width = 114
            end
            item
              Title.Caption = 'CODIGO_PRODUTO'
              FieldName = 'CODIGO_PRODUTO'
              Width = 114
            end
            item
              Title.Caption = 'NOME_PRODUTO'
              FieldName = 'NOME_PRODUTO'
              Width = 554
            end
            item
              Title.Caption = 'QUANTIDADE'
              FieldName = 'QUANTIDADE'
              Width = 213
            end
            item
              Title.Caption = 'UNID'
              FieldName = 'UNID'
              Width = 26
            end>
        end
        object PnlItensPedido: TUnimPanel
          Left = 0
          Top = 410
          Width = 310
          Height = 60
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
          object ContainerBottomItens: TUnimContainerPanel
            Left = 0
            Top = 0
            Width = 72
            Height = 60
            Hint = ''
            Align = alLeft
            Color = 8277275
            object BtChamaTabFechamento: TUnimButton
              Left = 0
              Top = 0
              Width = 72
              Height = 60
              Hint = ''
              Align = alClient
              Caption = '<i class="fa fa-credit-card fa-2x" aria-hidden="true"></i>'
              Font.Color = clWhite
              OnClick = BtChamaTabFechamentoClick
            end
          end
          object LblBottomItens: TUnimLabel
            Left = 72
            Top = 0
            Width = 238
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
            OnClick = LblBottomItensClick
          end
        end
      end
      object TabClientes: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        Caption = 'Clientes'
        TabVisible = False
        object UnimScrollBox1: TUnimScrollBox
          Left = 0
          Top = 0
          Width = 310
          Height = 410
          Hint = ''
          Align = alClient
          ScrollHeight = 105
          ScrollWidth = 0
          object UnimContainerPanel2: TUnimContainerPanel
            Left = 0
            Top = 0
            Width = 308
            Height = 33
            Hint = ''
            Align = alTop
            object UnimLabel2: TUnimLabel
              Left = 0
              Top = 0
              Width = 308
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
          object UnimContainerPanel3: TUnimContainerPanel
            Left = 0
            Top = 33
            Width = 308
            Height = 72
            Hint = ''
            Align = alTop
            object UnimLabel3: TUnimLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 302
              Height = 20
              Hint = ''
              AutoSize = False
              Caption = 'Cliente:'
              Align = alTop
              ParentFont = False
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
            end
            object EdBuscaClientes: TUnimEdit
              Left = 0
              Top = 26
              Width = 242
              Height = 46
              Hint = ''
              InputRTL = False
              Align = alClient
              Text = ''
              EmptyText = 'digite a pesquisa'
              ParentFont = False
              Font.Height = -23
              Font.Name = 'Bahnschrift Light'
              LayoutConfig.Cls = 'roundborda'
              TabOrder = 2
              InputType = 'text'
            end
            object BtPesquisaClientes: TUnimButton
              Left = 242
              Top = 26
              Width = 66
              Height = 46
              Hint = ''
              Align = alRight
              Caption = ''
              ClientEvents.ExtEvents.Strings = (
                'added=    '
                
                  'beforehide=function beforehide(sender, eOpts)'#13#10'{'#13#10#13#10'    var me=s' +
                  'ender.inputEl;      '#13#10'    me.set({'#13#10'        inputmode: "none"'#13#10' ' +
                  '   });'#13#10#13#10'}'
                
                  'show=function show(sender, eOpts)'#13#10'{'#13#10'      var me=sender.inputE' +
                  'l;      '#13#10'    me.set({'#13#10'        inputmode: "none"'#13#10'    });'#13#10'}')
              IconAlign = iaCenter
              IconCls = 'search'
              UI = 'round'
              OnClick = BtPesquisaClientesClick
            end
          end
          object GridClientePedido: TUnimDBListGrid
            Left = 0
            Top = 105
            Width = 308
            Height = 303
            Hint = ''
            Align = alClient
            DataSource = UniMainModule.dsClientes
            OnDblClick = GridClientePedidoDblClick
            Columns = <
              item
                Title.Caption = 'C'#243'd'
                FieldName = 'CODIGO'
                Width = 70
              end
              item
                Title.Caption = 'Nome'
                FieldName = 'NOME'
                Width = 220
              end>
          end
        end
        object PnlBottomFechamento: TUnimPanel
          Left = 0
          Top = 410
          Width = 310
          Height = 60
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
          object LblBottomFechamento: TUnimLabel
            Left = 0
            Top = 0
            Width = 310
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
            OnClick = LblBottomFechamentoClick
          end
        end
      end
      object TabFechamento: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 310
        Height = 470
        Hint = ''
        Caption = 'Fechamento'
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 318
        ExplicitHeight = 525
        object LblPedidoFechamento: TUnimLabel
          Left = 0
          Top = 0
          Width = 310
          Height = 26
          Hint = ''
          Alignment = taCenter
          AutoSize = False
          Caption = 'Pedido:'
          Align = alTop
          ParentColor = False
          Color = 10440704
          Transparent = False
          ParentFont = False
          Font.Color = 4194432
          Font.Height = -24
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
        end
        object UnimScrollBoxFechamento: TUnimScrollBox
          Left = 0
          Top = 26
          Width = 310
          Height = 384
          Hint = ''
          Align = alClient
          ScrollHeight = 415
          ScrollWidth = 0
          object UnimContainerPanel5: TUnimContainerPanel
            Left = 0
            Top = 0
            Width = 291
            Height = 49
            Hint = ''
            Align = alTop
          end
          object UnimContainerPanel4: TUnimContainerPanel
            Left = 0
            Top = 49
            Width = 291
            Height = 93
            Hint = ''
            Align = alTop
            Color = clWhite
            object UnimLabel6: TUnimLabel
              Left = 15
              Top = 8
              Width = 130
              Height = 28
              Hint = ''
              Margins.Left = 15
              Margins.Top = 15
              AutoSize = False
              Caption = 'CLIENTE:'
              ParentFont = False
              Font.Color = 8404992
              Font.Name = 'Times New Roman'
            end
            object LblNomeCliente: TUnimLabel
              Left = 15
              Top = 59
              Width = 250
              Height = 28
              Hint = ''
              Margins.Left = 15
              Margins.Top = 15
              AutoSize = False
              Caption = 'nome cliente'
              ParentFont = False
              Font.Color = 157
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
            end
          end
          object UnimContainerPanel7: TUnimContainerPanel
            Left = 0
            Top = 142
            Width = 291
            Height = 102
            Hint = ''
            Align = alTop
            Color = clWhite
            object UnimLabel5: TUnimLabel
              AlignWithMargins = True
              Left = 8
              Top = 3
              Width = 280
              Height = 28
              Hint = ''
              Margins.Left = 8
              AutoSize = False
              Caption = '     DATA EMISS'#195'O'
              Align = alTop
              ParentFont = False
              Font.Color = 8404992
              Font.Name = 'Times New Roman'
            end
            object EdDataEmissao: TUnimDBDatePicker
              Left = 15
              Top = 30
              Width = 193
              Height = 58
              Hint = ''
              Margins.Left = 8
              DataField = 'DATA_EMISSAO'
              DataSource = UniMainModule.dsPedidos
              FieldLabelFont.Color = 12615680
              Font.Height = -20
              DateFormat = 'dd/MM/yyyy'
              Date = 44668.000000000000000000
              Picker = dptFloated
            end
          end
          object UnimContainerPanel6: TUnimContainerPanel
            Left = 0
            Top = 244
            Width = 291
            Height = 94
            Hint = ''
            Align = alTop
            Color = clWhite
            ExplicitTop = 231
            object LblData: TUnimLabel
              AlignWithMargins = True
              Left = 8
              Top = 10
              Width = 280
              Height = 23
              Hint = ''
              Margins.Left = 8
              Margins.Top = 10
              Alignment = taCenter
              AutoSize = False
              Caption = 'COBRAN'#199'A'
              Align = alTop
              ParentColor = False
              Color = clWhite
              ParentFont = False
              Font.Color = 8404992
              Font.Name = 'Times New Roman'
            end
            object LKLocalCobranca: TUnimDBLookupComboBox
              Left = 0
              Top = 36
              Width = 291
              Height = 41
              Hint = ''
              Align = alTop
              Text = ''
              TabOrder = 2
              ListField = 'NOME'
              ListSource = UniMainModule.dsLocalCobranca
              KeyField = 'NOME'
              ListFieldIndex = 1
            end
          end
          object UnimContainerPanel8: TUnimContainerPanel
            Left = 0
            Top = 338
            Width = 291
            Height = 77
            Hint = ''
            Align = alTop
            object BtFecharPedido: TUnimButton
              Left = 25
              Top = 6
              Width = 240
              Height = 54
              Hint = ''
              Caption = 'Confirmar Pedido'
              OnClick = BtFecharPedidoClick
            end
          end
        end
        object PnlFechaPedido: TUnimPanel
          Left = 0
          Top = 410
          Width = 310
          Height = 60
          Hint = ''
          Align = alBottom
          Color = 8277275
          BorderStyle = ubsNone
          object LblFechaPedido: TUnimLabel
            Left = 0
            Top = 0
            Width = 310
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
            OnClick = LblFechaPedidoClick
          end
        end
      end
    end
  end
end
