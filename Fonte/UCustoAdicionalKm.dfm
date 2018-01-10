object FCustoAdicionalKm: TFCustoAdicionalKm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Custo Adicional de Km Rodado'
  ClientHeight = 580
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 202
    Top = 58
    Width = 45
    Height = 13
    Caption = 'Via F'#225'cil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 389
    Top = 58
    Width = 60
    Height = 13
    Caption = 'Comiss'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 567
    Top = 58
    Width = 45
    Height = 13
    Caption = 'Sal'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 342
    Top = 16
    Width = 43
    Height = 13
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 520
    Top = 562
    Width = 59
    Height = 13
    Caption = 'TOTAL KM '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 498
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
  object Label1: TLabel
    Left = 179
    Top = 88
    Width = 70
    Height = 13
    Caption = 'Deprecia'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 360
    Top = 88
    Width = 89
    Height = 13
    Caption = 'Financiamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 578
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Pneus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 120
    Width = 985
    Height = 438
    DataSource = dsClientRelacaoEntradaSaida
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CARGA'
        Title.Alignment = taCenter
        Title.Caption = 'Carga'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnTotalRodado'
        Title.Alignment = taCenter
        Title.Caption = 'Total Km Rodado'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_VIAFACIL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Via F'#225'cil'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_COMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Comiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_SALARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Sal'#225'rio'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_DEPRECIASSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Deprecia'#231#227'o'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_FINANCIAMENTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Financiamentos'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_PNEUS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pneus'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Sa'#237'da'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATENT'
        Title.Alignment = taCenter
        Title.Caption = 'Data Chegada'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Km Sa'#237'da'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KMENT'
        Title.Alignment = taCenter
        Title.Caption = 'Km Chegada'
        Width = 100
        Visible = True
      end>
  end
  object edtViaFacil: TCurrencyEdit
    Left = 250
    Top = 55
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edtComissoes: TCurrencyEdit
    Left = 454
    Top = 55
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edtSalarios: TCurrencyEdit
    Left = 615
    Top = 55
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object btnMostrar: TBitBtn
    Left = 878
    Top = 3
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
    TabOrder = 7
    OnClick = btnMostrarClick
  end
  object btnProcessar: TBitBtn
    Left = 878
    Top = 29
    Width = 100
    Height = 25
    Caption = 'Processar'
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
    TabOrder = 8
    OnClick = btnProcessarClick
  end
  object edtDatIni: TDateEdit
    Left = 391
    Top = 13
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 9
  end
  object edtDatFim: TDateEdit
    Left = 513
    Top = 13
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 10
  end
  object dbedtvnTotalRodadoGeral: TDBEdit
    Left = 580
    Top = 559
    Width = 103
    Height = 21
    Color = clInfoBk
    DataField = 'vnTotalRodadoGeral'
    DataSource = dsClientRelacaoEntradaSaida
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object btnGravar: TBitBtn
    Left = 878
    Top = 55
    Width = 100
    Height = 25
    Caption = 'Gravar'
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
    TabOrder = 12
    TabStop = False
    OnClick = btnGravarClick
  end
  object edtDepreciacao: TCurrencyEdit
    Left = 250
    Top = 85
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;-,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object edtFinanciamento: TCurrencyEdit
    Left = 454
    Top = 85
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object edtPneus: TCurrencyEdit
    Left = 615
    Top = 85
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
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
    object ClientRelacaoEntradaSaidaQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
    end
    object ClientRelacaoEntradaSaidaQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
    end
    object ClientRelacaoEntradaSaidaOBS_MOTORISTA: TWideStringField
      FieldName = 'OBS_MOTORISTA'
      Size = 300
    end
    object ClientRelacaoEntradaSaidaIN_VISUALIZADO: TWideStringField
      FieldName = 'IN_VISUALIZADO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_DESCARGA: TFloatField
      FieldName = 'VLR_DESCARGA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_REFEICOES: TFloatField
      FieldName = 'VLR_REFEICOES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_OUTRAS_DESP: TFloatField
      FieldName = 'VLR_OUTRAS_DESP'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaQTD_CHEQUE_REC: TIntegerField
      FieldName = 'QTD_CHEQUE_REC'
    end
    object ClientRelacaoEntradaSaidaRETORNO: TWideStringField
      FieldName = 'RETORNO'
      Size = 30
    end
    object ClientRelacaoEntradaSaidaVLR_VIAFACIL: TFloatField
      FieldName = 'VLR_VIAFACIL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object wdstrngfldClientRelacaoEntradaSaidaIN_COMISSAO: TWideStringField
      FieldName = 'IN_COMISSAO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaVLR_DEPRECIASSAO: TFloatField
      FieldName = 'VLR_DEPRECIASSAO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_FINANCIAMENTOS: TFloatField
      FieldName = 'VLR_FINANCIAMENTOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaVLR_PNEUS: TFloatField
      FieldName = 'VLR_PNEUS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
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
end
