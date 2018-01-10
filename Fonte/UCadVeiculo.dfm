object FCadVeiculo: TFCadVeiculo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ve'#237'culo'
  ClientHeight = 572
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 994
    Height = 572
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = '     Ve'#237'culo     '
      object dbtxtDESMAR: TDBText
        Left = 343
        Top = 40
        Width = 216
        Height = 17
        DataField = 'DESMAR'
        DataSource = dsModelos
      end
      object lbl1: TLabel
        Left = 49
        Top = 12
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 46
        Top = 40
        Width = 41
        Height = 13
        Caption = 'Modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 32
        Top = 66
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
      object lbl4: TLabel
        Left = 57
        Top = 93
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
      object lbl5: TLabel
        Left = 185
        Top = 93
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
      object lbl6: TLabel
        Left = 18
        Top = 148
        Width = 69
        Height = 13
        Caption = 'Ano/Modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 13
        Top = 203
        Width = 74
        Height = 13
        Caption = 'Data Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 302
        Top = 203
        Width = 65
        Height = 13
        Caption = 'Data Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 32
        Top = 230
        Width = 55
        Height = 13
        Caption = 'Km Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 316
        Top = 230
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
      object lbl11: TLabel
        Left = 32
        Top = 257
        Width = 55
        Height = 13
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 51
        Top = 120
        Width = 36
        Height = 13
        Caption = 'Chassi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 299
        Top = 120
        Width = 54
        Height = 13
        Caption = 'Renavam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 63
        Top = 285
        Width = 24
        Height = 13
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCavalo: TLabel
        Left = 329
        Top = 285
        Width = 38
        Height = 13
        Caption = 'Cavalo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 538
        Top = 11
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
      object lbl17: TLabel
        Left = 215
        Top = 322
        Width = 44
        Height = 13
        Caption = 'Largura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl18: TLabel
        Left = 388
        Top = 322
        Width = 77
        Height = 13
        Caption = 'Comprimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl19: TLabel
        Left = 52
        Top = 322
        Width = 35
        Height = 13
        Caption = 'Altura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 233
        Top = 349
        Width = 26
        Height = 13
        Caption = 'Tara'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl21: TLabel
        Left = 50
        Top = 349
        Width = 37
        Height = 13
        Caption = 'C'#250'bico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl22: TLabel
        Left = 10
        Top = 376
        Width = 77
        Height = 13
        Caption = 'Capacid. Peso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl23: TLabel
        Left = 205
        Top = 376
        Width = 54
        Height = 13
        Caption = 'Peso M'#225'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl24: TLabel
        Left = 68
        Top = 174
        Width = 19
        Height = 13
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl25: TLabel
        Left = 14
        Top = 448
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
      object lbl26: TLabel
        Left = 38
        Top = 413
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl27: TLabel
        Left = 214
        Top = 414
        Width = 70
        Height = 13
        Caption = 'Usu'#225'rio Cad.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl28: TLabel
        Left = 450
        Top = 413
        Width = 65
        Height = 13
        Caption = 'Usu'#225'rio Alt.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDesCavalo: TLabel
        Left = 456
        Top = 285
        Width = 3
        Height = 13
      end
      object ImgAlu: TImage
        Left = 673
        Top = 35
        Width = 155
        Height = 115
        Proportional = True
      end
      object Label1: TLabel
        Left = 612
        Top = 203
        Width = 115
        Height = 13
        Caption = 'M'#233'dia M'#225'xima Vazio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 583
        Top = 230
        Width = 144
        Height = 13
        Caption = 'M'#233'dia M'#225'xima Carregado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 616
        Top = 257
        Width = 111
        Height = 13
        Caption = 'M'#233'dia M'#237'nima Vazio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 587
        Top = 284
        Width = 140
        Height = 13
        Caption = 'M'#233'dia M'#237'nima Carregado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnNovo: TBitBtn
        Left = 163
        Top = 518
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
        TabOrder = 28
        TabStop = False
        OnClick = btnNovoClick
      end
      object btnAlterar: TBitBtn
        Left = 255
        Top = 518
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
        TabOrder = 29
        TabStop = False
        OnClick = btnAlterarClick
      end
      object btnExcluir: TBitBtn
        Left = 347
        Top = 518
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
        TabOrder = 30
        TabStop = False
        OnClick = btnExcluirClick
      end
      object btnCancelar: TBitBtn
        Left = 439
        Top = 518
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
        TabOrder = 31
        TabStop = False
        OnClick = btnCancelarClick
      end
      object btnConfirmar: TBitBtn
        Left = 531
        Top = 518
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
        TabOrder = 27
        OnClick = btnConfirmarClick
      end
      object dblkcbbModelo: TDBLookupComboBox
        Left = 94
        Top = 36
        Width = 241
        Height = 21
        DataField = 'CODMOD'
        DataSource = dsCadVeiculo
        KeyField = 'CODMOD'
        ListField = 'DESMOD'
        ListSource = dsModelos
        TabOrder = 1
        OnCloseUp = dblkcbbModeloCloseUp
        OnKeyUp = dblkcbbModeloKeyUp
      end
      object edtCodVei: TCurrencyEdit
        Left = 94
        Top = 9
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0'
        TabOrder = 0
        OnExit = edtCodVeiExit
      end
      object dbedtDESVEI: TDBEdit
        Left = 94
        Top = 63
        Width = 400
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESVEI'
        DataSource = dsCadVeiculo
        TabOrder = 2
      end
      object dbedtPLAVEI: TDBEdit
        Left = 94
        Top = 90
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'PLAVEI'
        DataSource = dsCadVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 3
      end
      object dbcbbPLAVEIUF: TDBComboBox
        Left = 203
        Top = 90
        Width = 44
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        DataField = 'PLAVEIUF'
        DataSource = dsCadVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 4
      end
      object dbedtANOFAB: TDBEdit
        Left = 93
        Top = 145
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ANOFAB'
        DataSource = dsCadVeiculo
        MaxLength = 10
        TabOrder = 7
      end
      object edtDATAQUI: TDBDateEdit
        Left = 94
        Top = 200
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATAQUI'
        DataSource = dsCadVeiculo
        NumGlyphs = 2
        TabOrder = 9
      end
      object edtDATVEN: TDBDateEdit
        Left = 372
        Top = 200
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DataField = 'DATVEN'
        DataSource = dsCadVeiculo
        NumGlyphs = 2
        TabOrder = 32
      end
      object dbedtKMINI: TDBEdit
        Left = 93
        Top = 227
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'KMINI'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 10
      end
      object dbedtKMATU: TDBEdit
        Left = 372
        Top = 227
        Width = 122
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'KMATU'
        DataSource = dsCadVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 6
        ParentFont = False
        TabOrder = 33
      end
      object dbcbbCATEGORIA: TDBComboBox
        Left = 94
        Top = 254
        Width = 152
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'CATEGORIA'
        DataSource = dsCadVeiculo
        Items.Strings = (
          'PARTICULAR'
          'ALUGUEL')
        TabOrder = 11
      end
      object dbedtCHASSI: TDBEdit
        Left = 94
        Top = 117
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHASSI'
        DataSource = dsCadVeiculo
        TabOrder = 5
      end
      object dbedtRENAVAM: TDBEdit
        Left = 359
        Top = 117
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RENAVAM'
        DataSource = dsCadVeiculo
        TabOrder = 6
      end
      object dbcbbTIPO: TDBComboBox
        Left = 94
        Top = 282
        Width = 153
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'TIPO'
        DataSource = dsCadVeiculo
        Items.Strings = (
          'TRUCK'
          'CAVALO'
          'CARRETA'
          'VEICULO LEVE')
        TabOrder = 12
      end
      object dbedtCODCAV: TDBEdit
        Left = 372
        Top = 282
        Width = 77
        Height = 21
        DataField = 'CODCAV'
        DataSource = dsCadVeiculo
        TabOrder = 13
        OnExit = dbedtCODCAVExit
      end
      object dbedtALTURA: TDBEdit
        Left = 93
        Top = 319
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ALTURA'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 14
      end
      object dbedtLARGURA: TDBEdit
        Left = 265
        Top = 319
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LARGURA'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 15
      end
      object dbedtCOMPRIMENTO: TDBEdit
        Left = 471
        Top = 319
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPRIMENTO'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 16
      end
      object dbedtCUBICO: TDBEdit
        Left = 93
        Top = 346
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CUBICO'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 17
      end
      object dbedtTARA: TDBEdit
        Left = 265
        Top = 346
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TARA'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 18
      end
      object dbedtMAXPESO: TDBEdit
        Left = 265
        Top = 373
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MAXPESO'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 20
      end
      object dbedtCAPPESO: TDBEdit
        Left = 93
        Top = 373
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CAPPESO'
        DataSource = dsCadVeiculo
        MaxLength = 6
        TabOrder = 19
      end
      object dbedtCOR: TDBEdit
        Left = 94
        Top = 172
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COR'
        DataSource = dsCadVeiculo
        MaxLength = 15
        TabOrder = 8
      end
      object dbmmoOBSVEI: TDBMemo
        Left = 93
        Top = 448
        Width = 678
        Height = 63
        DataField = 'OBSVEI'
        DataSource = dsCadVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 300
        ParentFont = False
        TabOrder = 21
        OnKeyPress = dbmmoOBSVEIKeyPress
      end
      object dbcbbSITVEI: TDBComboBox
        Left = 93
        Top = 410
        Width = 101
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SITVEI'
        DataSource = dsCadVeiculo
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        TabOrder = 34
        TabStop = False
      end
      object dblkcbbCODUSU: TDBLookupComboBox
        Left = 290
        Top = 411
        Width = 121
        Height = 21
        DataField = 'CODUSU'
        DataSource = dsCadVeiculo
        KeyField = 'CODUSU'
        ListField = 'NOMUSU'
        ListSource = dsUsuarios
        ReadOnly = True
        TabOrder = 35
        TabStop = False
      end
      object dblkcbbUsuariosAlt: TDBLookupComboBox
        Left = 520
        Top = 411
        Width = 121
        Height = 21
        DataField = 'USUALT'
        DataSource = dsCadVeiculo
        KeyField = 'CODUSU'
        ListField = 'NOMUSU'
        ListSource = dsUsuariosAlt
        ReadOnly = True
        TabOrder = 36
      end
      object edtDATALT: TDBDateEdit
        Left = 650
        Top = 410
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        DataField = 'DATALT'
        DataSource = dsCadVeiculo
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 37
      end
      object btnConsCavalo: TBitBtn
        Left = 428
        Top = 283
        Width = 19
        Height = 19
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 38
        OnClick = btnConsCavaloClick
      end
      object dblkcbbMotorista: TDBLookupComboBox
        Left = 598
        Top = 8
        Width = 285
        Height = 21
        Color = clInfoBk
        DataField = 'CODMOT'
        DataSource = dsCadVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'CODMOT'
        ListField = 'NOMMOT'
        ListSource = dsMotoristas
        ParentFont = False
        TabOrder = 22
        OnCloseUp = dblkcbbMotoristaCloseUp
        OnKeyUp = dblkcbbMotoristaKeyUp
      end
      object dbedtMEDMAXVAZ: TDBEdit
        Left = 733
        Top = 200
        Width = 100
        Height = 21
        DataField = 'MEDMAXVAZ'
        DataSource = dsCadVeiculo
        TabOrder = 23
      end
      object dbedtMEDMAXCAR: TDBEdit
        Left = 733
        Top = 227
        Width = 100
        Height = 21
        DataField = 'MEDMAXCAR'
        DataSource = dsCadVeiculo
        TabOrder = 24
      end
      object dbedtMEDMINVAZ: TDBEdit
        Left = 733
        Top = 254
        Width = 100
        Height = 21
        DataField = 'MEDMINVAZ'
        DataSource = dsCadVeiculo
        TabOrder = 25
      end
      object dbedtMEDMINCAR: TDBEdit
        Left = 733
        Top = 281
        Width = 100
        Height = 21
        DataField = 'MEDMINCAR'
        DataSource = dsCadVeiculo
        TabOrder = 26
      end
    end
    object tsManutPeriodica: TTabSheet
      Caption = '     Manuten'#231#245'es Peri'#243'dicas / Revis'#245'es     '
      ImageIndex = 1
      object dbg1: TDBGrid
        Left = -10
        Top = -1
        Width = 996
        Height = 546
        DataSource = dsRelacaoManutPeriodicas
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
            FieldName = 'CODMAN'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESSER1'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMATU'
            Title.Alignment = taCenter
            Title.Caption = 'Km Atual'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMVCT'
            Title.Alignment = taCenter
            Title.Caption = 'Km Vencimento'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnKmRestante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Km Restante'
            Width = 80
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
            FieldName = 'vnDiasRestante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Dias Restante'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPSER'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESVEI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o Ve'#237'culo'
            Width = 180
            Visible = True
          end>
      end
    end
    object tsHistoricoManut: TTabSheet
      Caption = '     Hist'#243'rico Manuten'#231#245'es     '
      ImageIndex = 2
      OnShow = tsHistoricoManutShow
      object lblFornecedor: TLabel
        Left = 19
        Top = 11
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
        Left = 366
        Top = 12
        Width = 186
        Height = 17
        DataField = 'CID_UF'
        DataSource = dsFornecedor
      end
      object lblServico: TLabel
        Left = 41
        Top = 39
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
      object lblDesSer: TLabel
        Left = 233
        Top = 39
        Width = 3
        Height = 13
      end
      object lblTipo: TLabel
        Left = 643
        Top = 11
        Width = 24
        Height = 13
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSituacao: TLabel
        Left = 618
        Top = 38
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPeriodo: TLabel
        Left = 40
        Top = 93
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
      object lblDescServico: TLabel
        Left = 8
        Top = 66
        Width = 75
        Height = 13
        Caption = 'Desc. Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOrdemServico: TLabel
        Left = 584
        Top = 66
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
      object lbla: TLabel
        Left = 216
        Top = 93
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
      object lbl15: TLabel
        Left = 629
        Top = 93
        Width = 38
        Height = 13
        Caption = 'Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl29: TLabel
        Left = 555
        Top = 503
        Width = 98
        Height = 13
        Caption = 'Total C/Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl30: TLabel
        Left = 706
        Top = 503
        Width = 85
        Height = 13
        Caption = 'Total Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl31: TLabel
        Left = 857
        Top = 503
        Width = 29
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dblkcbbCODFOR: TDBLookupComboBox
        Left = 106
        Top = 8
        Width = 256
        Height = 21
        DataField = 'CODFOR'
        KeyField = 'CODFOR'
        ListField = 'DESFOR'
        ListSource = dsFornecedor
        TabOrder = 0
        OnCloseUp = dblkcbbCODFORCloseUp
        OnKeyUp = dblkcbbCODFORKeyUp
      end
      object edtCodSer: TCurrencyEdit
        Left = 106
        Top = 36
        Width = 122
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Alignment = taLeftJustify
        DisplayFormat = '0'
        TabOrder = 1
      end
      object btnConsServico: TBitBtn
        Left = 208
        Top = 37
        Width = 19
        Height = 19
        Caption = '...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        TabStop = False
      end
      object btnMostrarManutencoes: TBitBtn
        Left = 883
        Top = 1
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
        TabOrder = 3
        OnClick = btnMostrarManutencoesClick
      end
      object cbbTipo: TComboBox
        Left = 689
        Top = 8
        Width = 121
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
        Items.Strings = (
          'PERIODICO'
          'COMUM'
          'COMUM_REVISAO'
          'REVISAO')
      end
      object cbbSituacao: TComboBox
        Left = 690
        Top = 35
        Width = 121
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 5
        Text = 'ABERTO'
        Items.Strings = (
          'ABERTO'
          'CONCLUIDO')
      end
      object edtDatIni: TDateEdit
        Left = 105
        Top = 90
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
      object edtDatFim: TDateEdit
        Left = 237
        Top = 90
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
      end
      object edtDescServico: TEdit
        Left = 106
        Top = 63
        Width = 256
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 8
      end
      object edtOrdemServico: TCurrencyEdit
        Left = 689
        Top = 63
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0'
        TabOrder = 9
      end
      object chkFornecedor: TCheckBox
        Left = 87
        Top = 10
        Width = 19
        Height = 17
        TabOrder = 10
      end
      object chkCodSer: TCheckBox
        Left = 87
        Top = 38
        Width = 19
        Height = 17
        TabOrder = 11
      end
      object chkDesSer: TCheckBox
        Left = 87
        Top = 65
        Width = 19
        Height = 17
        TabOrder = 12
      end
      object chkTipo: TCheckBox
        Left = 670
        Top = 10
        Width = 18
        Height = 17
        TabOrder = 13
      end
      object chkSituacao: TCheckBox
        Left = 670
        Top = 37
        Width = 18
        Height = 17
        TabOrder = 14
      end
      object chkOrdemServ: TCheckBox
        Left = 670
        Top = 65
        Width = 18
        Height = 17
        TabOrder = 15
      end
      object chkPeriodo: TCheckBox
        Left = 86
        Top = 92
        Width = 18
        Height = 17
        TabOrder = 16
      end
      object cbbOrdemSql: TComboBox
        Left = 670
        Top = 90
        Width = 140
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 6
        TabOrder = 17
        Text = 'DATA'
        Items.Strings = (
          'PLACA'
          'FORNECEDOR'
          'SERVI'#199'O'
          'TIPO'
          'SITUA'#199#195'O'
          'ORDEM SERVI'#199'O'
          'DATA')
      end
      object dbg2: TDBGrid
        Left = -10
        Top = 118
        Width = 996
        Height = 373
        DataSource = dsClientRelacaoManutencoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 18
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
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODSER'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Servi'#231'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESSER1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Servi'#231'o'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESSER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Comp.Servi'#231'o'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMORDEM'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem Servi'#231'o'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATSER'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMSER'
            Title.Alignment = taCenter
            Title.Caption = 'Km'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDSER'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.'
            Width = 60
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
            FieldName = 'TOTAL_ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
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
            FieldName = 'TOTAL_ITEM_DESC'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total C/Desc.'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODFOR'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Fornecedor'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESFOR'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.Fornecedor'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDFOR'
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
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SITSER'
            Title.Alignment = taCenter
            Title.Caption = 'Sit.Servi'#231'o'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPSER'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Servi'#231'o'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMUSU'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Width = 130
            Visible = True
          end>
      end
      object dbedtTOTAL_GERAL: TDBEdit
        Left = 857
        Top = 517
        Width = 121
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'TOTAL_GERAL'
        DataSource = dsClientRelacaoManutencoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object dbedtTOTAL_DESC: TDBEdit
        Left = 706
        Top = 517
        Width = 121
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'TOTAL_DESC_GERAL'
        DataSource = dsClientRelacaoManutencoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
      end
      object dbedtTOTAL_GERAL_DESC: TDBEdit
        Left = 555
        Top = 517
        Width = 121
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'TOTAL_GERAL_DESC'
        DataSource = dsClientRelacaoManutencoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
      end
      object btnAlterarOS: TBitBtn
        Left = 1
        Top = 494
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
        TabOrder = 22
        OnClick = btnAlterarOSClick
      end
      object btnExcluirHistManut: TBitBtn
        Left = 1
        Top = 520
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
        TabOrder = 23
        OnClick = btnExcluirHistManutClick
      end
    end
    object ts3: TTabSheet
      Caption = '     Entradas / Sa'#237'das     '
      ImageIndex = 3
      OnShow = ts3Show
      object lblDataAbastec: TLabel
        Left = 471
        Top = 12
        Width = 119
        Height = 13
        Caption = 'Abastecimento Entre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblADatAbastec: TLabel
        Left = 714
        Top = 12
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
      object lblDataSaida: TLabel
        Left = 52
        Top = 12
        Width = 64
        Height = 13
        Caption = 'Sa'#237'da Entre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblADatSaida: TLabel
        Left = 239
        Top = 12
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
      object lbl32: TLabel
        Left = 363
        Top = 522
        Width = 96
        Height = 13
        Caption = 'Total Km Rodado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl33: TLabel
        Left = 582
        Top = 522
        Width = 106
        Height = 13
        Caption = 'Combust'#237'vel Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl34: TLabel
        Left = 808
        Top = 522
        Width = 67
        Height = 13
        Caption = 'M'#233'dia Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbg3: TDBGrid
        Left = -7
        Top = 41
        Width = 993
        Height = 470
        DataSource = dsClientConsAbastecimentosRealizados
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
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATENT'
            Title.Alignment = taCenter
            Title.Caption = 'Data Chegada'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Km Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMENT'
            Title.Alignment = taCenter
            Title.Caption = 'Km Chegada'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CARGA'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
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
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'QTD_COMB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.Comb.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'MEDIA_CONS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'M'#233'dia Km/L'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DAT_ABASTEC'
            Title.Alignment = taCenter
            Title.Caption = 'Data Abastec.'
            Width = 80
            Visible = True
          end>
      end
      object edtDatAbastecimentoIni: TDateEdit
        Left = 596
        Top = 9
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object edtDatAbastecimentoFim: TDateEdit
        Left = 737
        Top = 9
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object chkDataAbastec: TCheckBox
        Left = 454
        Top = 11
        Width = 13
        Height = 17
        TabOrder = 3
      end
      object chkDataSaida: TCheckBox
        Left = 35
        Top = 11
        Width = 15
        Height = 17
        TabOrder = 4
      end
      object edtDatSaidaIni: TDateEdit
        Left = 122
        Top = 9
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
      end
      object edtDatSaidaFim: TDateEdit
        Left = 265
        Top = 9
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
      object btnMostrarEntradaSaida: TBitBtn
        Left = 881
        Top = 7
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
        OnClick = btnMostrarEntradaSaidaClick
      end
      object dbedtvnTotalRodadoGeral: TDBEdit
        Left = 463
        Top = 519
        Width = 100
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'vnTotalRodadoGeral'
        DataSource = dsClientConsAbastecimentosRealizados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object dbedtvnTotalCombusivel: TDBEdit
        Left = 692
        Top = 519
        Width = 100
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'vnTotalCombusivel'
        DataSource = dsClientConsAbastecimentosRealizados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object dbedtvnMediaGeral: TDBEdit
        Left = 879
        Top = 519
        Width = 100
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'vnMediaGeral'
        DataSource = dsClientConsAbastecimentosRealizados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
    end
    object ts4: TTabSheet
      Caption = '     Infra'#231#245'es     '
      ImageIndex = 4
      OnShow = ts4Show
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
        Top = 40
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
      object lblInfracao: TLabel
        Left = 38
        Top = 40
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
        Top = 67
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
      object lblADatInfra: TLabel
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
      object lbl36: TLabel
        Left = 772
        Top = 473
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
      object lbl37: TLabel
        Left = 748
        Top = 497
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
      object lbl38: TLabel
        Left = 798
        Top = 521
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
      object dbg4: TDBGrid
        Left = -1
        Top = 95
        Width = 988
        Height = 368
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
      object dblkcbbCODINFRA: TDBLookupComboBox
        Left = 111
        Top = 37
        Width = 313
        Height = 21
        DataField = 'CODINFRA'
        KeyField = 'CODINFRA'
        ListField = 'DESINFRA'
        ListSource = dsInfracoes
        TabOrder = 2
        TabStop = False
        OnCloseUp = dblkcbbCODINFRACloseUp
        OnKeyUp = dblkcbbCODINFRAKeyUp
      end
      object dblkcbbCODMOT: TDBLookupComboBox
        Left = 111
        Top = 64
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
        TabOrder = 3
        TabStop = False
      end
      object edtDatIniInfra: TDateEdit
        Left = 635
        Top = 37
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
      end
      object edtDatFimInfra: TDateEdit
        Left = 767
        Top = 37
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
      end
      object cbbGravidade: TComboBox
        Left = 635
        Top = 11
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 6
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
        TabOrder = 7
      end
      object chkInfracao: TCheckBox
        Left = 91
        Top = 39
        Width = 17
        Height = 17
        TabStop = False
        TabOrder = 8
      end
      object chkCondutor: TCheckBox
        Left = 91
        Top = 66
        Width = 17
        Height = 17
        TabStop = False
        TabOrder = 9
      end
      object chkDataInfra: TCheckBox
        Left = 615
        Top = 41
        Width = 17
        Height = 17
        TabStop = False
        TabOrder = 10
      end
      object chkGravidade: TCheckBox
        Left = 615
        Top = 13
        Width = 17
        Height = 17
        TabStop = False
        TabOrder = 11
      end
      object btnMostrarInfra: TBitBtn
        Left = 880
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
        TabOrder = 12
        OnClick = btnMostrarInfraClick
      end
      object dbedtvnQtdPontos: TDBEdit
        Left = 862
        Top = 494
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
        TabOrder = 13
      end
      object dbedtvnQtdInfra: TDBEdit
        Left = 862
        Top = 470
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
        TabOrder = 14
      end
      object dbedtvnVlrTotal: TDBEdit
        Left = 862
        Top = 518
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
        TabOrder = 15
      end
    end
  end
  object dsCadVeiculo: TDataSource
    AutoEdit = False
    DataSet = DmFire.CadVeiculo
    OnStateChange = dsCadVeiculoStateChange
    Left = 584
    Top = 160
  end
  object Modelos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT MODELOS.*,MARCAS.DESMAR'
      'FROM MODELOS'
      'INNER JOIN MARCAS ON MARCAS.CODMAR = MODELOS.CODMAR'
      'ORDER BY MODELOS.DESMOD')
    Left = 632
    Top = 160
    object ModelosCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"MODELOS"."CODMOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ModelosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MODELOS"."CODUSU"'
      Required = True
    end
    object ModelosCODMAR: TIntegerField
      FieldName = 'CODMAR'
      Origin = '"MODELOS"."CODMAR"'
      Required = True
    end
    object ModelosDESMOD: TIBStringField
      FieldName = 'DESMOD'
      Origin = '"MODELOS"."DESMOD"'
      Size = 100
    end
    object ModelosDESMAR: TIBStringField
      FieldName = 'DESMAR'
      Origin = '"MARCAS"."DESMAR"'
      Size = 100
    end
  end
  object dsModelos: TDataSource
    DataSet = Modelos
    Left = 744
    Top = 184
  end
  object dsReserva: TDataSource
    Left = 216
    Top = 480
  end
  object Usuarios: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'select * from USUARIO order by nomusu')
    Left = 640
    Top = 344
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
    Left = 704
    Top = 360
  end
  object UsuariosAlt: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'select * from USUARIO order by nomusu')
    Left = 600
    Top = 368
    object UsuariosAltCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UsuariosAltNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object UsuariosAltDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object UsuariosAltLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object UsuariosAltSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object UsuariosAltDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object UsuariosAltSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
  end
  object dsUsuariosAlt: TDataSource
    DataSet = UsuariosAlt
    Left = 664
    Top = 384
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 88
    Top = 216
  end
  object Motoristas: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT MOTORISTA.codmot, MOTORISTA.nommot,motorista.foto'
      'FROM'
      'motorista'
      'WHERE'
      'MOTORISTA.sitmot = '#39'ATIVO'#39
      'ORDER BY MOTORISTA.nommot')
    Left = 656
    Top = 480
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
  end
  object dsMotoristas: TDataSource
    DataSet = Motoristas
    Left = 592
    Top = 472
  end
  object dsRelacaoManutPeriodicas: TDataSource
    DataSet = DmFire.ClientRelacaoManutPeriodicas
    Left = 256
    Top = 256
  end
  object Fornecedor: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT FORNECEDOR.CODFOR,FORNECEDOR.DESFOR,'
      'FORNECEDOR.CIDFOR,FORNECEDOR.SIGUFS'
      'FROM FORNECEDOR'
      'where FORNECEDOR.SITFOR = '#39'ATIVO'#39
      'ORDER BY FORNECEDOR.DESFOR')
    Left = 456
    Top = 224
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
    Left = 456
    Top = 272
  end
  object dsClientRelacaoManutencoes: TDataSource
    DataSet = DmFire.ClientRelacaoManutencoes
    Left = 256
    Top = 312
  end
  object ConsAbastecimentosRealizados: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT ENTRADA_SAIDA.*,'
      '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,'
      '       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,'
      '       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,'
      '       CARRETA.PLAVEI AS PLAVEI_CARRETA'
      'FROM ENTRADA_SAIDA'
      'INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT'
      
        'INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_S' +
        'AIDA.USUSAIDA'
      
        'LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODC' +
        'ARRETA'
      'WHERE'
      '((ENTRADA_SAIDA.KMSAIDA > 0) and (ENTRADA_SAIDA.KMENT > 0)) and'
      'ENTRADA_SAIDA.QTD_COMB > 0'
      
        'ORDER BY VEICULO.PLAVEI,ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HOREN' +
        'T')
    Left = 896
    Top = 224
    object ConsAbastecimentosRealizadosSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosRealizadosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosRealizadosUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object ConsAbastecimentosRealizadosUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object ConsAbastecimentosRealizadosCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object ConsAbastecimentosRealizadosDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object ConsAbastecimentosRealizadosHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object ConsAbastecimentosRealizadosKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
    end
    object ConsAbastecimentosRealizadosDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object ConsAbastecimentosRealizadosHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object ConsAbastecimentosRealizadosKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
    end
    object ConsAbastecimentosRealizadosDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object ConsAbastecimentosRealizadosCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object ConsAbastecimentosRealizadosIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object ConsAbastecimentosRealizadosQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object ConsAbastecimentosRealizadosDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object ConsAbastecimentosRealizadosMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object ConsAbastecimentosRealizadosITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object ConsAbastecimentosRealizadosPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsAbastecimentosRealizadosDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ConsAbastecimentosRealizadosNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsAbastecimentosRealizadosFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsAbastecimentosRealizadosUSUARIO_SAIDA: TIBStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosPLAVEI_CARRETA: TIBStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
  end
  object ProviderConsAbastecimentosRealizados: TDataSetProvider
    DataSet = ConsAbastecimentosRealizados
    Left = 896
    Top = 280
  end
  object ClientConsAbastecimentosRealizados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsAbastecimentosRealizados'
    OnCalcFields = ClientConsAbastecimentosRealizadosCalcFields
    Left = 896
    Top = 336
    object ClientConsAbastecimentosRealizadosSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Required = True
    end
    object ClientConsAbastecimentosRealizadosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientConsAbastecimentosRealizadosUSUENT: TIntegerField
      FieldName = 'USUENT'
    end
    object ClientConsAbastecimentosRealizadosUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
    end
    object ClientConsAbastecimentosRealizadosCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientConsAbastecimentosRealizadosDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
    end
    object ClientConsAbastecimentosRealizadosHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
    end
    object ClientConsAbastecimentosRealizadosKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosDATENT: TDateField
      FieldName = 'DATENT'
    end
    object ClientConsAbastecimentosRealizadosHORENT: TTimeField
      FieldName = 'HORENT'
    end
    object ClientConsAbastecimentosRealizadosKMENT: TIntegerField
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosCARGA: TIntegerField
      FieldName = 'CARGA'
    end
    object ClientConsAbastecimentosRealizadosCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object ClientConsAbastecimentosRealizadosIN_ENGATADO: TWideStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
    end
    object ClientConsAbastecimentosRealizadosMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosITESEL: TWideStringField
      FieldName = 'ITESEL'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientConsAbastecimentosRealizadosDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientConsAbastecimentosRealizadosNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosAPEMOT: TWideStringField
      FieldName = 'APEMOT'
      Size = 50
    end
    object ClientConsAbastecimentosRealizadosFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientConsAbastecimentosRealizadosUSUARIO_SAIDA: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosPLAVEI_CARRETA: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Size = 15
    end
    object ClientConsAbastecimentosRealizadosvnTotalRodado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosvnTotalRodadoGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalRodadoGeral'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnTotalRodado)'
    end
    object ClientConsAbastecimentosRealizadosvnTotalCombusivel: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCombusivel'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTD_COMB)'
    end
    object ClientConsAbastecimentosRealizadosvnMediaGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnMediaGeral'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(vnTotalRodado) / SUM(QTD_COMB)'
    end
  end
  object dsClientConsAbastecimentosRealizados: TDataSource
    DataSet = ClientConsAbastecimentosRealizados
    Left = 896
    Top = 392
  end
  object Infracoes: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT infracoes_cad.codinfra, infracoes_cad.desinfra, infracoes' +
        '_cad.qtd_pontos'
      'FROM infracoes_cad'
      'ORDER BY infracoes_cad.desinfra')
    Left = 566
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
    Left = 566
    Top = 312
  end
  object dsClientConsInfracoesMov: TDataSource
    DataSet = DmFire.ClientConsInfracoesMov
    Left = 256
    Top = 368
  end
end
