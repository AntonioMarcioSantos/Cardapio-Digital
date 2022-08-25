object FormBase: TFormBase
  Left = 0
  Top = 0
  ClientHeight = 261
  ClientWidth = 484
  Caption = 'Form Base'
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnKeyDown = UniFormKeyDown
  BorderIcons = [biSystemMenu]
  KeyPreview = True
  NavigateKeys.Enabled = True
  NavigateKeys.Next.Key = 13
  NavigateKeys.SelectText = True
  MonitoredKeys.KeyEnableAll = True
  MonitoredKeys.Keys = <
    item
      KeyStart = 27
      KeyEnd = 27
      HandleBrowser = False
    end
    item
      KeyStart = 123
      KeyEnd = 13
      HandleBrowser = False
    end
    item
      KeyStart = 116
      KeyEnd = 123
      HandleBrowser = False
    end
    item
      KeyStart = 37
      KeyEnd = 40
      HandleBrowser = False
    end>
  Font.Height = -15
  LayoutConfig.Cls = 'form-border-none'
  PixelsPerInch = 96
  TextHeight = 18
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 199
    Width = 484
    Height = 62
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    LayoutConfig.Cls = 'form-bottom'
  end
end
