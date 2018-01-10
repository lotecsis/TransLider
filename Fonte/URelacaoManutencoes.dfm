object FRelacaoManutencoes: TFRelacaoManutencoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Manuten'#231#245'es'
  ClientHeight = 640
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
    Left = 53
    Top = 13
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
  object dbtxtDESVEI: TDBText
    Left = 235
    Top = 13
    Width = 298
    Height = 17
    DataField = 'DESVEI'
    DataSource = dsVeiculos
  end
  object lblFornecedor: TLabel
    Left = 19
    Top = 40
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
    Top = 40
    Width = 186
    Height = 17
    DataField = 'CID_UF'
    DataSource = dsFornecedor
  end
  object lblServico: TLabel
    Left = 41
    Top = 68
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
    Top = 68
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
    Left = 624
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
    Top = 95
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
    Left = 800
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
  object lbl1: TLabel
    Left = 629
    Top = 120
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
  object lbl2: TLabel
    Left = 563
    Top = 596
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
  object lbl3: TLabel
    Left = 714
    Top = 596
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
  object lbl4: TLabel
    Left = 865
    Top = 596
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
  object lblNumDoc: TLabel
    Left = 31
    Top = 121
    Width = 52
    Height = 13
    Caption = 'Num. Doc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 144
    Width = 996
    Height = 441
    DataSource = dsClientRelacaoManutencoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 11
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
        FieldName = 'CODSER1'
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
        Expanded = False
        FieldName = 'GARANTIA'
        Title.Alignment = taCenter
        Title.Caption = 'Garantia'
        Width = 150
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
  object dblkcbbCODVEI: TDBLookupComboBox
    Left = 106
    Top = 10
    Width = 121
    Height = 21
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
    Left = 106
    Top = 37
    Width = 256
    Height = 21
    DataField = 'CODFOR'
    KeyField = 'CODFOR'
    ListField = 'DESFOR'
    ListSource = dsFornecedor
    TabOrder = 1
    OnCloseUp = dblkcbbCODFORCloseUp
    OnKeyUp = dblkcbbCODFORKeyUp
  end
  object edtCodSer: TCurrencyEdit
    Left = 106
    Top = 65
    Width = 122
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Alignment = taLeftJustify
    DisplayFormat = '0'
    TabOrder = 2
    OnExit = edtCodSerExit
    OnKeyDown = edtCodSerKeyDown
  end
  object btnConsServico: TBitBtn
    Left = 208
    Top = 66
    Width = 19
    Height = 19
    Caption = '...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 10
    TabStop = False
    OnClick = btnConsServicoClick
  end
  object btnMostrar: TBitBtn
    Left = 889
    Top = 5
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
    TabOrder = 9
    OnClick = btnMostrarClick
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
    Left = 689
    Top = 90
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object edtDatFim: TDateEdit
    Left = 821
    Top = 90
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 8
  end
  object edtDescServico: TEdit
    Left = 106
    Top = 92
    Width = 256
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 3
  end
  object edtOrdemServico: TCurrencyEdit
    Left = 689
    Top = 63
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 6
  end
  object chkPlaca: TCheckBox
    Left = 87
    Top = 12
    Width = 19
    Height = 17
    TabOrder = 12
  end
  object chkFornecedor: TCheckBox
    Left = 87
    Top = 39
    Width = 19
    Height = 17
    TabOrder = 13
  end
  object chkCodSer: TCheckBox
    Left = 87
    Top = 67
    Width = 19
    Height = 17
    TabOrder = 14
  end
  object chkDesSer: TCheckBox
    Left = 87
    Top = 94
    Width = 19
    Height = 17
    TabOrder = 15
  end
  object chkTipo: TCheckBox
    Left = 670
    Top = 10
    Width = 18
    Height = 17
    TabOrder = 16
  end
  object chkSituacao: TCheckBox
    Left = 670
    Top = 37
    Width = 18
    Height = 17
    TabOrder = 17
  end
  object chkOrdemServ: TCheckBox
    Left = 670
    Top = 65
    Width = 18
    Height = 17
    TabOrder = 18
  end
  object chkPeriodo: TCheckBox
    Left = 670
    Top = 92
    Width = 18
    Height = 17
    TabOrder = 19
  end
  object cbbOrdemSql: TComboBox
    Left = 670
    Top = 117
    Width = 140
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 6
    TabOrder = 20
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
  object dbedtTOTAL_GERAL: TDBEdit
    Left = 865
    Top = 610
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
    TabOrder = 21
  end
  object dbedtTOTAL_DESC: TDBEdit
    Left = 714
    Top = 610
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
    TabOrder = 22
  end
  object dbedtTOTAL_GERAL_DESC: TDBEdit
    Left = 563
    Top = 610
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
    TabOrder = 23
  end
  object btnAlterarOS: TBitBtn
    Left = 4
    Top = 587
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
    TabOrder = 24
    OnClick = btnAlterarOSClick
  end
  object btnExcluir: TBitBtn
    Left = 4
    Top = 613
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
    TabOrder = 25
    OnClick = btnExcluirClick
  end
  object edtNumDoc: TEdit
    Left = 106
    Top = 118
    Width = 121
    Height = 21
    TabOrder = 26
  end
  object chkNumDoc: TCheckBox
    Left = 87
    Top = 120
    Width = 19
    Height = 17
    TabOrder = 27
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 384
    Top = 216
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
    Left = 440
    Top = 216
  end
  object dsReserva: TDataSource
    Left = 560
    Top = 248
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
    Left = 384
    Top = 272
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
    Left = 448
    Top = 272
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 240
    Top = 296
  end
  object dsClientRelacaoManutencoes: TDataSource
    DataSet = DmFire.ClientRelacaoManutencoes
    Left = 376
    Top = 344
  end
end
