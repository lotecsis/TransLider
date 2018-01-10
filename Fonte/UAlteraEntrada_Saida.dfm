object FAlteraEntrada_Saida: TFAlteraEntrada_Saida
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alterar Enrada/Sa'#237'da'
  ClientHeight = 297
  ClientWidth = 956
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
    Left = 60
    Top = 23
    Width = 34
    Height = 16
    Caption = 'Placa'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 290
    Top = 23
    Width = 63
    Height = 16
    Caption = 'Motorista'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 24
    Top = 74
    Width = 70
    Height = 16
    Caption = 'Data Sa'#237'da'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 282
    Top = 74
    Width = 70
    Height = 16
    Caption = 'Hora Sa'#237'da'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 532
    Top = 74
    Width = 58
    Height = 16
    Caption = 'Km Sa'#237'da'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 45
    Top = 116
    Width = 49
    Height = 16
    Caption = 'Destino'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCarreta: TLabel
    Left = 44
    Top = 164
    Width = 50
    Height = 16
    Caption = 'Carreta'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEngatado: TLabel
    Left = 353
    Top = 164
    Width = 61
    Height = 16
    Caption = 'Engatado'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCarga: TLabel
    Left = 512
    Top = 116
    Width = 38
    Height = 16
    Caption = 'Carga'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ImgMot: TImage
    Left = 750
    Top = 8
    Width = 186
    Height = 139
    Proportional = True
  end
  object lbl13: TLabel
    Left = 8
    Top = 216
    Width = 86
    Height = 16
    Caption = 'Data Entrada'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl14: TLabel
    Left = 279
    Top = 216
    Width = 74
    Height = 16
    Caption = 'Hora Entra.'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl15: TLabel
    Left = 517
    Top = 216
    Width = 74
    Height = 16
    Caption = 'Km Entrada'
    FocusControl = dbedtPLAVEI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbedtPLAVEI: TDBEdit
    Left = 99
    Top = 10
    Width = 172
    Height = 41
    TabStop = False
    Color = clInfoBk
    DataField = 'PLAVEI'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object dblkcbbCODMOT: TDBLookupComboBox
    Left = 357
    Top = 10
    Width = 369
    Height = 41
    Color = clInfoBk
    DataField = 'CODMOT'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'CODMOT'
    ListField = 'NOMMOT'
    ListSource = dsMotoristas
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnCloseUp = dblkcbbCODMOTCloseUp
    OnKeyUp = dblkcbbCODMOTKeyUp
  end
  object edtDATSAI: TDBDateEdit
    Left = 99
    Top = 56
    Width = 172
    Height = 41
    Margins.Left = 8
    Margins.Top = 1
    TabStop = False
    DataField = 'DATSAI'
    DataSource = dsClientEntrada
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object dbedtHORSAI: TDBEdit
    Left = 357
    Top = 57
    Width = 131
    Height = 41
    TabStop = False
    Color = clInfoBk
    DataField = 'HORSAI'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 3
  end
  object dbedtKMSAI: TDBEdit
    Left = 595
    Top = 57
    Width = 131
    Height = 41
    TabStop = False
    Color = clInfoBk
    DataField = 'KMSAI'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dbedtDESTINO: TDBEdit
    Left = 100
    Top = 103
    Width = 391
    Height = 41
    TabStop = False
    CharCase = ecUpperCase
    Color = clInfoBk
    DataField = 'DESTINO'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object dblkcbbPLAVEICarreta: TDBLookupComboBox
    Left = 100
    Top = 150
    Width = 174
    Height = 41
    Color = clInfoBk
    DataField = 'CODCARRETA'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'CODVEI'
    ListField = 'PLAVEI'
    ListSource = dsCarretas
    ParentFont = False
    TabOrder = 6
    TabStop = False
  end
  object cbbEngatado: TComboBox
    Left = 420
    Top = 160
    Width = 74
    Height = 22
    Style = csOwnerDrawFixed
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 7
    TabStop = False
    Text = 'SIM'
    Items.Strings = (
      'SIM'
      'NAO')
  end
  object dbedtCARGA: TDBEdit
    Left = 555
    Top = 103
    Width = 171
    Height = 41
    TabStop = False
    Color = clInfoBk
    DataField = 'CARGA'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object edtDATENT: TDBDateEdit
    Left = 102
    Top = 199
    Width = 172
    Height = 41
    Margins.Left = 8
    Margins.Top = 1
    TabStop = False
    DataField = 'DATENT'
    DataSource = dsClientEntrada
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object dbedtHORENT: TDBEdit
    Left = 357
    Top = 199
    Width = 131
    Height = 41
    TabStop = False
    Color = clMoneyGreen
    DataField = 'HORENT'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 10
  end
  object dbedtKMENT: TDBEdit
    Left = 595
    Top = 199
    Width = 131
    Height = 41
    TabStop = False
    Color = clMoneyGreen
    DataField = 'KMENT'
    DataSource = dsClientEntrada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object pnl1: TPanel
    Left = -2
    Top = 249
    Width = 959
    Height = 48
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 12
    object btnConfirmar: TBitBtn
      Left = 847
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Confirmar'
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
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
  end
  object dsClientEntrada: TDataSource
    AutoEdit = False
    DataSet = ClientEntrada
    Left = 894
    Top = 154
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
    Left = 758
    Top = 152
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
    Left = 758
    Top = 200
  end
  object Carretas: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'select veiculo.*'
      'from veiculo'
      'where veiculo.tipo = '#39'CARRETA'#39' AND'
      'VEICULO.SITVEI = '#39'ATIVO'#39
      'order by veiculo.plavei')
    Left = 822
    Top = 152
    object CarretasCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CarretasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object CarretasCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object CarretasCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object CarretasDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object CarretasPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object CarretasPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object CarretasANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object CarretasDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object CarretasDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object CarretasKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
    end
    object CarretasKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object CarretasCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object CarretasCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object CarretasRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object CarretasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object CarretasCODCAV: TIntegerField
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object CarretasEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object CarretasALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
    end
    object CarretasLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
    end
    object CarretasCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
    end
    object CarretasCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
    end
    object CarretasTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
    end
    object CarretasMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
    end
    object CarretasCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
    end
    object CarretasSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object CarretasCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object CarretasOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object CarretasUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object CarretasDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object CarretasLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
  end
  object dsCarretas: TDataSource
    DataSet = Carretas
    Left = 822
    Top = 200
  end
  object ClientEntrada: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 200
    Data = {
      700100009619E0BD010000001800000011000000000003000000700106504C41
      5645490100490000000100055749445448020002001E0006434F445645490400
      01000000000006434F444D4F5404000100000000000644415453414904000600
      0000000006484F525341490400070000000000054B4D53414904000100000000
      000744455354494E4F01004900000001000557494454480200020064000B494E
      5F454E47415441444F01004900000001000557494454480200020003000A434F
      444341525245544104000100000000000543415247410400010000000000064E
      4F4D4D4F54010049000000010005574944544802000200640006444154454E54
      040006000000000006484F52454E540400070000000000054B4D454E54040001
      00000000000D504C4143415F4341525245544101004900000001000557494454
      48020002000A0004464F544F0200490000000100055749445448020002002C01
      09534551454E5453414904000100000000000000}
    object ClientEntradaPLAVEI: TStringField
      Alignment = taCenter
      FieldName = 'PLAVEI'
      Size = 30
    end
    object ClientEntradaCODVEI: TIntegerField
      FieldName = 'CODVEI'
    end
    object ClientEntradaCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientEntradaDATSAI: TDateField
      FieldName = 'DATSAI'
    end
    object ClientEntradaHORSAI: TTimeField
      Alignment = taCenter
      FieldName = 'HORSAI'
      EditMask = '!90:00;1;_'
    end
    object ClientEntradaKMSAI: TIntegerField
      Alignment = taCenter
      FieldName = 'KMSAI'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientEntradaDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object ClientEntradaIN_ENGATADO: TStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object ClientEntradaCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object ClientEntradaCARGA: TIntegerField
      Alignment = taCenter
      FieldName = 'CARGA'
    end
    object ClientEntradaNOMMOT: TStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientEntradaDATENT: TDateField
      Alignment = taCenter
      FieldName = 'DATENT'
    end
    object ClientEntradaHORENT: TTimeField
      Alignment = taCenter
      FieldName = 'HORENT'
      EditMask = '!90:00;1;_'
    end
    object ClientEntradaKMENT: TIntegerField
      Alignment = taCenter
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientEntradaPLACA_CARRETA: TStringField
      Alignment = taCenter
      FieldName = 'PLACA_CARRETA'
      Size = 10
    end
    object ClientEntradavnTotalKm: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vnTotalKm'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
      Calculated = True
    end
    object ClientEntradaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientEntradaSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 728
    Top = 240
  end
end
