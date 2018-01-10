object FConsInfracoesMov: TFConsInfracoesMov
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Infra'#231#245'es '
  ClientHeight = 573
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
  object lblAutoInfra: TLabel
    Left = 8
    Top = 14
    Width = 78
    Height = 13
    Caption = 'Auto Infra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtCODINFRA: TDBText
    Left = 431
    Top = 67
    Width = 65
    Height = 17
    DataField = 'CODINFRA'
    DataSource = dsInfracoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPlaca: TLabel
    Left = 53
    Top = 42
    Width = 30
    Height = 13
    Caption = 'Placa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblInfracao: TLabel
    Left = 38
    Top = 67
    Width = 48
    Height = 13
    Caption = 'Infra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCondutor: TLabel
    Left = 34
    Top = 94
    Width = 52
    Height = 13
    Caption = 'Condutor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGravidade: TLabel
    Left = 553
    Top = 14
    Width = 58
    Height = 13
    Caption = 'Gravidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDataInfra: TLabel
    Left = 533
    Top = 42
    Width = 78
    Height = 13
    Caption = 'Data Infra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbla: TLabel
    Left = 746
    Top = 42
    Width = 7
    Height = 13
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 777
    Top = 504
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
    Top = 528
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
    Top = 552
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
    Left = -1
    Top = 121
    Width = 996
    Height = 377
    DataSource = dsClientConsInfracoesMov
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PLAVEI'
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
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Condutor'
        Width = 200
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
  object edtAutoInfra: TEdit
    Left = 111
    Top = 11
    Width = 121
    Height = 21
    TabStop = False
    MaxLength = 20
    TabOrder = 1
  end
  object chkPlaca: TCheckBox
    Left = 91
    Top = 41
    Width = 19
    Height = 17
    TabStop = False
    TabOrder = 2
  end
  object dblkcbbCODVEI: TDBLookupComboBox
    Left = 111
    Top = 37
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'CODVEI'
    ListField = 'PLAVEI'
    ListSource = dsVeiculos
    ParentFont = False
    TabOrder = 3
    TabStop = False
  end
  object dblkcbbCODINFRA: TDBLookupComboBox
    Left = 111
    Top = 64
    Width = 313
    Height = 21
    DataField = 'CODINFRA'
    KeyField = 'CODINFRA'
    ListField = 'DESINFRA'
    ListSource = dsInfracoes
    TabOrder = 4
    TabStop = False
    OnCloseUp = dblkcbbCODINFRACloseUp
    OnKeyUp = dblkcbbCODINFRAKeyUp
  end
  object dblkcbbCODMOT: TDBLookupComboBox
    Left = 111
    Top = 91
    Width = 313
    Height = 21
    DataField = 'CODMOT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'CODMOT'
    ListField = 'NOMMOT'
    ListSource = dsMotoristas
    ParentFont = False
    TabOrder = 5
    TabStop = False
  end
  object edtDatIni: TDateEdit
    Left = 635
    Top = 37
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object edtDatFim: TDateEdit
    Left = 767
    Top = 37
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object cbbGravidade: TComboBox
    Left = 635
    Top = 11
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 8
    TabStop = False
    Items.Strings = (
      'LEVE'
      'MEDIA'
      'GRAVE'
      'GRAVISSIMA')
  end
  object chkAutoInfra: TCheckBox
    Left = 91
    Top = 13
    Width = 17
    Height = 17
    TabStop = False
    TabOrder = 9
  end
  object chkInfracao: TCheckBox
    Left = 91
    Top = 66
    Width = 17
    Height = 17
    TabStop = False
    TabOrder = 10
  end
  object chkCondutor: TCheckBox
    Left = 91
    Top = 93
    Width = 17
    Height = 17
    TabStop = False
    TabOrder = 11
  end
  object chkDataInfra: TCheckBox
    Left = 615
    Top = 41
    Width = 17
    Height = 17
    TabStop = False
    TabOrder = 12
  end
  object chkGravidade: TCheckBox
    Left = 615
    Top = 13
    Width = 17
    Height = 17
    TabStop = False
    TabOrder = 13
  end
  object btnMostrar: TBitBtn
    Left = 888
    Top = 6
    Width = 100
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 14
    OnClick = btnMostrarClick
  end
  object dbedtvnQtdPontos: TDBEdit
    Left = 870
    Top = 525
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
    TabOrder = 15
  end
  object dbedtvnQtdInfra: TDBEdit
    Left = 870
    Top = 501
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
    TabOrder = 16
  end
  object dbedtvnVlrTotal: TDBEdit
    Left = 870
    Top = 549
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
    TabOrder = 17
  end
  object pnl1: TPanel
    Left = -1
    Top = 497
    Width = 218
    Height = 77
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 18
    object btnAbrir: TBitBtn
      Left = 4
      Top = 4
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
    object btnNovo: TBitBtn
      Left = 108
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888777777778888888800008800
        00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
        0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
        FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
        44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
        0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
        000A00080000888888880000770A088800008888888888888800088800008888
        88888888888888880000}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnNovoClick
    end
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 592
    Top = 264
    object VeiculosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VeiculosDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object VeiculosPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
  end
  object dsVeiculos: TDataSource
    DataSet = Veiculos
    Left = 592
    Top = 312
  end
  object Infracoes: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT infracoes_cad.codinfra, infracoes_cad.desinfra, infracoes' +
        '_cad.qtd_pontos'
      'FROM infracoes_cad'
      'ORDER BY infracoes_cad.desinfra')
    Left = 766
    Top = 264
    object InfracoesCODINFRA: TIBStringField
      FieldName = 'CODINFRA'
      Origin = '"INFRACOES_CAD"."CODINFRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object InfracoesDESINFRA: TIBStringField
      FieldName = 'DESINFRA'
      Origin = '"INFRACOES_CAD"."DESINFRA"'
      Size = 200
    end
    object InfracoesQTD_PONTOS: TIntegerField
      FieldName = 'QTD_PONTOS'
      Origin = '"INFRACOES_CAD"."QTD_PONTOS"'
    end
  end
  object dsInfracoes: TDataSource
    DataSet = Infracoes
    Left = 766
    Top = 312
  end
  object Motoristas: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT MOTORISTA.codmot, MOTORISTA.nommot,motorista.foto,'
      'MOTORISTA.TIPMOT'
      'FROM'
      'motorista'
      'WHERE'
      'MOTORISTA.sitmot = '#39'ATIVO'#39
      'ORDER BY MOTORISTA.nommot')
    Left = 676
    Top = 263
    object MotoristasCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MotoristasNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object MotoristasFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object MotoristasTIPMOT: TIBStringField
      FieldName = 'TIPMOT'
      Origin = '"MOTORISTA"."TIPMOT"'
    end
  end
  object dsMotoristas: TDataSource
    DataSet = Motoristas
    Left = 676
    Top = 311
  end
  object dsReserva: TDataSource
    Left = 844
    Top = 296
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 320
    Top = 312
  end
  object dsClientConsInfracoesMov: TDataSource
    DataSet = DmFire.ClientConsInfracoesMov
    Left = 504
    Top = 280
  end
end
