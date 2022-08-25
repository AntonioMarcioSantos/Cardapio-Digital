object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'gray'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ApplicationDataModuleOptions.CreateOnDemand = True
  ConstrainForms = True
  OnSessionTimeout = UniGUIMainModuleSessionTimeout
  Height = 406
  Width = 830
  object Conn: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos_Unigui\db\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 304
    Top = 104
  end
end
