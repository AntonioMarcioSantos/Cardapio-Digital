object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'For'#231'a de Vendas'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    '/files/bg-img.js'
    '/files/bg-img.css'
    ''
    '')
  CustomCSS.Strings = (
    '.righttoleft{'
    '  direction:RTL;  '
    '  text-align: right;'
    '}'
    ''
    '.x-listitem-inner-el {'
    '    display: block !important;'
    '    flex: 1 1 auto !important;'
    '}'
    ''
    ''
    '.roundborda{'
    '  margin: 5px !important;'
    '  border: 1px solid blue !important;'
    '  border-radius: 6px 6px 6px 6px !important;'
    '}')
  CustomMeta.Strings = (
    
      '<meta http-equiv="Content-Type" content="text/html; charset=utf-' +
      '8">'
    
      '<script async="" src="https://www.googletagmanager.com/gtag/js?i' +
      'd=G-QS3HRJ32JD"></script><meta name="viewport" content="width=de' +
      'vice-width, initial-scale=1">'
    '<meta name="msapplication-TileColor" content="#1b4d7e">'
    '<meta name="msapplication-navbutton-color" content="#1b4d7e">'
    '<meta name="theme-color" content="#1b4d7e">'
    
      '<meta name="apple-mobile-web-app-status-bar-style" content="#1b4' +
      'd7e">'
    '<link rel="SHORTCUT ICON" href="/favicon.ico">'
    '<link rel='#39'manifest'#39' href='#39'/files/manifest.json'#39'>'
    
      '<link rel="stylesheet" href="https://pro.fontawesome.com/release' +
      's/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w' +
      '35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymou' +
      's"/>'
    
      '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1' +
      '/jquery.min.js"></script>'
    ''
    ''
    '<script>'
    ''
    '    function ev_ChamaExibeProduto(){'
    '         ajaxRequest(MainmForm.ListProdutos,"ExibeDetalhe",[]);'
    '    }   '
    '    '
    '    function ev_ChamaDeletaItens(){'
    '         ajaxRequest(MainmForm.ListItens,"DeletaItens",[]);'
    '    }      '
    '     '
    '</script>'
    ''
    ''
    ''
    ''
    ''
    ''
    '')
  ServerMessages.UnavailableErrMsg = 'Erro de Comunica'#231#227'o'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  Options = [soAutoPlatformSwitch, soWipeShadowSessions, soLogSessionCreate, soLogSessionTerminate, soDontCompressDownloads]
  ConnectionFailureRecovery.ErrorMessage = 'Sistema sem Conex'#227'o'
  ConnectionFailureRecovery.RetryMessage = 'tentando reconectar'
  Height = 316
  Width = 618
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 333
    Top = 113
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 208
    Top = 113
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 445
    Top = 113
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 368
    Top = 200
  end
end
