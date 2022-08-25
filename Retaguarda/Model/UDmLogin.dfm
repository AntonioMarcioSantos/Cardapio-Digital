object DMLogin: TDMLogin
  OldCreateOrder = False
  Height = 345
  Width = 439
  object QryLogin: TFDQuery
    Connection = UniMainModule.Conn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'SELECT *  FROM USUARIOS WHERE NOME = :USUARIO AND SENHA=:SENHA')
    Left = 272
    Top = 48
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object QryLoginID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object QryLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object QryLoginEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 200
    end
    object QryLoginDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  object QryCadUsuarioNovo: TFDQuery
    Connection = UniMainModule.Conn
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID = -1')
    Left = 272
    Top = 112
    object QryCadUsuarioNovoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCadUsuarioNovoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object QryCadUsuarioNovoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object QryCadUsuarioNovoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 200
    end
    object QryCadUsuarioNovoDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  object ValidaUsuarioEmail: TFDQuery
    Connection = UniMainModule.Conn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'SELECT ID,NOME,SENHA FROM USUARIOS WHERE EMAIL=:EMAIL')
    Left = 272
    Top = 192
    ParamData = <
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
