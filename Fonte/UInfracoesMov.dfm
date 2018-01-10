object FInfracoesMov: TFInfracoesMov
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de Infra'#231#245'es'
  ClientHeight = 398
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 6
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Auto Infra'#231#227'o'
    FocusControl = dbedtAUTOINFRA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 36
    Top = 43
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
  object lbl5: TLabel
    Left = 57
    Top = 71
    Width = 27
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 57
    Top = 98
    Width = 27
    Height = 13
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 55
    Top = 125
    Width = 29
    Height = 13
    Caption = 'Local'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 46
    Top = 152
    Width = 38
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 337
    Top = 152
    Width = 14
    Height = 13
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 632
    Top = 21
    Width = 40
    Height = 13
    Caption = 'Ve'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 620
    Top = 57
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
  object imgCondutor: TImage
    Left = 730
    Top = 85
    Width = 186
    Height = 139
    Proportional = True
  end
  object lbl18: TLabel
    Left = 11
    Top = 316
    Width = 73
    Height = 13
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCONDUTOR_CONF: TLabel
    Left = 13
    Top = 260
    Width = 120
    Height = 13
    Caption = 'Condutor Confirmado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDATVCT_CONDUT: TLabel
    Left = 224
    Top = 260
    Width = 164
    Height = 13
    Caption = 'Prazo Identifica'#231#227'o Condutor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 55
    Top = 179
    Width = 29
    Height = 13
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 252
    Top = 179
    Width = 98
    Height = 13
    Caption = 'Valor C/Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl14: TLabel
    Left = 17
    Top = 205
    Width = 67
    Height = 13
    Caption = 'Vencimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblENVIO_CONF: TLabel
    Left = 35
    Top = 287
    Width = 98
    Height = 13
    Caption = 'Envio Confirmado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDATENVIO: TLabel
    Left = 329
    Top = 287
    Width = 60
    Height = 13
    Caption = 'Data Envio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIN_CONDUTOR: TLabel
    Left = 17
    Top = 232
    Width = 116
    Height = 13
    Caption = 'Infra'#231#227'o C/Condutor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbedtAUTOINFRA: TDBEdit
    Left = 88
    Top = 13
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AUTOINFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 0
  end
  object dbedtHORINFRA: TDBEdit
    Left = 88
    Top = 95
    Width = 121
    Height = 21
    DataField = 'HORINFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 4
  end
  object dbedtLOCAL_INFRA: TDBEdit
    Left = 88
    Top = 122
    Width = 500
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOCAL_INFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 5
  end
  object dbedtCID_INFRA: TDBEdit
    Left = 88
    Top = 149
    Width = 240
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CID_INFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 6
  end
  object dbedtSIGUFS: TDBEdit
    Left = 355
    Top = 149
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SIGUFS'
    DataSource = dsCadInfracoesMov
    TabOrder = 7
  end
  object dbedtVLRINFRA: TDBEdit
    Left = 89
    Top = 176
    Width = 121
    Height = 21
    DataField = 'VLRINFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 8
  end
  object dbedtVLRINFRADESC: TDBEdit
    Left = 355
    Top = 176
    Width = 121
    Height = 21
    DataField = 'VLRINFRADESC'
    DataSource = dsCadInfracoesMov
    TabOrder = 9
  end
  object dblkcbbCODINFRA: TDBLookupComboBox
    Left = 192
    Top = 40
    Width = 396
    Height = 21
    DataField = 'CODINFRA'
    DataSource = dsCadInfracoesMov
    KeyField = 'CODINFRA'
    ListField = 'DESINFRA'
    ListSource = dsInfracoes
    TabOrder = 2
    TabStop = False
  end
  object dblkcbbCODVEI: TDBLookupComboBox
    Left = 677
    Top = 13
    Width = 144
    Height = 31
    Color = clInfoBk
    DataField = 'CODVEI'
    DataSource = dsCadInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'CODVEI'
    ListField = 'PLAVEI'
    ListSource = dsVeiculos
    ParentFont = False
    TabOrder = 16
  end
  object dblkcbbCODMOT: TDBLookupComboBox
    Left = 678
    Top = 54
    Width = 287
    Height = 21
    Color = clInfoBk
    DataField = 'CODMOT'
    DataSource = dsCadInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'CODMOT'
    ListField = 'NOMMOT'
    ListSource = dsMotoristas
    ParentFont = False
    TabOrder = 17
    OnCloseUp = dblkcbbCODMOTCloseUp
    OnKeyUp = dblkcbbCODMOTKeyUp
  end
  object dbmmoOBSINFRA: TDBMemo
    Left = 89
    Top = 313
    Width = 499
    Height = 41
    TabStop = False
    DataField = 'OBSINFRA'
    DataSource = dsCadInfracoesMov
    TabOrder = 18
    OnKeyPress = dbmmoOBSINFRAKeyPress
  end
  object dbcbbCONDUTOR_CONF: TDBComboBox
    Left = 139
    Top = 257
    Width = 70
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'CONDUTOR_CONF'
    DataSource = dsCadInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'NAO'
      'SIM')
    ParentFont = False
    TabOrder = 12
  end
  object dbcbbENVIO_CONF: TDBComboBox
    Left = 139
    Top = 284
    Width = 70
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'ENVIO_CONF'
    DataSource = dsCadInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'NAO'
      'SIM')
    ParentFont = False
    TabOrder = 14
  end
  object edtDATVCT_CONDUT: TDBDateEdit
    Left = 395
    Top = 257
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'DATVCT_CONDUT'
    DataSource = dsCadInfracoesMov
    NumGlyphs = 2
    TabOrder = 13
  end
  object edtDATVCT: TDBDateEdit
    Left = 88
    Top = 202
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'DATVCT'
    DataSource = dsCadInfracoesMov
    NumGlyphs = 2
    TabOrder = 10
  end
  object edtDATENVIO: TDBDateEdit
    Left = 395
    Top = 284
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'DATENVIO'
    DataSource = dsCadInfracoesMov
    NumGlyphs = 2
    TabOrder = 15
  end
  object edtDATINFRA: TDBDateEdit
    Left = 89
    Top = 68
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'DATINFRA'
    DataSource = dsCadInfracoesMov
    NumGlyphs = 2
    TabOrder = 3
  end
  object dbcbbIN_CONDUTOR: TDBComboBox
    Left = 139
    Top = 229
    Width = 70
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'IN_CONDUTOR'
    DataSource = dsCadInfracoesMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'SIM'
      'NAO')
    ParentFont = False
    TabOrder = 11
  end
  object pnl1: TPanel
    Left = 0
    Top = 363
    Width = 978
    Height = 35
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 19
    object btnAlterar: TBitBtn
      Left = 310
      Top = 3
      Width = 85
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
      TabOrder = 0
      TabStop = False
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 402
      Top = 3
      Width = 85
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
      TabOrder = 1
      TabStop = False
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 494
      Top = 3
      Width = 85
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400000099FF0404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000FFFF0404040004040400040404003333
        CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404003333
        CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
        040004040400040404000000FFFF040404000404040004040400040404000404
        04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
        0400040404000000FFFF04040400040404000404040004040400040404000404
        0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
        04000000FFFF000099FF04040400040404000404040004040400040404000404
        040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
        FFFF000099FF0404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
        99FF040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
        0400040404000404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
        99FF040404000404040004040400040404000404040004040400040404000404
        040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
        CCFF000099FF0404040004040400040404000404040004040400040404000404
        04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
        04000000CCFF000099FF04040400040404000404040004040400040404000000
        CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
        0400040404000000CCFF000099FF040404000404040004040400040404006666
        99FF0000CCFF666699FF04040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400}
      ParentDoubleBuffered = False
      TabOrder = 2
      TabStop = False
      OnClick = btnCancelarClick
    end
    object btnConfirmar: TBitBtn
      Left = 586
      Top = 3
      Width = 85
      Height = 25
      Caption = 'Confirmar'
      DoubleBuffered = True
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
        33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
        CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
        FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
        CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
        8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
        3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
        C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
        3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
        0000833333338888888888883333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
  end
  object dblkcbbCODINFRA1: TDBLookupComboBox
    Left = 88
    Top = 40
    Width = 96
    Height = 21
    DataField = 'CODINFRA'
    DataSource = dsCadInfracoesMov
    KeyField = 'CODINFRA'
    ListField = 'CODINFRA'
    ListSource = dsInfracoes
    TabOrder = 1
  end
  object dsCadInfracoesMov: TDataSource
    DataSet = DmFire.CadInfracoesMov
    OnStateChange = dsCadInfracoesMovStateChange
    OnDataChange = dsCadInfracoesMovDataChange
    Left = 652
    Top = 152
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
    Left = 772
    Top = 240
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
    Left = 772
    Top = 288
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 836
    Top = 240
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
    Left = 836
    Top = 288
  end
  object Infracoes: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT infracoes_cad.codinfra, infracoes_cad.desinfra, infracoes' +
        '_cad.qtd_pontos'
      'FROM infracoes_cad'
      'ORDER BY infracoes_cad.desinfra')
    Left = 900
    Top = 240
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
    Left = 900
    Top = 288
  end
  object dsReserva: TDataSource
    Left = 684
    Top = 248
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 584
    Top = 240
  end
end
