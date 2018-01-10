object FCadMotoristas: TFCadMotoristas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Motoristas'
  ClientHeight = 432
  ClientWidth = 709
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
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 709
    Height = 432
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = '     Cadastro     '
      object lbl1: TLabel
        Left = 43
        Top = 33
        Width = 32
        Height = 13
        Caption = 'Nome'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 33
        Top = 60
        Width = 42
        Height = 13
        Caption = 'Apelido'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 59
        Top = 87
        Width = 16
        Height = 13
        Caption = 'RG'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 222
        Top = 87
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 53
        Top = 114
        Width = 22
        Height = 13
        Caption = 'CNH'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 174
        Top = 114
        Width = 36
        Height = 13
        Caption = 'Categ.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 267
        Top = 114
        Width = 30
        Height = 13
        Caption = 'Venc.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 37
        Top = 6
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 48
        Top = 141
        Width = 27
        Height = 13
        Caption = 'Fone'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 248
        Top = 141
        Width = 27
        Height = 13
        Caption = 'Fone'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 45
        Top = 168
        Width = 30
        Height = 13
        Caption = 'Email'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 23
        Top = 195
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl15: TLabel
        Left = 41
        Top = 222
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 37
        Top = 249
        Width = 38
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl17: TLabel
        Left = 17
        Top = 276
        Width = 58
        Height = 13
        Caption = 'Tipo Sang.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl18: TLabel
        Left = 234
        Top = 276
        Width = 62
        Height = 13
        Caption = 'Data Nasci.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 13
        Top = 303
        Width = 62
        Height = 13
        Caption = 'Data Admi.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 234
        Top = 303
        Width = 62
        Height = 13
        Caption = 'Data Demi.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl19: TLabel
        Left = 26
        Top = 330
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 202
        Top = 330
        Width = 70
        Height = 13
        Caption = 'Usu'#225'rio Cad.'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnBTirarFoto: TSpeedButton
        Left = 537
        Top = 157
        Width = 30
        Height = 26
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777780087777777800000000000087708800888800
          880770880888888088077088087888808807708808E78880880770FF00888800
          FF0770FFF000000FFF0770000000000000077700780FF0870077777777800877
          7777777777777777777777777777777777777777777777777777}
        OnClick = btnBTirarFotoClick
      end
      object btnBProcuraFoto: TSpeedButton
        Left = 506
        Top = 157
        Width = 30
        Height = 26
        Glyph.Data = {
          C6050000424DC605000000000000360400002800000014000000140000000100
          08000000000090010000C30E0000C30E00000001000000000000000000008080
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
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0F0F
          0F0E0E0E0E0E0E0E0E00000000000F0F0F0F0F0F0F110E110E110E110E000E0E
          0E000F0F0F0F0F0F0F0E0E0E0E0E0E0E0000000000000F0F0F0F0F0F0F110E11
          0E110E000E110E110E110F0F0F0F0F0F0F0E00000000000E0E00000000000F0F
          0F0F0F0F0F11000E0E0E000000000E0E0E000F0F0F0F0F0F0F0E00000000000E
          0E00000000000F0F0F0F0F0F00110E110E110E000E110E110E110F0F0F0F0F00
          02000E0E0E0E0E0E0000000000000F0F0F0F0F00020300110E110E110E000E0E
          0E000F0F0F0F0F00020203000E0E0E0E0E00000000000F0F0F0F000302020210
          00110E110E110E110E110F0F0F0F00010102101010000E0E0E0E0E0E0E0E0F0F
          0F0001010E0E10101010000F0F0F0F0F0F0F0F0F0001010E0E0E0E0000000F0F
          0F0F0F0F0F0F0F0001010E0E0E00000F0F0F0F0F0F0F0F0F0F0F0001010E0E0E
          000F0F0F0F0F0F0F0F0F0F0F0F0F00010E0E0E00100F0F0F0F0F0F0F0F0F0F0F
          0F0F0F000E0E00100F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F
          0F0F0F0F0F0F0F0F0F0F}
        OnClick = btnBProcuraFotoClick
      end
      object lbl21: TLabel
        Left = 505
        Top = 330
        Width = 29
        Height = 13
        Caption = 'Local'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl22: TLabel
        Left = 442
        Top = 303
        Width = 92
        Height = 13
        Caption = 'Permitido Dirigir'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 422
        Top = 276
        Width = 112
        Height = 13
        Caption = 'Valor Comiss'#227'o Fixa'
        FocusControl = DBENOMMOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtCodMot: TCurrencyEdit
        Left = 81
        Top = 3
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0'
        TabOrder = 0
        OnExit = edtCodMotExit
      end
      object DBENOMMOT: TDBEdit
        Left = 81
        Top = 30
        Width = 318
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMMOT'
        DataSource = dsCadMotoristas
        TabOrder = 1
      end
      object dbedtAPEMOT: TDBEdit
        Left = 81
        Top = 57
        Width = 318
        Height = 21
        CharCase = ecUpperCase
        DataField = 'APEMOT'
        DataSource = dsCadMotoristas
        TabOrder = 2
      end
      object dbedtRG: TDBEdit
        Left = 81
        Top = 84
        Width = 123
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RG'
        DataSource = dsCadMotoristas
        TabOrder = 3
      end
      object dbedtCPF: TDBEdit
        Left = 248
        Top = 84
        Width = 151
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = dsCadMotoristas
        TabOrder = 4
      end
      object dbedtCNH: TDBEdit
        Left = 81
        Top = 111
        Width = 86
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNH'
        DataSource = dsCadMotoristas
        TabOrder = 5
      end
      object edtDATVENCNH: TDBDateEdit
        Left = 299
        Top = 111
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATVENCNH'
        DataSource = dsCadMotoristas
        NumGlyphs = 2
        TabOrder = 7
      end
      object dbcbbCATCNH: TDBComboBox
        Left = 214
        Top = 111
        Width = 44
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'CATCNH'
        DataSource = dsCadMotoristas
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'AB'
          'AC'
          'AD'
          'AE')
        TabOrder = 6
      end
      object dbedtFONE1: TDBEdit
        Left = 81
        Top = 138
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE1'
        DataSource = dsCadMotoristas
        TabOrder = 8
      end
      object dbedtFONE2: TDBEdit
        Left = 279
        Top = 138
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE2'
        DataSource = dsCadMotoristas
        TabOrder = 9
      end
      object dbedtEMAIL: TDBEdit
        Left = 81
        Top = 165
        Width = 318
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsCadMotoristas
        TabOrder = 10
      end
      object dbedtENDMOT: TDBEdit
        Left = 81
        Top = 192
        Width = 270
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDMOT'
        DataSource = dsCadMotoristas
        TabOrder = 11
      end
      object dbedtNUMEND: TDBEdit
        Left = 357
        Top = 192
        Width = 42
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMEND'
        DataSource = dsCadMotoristas
        TabOrder = 12
      end
      object dbedtBAIMOT: TDBEdit
        Left = 81
        Top = 219
        Width = 318
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIMOT'
        DataSource = dsCadMotoristas
        TabOrder = 13
      end
      object dbedtCIDMOT: TDBEdit
        Left = 81
        Top = 246
        Width = 270
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDMOT'
        DataSource = dsCadMotoristas
        TabOrder = 14
      end
      object dbcbbSIGUFS: TDBComboBox
        Left = 357
        Top = 246
        Width = 42
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SIGUFS'
        DataSource = dsCadMotoristas
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RR'
          'RO'
          'RJ'
          'RN'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 15
      end
      object dbedtTIPSANG: TDBEdit
        Left = 81
        Top = 273
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TIPSANG'
        DataSource = dsCadMotoristas
        TabOrder = 16
      end
      object edtDATNAS: TDBDateEdit
        Left = 299
        Top = 273
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATNAS'
        DataSource = dsCadMotoristas
        NumGlyphs = 2
        TabOrder = 17
      end
      object edtDATADMI: TDBDateEdit
        Left = 81
        Top = 300
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATADMI'
        DataSource = dsCadMotoristas
        NumGlyphs = 2
        TabOrder = 18
      end
      object edtDATDEMI: TDBDateEdit
        Left = 299
        Top = 300
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DataField = 'DATDEMI'
        DataSource = dsCadMotoristas
        NumGlyphs = 2
        TabOrder = 19
      end
      object dbcbbSITMOT: TDBComboBox
        Left = 81
        Top = 327
        Width = 100
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SITMOT'
        DataSource = dsCadMotoristas
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        TabOrder = 22
        TabStop = False
        OnKeyPress = dbcbbSITMOTKeyPress
      end
      object dblkcbbCODUSU: TDBLookupComboBox
        Left = 278
        Top = 327
        Width = 121
        Height = 21
        DataField = 'CODUSU'
        DataSource = dsCadMotoristas
        KeyField = 'CODUSU'
        ListField = 'NOMUSU'
        ListSource = dsUsuarios
        ReadOnly = True
        TabOrder = 23
        TabStop = False
      end
      object btnNovo: TBitBtn
        Left = 128
        Top = 376
        Width = 85
        Height = 25
        Caption = 'Novo'
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
        TabOrder = 24
        TabStop = False
        OnClick = btnNovoClick
      end
      object btnAlterar: TBitBtn
        Left = 220
        Top = 376
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
        TabOrder = 25
        TabStop = False
        OnClick = btnAlterarClick
      end
      object btnExcluir: TBitBtn
        Left = 312
        Top = 376
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
        TabOrder = 26
        TabStop = False
        OnClick = btnExcluirClick
      end
      object btnCancelar: TBitBtn
        Left = 404
        Top = 376
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
        TabOrder = 27
        TabStop = False
        OnClick = btnCancelarClick
      end
      object btnConfirmar: TBitBtn
        Left = 496
        Top = 376
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
        TabOrder = 28
        OnClick = btnConfirmarClick
      end
      object pnl2: TPanel
        Left = 457
        Top = 10
        Width = 193
        Height = 146
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 29
        object ImgAlu: TImage
          Left = 1
          Top = 1
          Width = 186
          Height = 139
          Proportional = True
        end
      end
      object btnBExcFoto: TBitBtn
        Left = 569
        Top = 157
        Width = 30
        Height = 26
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
        TabOrder = 30
        TabStop = False
        OnClick = btnBExcFotoClick
      end
      object dbcbbTIPMOT: TDBComboBox
        Left = 540
        Top = 300
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'TIPMOT'
        DataSource = dsCadMotoristas
        Items.Strings = (
          'LEVES'
          'PESADOS'
          'TODOS')
        TabOrder = 21
      end
      object dbcbbLOCALMOT: TDBComboBox
        Left = 540
        Top = 327
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'LOCALMOT'
        DataSource = dsCadMotoristas
        Items.Strings = (
          'EMPRESA'
          'VIAGEM')
        TabOrder = 31
        TabStop = False
      end
      object dbedtVLRCOMFIXA: TDBEdit
        Left = 540
        Top = 273
        Width = 145
        Height = 21
        DataField = 'VLRCOMFIXA'
        DataSource = dsCadMotoristas
        TabOrder = 20
      end
    end
  end
  object dsCadMotoristas: TDataSource
    AutoEdit = False
    DataSet = DmFire.CadMotoristas
    OnStateChange = dsCadMotoristasStateChange
    Left = 496
    Top = 112
  end
  object Usuarios: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'select * from USUARIO order by nomusu')
    Left = 544
    Top = 48
    object UsuariosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UsuariosNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object UsuariosDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object UsuariosLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object UsuariosSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object UsuariosDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object UsuariosSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
  end
  object dsUsuarios: TDataSource
    DataSet = Usuarios
    Left = 584
    Top = 104
  end
  object Janela: TOpenDialog
    Filter = '(*.bmp)'
    Left = 480
    Top = 48
  end
end
