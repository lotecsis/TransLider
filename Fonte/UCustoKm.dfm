object FCustoKm: TFCustoKm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Custo do Km Rodado'
  ClientHeight = 586
  ClientWidth = 985
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
  object lbl1: TLabel
    Left = 154
    Top = 469
    Width = 45
    Height = 13
    Caption = 'Ped'#225'gio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 267
    Top = 469
    Width = 70
    Height = 13
    Caption = 'Combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 380
    Top = 469
    Width = 53
    Height = 13
    Caption = 'Descarga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 495
    Top = 469
    Width = 55
    Height = 13
    Caption = 'Refei'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 495
    Top = 506
    Width = 72
    Height = 13
    Caption = 'Outras Desp.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 607
    Top = 469
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
  object lbl9: TLabel
    Left = 720
    Top = 469
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
  object lbl10: TLabel
    Left = 607
    Top = 505
    Width = 76
    Height = 13
    Caption = 'Manuten'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 226
    Top = 560
    Width = 71
    Height = 13
    Caption = 'Total Gastos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 427
    Top = 560
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
  object lbl13: TLabel
    Left = 610
    Top = 560
    Width = 53
    Height = 13
    Caption = 'Custo Km'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 154
    Top = 506
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
    Left = 270
    Top = 506
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
    Left = 382
    Top = 506
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
  object edtDatIni: TDateEdit
    Left = 391
    Top = 13
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtDatFim: TDateEdit
    Left = 513
    Top = 13
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 48
    Width = 986
    Height = 409
    DataSource = dsCustoKm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnPedagio'
        Title.Alignment = taCenter
        Title.Caption = 'Ped'#225'gio'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnCombustivel'
        Title.Alignment = taCenter
        Title.Caption = 'Combust'#237'vel'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCARGA'
        Title.Alignment = taCenter
        Title.Caption = 'Descarga'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFEICOES'
        Title.Alignment = taCenter
        Title.Caption = 'Refei'#231#245'es'
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OUTRAS_DESP'
        Title.Alignment = taCenter
        Title.Caption = 'Outras Desp.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Comiss'#227'o'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SALARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Sal'#225'rio'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MANUTENCOES'
        Title.Alignment = taCenter
        Title.Caption = 'Manuten'#231#245'es'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FINANCIAMENTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Financiamen.'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DEPRECIACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Deprecia'#231#227'o'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PNEUS'
        Title.Alignment = taCenter
        Title.Caption = 'Pneus'
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnTotalGasto'
        Title.Alignment = taCenter
        Title.Caption = 'Total Gasto'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOTAL_KM'
        Title.Alignment = taCenter
        Title.Caption = 'Km Rodado'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vnCustoKm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Custo Km'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMB_EMP'
        Title.Alignment = taCenter
        Title.Caption = 'Comb.Emp.'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMB_POSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Comb.Posto'
        Width = 70
        Visible = True
      end>
  end
  object btnMostrar: TBitBtn
    Left = 792
    Top = 12
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
    OnClick = btnMostrarClick
  end
  object dbedtvnTPedagio: TDBEdit
    Left = 154
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTPedagio'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object dbedtvnTCombustivel: TDBEdit
    Left = 267
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTCombustivel'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object dbedtvnTDescarga: TDBEdit
    Left = 380
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTDescarga'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object dbedtvnTRefeicoes: TDBEdit
    Left = 493
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTRefeicoes'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object dbedtvnTOutrasDesp: TDBEdit
    Left = 493
    Top = 520
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTOutrasDesp'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbedtvnTComissao: TDBEdit
    Left = 607
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTComissao'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object dbedtvnTGeral: TDBEdit
    Left = 303
    Top = 557
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTGeral'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object dbedtvnTManutencoes: TDBEdit
    Left = 607
    Top = 520
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTManutencoes'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object dbedtvnTSalario: TDBEdit
    Left = 720
    Top = 484
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTSalario'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object dbedtvnTKm: TDBEdit
    Left = 483
    Top = 557
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTKm'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object edtCustoGeralKm: TCurrencyEdit
    Left = 667
    Top = 557
    Width = 100
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Alignment = taCenter
    Color = clInfoBk
    DisplayFormat = ' ,0.00;- ,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
  object dbedtvnTDepreciacao: TDBEdit
    Left = 154
    Top = 520
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTDepreciacao'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object dbedtvnTFinanciamentos: TDBEdit
    Left = 267
    Top = 520
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTFinanciamentos'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
  end
  object dbedtvnTPneus: TDBEdit
    Left = 380
    Top = 520
    Width = 100
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'vnTPneus'
    DataSource = dsCustoKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object btnImprimir: TBitBtn
    Left = 900
    Top = 12
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    Glyph.Data = {
      0E030000424D0E030000000000003600000028000000110000000E0000000100
      180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBF0000000000000000000000000000000000000000000000000000000000
      00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
      000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
      BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
      00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
      BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
      000000000000000000000000000000FFFFFF000000000000000000000000BFBF
      BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
      0000000000000000000000BFBFBFBFBFBF00}
    ParentDoubleBuffered = False
    TabOrder = 18
    OnClick = btnImprimirClick
  end
  object dsCustoKm: TDataSource
    DataSet = DmFire.ClientCustoKm
    Left = 488
    Top = 104
  end
end
