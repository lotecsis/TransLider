object FAlteraOrdemServico: TFAlteraOrdemServico
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Altera'#231#227'o de Ordem de Servi'#231'o'
  ClientHeight = 476
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
  object lblVlrTotal: TLabel
    Left = 801
    Top = 401
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
  object lblVlrDesconto1: TLabel
    Left = 777
    Top = 427
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
    Left = 758
    Top = 453
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
  object dbg1: TDBGrid
    Left = -1
    Top = 162
    Width = 996
    Height = 225
    TabStop = False
    DataSource = dsClientManutencao_ServAlt
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = dbg1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODSER'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMSER'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Servi'#231'o'
        Width = 230
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
      end>
  end
  object dbedtVLR_TOTAL: TDBEdit
    Left = 868
    Top = 398
    Width = 121
    Height = 21
    DataField = 'VLR_TOTAL'
    DataSource = dsClientManutencao_ServAlt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object dbedtTOTAL_DESC: TDBEdit
    Left = 868
    Top = 424
    Width = 121
    Height = 21
    DataField = 'TOTAL_DESC'
    DataSource = dsClientManutencao_ServAlt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dbedtVLR_TOTAL_DESC: TDBEdit
    Left = 868
    Top = 450
    Width = 121
    Height = 21
    DataField = 'VLR_TOTAL_DESC'
    DataSource = dsClientManutencao_ServAlt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnl1: TPanel
    Left = -1
    Top = 0
    Width = 632
    Height = 163
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 4
    object lblPlaca: TLabel
      Left = 61
      Top = 8
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
      Left = 27
      Top = 111
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
    object dbtxtCID_UF: TDBText
      Left = 352
      Top = 111
      Width = 201
      Height = 17
      DataField = 'CID_UF'
      DataSource = dsFornecedor
    end
    object lbl1: TLabel
      Left = 8
      Top = 33
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
    object lblKmServico: TLabel
      Left = 26
      Top = 85
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
      Top = 59
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
    object Label1: TLabel
      Left = 10
      Top = 139
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
    object dblkcbbCODFOR: TDBLookupComboBox
      Left = 94
      Top = 108
      Width = 256
      Height = 21
      DataField = 'CODFOR'
      DataSource = dsCadManut_Ger
      KeyField = 'CODFOR'
      ListField = 'DESFOR'
      ListSource = dsFornecedor
      TabOrder = 1
      OnCloseUp = dblkcbbCODFORCloseUp
      OnKeyUp = dblkcbbCODFORKeyUp
    end
    object edtOrdemServico: TCurrencyEdit
      Left = 94
      Top = 30
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0'
      TabOrder = 2
      OnExit = edtOrdemServicoExit
    end
    object edtDATMAN: TDBDateEdit
      Left = 94
      Top = 56
      Width = 121
      Height = 21
      Margins.Left = 1
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
    object edtKmSer: TCurrencyEdit
      Left = 94
      Top = 82
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
    object btnAtualizar: TBitBtn
      Left = 528
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Atualizar'
      DoubleBuffered = True
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000C30E0000C30E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
        1D007666280000450000013E450013286A006A39850085324A00040404000808
        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
        0000000039009B00000000250000000049003B111100002F000000005D004517
        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
        0F0F0F0F0F0F0F000000}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = btnAtualizarClick
    end
    object edtPlaVei: TEdit
      Left = 94
      Top = 4
      Width = 121
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbedtNUMDOC: TDBEdit
      Left = 94
      Top = 134
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
  end
  object btnConfirmarAtu: TBitBtn
    Left = 848
    Top = 5
    Width = 141
    Height = 25
    Caption = 'Confirmar Atualiza'#231#227'o'
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
    TabOrder = 5
    OnClick = btnConfirmarAtuClick
  end
  object btnCancelarAlt: TBitBtn
    Left = 848
    Top = 35
    Width = 141
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
    TabOrder = 6
    OnClick = btnCancelarAltClick
  end
  object dsVeiculos: TDataSource
    DataSet = Veiculos
    Left = 648
    Top = 195
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 503
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
  end
  object dsReserva: TDataSource
    Left = 568
    Top = 187
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
    Left = 504
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
    Left = 568
    Top = 243
  end
  object dsCadManut_Ger: TDataSource
    DataSet = DmFire.CadManut_Ger
    Left = 400
    Top = 195
  end
  object dsClientManutencao_ServAlt: TDataSource
    DataSet = DmFire.ClientManutencao_ServAlt
    Left = 336
    Top = 249
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 688
    Top = 281
  end
  object Manut_ServPeriodico: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT manut_serv.*,'
      '       servico.limite_km,servico.limite_dias'
      'FROM manut_serv'
      'inner join servico on servico.codser = manut_serv.codser'
      'where'
      'manut_serv.codman = :codman and'
      'manut_serv.codvei = :codvei and'
      'manut_serv.codser = :codser and'
      'manut_serv.sitser = '#39'ABERTO'#39)
    Left = 392
    Top = 321
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODMAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codser'
        ParamType = ptUnknown
      end>
    object Manut_ServPeriodicoCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_SERV"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Manut_ServPeriodicoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_SERV"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Manut_ServPeriodicoSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = '"MANUT_SERV"."SEQSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Manut_ServPeriodicoCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"MANUT_SERV"."CODSER"'
      Required = True
    end
    object Manut_ServPeriodicoDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"MANUT_SERV"."DESSER"'
      Size = 200
    end
    object Manut_ServPeriodicoDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"MANUT_SERV"."DATVCT"'
    end
    object Manut_ServPeriodicoKMVCT: TIntegerField
      FieldName = 'KMVCT'
      Origin = '"MANUT_SERV"."KMVCT"'
    end
    object Manut_ServPeriodicoDATSER: TDateField
      FieldName = 'DATSER'
      Origin = '"MANUT_SERV"."DATSER"'
    end
    object Manut_ServPeriodicoKMSER: TIntegerField
      FieldName = 'KMSER'
      Origin = '"MANUT_SERV"."KMSER"'
    end
    object Manut_ServPeriodicoQTDSER: TFloatField
      FieldName = 'QTDSER'
      Origin = '"MANUT_SERV"."QTDSER"'
    end
    object Manut_ServPeriodicoVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      Origin = '"MANUT_SERV"."VLRUNI"'
    end
    object Manut_ServPeriodicoVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      Origin = '"MANUT_SERV"."VLRUNIDES"'
    end
    object Manut_ServPeriodicoVLRDES: TFloatField
      FieldName = 'VLRDES'
      Origin = '"MANUT_SERV"."VLRDES"'
    end
    object Manut_ServPeriodicoSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"MANUT_SERV"."SITSER"'
      Size = 10
    end
    object Manut_ServPeriodicoVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      Origin = '"MANUT_SERV"."VLRTOT"'
    end
    object Manut_ServPeriodicoTIPSER: TIBStringField
      FieldName = 'TIPSER'
      Origin = '"MANUT_SERV"."TIPSER"'
      Size = 50
    end
    object Manut_ServPeriodicoNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_SERV"."NUMORDEM"'
    end
    object Manut_ServPeriodicoLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object Manut_ServPeriodicoLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
  end
end
