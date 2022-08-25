object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Gerador de QRCode'
  ClientHeight = 409
  ClientWidth = 528
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 109
    Width = 23
    Height = 13
    Caption = 'Link'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 41
    Align = alTop
    Caption = 'Gerador de QRCode'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 96
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 386
    Width = 528
    Height = 23
    Align = alBottom
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 384
  end
  object Button1: TButton
    Left = 152
    Top = 184
    Width = 241
    Height = 41
    Caption = 'Gerar QRCode'
    TabOrder = 2
    OnClick = Button1Click
  end
  object EdtLink: TEdit
    Left = 80
    Top = 128
    Width = 385
    Height = 21
    TabOrder = 3
  end
  object frxReport1: TfrxReport
    Version = '6.3.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44145.924520601900000000
    ReportOptions.LastChange = 44145.924520601900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 128
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 375.905690000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 268.346630000000000000
          Height = 336.378170000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 245.669450000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Baskerville Old Face'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SEJA BEM VINDO!')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 302.362400000000000000
          Width = 245.669450000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Lucida Fax'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CARD'#193'PIO DIGITAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 355.275820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Height = 374.173470000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 3.779530000000000000
          Height = 374.173470000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 264.141930000000000000
          Top = 75.590600000000000000
          Width = 192.538918430000000000
          Height = 192.538918430000000000
          Hyperlink.Value = 'http://menu.inovadoradigital.com.br'
          StretchMode = smActualHeight
          AutoSize = False
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          Text = 'http://149.56.164.118:8078'
          Zoom = 1.925389184300000000
          FontScaled = True
          QuietZone = 0
        end
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 408
    Top = 56
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 416
    Top = 248
  end
end
