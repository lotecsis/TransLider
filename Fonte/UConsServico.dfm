object FConsServico: TFConsServico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Servi'#231'os'
  ClientHeight = 487
  ClientWidth = 941
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
    Left = 16
    Top = 16
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
  object lbl2: TLabel
    Left = 472
    Top = 16
    Width = 52
    Height = 13
    Caption = 'Peri'#243'dico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 618
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Exige Revis'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 794
    Top = 16
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
  object dbg1: TDBGrid
    Left = -1
    Top = 48
    Width = 943
    Height = 403
    DataSource = dsConsServico
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg1DblClick
    OnKeyPress = dbg1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODSER'
        Title.Alignment = taCenter
        Title.Caption = 'Servi'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESSER'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 380
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IN_PERIODICO'
        Title.Alignment = taCenter
        Title.Caption = 'Peri'#243'dico'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LIMITE_KM'
        Title.Alignment = taCenter
        Title.Caption = 'Limite KM'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LIMITE_DIAS'
        Title.Alignment = taCenter
        Title.Caption = 'Limite Dias'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IN_REVISAO'
        Title.Alignment = taCenter
        Title.Caption = 'Exige Revis'#227'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITSER'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Dat.Cad.'
        Width = 80
        Visible = True
      end>
  end
  object btnNovo: TBitBtn
    Left = 4
    Top = 457
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
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnAbrirFicha: TBitBtn
    Left = 95
    Top = 457
    Width = 85
    Height = 25
    Caption = 'Abrir'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
      555555777777777FF5555500000000805555557777777777FF555550BBBBB008
      05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
      005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
      055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
      055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
      05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
      05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
      005555555775FFFF77F555555570000000555555555777777755}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnAbrirFichaClick
  end
  object edtServico: TEdit
    Left = 63
    Top = 13
    Width = 394
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 100
    ParentFont = False
    TabOrder = 3
    OnChange = edtServicoChange
  end
  object cbbPeriodico: TComboBox
    Left = 530
    Top = 13
    Width = 80
    Height = 22
    Style = csOwnerDrawFixed
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'TODOS'
    OnCloseUp = cbbPeriodicoCloseUp
    OnKeyUp = cbbPeriodicoKeyUp
    Items.Strings = (
      'TODOS'
      'NAO'
      'SIM')
  end
  object cbbExigeRevisao: TComboBox
    Left = 702
    Top = 13
    Width = 80
    Height = 22
    Style = csOwnerDrawFixed
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 5
    Text = 'TODOS'
    OnCloseUp = cbbExigeRevisaoCloseUp
    OnKeyUp = cbbExigeRevisaoKeyUp
    Items.Strings = (
      'TODOS'
      'NAO'
      'SIM')
  end
  object cbbSituacao: TComboBox
    Left = 847
    Top = 13
    Width = 80
    Height = 22
    Style = csOwnerDrawFixed
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 1
    ParentFont = False
    TabOrder = 6
    Text = 'ATIVO'
    OnCloseUp = cbbSituacaoCloseUp
    OnKeyUp = cbbSituacaoKeyUp
    Items.Strings = (
      'TODOS'
      'ATIVO'
      'INATIVO')
  end
  object dsConsServico: TDataSource
    DataSet = DmFire.ConsServico
    Left = 440
    Top = 168
  end
end
