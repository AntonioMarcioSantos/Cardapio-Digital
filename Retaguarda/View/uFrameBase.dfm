object FrameBase: TFrameBase
  Left = 0
  Top = 0
  Width = 821
  Height = 497
  OnCreate = UniFrameCreate
  LayoutConfig.ComponentCls = 'animated fadeIn'
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 47
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    LayoutConfig.BodyCls = 'x-window-header'
    object lbTituloFrame: TUniLabel
      Left = 12
      Top = 20
      Width = 26
      Height = 13
      Hint = ''
      Caption = 'T'#237'tulo'
      TabOrder = 1
      LayoutConfig.Cls = 'titulo-frame'
      LayoutConfig.ComponentCls = 'animated bounceInRight'
    end
    object btFechar: TUniImage
      AlignWithMargins = True
      Left = 788
      Top = 18
      Width = 30
      Height = 26
      Cursor = crHandPoint
      Hint = 'Fechar'
      Margins.Top = 18
      ShowHint = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        001808040000004A7EF573000000A84944415478DADD92CB0DC2301005C745E0
        22201491D00445402FD00555E022F814419A601D2B8A6CBF4442E2149F2CED1B
        7977BC8E1F8F5B19B0E7C291BE48786E9C7929E04ECB932E433C81AD550E0AD8
        58A1C990147F58BC574044023B7BBE1D02225E0F3D229DDD455C59F2D658449C
        8A6BADA91554FC2FC038AA2B8CCD0093192AC902C845E69205507B9F247F1410
        57A31C34490EC3BF5440C37566F94EBC97B42E9E35005F49AF4219349E980900
        00000049454E44AE426082}
      Proportional = True
      Align = alRight
      OnClick = btFecharClick
    end
    object BtInc: TUniBitBtn
      AlignWithMargins = True
      Left = 463
      Top = 8
      Width = 61
      Height = 31
      Hint = 'Adicionar'
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      TabOrder = 3
      IconAlign = iaCenter
      LayoutConfig.Cls = 'btn-primary btn-add'
      OnClick = BtIncClick
    end
    object BtAlt: TUniBitBtn
      AlignWithMargins = True
      Left = 527
      Top = 8
      Width = 61
      Height = 31
      Hint = 'Alterar'
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      TabOrder = 4
      IconAlign = iaCenter
      LayoutConfig.Cls = 'btn-primary btn-edit'
      OnClick = BtAltClick
    end
    object BtExc: TUniBitBtn
      AlignWithMargins = True
      Left = 591
      Top = 8
      Width = 61
      Height = 31
      Hint = 'Excluir'
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      TabOrder = 5
      IconAlign = iaCenter
      LayoutConfig.Cls = 'btn-danger btn-delete'
      OnClick = BtExcClick
    end
    object BtCan: TUniBitBtn
      AlignWithMargins = True
      Left = 655
      Top = 8
      Width = 61
      Height = 31
      Hint = 'Cancelar'
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      TabOrder = 6
      IconAlign = iaCenter
      LayoutConfig.Cls = 'btn-warning btn-cancel'
      OnClick = BtCanClick
    end
    object BtGrv: TUniBitBtn
      AlignWithMargins = True
      Left = 719
      Top = 8
      Width = 60
      Height = 31
      Hint = 'Gravar'
      Margins.Top = 8
      Margins.Right = 6
      Margins.Bottom = 8
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      TabOrder = 7
      IconAlign = iaCenter
      LayoutConfig.Cls = 'btn-success btn-save'
      OnClick = BtGrvClick
    end
  end
  object pnBody: TUniPanel
    AlignWithMargins = True
    Left = 0
    Top = 47
    Width = 821
    Height = 450
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    LayoutConfig.Padding = '0'
    object PageCadastro: TUniPageControl
      Left = 0
      Top = 0
      Width = 821
      Height = 450
      Hint = ''
      ActivePage = TS1
      Align = alClient
      LayoutConfig.Cls = 'border-0'
      LayoutConfig.Width = '104%'
      TabOrder = 1
      OnChange = PageCadastroChange
      object TS1: TUniTabSheet
        Hint = 'TabLista'
        Caption = 'Lista'
        object GridListaCrud: TUniDBGrid
          AlignWithMargins = True
          Left = 0
          Top = 52
          Width = 813
          Height = 358
          Hint = ''
          Margins.Left = 0
          Margins.Top = 52
          Margins.Right = 0
          Margins.Bottom = 12
          DataSource = dsFiltro
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgFilterClearButton, dgAutoRefreshRow]
          WebOptions.Paged = False
          LoadMask.Message = 'Carregando...'
          ForceFit = True
          BorderStyle = ubsSingle
          Align = alClient
          Font.Height = -13
          ParentFont = False
          TabOrder = 0
          ParentColor = False
          Color = clSkyBlue
          OnDblClick = GridListaCrudDblClick
        end
        object edPesquisar: TUniEdit
          Left = 3
          Top = 12
          Width = 255
          Height = 24
          Hint = ''
          Text = '%'
          TabOrder = 1
          EmptyText = 'Pesquisar. Digite e tecle "Enter"'
          LayoutConfig.Cls = 'edArredondado'
        end
        object BtFiltrar: TUniBitBtn
          Left = 270
          Top = 12
          Width = 53
          Height = 32
          Hint = 'filtrar'
          Caption = ''
          ParentFont = False
          Font.Color = -1
          TabOrder = 2
          IconAlign = iaCenter
          ImageIndex = 6
          LayoutConfig.Cls = 'btn-primary btn-search'
          OnClick = BtFiltrarClick
        end
      end
      object TS2: TUniTabSheet
        Hint = ''
        Caption = 'Dados'
        object UniContainerPanel3: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 377
          Width = 804
          Height = 37
          Hint = ''
          Margins.Top = 8
          Margins.Right = 6
          Margins.Bottom = 8
          ParentColor = False
          Align = alBottom
          TabOrder = 0
          LayoutConfig.Margin = '0'
        end
        object UniScrollBox1: TUniScrollBox
          Left = 0
          Top = 0
          Width = 813
          Height = 369
          Hint = ''
          Align = alClient
          TabOrder = 1
          ScrollHeight = 362
          ScrollWidth = 505
          object UniContainerPanel4: TUniContainerPanel
            Left = 249
            Top = 344
            Width = 256
            Height = 18
            Hint = ''
            ParentColor = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object dsCad: TDataSource
    DataSet = FDQryCad
    Left = 585
    Top = 186
  end
  object dsFiltro: TDataSource
    DataSet = FDQryFiltro
    Left = 593
    Top = 344
  end
  object FDQryCad: TFDQuery
    Connection = UniMainModule.Conn
    Left = 492
    Top = 191
  end
  object FDQryFiltro: TFDQuery
    Connection = UniMainModule.Conn
    Left = 500
    Top = 351
  end
end
