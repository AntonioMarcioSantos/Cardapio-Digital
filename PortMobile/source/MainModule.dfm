object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  OnDestroy = UniGUIMainModuleDestroy
  Theme = 'crisp'
  TouchTheme = 'ios'
  DocumentKeyOptions = [dkDisableBackSpace, dkDisableESC, dkDisableAll]
  BrowserOptions = []
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ServerMessages.UnavailableErrMsg = 'Erro de Comunica'#231#227'o'
  ServerMessages.InvalidSessionMessage = 'Se'#231#227'o inv'#225'lida ou tempo de execu'#231#227'o expirado'
  ApplicationDataModuleOptions.CreateOnDemand = True
  OnSessionTimeout = UniGUIMainModuleSessionTimeout
  OnBeforeLogin = UniGUIMainModuleBeforeLogin
  Height = 692
  Width = 1069
  object dsGrupos: TDataSource
    DataSet = FDQryGrupos
    Left = 248
    Top = 104
  end
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\uniGUI\CardapioDigital\db\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evMode]
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FDQryGrupos: TFDQuery
    CachedUpdates = True
    Connection = FDCon
    SQL.Strings = (
      'select * from grupos where id < 6  order by id')
    Left = 240
    Top = 24
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
    object FDQryGruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQryGruposFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
  end
  object FDQryProdutos: TFDQuery
    CachedUpdates = True
    MasterSource = dsGrupos
    MasterFields = 'ID'
    DetailFields = 'ID_GRUPO'
    Connection = FDCon
    SQL.Strings = (
      
        'select * from produtos where id_grupo=:id_grupo order by DESCRIC' +
        'AO')
    Left = 336
    Top = 24
    ParamData = <
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQryProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryProdutosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      Required = True
    end
    object FDQryProdutosID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
      Origin = 'ID_SUBGRUPO'
      Required = True
    end
    object FDQryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDQryProdutosCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 150
    end
    object FDQryProdutosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQryProdutosFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
  end
  object dsProdutos: TDataSource
    DataSet = FDQryProdutos
    Left = 352
    Top = 104
  end
  object FDQrySubGrupos: TFDQuery
    CachedUpdates = True
    Connection = FDCon
    SQL.Strings = (
      'select * from subgrupos where id_grupo=:id_grupo order by id')
    Left = 144
    Top = 24
    ParamData = <
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQrySubGruposID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQrySubGruposID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object FDQrySubGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQrySubGruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDQrySubGruposCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 150
    end
    object FDQrySubGruposFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 300
    end
  end
  object dsSubGrupos: TDataSource
    DataSet = FDQrySubGrupos
    Left = 144
    Top = 104
  end
  object FDQryPedidos: TFDQuery
    Connection = FDCon
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PEDIDOS_ID'
    UpdateOptions.UpdateTableName = 'PEDIDOS'
    UpdateOptions.KeyFields = 'PEDIDO'
    SQL.Strings = (
      'SELECT * FROM PEDIDOS WHERE PEDIDO=-1 ORDER BY PEDIDO')
    Left = 56
    Top = 272
    object FDQryPedidosPEDIDO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PEDIDO'
      KeyFields = 'PEDIDO'
      Origin = 'PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryPedidosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
    end
    object FDQryPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object FDQryPedidosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      Required = True
    end
    object FDQryPedidosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
    end
    object FDQryPedidosLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = 'LOCAL_COBRANCA'
    end
    object FDQryPedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object FDQryPedidosEMBARQUE: TStringField
      FieldName = 'EMBARQUE'
      Origin = 'EMBARQUE'
      Size = 1
    end
    object FDQryPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
  end
  object FDQryItens: TFDQuery
    MasterSource = dsPedidos
    MasterFields = 'PEDIDO'
    Connection = FDCon
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ITENS_PEDIDO_ID'
    UpdateOptions.UpdateTableName = 'ITENS_PEDIDO'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      
        'SELECT * FROM ITENS_PEDIDO WHERE PEDIDO=:PEDIDO ORDER BY PEDIDO,' +
        'ID ')
    Left = 136
    Top = 272
    ParamData = <
      item
        Name = 'PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQryItensID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      KeyFields = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryItensPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Required = True
    end
    object FDQryItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Required = True
    end
    object FDQryItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 50
    end
    object FDQryItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object FDQryItensUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 2
    end
  end
  object dsPedidos: TDataSource
    DataSet = FDQryPedidos
    Left = 56
    Top = 336
  end
  object dsItens: TDataSource
    DataSet = FDQryItens
    Left = 136
    Top = 336
  end
  object FDQryClientes: TFDQuery
    CachedUpdates = True
    Connection = FDCon
    SQL.Strings = (
      'select CODIGO,NOME from clientes order by nome')
    Left = 288
    Top = 280
    object FDQryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
  object dsClientes: TDataSource
    DataSet = FDQryClientes
    Left = 288
    Top = 344
  end
  object dsLocalCobranca: TDataSource
    DataSet = FDQryLocalCobranca
    Left = 696
    Top = 248
  end
  object UniCon: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\Projetos\uniGUI\CardapioDigital\db\BANCO.FDB'
    Username = 'sysdba'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 528
    Top = 88
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object FDQryPedidos2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDOS'
      
        '  (PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LOCAL_' +
        'COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_LIQU' +
        'IDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORISTA, ' +
        'MOTORISTA, STATUS)'
      'VALUES'
      
        '  (:PEDIDO, :CLIENTE, :NOME_CLIENTE, :DATA_EMISSAO, :VENDEDOR, :' +
        'LOCAL_COBRANCA, :VALOR_TOTAL, :PERC_DESCONTO, :VALOR_DESCONTO, :' +
        'VALOR_LIQUIDO, :HORA, :MAQUINA, :USUARIO, :QTD_DIAS, :EMBARQUE, ' +
        ':COD_MOTORISTA, :MOTORISTA, :STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLUpdate.Strings = (
      'UPDATE PEDIDOS'
      'SET'
      
        '  PEDIDO = :PEDIDO, CLIENTE = :CLIENTE, NOME_CLIENTE = :NOME_CLI' +
        'ENTE, DATA_EMISSAO = :DATA_EMISSAO, VENDEDOR = :VENDEDOR, LOCAL_' +
        'COBRANCA = :LOCAL_COBRANCA, VALOR_TOTAL = :VALOR_TOTAL, PERC_DES' +
        'CONTO = :PERC_DESCONTO, VALOR_DESCONTO = :VALOR_DESCONTO, VALOR_' +
        'LIQUIDO = :VALOR_LIQUIDO, HORA = :HORA, MAQUINA = :MAQUINA, USUA' +
        'RIO = :USUARIO, QTD_DIAS = :QTD_DIAS, EMBARQUE = :EMBARQUE, COD_' +
        'MOTORISTA = :COD_MOTORISTA, MOTORISTA = :MOTORISTA, STATUS = :ST' +
        'ATUS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLLock.Strings = (
      'SELECT NULL FROM PEDIDOS'
      'WHERE'
      'PEDIDO = :Old_PEDIDO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LO' +
        'CAL_COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_' +
        'LIQUIDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORIS' +
        'TA, MOTORISTA, STATUS FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :PEDIDO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM PEDIDOS'
      ''
      ') q')
    Connection = UniCon
    SQL.Strings = (
      'SELECT * FROM PEDIDOS WHERE PEDIDO=:PEDIDO')
    Left = 544
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEDIDO'
        Value = nil
      end>
    object FDQryPedidos2PEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object FDQryPedidos2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object FDQryPedidos2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object FDQryPedidos2DATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object FDQryPedidos2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object FDQryPedidos2LOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
    end
    object FDQryPedidos2VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object FDQryPedidos2PERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object FDQryPedidos2VALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object FDQryPedidos2VALOR_LIQUIDO: TFloatField
      FieldName = 'VALOR_LIQUIDO'
    end
    object FDQryPedidos2HORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object FDQryPedidos2MAQUINA: TIntegerField
      FieldName = 'MAQUINA'
    end
    object FDQryPedidos2USUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object FDQryPedidos2QTD_DIAS: TIntegerField
      FieldName = 'QTD_DIAS'
    end
    object FDQryPedidos2EMBARQUE: TStringField
      FieldName = 'EMBARQUE'
      Size = 1
    end
    object FDQryPedidos2COD_MOTORISTA: TIntegerField
      FieldName = 'COD_MOTORISTA'
    end
    object FDQryPedidos2MOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Size = 40
    end
    object FDQryPedidos2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object FDQryLocalCobranca: TUniQuery
    Connection = UniCon
    SQL.Strings = (
      'select * from local_cobrancas order by nome')
    Active = True
    Left = 688
    Top = 200
    object FDQryLocalCobrancaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FDQryLocalCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object FDQryListaPedidos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDOS'
      
        '  (PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LOCAL_' +
        'COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_LIQU' +
        'IDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORISTA, ' +
        'MOTORISTA, STATUS)'
      'VALUES'
      
        '  (:PEDIDO, :CLIENTE, :NOME_CLIENTE, :DATA_EMISSAO, :VENDEDOR, :' +
        'LOCAL_COBRANCA, :VALOR_TOTAL, :PERC_DESCONTO, :VALOR_DESCONTO, :' +
        'VALOR_LIQUIDO, :HORA, :MAQUINA, :USUARIO, :QTD_DIAS, :EMBARQUE, ' +
        ':COD_MOTORISTA, :MOTORISTA, :STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLUpdate.Strings = (
      'UPDATE PEDIDOS'
      'SET'
      
        '  PEDIDO = :PEDIDO, CLIENTE = :CLIENTE, NOME_CLIENTE = :NOME_CLI' +
        'ENTE, DATA_EMISSAO = :DATA_EMISSAO, VENDEDOR = :VENDEDOR, LOCAL_' +
        'COBRANCA = :LOCAL_COBRANCA, VALOR_TOTAL = :VALOR_TOTAL, PERC_DES' +
        'CONTO = :PERC_DESCONTO, VALOR_DESCONTO = :VALOR_DESCONTO, VALOR_' +
        'LIQUIDO = :VALOR_LIQUIDO, HORA = :HORA, MAQUINA = :MAQUINA, USUA' +
        'RIO = :USUARIO, QTD_DIAS = :QTD_DIAS, EMBARQUE = :EMBARQUE, COD_' +
        'MOTORISTA = :COD_MOTORISTA, MOTORISTA = :MOTORISTA, STATUS = :ST' +
        'ATUS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLLock.Strings = (
      'SELECT NULL FROM PEDIDOS'
      'WHERE'
      'PEDIDO = :Old_PEDIDO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LO' +
        'CAL_COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_' +
        'LIQUIDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORIS' +
        'TA, MOTORISTA, STATUS FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :PEDIDO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM PEDIDOS'
      ''
      ') q')
    Connection = UniCon
    SQL.Strings = (
      'SELECT * FROM PEDIDOS ')
    Left = 488
    Top = 304
    object FDQryListaPedidosPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object FDQryListaPedidosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object FDQryListaPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object FDQryListaPedidosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object FDQryListaPedidosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object FDQryListaPedidosLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
    end
    object FDQryListaPedidosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object FDQryListaPedidosPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object FDQryListaPedidosVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object FDQryListaPedidosVALOR_LIQUIDO: TFloatField
      FieldName = 'VALOR_LIQUIDO'
    end
    object FDQryListaPedidosHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object FDQryListaPedidosMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
    end
    object FDQryListaPedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object FDQryListaPedidosQTD_DIAS: TIntegerField
      FieldName = 'QTD_DIAS'
    end
    object FDQryListaPedidosEMBARQUE: TStringField
      FieldName = 'EMBARQUE'
      Size = 1
    end
    object FDQryListaPedidosCOD_MOTORISTA: TIntegerField
      FieldName = 'COD_MOTORISTA'
    end
    object FDQryListaPedidosMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Size = 40
    end
    object FDQryListaPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsListaPedidos: TDataSource
    DataSet = FDQryListaPedidos
    Left = 488
    Top = 376
  end
  object FDQryListaItensPedidos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDOS'
      
        '  (PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LOCAL_' +
        'COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_LIQU' +
        'IDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORISTA, ' +
        'MOTORISTA, STATUS)'
      'VALUES'
      
        '  (:PEDIDO, :CLIENTE, :NOME_CLIENTE, :DATA_EMISSAO, :VENDEDOR, :' +
        'LOCAL_COBRANCA, :VALOR_TOTAL, :PERC_DESCONTO, :VALOR_DESCONTO, :' +
        'VALOR_LIQUIDO, :HORA, :MAQUINA, :USUARIO, :QTD_DIAS, :EMBARQUE, ' +
        ':COD_MOTORISTA, :MOTORISTA, :STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLUpdate.Strings = (
      'UPDATE PEDIDOS'
      'SET'
      
        '  PEDIDO = :PEDIDO, CLIENTE = :CLIENTE, NOME_CLIENTE = :NOME_CLI' +
        'ENTE, DATA_EMISSAO = :DATA_EMISSAO, VENDEDOR = :VENDEDOR, LOCAL_' +
        'COBRANCA = :LOCAL_COBRANCA, VALOR_TOTAL = :VALOR_TOTAL, PERC_DES' +
        'CONTO = :PERC_DESCONTO, VALOR_DESCONTO = :VALOR_DESCONTO, VALOR_' +
        'LIQUIDO = :VALOR_LIQUIDO, HORA = :HORA, MAQUINA = :MAQUINA, USUA' +
        'RIO = :USUARIO, QTD_DIAS = :QTD_DIAS, EMBARQUE = :EMBARQUE, COD_' +
        'MOTORISTA = :COD_MOTORISTA, MOTORISTA = :MOTORISTA, STATUS = :ST' +
        'ATUS'
      'WHERE'
      '  PEDIDO = :Old_PEDIDO')
    SQLLock.Strings = (
      'SELECT NULL FROM PEDIDOS'
      'WHERE'
      'PEDIDO = :Old_PEDIDO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT PEDIDO, CLIENTE, NOME_CLIENTE, DATA_EMISSAO, VENDEDOR, LO' +
        'CAL_COBRANCA, VALOR_TOTAL, PERC_DESCONTO, VALOR_DESCONTO, VALOR_' +
        'LIQUIDO, HORA, MAQUINA, USUARIO, QTD_DIAS, EMBARQUE, COD_MOTORIS' +
        'TA, MOTORISTA, STATUS FROM PEDIDOS'
      'WHERE'
      '  PEDIDO = :PEDIDO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM PEDIDOS'
      ''
      ') q')
    Connection = UniCon
    SQL.Strings = (
      
        'SELECT * FROM ITENS_PEDIDO WHERE PEDIDO=:PEDIDO ORDER BY PEDIDO,' +
        'ID ')
    MasterSource = dsListaPedidos
    MasterFields = 'PEDIDO'
    DetailFields = 'PEDIDO'
    IndexFieldNames = 'PEDIDO'
    Left = 584
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEDIDO'
        Value = nil
      end>
    object FDQryListaItensPedidosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FDQryListaItensPedidosPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object FDQryListaItensPedidosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object FDQryListaItensPedidosNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 50
    end
    object FDQryListaItensPedidosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object FDQryListaItensPedidosUNID: TStringField
      FieldName = 'UNID'
      Size = 2
    end
    object FDQryListaItensPedidosVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
    end
    object FDQryListaItensPedidosVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object FDQryListaItensPedidosCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object FDQryListaItensPedidosID_TIPO_SAIDA: TIntegerField
      FieldName = 'ID_TIPO_SAIDA'
    end
    object FDQryListaItensPedidosNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Size = 10
    end
  end
  object dsListaItensPedidos: TDataSource
    DataSet = FDQryListaItensPedidos
    Left = 592
    Top = 368
  end
  object FDQryUsuario: TUniQuery
    Connection = UniCon
    SQL.Strings = (
      
        'select * from usuarios where nome=:nome and senha=:senha order b' +
        'y nome')
    Left = 808
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'senha'
        Value = nil
      end>
    object FDQryUsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FDQryUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object FDQryUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 200
    end
    object FDQryUsuarioID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
  end
  object FDQryEmpresa: TUniQuery
    Connection = UniCon
    SQL.Strings = (
      'select * from empresa order by nome_empresa')
    Active = True
    Left = 680
    Top = 312
    object FDQryEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FDQryEmpresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 30
    end
  end
  object dsQryEmpresa: TDataSource
    DataSet = FDQryEmpresa
    Left = 696
    Top = 368
  end
end
