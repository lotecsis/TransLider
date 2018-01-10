object FRelacaoEntrada_Saida: TFRelacaoEntrada_Saida
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Entradas e Sa'#237'das de Ve'#237'culos'
  ClientHeight = 588
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
  object lblPlaca: TLabel
    Left = 29
    Top = 16
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
  object lblCarga: TLabel
    Left = 253
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Carga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDataChegada: TLabel
    Left = 433
    Top = 50
    Width = 79
    Height = 13
    Caption = 'Data Chegada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDataSaida: TLabel
    Left = 433
    Top = 16
    Width = 61
    Height = 13
    Caption = 'Data Sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMotorista: TLabel
    Left = 29
    Top = 50
    Width = 55
    Height = 13
    Caption = 'Motorista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblADatSaida: TLabel
    Left = 628
    Top = 16
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
  object lblADatChegada: TLabel
    Left = 628
    Top = 50
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
    Left = 803
    Top = 557
    Width = 50
    Height = 13
    Caption = 'Total Km'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 80
    Width = 996
    Height = 464
    DataSource = dsClientRelacaoEntradaSaida
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Sa'#237'da'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATENT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Chegada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HORSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Sa'#237'da'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HORENT'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Chegada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Km Sa'#237'da'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMENT'
        Title.Alignment = taCenter
        Title.Caption = 'Km Chegada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnTotalRodado'
        Title.Alignment = taCenter
        Title.Caption = 'Total Rodado'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESTINO'
        Title.Alignment = taCenter
        Title.Caption = 'Destino'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Motorista'
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CARGA'
        Title.Alignment = taCenter
        Title.Caption = 'Carga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Ve'#237'culo'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PLAVEI_CARRETA'
        Title.Alignment = taCenter
        Title.Caption = 'Placa Carreta'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USUARIO_SAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio Sa'#237'da'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USUARIO_ENT'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio Chegada'
        Width = 150
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 886
    Top = 8
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
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object chkPlaca: TCheckBox
    Left = 13
    Top = 15
    Width = 15
    Height = 17
    TabOrder = 2
  end
  object dblkcbbPlaca: TDBLookupComboBox
    Left = 65
    Top = 12
    Width = 145
    Height = 21
    Color = clInfoBk
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
  end
  object chkCarga: TCheckBox
    Left = 236
    Top = 15
    Width = 15
    Height = 17
    TabOrder = 4
  end
  object edtCarga: TCurrencyEdit
    Left = 290
    Top = 12
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Color = clInfoBk
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object chkDataChegada: TCheckBox
    Left = 415
    Top = 49
    Width = 15
    Height = 17
    TabOrder = 6
  end
  object edtDatChegadaIni: TDateEdit
    Left = 517
    Top = 47
    Width = 100
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 7
  end
  object edtDatChegadaFim: TDateEdit
    Left = 646
    Top = 47
    Width = 100
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 8
  end
  object edtDatSaidaIni: TDateEdit
    Left = 517
    Top = 12
    Width = 100
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object edtDatSaidaFim: TDateEdit
    Left = 646
    Top = 12
    Width = 100
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 10
  end
  object chkDataSaida: TCheckBox
    Left = 415
    Top = 14
    Width = 15
    Height = 17
    TabOrder = 11
  end
  object chkMotorista: TCheckBox
    Left = 13
    Top = 49
    Width = 15
    Height = 17
    TabOrder = 12
  end
  object dblkcbbCODMOT: TDBLookupComboBox
    Left = 89
    Top = 47
    Width = 301
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'CODMOT'
    ListField = 'NOMMOT'
    ListSource = dsMotoristas
    ParentFont = False
    TabOrder = 13
  end
  object dbedtvnTotalRodadoGeral: TDBEdit
    Left = 859
    Top = 554
    Width = 121
    Height = 21
    DataField = 'vnTotalRodadoGeral'
    DataSource = dsClientRelacaoEntradaSaida
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object btnExcluir: TBitBtn
    Left = 7
    Top = 552
    Width = 100
    Height = 25
    Caption = 'Excluir'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 15
    OnClick = btnExcluirClick
  end
  object btnAlterar: TBitBtn
    Left = 113
    Top = 552
    Width = 100
    Height = 25
    Caption = 'Alterar'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 16
    OnClick = btnAlterarClick
  end
  object ProviderRelacaoEntradaSaida: TDataSetProvider
    DataSet = DmFire.RelacaoEntradaSaida
    Left = 592
    Top = 200
  end
  object ClientRelacaoEntradaSaida: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderRelacaoEntradaSaida'
    OnCalcFields = ClientRelacaoEntradaSaidaCalcFields
    Left = 592
    Top = 272
    object ClientRelacaoEntradaSaidaSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Required = True
    end
    object ClientRelacaoEntradaSaidaCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientRelacaoEntradaSaidaUSUENT: TIntegerField
      FieldName = 'USUENT'
    end
    object ClientRelacaoEntradaSaidaUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
    end
    object ClientRelacaoEntradaSaidaCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientRelacaoEntradaSaidaDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
    end
    object ClientRelacaoEntradaSaidaHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
    end
    object ClientRelacaoEntradaSaidaKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidaDATENT: TDateField
      FieldName = 'DATENT'
    end
    object ClientRelacaoEntradaSaidaHORENT: TTimeField
      FieldName = 'HORENT'
    end
    object ClientRelacaoEntradaSaidaKMENT: TIntegerField
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaCARGA: TIntegerField
      FieldName = 'CARGA'
    end
    object ClientRelacaoEntradaSaidaCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object ClientRelacaoEntradaSaidaIN_ENGATADO: TWideStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
    end
    object ClientRelacaoEntradaSaidaDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
    end
    object ClientRelacaoEntradaSaidaMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
    end
    object ClientRelacaoEntradaSaidaITESEL: TWideStringField
      FieldName = 'ITESEL'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientRelacaoEntradaSaidaDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientRelacaoEntradaSaidaNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaAPEMOT: TWideStringField
      FieldName = 'APEMOT'
      Size = 50
    end
    object ClientRelacaoEntradaSaidaFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientRelacaoEntradaSaidaUSUARIO_SAIDA: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaUSUARIO_ENT: TWideStringField
      FieldName = 'USUARIO_ENT'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaPLAVEI_CARRETA: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Size = 15
    end
    object ClientRelacaoEntradaSaidavnTotalRodado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidavnTotalRodadoGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalRodadoGeral'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnTotalRodado)'
    end
  end
  object dsClientRelacaoEntradaSaida: TDataSource
    DataSet = ClientRelacaoEntradaSaida
    Left = 600
    Top = 344
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
    Left = 424
    Top = 144
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
    Left = 424
    Top = 192
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI,VEICULO.SITV' +
        'EI'
      'FROM VEICULO'
      'WHERE'
      'VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 312
    Top = 152
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
    object VeiculosSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
  end
  object dsVeiculos: TDataSource
    DataSet = Veiculos
    Left = 312
    Top = 208
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 384
    Top = 312
  end
end
