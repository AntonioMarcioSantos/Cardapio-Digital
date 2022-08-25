inherited FrameGrupos: TFrameGrupos
  inherited UniContainerPanel1: TUniContainerPanel
    inherited lbTituloFrame: TUniLabel
      Width = 34
      Caption = 'Grupos'
      ExplicitWidth = 34
    end
  end
  inherited pnBody: TUniPanel
    inherited PageCadastro: TUniPageControl
      inherited TS1: TUniTabSheet
        inherited GridListaCrud: TUniDBGrid
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'Id'
              Width = 500
            end
            item
              FieldName = 'NOME'
              Title.Caption = 'Classifica'#231#227'o'
              Width = 1200
            end
            item
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 1800
            end
            item
              FieldName = 'FOTO'
              Title.Caption = 'Imagem'
              Width = 2104
            end>
        end
        inherited BtFiltrar: TUniBitBtn
          Left = 264
          Width = 42
          Height = 27
          ExplicitLeft = 264
          ExplicitWidth = 42
          ExplicitHeight = 27
        end
      end
      inherited TS2: TUniTabSheet
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 386
          ScrollWidth = 505
          object UniDBEdit1: TUniDBEdit
            Left = 11
            Top = 49
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'NOME'
            DataSource = dsCad
            TabOrder = 1
            FieldLabel = 'Nome:'
            FieldLabelAlign = laTop
          end
          object UniDBEdit2: TUniDBEdit
            Left = 11
            Top = 107
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'DESCRICAO'
            DataSource = dsCad
            TabOrder = 2
            FieldLabel = 'Descri'#231#227'o:'
            FieldLabelAlign = laTop
          end
          object EdFoto: TUniDBEdit
            Left = 11
            Top = 163
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'FOTO'
            DataSource = dsCad
            TabOrder = 3
            FieldLabel = 'Foto:'
            FieldLabelAlign = laTop
          end
          object UniDBText1: TUniDBText
            Left = 11
            Top = 18
            Width = 66
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsCad
            ParentFont = False
            Font.Style = [fsBold]
          end
          object UniBitBtn2: TUniBitBtn
            Left = 11
            Top = 225
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
            TabOrder = 5
            OnClick = UniBitBtn2Click
          end
          object UniContainerPanel2: TUniContainerPanel
            Left = 3
            Top = 256
            Width = 158
            Height = 130
            Hint = ''
            ParentColor = False
            TabOrder = 6
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
        end
      end
    end
  end
  inherited FDQryCad: TFDQuery
    SQL.Strings = (
      'SELECT * FROM GRUPOS WHERE ID =:ID')
    Left = 476
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
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
    end
    object FDQryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
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
      '   * '
      'FROM grupos'
      'WHERE descricao LIKE :DESCRICAO  || '#39'%'#39
      'ORDER BY descricao')
    Left = 476
    Top = 335
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 255
        Value = Null
      end>
    object FDQryFiltroID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 100
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroNOME: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      DisplayWidth = 500
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 500
    end
    object FDQryFiltroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 400
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQryFiltroFOTO: TStringField
      DisplayLabel = 'Imagem'
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
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
    Left = 216
    Top = 216
  end
end
