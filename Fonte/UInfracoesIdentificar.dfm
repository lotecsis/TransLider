object FInfracoesIdentificar: TFInfracoesIdentificar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Identificar Condutor de Infra'#231#245'es'
  ClientHeight = 554
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 4
    Width = 328
    Height = 23
    Caption = 'Identifica'#231#227'o de Condutores em Aberto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 777
    Top = 487
    Width = 87
    Height = 13
    Caption = 'Qtde. Infra'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 753
    Top = 511
    Width = 111
    Height = 13
    Caption = 'Pontos Acumulados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 803
    Top = 534
    Width = 61
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -2
    Top = 33
    Width = 996
    Height = 448
    DataSource = dsClientConsInfracoesMov
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'PLAVEI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Placa'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AUTOINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Auto Infra.'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Infra.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Infra.'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Condutor'
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATVCT_CONDUT'
        Title.Alignment = taCenter
        Title.Caption = 'Identificar At'#233
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdDiasIdentCondut'
        Title.Alignment = taCenter
        Title.Caption = 'Dias P/Identificar'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CONDUTOR_CONF'
        Title.Alignment = taCenter
        Title.Caption = 'Condutor Conf.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ENVIO_CONF'
        Title.Alignment = taCenter
        Title.Caption = 'Envio Conf.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Infra.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HORINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Infra.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL_INFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Local'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_INFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGUFS'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRINFRADESC'
        Title.Alignment = taCenter
        Title.Caption = 'Valor C/Desc.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATVCT'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_PONTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Pontos'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RESPONSABILIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Responsabilidade'
        Width = 121
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 150
        Visible = True
      end>
  end
  object dbedtvnQtdPontos: TDBEdit
    Left = 870
    Top = 508
    Width = 121
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnQtdPontos'
    DataSource = dsClientConsInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object dbedtvnQtdInfra: TDBEdit
    Left = 870
    Top = 484
    Width = 121
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnQtdInfra'
    DataSource = dsClientConsInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbedtvnVlrTotal: TDBEdit
    Left = 870
    Top = 531
    Width = 121
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnVlrTotal'
    DataSource = dsClientConsInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object pnl1: TPanel
    Left = -1
    Top = 480
    Width = 113
    Height = 75
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 4
    object btnAbrir: TBitBtn
      Left = 4
      Top = 3
      Width = 100
      Height = 25
      Caption = 'Abrir'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
        555555777777777FF5555500000000805555557777777777FF555550BBBBB008
        05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
        005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
        055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
        055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
        05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
        05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
        005555555775FFFF77F555555570000000555555555777777755}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      TabStop = False
      OnClick = btnAbrirClick
    end
  end
  object dsClientConsInfracoesMov: TDataSource
    DataSet = DmFire.ClientConsInfracoesMov
    Left = 504
    Top = 280
  end
end
