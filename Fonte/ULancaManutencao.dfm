object FLancaManutencao: TFLancaManutencao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de Manuten'#231#245'es - Ordens de Servi'#231'o'
  ClientHeight = 580
  ClientWidth = 964
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
    Left = 59
    Top = 11
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
  object lblFornecedor: TLabel
    Left = 25
    Top = 135
    Width = 64
    Height = 13
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKmServico: TLabel
    Left = 26
    Top = 110
    Width = 63
    Height = 13
    Caption = 'Km Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblData: TLabel
    Left = 64
    Top = 85
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
  object lblOrdemServico: TLabel
    Left = 8
    Top = 60
    Width = 83
    Height = 13
    Caption = 'Ordem Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtDESVEI: TDBText
    Left = 222
    Top = 11
    Width = 227
    Height = 17
    DataField = 'DESVEI'
    DataSource = dsVeiculos
  end
  object dbtxtCID_UF: TDBText
    Left = 355
    Top = 135
    Width = 278
    Height = 17
    DataField = 'CID_UF'
    DataSource = dsFornecedor
  end
  object lblVlrTotal: TLabel
    Left = 771
    Top = 505
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
  object lblDesconto: TLabel
    Left = 507
    Top = 425
    Width = 53
    Height = 13
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblVlrDesconto1: TLabel
    Left = 747
    Top = 532
    Width = 85
    Height = 13
    Caption = 'Valor Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblVlrTotal_Desc: TLabel
    Left = 728
    Top = 559
    Width = 104
    Height = 13
    Caption = 'Valor Total C/Desc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 38
    Top = 36
    Width = 51
    Height = 13
    Caption = 'Km Atual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtKMATU: TDBText
    Left = 97
    Top = 36
    Width = 118
    Height = 17
    DataField = 'KMATU'
    DataSource = dsVeiculos
  end
  object Label2: TLabel
    Left = 8
    Top = 161
    Width = 81
    Height = 13
    Caption = 'N'#186' Documento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnNovo: TBitBtn
    Left = 860
    Top = 4
    Width = 100
    Height = 25
    Caption = 'Novo'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object dblkcbbCODVEI: TDBLookupComboBox
    Left = 94
    Top = 8
    Width = 121
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
    TabOrder = 0
    OnCloseUp = dblkcbbCODVEICloseUp
    OnKeyUp = dblkcbbCODVEIKeyUp
  end
  object dblkcbbCODFOR: TDBLookupComboBox
    Left = 94
    Top = 132
    Width = 256
    Height = 21
    DataField = 'CODFOR'
    DataSource = dsCadManut_Ger
    KeyField = 'CODFOR'
    ListField = 'DESFOR'
    ListSource = dsFornecedor
    TabOrder = 5
    OnCloseUp = dblkcbbCODFORCloseUp
    OnKeyUp = dblkcbbCODFORKeyUp
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 184
    Width = 966
    Height = 240
    TabStop = False
    DataSource = dsClientManutencao_Serv
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODSER'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMSER'
        Title.Alignment = taCenter
        Title.Caption = 'Servi'#231'o'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESSER'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 230
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATVCT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Venc.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMVCT'
        Title.Alignment = taCenter
        Title.Caption = 'Km Venc.'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMSER'
        Title.Alignment = taCenter
        Title.Caption = 'Km Servi'#231'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDSER'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Serv.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRUNI'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRUNIDES'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit C/Desc'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRDES'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Desc'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GARANTIA'
        Title.Alignment = taCenter
        Title.Caption = 'Prazo de Garantia'
        Width = 100
        Visible = True
      end>
  end
  object edtDATMAN: TDBDateEdit
    Left = 94
    Top = 82
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'DATMAN'
    DataSource = dsCadManut_Ger
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object dbedtCODMAN: TDBEdit
    Left = 94
    Top = 57
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'CODMAN'
    DataSource = dsCadManut_Ger
    ReadOnly = True
    TabOrder = 2
  end
  object edtKmSer: TCurrencyEdit
    Left = 94
    Top = 107
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Color = clInfoBk
    DisplayFormat = '###,###,##0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 6
    ParentFont = False
    TabOrder = 4
  end
  object btnConfirmar: TBitBtn
    Left = 860
    Top = 35
    Width = 100
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
    TabOrder = 9
    OnClick = btnConfirmarClick
  end
  object pnl1: TPanel
    Left = 4
    Top = 425
    Width = 498
    Height = 155
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 7
    TabStop = True
    OnEnter = pnl1Enter
    object lblServico: TLabel
      Left = 33
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescricao: TLabel
      Left = 20
      Top = 41
      Width = 55
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQuantidade: TLabel
      Left = 10
      Top = 72
      Width = 65
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVlrUnit: TLabel
      Left = 34
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Vlr.Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDesSer: TLabel
      Left = 205
      Top = 10
      Width = 3
      Height = 13
    end
    object lblGarantia: TLabel
      Left = 318
      Top = 72
      Width = 49
      Height = 13
      Caption = 'Garantia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodSer: TCurrencyEdit
      Left = 78
      Top = 7
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Alignment = taLeftJustify
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = edtCodSerExit
      OnKeyDown = edtCodSerKeyDown
    end
    object edtQtdSer: TCurrencyEdit
      Left = 78
      Top = 69
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0'
      MaxLength = 6
      TabOrder = 2
    end
    object edtVlrUni: TCurrencyEdit
      Left = 78
      Top = 101
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ',0.00'
      MaxLength = 10
      TabOrder = 3
    end
    object edtDesSer: TEdit
      Left = 78
      Top = 38
      Width = 413
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 1
    end
    object btnAdicionar: TBitBtn
      Left = 391
      Top = 124
      Width = 100
      Height = 25
      Caption = 'Adicionar'
      DoubleBuffered = True
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
      TabOrder = 5
      OnClick = btnAdicionarClick
    end
    object btnConsServico: TBitBtn
      Left = 178
      Top = 8
      Width = 19
      Height = 19
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      TabStop = False
      OnClick = btnConsServicoClick
    end
    object edtGarantia: TEdit
      Left = 370
      Top = 69
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 4
    end
  end
  object dbedtVLR_TOTAL: TDBEdit
    Left = 838
    Top = 502
    Width = 121
    Height = 21
    DataField = 'VLR_TOTAL'
    DataSource = dsClientManutencao_Serv
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object pnl2: TPanel
    Left = 507
    Top = 439
    Width = 452
    Height = 33
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 11
    object lblVlrDesconto: TLabel
      Left = 11
      Top = 7
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
    object edtVlrDesc: TCurrencyEdit
      Left = 44
      Top = 4
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = ',0.00'
      TabOrder = 0
    end
    object btnClaculaDesc: TBitBtn
      Left = 345
      Top = 2
      Width = 100
      Height = 25
      Caption = 'Calcular'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnClaculaDescClick
    end
  end
  object dbedtTOTAL_DESC: TDBEdit
    Left = 838
    Top = 529
    Width = 121
    Height = 21
    DataField = 'TOTAL_DESC'
    DataSource = dsClientManutencao_Serv
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object dbedtVLR_TOTAL_DESC: TDBEdit
    Left = 838
    Top = 556
    Width = 121
    Height = 21
    DataField = 'VLR_TOTAL_DESC'
    DataSource = dsClientManutencao_Serv
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object dbedtNUMDOC: TDBEdit
    Left = 94
    Top = 158
    Width = 121
    Height = 21
    Color = clInfoBk
    DataField = 'NUMDOC'
    DataSource = dsCadManut_Ger
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI,VEICULO.KMAT' +
        'U'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 544
    Top = 187
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
    object VeiculosKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
      DisplayFormat = '###,###,##0'
    end
  end
  object dsVeiculos: TDataSource
    DataSet = Veiculos
    Left = 704
    Top = 219
  end
  object Fornecedor: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    OnCalcFields = FornecedorCalcFields
    SQL.Strings = (
      'SELECT FORNECEDOR.CODFOR,FORNECEDOR.DESFOR,'
      'FORNECEDOR.CIDFOR,FORNECEDOR.SIGUFS'
      'FROM FORNECEDOR'
      'where FORNECEDOR.SITFOR = '#39'ATIVO'#39
      'ORDER BY FORNECEDOR.DESFOR')
    Left = 544
    Top = 243
    object FornecedorCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"FORNECEDOR"."CODFOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorDESFOR: TIBStringField
      FieldName = 'DESFOR'
      Origin = '"FORNECEDOR"."DESFOR"'
      Size = 100
    end
    object FornecedorCIDFOR: TIBStringField
      FieldName = 'CIDFOR'
      Origin = '"FORNECEDOR"."CIDFOR"'
      Size = 100
    end
    object FornecedorSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"FORNECEDOR"."SIGUFS"'
      Size = 2
    end
    object FornecedorCID_UF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CID_UF'
      Calculated = True
    end
  end
  object dsFornecedor: TDataSource
    DataSet = Fornecedor
    Left = 616
    Top = 243
  end
  object dsCadManut_Ger: TDataSource
    DataSet = DmFire.CadManut_Ger
    OnStateChange = dsCadManut_GerStateChange
    Left = 336
    Top = 235
  end
  object dsReserva: TDataSource
    Left = 560
    Top = 307
  end
  object dsClientManutencao_Serv: TDataSource
    DataSet = DmFire.ClientManutencao_Serv
    OnDataChange = dsClientManutencao_ServDataChange
    Left = 336
    Top = 283
  end
end
