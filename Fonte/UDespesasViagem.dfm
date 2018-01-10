object FDespesasViagem: TFDespesasViagem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Despesas de Viagem'
  ClientHeight = 563
  ClientWidth = 579
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
    Left = 29
    Top = 24
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
  object lbl8: TLabel
    Left = 31
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 13
    Top = 147
    Width = 49
    Height = 13
    Caption = 'Chegada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 22
    Top = 65
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
  object lbl11: TLabel
    Left = 214
    Top = 65
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
  object lbl12: TLabel
    Left = 7
    Top = 92
    Width = 55
    Height = 13
    Caption = 'Etiner'#225'rio'
    FocusControl = dbedtDESTINO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 65
    Top = 175
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
  object lbl14: TLabel
    Left = 9
    Top = 229
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
  object Label1: TLabel
    Left = 81
    Top = 202
    Width = 34
    Height = 13
    Caption = 'M'#233'dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl15: TLabel
    Left = 14
    Top = 256
    Width = 101
    Height = 13
    Caption = 'Comb. Gasto Emp.'
    FocusControl = dbedtQTD_COMBEMP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 9
    Top = 283
    Width = 106
    Height = 13
    Caption = 'Comb. Gasto Posto'
    FocusControl = dbedtQTD_COMBPOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl17: TLabel
    Left = 271
    Top = 256
    Width = 88
    Height = 13
    Caption = 'Valor Litro Emp.'
    FocusControl = dbedtVLR_COMBEMP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl18: TLabel
    Left = 266
    Top = 283
    Width = 93
    Height = 13
    Caption = 'Valor Litro Posto'
    FocusControl = dbedtVLR_COMBPOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 78
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Data'
    FocusControl = dbedtDATSAIDA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 258
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Hora'
    FocusControl = dbedtHORSAIDA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 442
    Top = 120
    Width = 18
    Height = 13
    Caption = 'Km'
    FocusControl = dbedtKMSAIDA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 78
    Top = 147
    Width = 27
    Height = 13
    Caption = 'Data'
    FocusControl = dbedtDATENT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 258
    Top = 149
    Width = 27
    Height = 13
    Caption = 'Hora'
    FocusControl = dbedtHORENT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 442
    Top = 149
    Width = 18
    Height = 13
    Caption = 'Km'
    FocusControl = dbedtKMENT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl19: TLabel
    Left = 70
    Top = 321
    Width = 45
    Height = 13
    Caption = 'Pedagio'
    FocusControl = dbedtVLR_PEDAGIO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl20: TLabel
    Left = 62
    Top = 348
    Width = 53
    Height = 13
    Caption = 'Descarga'
    FocusControl = dbedtVLR_DESCARGA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl21: TLabel
    Left = 60
    Top = 375
    Width = 55
    Height = 13
    Caption = 'Refei'#231#245'es'
    FocusControl = dbedtVLR_REFEICOES
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl22: TLabel
    Left = 20
    Top = 402
    Width = 95
    Height = 13
    Caption = 'Outras Despesas'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl23: TLabel
    Left = 276
    Top = 321
    Width = 133
    Height = 13
    Caption = 'Quantidade de Cheques'
    FocusControl = dbedtQTD_CHEQUE_REC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl24: TLabel
    Left = 363
    Top = 384
    Width = 46
    Height = 13
    Caption = 'Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl25: TLabel
    Left = 320
    Top = 348
    Width = 89
    Height = 13
    Caption = 'Gerar Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 244
    Top = 229
    Width = 9
    Height = 13
    Caption = 'L.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 244
    Top = 256
    Width = 9
    Height = 13
    Caption = 'L.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 244
    Top = 283
    Width = 9
    Height = 13
    Caption = 'L.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl26: TLabel
    Left = 94
    Top = 435
    Width = 65
    Height = 13
    Caption = 'Total Gasto'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl27: TLabel
    Left = 47
    Top = 461
    Width = 113
    Height = 13
    Caption = 'Valor Adiantamento'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl28: TLabel
    Left = 67
    Top = 486
    Width = 91
    Height = 13
    Caption = 'Valor '#224' Restituir'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 309
    Top = 411
    Width = 100
    Height = 13
    Caption = 'Vlr. Frete Retorno'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 348
    Top = 438
    Width = 61
    Height = 13
    Caption = 'Frete Pago'
    FocusControl = dbedtVLR_OUTRAS_DESP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumCarga: TCurrencyEdit
    Left = 69
    Top = 21
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = edtNumCargaExit
  end
  object edtPlaVei: TEdit
    Left = 69
    Top = 62
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtNomMot: TEdit
    Left = 274
    Top = 62
    Width = 292
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbedtDESTINO: TDBEdit
    Left = 69
    Top = 89
    Width = 497
    Height = 21
    TabStop = False
    DataField = 'DESTINO'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 3
  end
  object edtTotalKm: TCurrencyEdit
    Left = 120
    Top = 172
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    DisplayFormat = '###,###,##0'
    ReadOnly = True
    TabOrder = 4
  end
  object dbedtQTD_COMB: TDBEdit
    Left = 120
    Top = 226
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'QTD_COMB'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 5
  end
  object dbedtMEDIA_CONS: TDBEdit
    Left = 120
    Top = 199
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'MEDIA_CONS'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 6
  end
  object dbedtQTD_COMBEMP: TDBEdit
    Left = 120
    Top = 253
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'QTD_COMBEMP'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 7
  end
  object dbedtQTD_COMBPOS: TDBEdit
    Left = 120
    Top = 280
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'QTD_COMBPOS'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 8
    OnExit = dbedtQTD_COMBPOSExit
  end
  object dbedtVLR_COMBEMP: TDBEdit
    Left = 365
    Top = 253
    Width = 80
    Height = 21
    TabStop = False
    DataField = 'VLR_COMBEMP'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 9
  end
  object dbedtVLR_COMBPOS: TDBEdit
    Left = 365
    Top = 280
    Width = 80
    Height = 21
    TabStop = False
    DataField = 'VLR_COMBPOS'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 10
    OnExit = dbedtVLR_COMBPOSExit
  end
  object dbedtDATSAIDA: TDBEdit
    Left = 111
    Top = 117
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'DATSAIDA'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 11
  end
  object dbedtHORSAIDA: TDBEdit
    Left = 288
    Top = 117
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'HORSAIDA'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 12
  end
  object dbedtKMSAIDA: TDBEdit
    Left = 466
    Top = 117
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'KMSAIDA'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 13
  end
  object dbedtDATENT: TDBEdit
    Left = 111
    Top = 144
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'DATENT'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 14
  end
  object dbedtHORENT: TDBEdit
    Left = 288
    Top = 144
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'HORENT'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 15
  end
  object dbedtKMENT: TDBEdit
    Left = 466
    Top = 144
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'KMENT'
    DataSource = dsCadEntradaSaida
    ReadOnly = True
    TabOrder = 16
  end
  object dbedtVLR_PEDAGIO: TDBEdit
    Left = 120
    Top = 318
    Width = 121
    Height = 21
    DataField = 'VLR_PEDAGIO'
    DataSource = dsCadEntradaSaida
    TabOrder = 17
    OnExit = dbedtVLR_PEDAGIOExit
  end
  object dbedtVLR_DESCARGA: TDBEdit
    Left = 120
    Top = 345
    Width = 121
    Height = 21
    DataField = 'VLR_DESCARGA'
    DataSource = dsCadEntradaSaida
    TabOrder = 18
    OnExit = dbedtVLR_DESCARGAExit
  end
  object dbedtVLR_REFEICOES: TDBEdit
    Left = 120
    Top = 372
    Width = 121
    Height = 21
    DataField = 'VLR_REFEICOES'
    DataSource = dsCadEntradaSaida
    TabOrder = 19
    OnExit = dbedtVLR_REFEICOESExit
  end
  object dbedtVLR_OUTRAS_DESP: TDBEdit
    Left = 120
    Top = 399
    Width = 121
    Height = 21
    DataField = 'VLR_OUTRAS_DESP'
    DataSource = dsCadEntradaSaida
    TabOrder = 20
    OnExit = dbedtVLR_OUTRAS_DESPExit
  end
  object dbedtQTD_CHEQUE_REC: TDBEdit
    Left = 415
    Top = 318
    Width = 121
    Height = 21
    DataField = 'QTD_CHEQUE_REC'
    DataSource = dsCadEntradaSaida
    TabOrder = 21
  end
  object dbcbbRETORNO: TDBComboBox
    Left = 415
    Top = 381
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'RETORNO'
    DataSource = dsCadEntradaSaida
    Items.Strings = (
      'VAZIO'
      'CARREGADO')
    TabOrder = 23
  end
  object pnl1: TPanel
    Left = 0
    Top = 522
    Width = 579
    Height = 41
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 26
    TabStop = True
    object btnConfirmar: TBitBtn
      Left = 483
      Top = 7
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
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TBitBtn
      Left = 391
      Top = 7
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
      TabOrder = 1
      TabStop = False
      OnClick = btnCancelarClick
    end
  end
  object dbcbbIN_COMISSAO: TDBComboBox
    Left = 415
    Top = 345
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'IN_COMISSAO'
    DataSource = dsCadEntradaSaida
    Items.Strings = (
      'SIM'
      'NAO')
    TabOrder = 22
  end
  object edtTotalGasto: TCurrencyEdit
    Left = 164
    Top = 432
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 27
  end
  object edtVlrTotComPos: TCurrencyEdit
    Left = 450
    Top = 280
    Width = 102
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    DisplayFormat = ',0.00'
    ReadOnly = True
    TabOrder = 28
  end
  object edtVlrAdt: TCurrencyEdit
    Left = 164
    Top = 458
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 29
  end
  object edtVlrDevolver: TCurrencyEdit
    Left = 164
    Top = 483
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 30
  end
  object edtVlrFreVol: TCurrencyEdit
    Left = 415
    Top = 408
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ',0.00'
    TabOrder = 24
    OnExit = edtVlrFreVolExit
  end
  object cbbFreRetPag: TComboBox
    Left = 415
    Top = 435
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 25
    OnExit = cbbFreRetPagExit
    Items.Strings = (
      'SIM'
      'NAO')
  end
  object dsCadEntradaSaida: TDataSource
    DataSet = DmFire.CadEntradaSaida
    OnStateChange = dsCadEntradaSaidaStateChange
    Left = 504
    Top = 208
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 344
    Top = 176
  end
  object dsCadCargas: TDataSource
    DataSet = DmFire.CadCargas
    Left = 384
    Top = 20
  end
end
