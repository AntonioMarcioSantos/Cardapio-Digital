object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  BGColor = 1316380
  UseGlobalImageCache = False
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap' +
      '.min.css'
    'https://use.fontawesome.com/releases/v5.8.1/css/all.css'
    ''
    '/files/css/btn-bootstrap-fontawesome.min.css'
    ''
    '')
  CustomCSS.Strings = (
    '.transparencia {'
    ' backgroud-color: #414141 !important;'
    ' backgroud: transparent !important;'
    ' opacity: 0.2; '
    '}'
    ''
    '.pnLogin {'
    ''
    '    overflow: hidden;'
    '    animation: fade 0.4s;'
    '    border-radius: 5px !important;'
    '    margin: auto;'
    '    background: #d8d8d8 !important;'
    '    background-color: #d8d8d8 !important; '
    '    opacity: 0.6;      '
    '          '
    '}'
    ''
    
      '.x-treelist-nav {                      /* Aqui ira determina a C' +
      'OR DE Fundo do menu */'
    '    background: #424949 !important;'
    '    background-color: #424949 !important; '
    '   '
    ''
    '    background-position: 24px 0% !important;'
    '    padding: 0 0 0 0;'
    '    borde:none ;'
    '    overflow: auto !important;'
    
      '    scrollbar-width: thin;             /*estilo do scrool para o' +
      ' mozilla  */'
    
      '    scrollbar-color: #adb3b8 #516579;  /*estilo do scrool para o' +
      ' mozilla  */'
    ''
    '}'
    ''
    '.x-treelist-nav::-webkit-scrollbar {width: 7px; height:7px; '
    'background:#516579;}'
    
      '.x-treelist-nav::-webkit-scrollbar-track {background: rgba(0,0,0' +
      ',0.1);}'
    
      '.x-treelist-nav::-webkit-scrollbar-thumb {border-radius: 7px; he' +
      'ight:7px; '
    'background:#adb3b8;}'
    ''
    ' .x-treelist-nav .x-treelist-item-text {'
    '  /* menu lado Esquerdo */'
    '  color: #adb3b8;     /* cor da letra do menu */'
    
      '  margin-left: 27px;  /* 27 espa'#231'amento da esquerda para direita' +
      ' dos Itens do menu */'
    
      '  margin-right: 26px; /* espa'#231'amento da esquerda para direita do' +
      's Grupos do menu */'
    '  font-size: 13px;    /* tamanho das letras */'
    '  line-height: 34px;  /* altura da linha do menu */'
    '}'
    ''
    
      '.x-treelist-nav .x-treelist-item-icon:before, .x-treelist-nav .x' +
      '-treelist-item-tool:before, .x-treelist-nav .x-treelist-item-exp' +
      'ander {'
    '    line-height: 34px;   /* 44 '#233' o padrao */'
    ''
    '}'
    ''
    ''
    '.pace {'
    '  -webkit-pointer-events: none;'
    '  pointer-events: none;'
    ''
    '  -webkit-user-select: none;'
    '  -moz-user-select: none;'
    '  user-select: none;'
    '}'
    ''
    '.pace .pace-activity {'
    '  display: block;'
    '  position: fixed;'
    '  z-index: 2000;'
    '  top: 0;'
    '  right: 0;'
    '  width: 300px;'
    '  height: 300px;'
    '  background: #8844ee ;'
    '  -webkit-transition: -webkit-transform 0.3s;'
    '  transition: transform 0.3s;'
    
      '  -webkit-transform: translateX(100%) translateY(-100%) rotate(4' +
      '5deg);'
    '  transform: translateX(100%) translateY(-100%) rotate(45deg);'
    '  pointer-events: none;'
    '}'
    ''
    ''
    '')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 463
  Width = 620
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 408
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 408
    Top = 168
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 408
    Top = 232
  end
end
