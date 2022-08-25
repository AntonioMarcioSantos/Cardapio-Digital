inherited FrameUsuarios: TFrameUsuarios
  inherited UniContainerPanel1: TUniContainerPanel
    inherited lbTituloFrame: TUniLabel
      Left = 3
      Top = 28
      Width = 41
      Caption = 'Usu'#225'rios'
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 41
    end
  end
  inherited pnBody: TUniPanel
    inherited PageCadastro: TUniPageControl
      inherited TS1: TUniTabSheet
        inherited GridListaCrud: TUniDBGrid
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'ID'
              Width = 134
            end
            item
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 339
            end
            item
              FieldName = 'EMAIL'
              Title.Caption = 'Email'
              Width = 1404
            end>
        end
      end
      inherited TS2: TUniTabSheet
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 362
          ScrollWidth = 505
          object EdSenha: TUniDBEdit
            Left = 11
            Top = 107
            Width = 142
            Height = 22
            Hint = ''
            DataField = 'SENHA'
            DataSource = dsCad
            PasswordChar = '@'
            TabOrder = 3
            FieldLabel = 'Senha:'
            FieldLabelAlign = laTop
          end
          object EdNome: TUniDBEdit
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
          object EdEmail: TUniDBEdit
            Tag = 1
            Left = 11
            Top = 171
            Width = 334
            Height = 22
            Hint = ''
            DataField = 'EMAIL'
            DataSource = dsCad
            TabOrder = 4
            FieldLabel = 'Email:'
            FieldLabelAlign = laTop
          end
        end
      end
    end
  end
  inherited dsCad: TDataSource
    Left = 625
    Top = 226
  end
  inherited dsFiltro: TDataSource
    Left = 633
    Top = 312
  end
  inherited FDQryCad: TFDQuery
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID =:ID')
    Top = 215
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
      Size = 40
    end
    object FDQryCadSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object FDQryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 200
    end
    object FDQryCadDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  inherited FDQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM usuarios'
      'WHERE nome LIKE :NOME  || '#39'%'#39
      'ORDER BY nome')
    Top = 311
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryFiltroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object FDQryFiltroSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object FDQryFiltroEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 200
    end
    object FDQryFiltroDATA_CADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
end
