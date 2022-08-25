inherited FrameProdutos: TFrameProdutos
  Height = 647
  OnDestroy = UniFrameDestroy
  ExplicitHeight = 647
  inherited UniContainerPanel1: TUniContainerPanel
    inherited lbTituloFrame: TUniLabel
      Width = 38
      Caption = 'Produto'
      ExplicitWidth = 38
    end
  end
  inherited pnBody: TUniPanel
    Height = 600
    ExplicitHeight = 600
    inherited PageCadastro: TUniPageControl
      Height = 600
      ExplicitHeight = 600
      inherited TS1: TUniTabSheet
        ExplicitHeight = 572
        inherited GridListaCrud: TUniDBGrid
          Height = 508
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'ID'
              Width = 500
            end
            item
              FieldName = 'NOME'
              Title.Caption = 'NOME'
              Width = 1200
              Font.Style = [fsBold]
              ReadOnly = True
            end
            item
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 1500
            end
            item
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 1000
              Font.Style = [fsBold]
              ForceStringFormat = True
            end
            item
              FieldName = 'COMPOSICAO'
              Title.Caption = 'Composi'#231#227'o'
              Width = 1800
            end>
        end
      end
      inherited TS2: TUniTabSheet
        inherited UniContainerPanel3: TUniContainerPanel
          Top = 527
          ExplicitTop = 527
        end
        inherited UniScrollBox1: TUniScrollBox
          Height = 519
          ExplicitHeight = 519
          ScrollHeight = 514
          ScrollWidth = 505
          inherited UniContainerPanel4: TUniContainerPanel
            Top = 496
            ExplicitTop = 496
          end
          object EdDescricao: TUniDBEdit
            Left = 18
            Top = 105
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'DESCRICAO'
            DataSource = dsCad
            TabOrder = 3
            FieldLabel = 'Descri'#231#227'o do Produto'
            FieldLabelAlign = laTop
          end
          object UniDBText1: TUniDBText
            Left = 18
            Top = 22
            Width = 66
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsCad
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
          end
          object UniDbListGrupos: TUniDBLookupComboBox
            Left = 18
            Top = 51
            Width = 223
            Hint = ''
            ListField = 'NOME'
            ListSource = dsGrupos
            KeyField = 'ID'
            ListFieldIndex = 0
            DataField = 'ID_GRUPO'
            DataSource = dsCad
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Grupos'
            FieldLabelAlign = laTop
            ForceSelection = True
          end
          object EdComposicao: TUniDBEdit
            Left = 18
            Top = 161
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'COMPOSICAO'
            DataSource = dsCad
            TabOrder = 4
            FieldLabel = 'Composi'#231#227'o do Produto'
            FieldLabelAlign = laTop
          end
          object EdFoto: TUniDBEdit
            Left = 18
            Top = 211
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'FOTO'
            DataSource = dsCad
            TabOrder = 5
            FieldLabel = 'Foto:'
            FieldLabelAlign = laTop
          end
          object UniBitBtn2: TUniBitBtn
            Left = 18
            Top = 337
            Width = 150
            Height = 25
            Hint = ''
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              180000000000000300003A0B00003A0B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF7088905672824E6777465C6C3F51613746562F3C4C27
              3141202636181B2B1010206F757FFF00FFFF00FFFF00FFFF00FF728A9290A0B0
              70B0D02098D02098D02098D02094CA208AB9207FA8207597207090204860FF00
              FFFF00FFFF00FFFF00FF778F9780C8E090A0B0A1E8FF8EE3FF7CDDFD6DD1F75F
              C5F251BAEC42AFE730A0E0206880505460FF00FFFF00FFFF00FF7C949C82E1FF
              90A0B0A5C4CDA1E8FF8EE3FF7CDDFD6DD1F75FC5F251BAEC42AFE730A0E02048
              60FF00FFFF00FFFF00FF8098A095E5FF80C8E090A0B0B4EDFFA1E8FF8EE3FF7C
              DDFD6DD1F75FC5F251BAEC42AFE7206880505460FF00FFFF00FF859DA5A6EAFF
              95E5FF90A0B0A5C4CDB4EDFFA1E8FF8EE3FF7CDDFD6DD1F75FC5F251BAEC30A0
              E0204860FF00FFFF00FF8AA2AAB8EEFFA6EAFF80C8E090A0B0C0F0FF80E0FF80
              E0FF80E0FF80E0FF80E0FF80E0FF80E0FF50A8D0567282FF00FF8FA7AFC0F0FF
              B8EEFFA6EAFF90B0C090B0C090B0C090B0C08DACBB88A6B3829FAC7D98A47892
              9C738B94718993FF00FF90A8B0C0F0FFC0F0FFB8EEFFA6EAFF95E5FF82E1FF74
              D6FA66CBF459C1EF4BB6EA3EABE5708890FF00FFFF00FFFF00FF90A8B0C0F0FF
              C0F0FFC0F0FFB8EEFFA6EAFF7088907088907088907088907088907088907088
              90FF00FFFF00FFFF00FF90A8B08DB6C6C0F0FFC0F0FFC0F0FF708890FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF983000983000983000983000FF00FF90A8B0
              88A0A87A929A708890FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF983000BE713C983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFBE713C983000983000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF983000BE713CFF00FFBE71
              3C983000FF00FF983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF983000983000983000FF00FFFF00FFFF00FF}
            Caption = ''
            ParentFont = False
            TabOrder = 7
            OnClick = UniBitBtn2Click
          end
          object UniContainerPanel2: TUniContainerPanel
            Left = 10
            Top = 384
            Width = 158
            Height = 130
            Hint = ''
            ParentColor = False
            TabOrder = 8
            object UniImage1: TUniImage
              Left = 6
              Top = 5
              Width = 144
              Height = 117
              Hint = ''
              Stretch = True
              Proportional = True
            end
          end
          object UniDBNumberEdit1: TUniDBNumberEdit
            Left = 18
            Top = 277
            Width = 223
            Height = 22
            Hint = ''
            DataField = 'VALOR'
            DataSource = dsCad
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Valor:'
            FieldLabelAlign = laTop
            FieldLabelFont.Style = [fsBold]
            DecimalUseOSDefault = True
          end
        end
      end
    end
  end
  inherited dsCad: TDataSource
    Left = 641
    Top = 258
  end
  inherited dsFiltro: TDataSource
    Left = 649
    Top = 320
  end
  inherited FDQryCad: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTOS WHERE ID=:ID')
    Left = 468
    Top = 255
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object FDQryCadID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object FDQryCadCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDQryCadCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 150
    end
    object FDQryCadVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object FDQryCadFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
  end
  inherited FDQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   A.*,B.*'
      'FROM PRODUTOS A, GRUPOS B'
      'WHERE A.DESCRICAO LIKE :DESCRICAO   || '#39'%'#39' AND A.ID_GRUPO = B.ID'
      'ORDER BY A.DESCRICAO')
    Left = 476
    Top = 327
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 120
        Value = Null
      end>
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQryFiltroNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryFiltroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDQryFiltroCOMPOSICAO: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 150
    end
    object FDQryFiltroVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      OnGetText = FDQryFiltroVALORGetText
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroFOTO: TStringField
      DisplayLabel = 'Imagem'
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
  end
  object FDQryGrupos: TFDQuery
    Active = True
    Connection = UniMainModule.Conn
    SQL.Strings = (
      'SELECT ID,NOME FROM GRUPOS ORDER BY NOME')
    Left = 356
    Top = 79
    object FDQryGruposID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryGruposNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
    end
  end
  object dsGrupos: TDataSource
    DataSet = FDQryGrupos
    Left = 300
    Top = 119
  end
  object UniFileUpload1: TUniFileUpload
    MaxAllowedSize = 10485760
    Filter = 'image/*'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    Width = 350
    OnCompleted = UniFileUpload1Completed
    Left = 264
    Top = 192
  end
end
