object FConsFornecedor: TFConsFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Fornecedor'
  ClientHeight = 527
  ClientWidth = 806
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
    Left = 8
    Top = 14
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
  object dbg1: TDBGrid
    Left = -1
    Top = 40
    Width = 808
    Height = 449
    DataSource = dsConsFornecedor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
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
        FieldName = 'CODFOR'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TEL1'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TEL2'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 180
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
        FieldName = 'SITFOR'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end>
  end
  object edtPesquisa: TEdit
    Left = 76
    Top = 11
    Width = 721
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 0
    OnChange = edtPesquisaChange
  end
  object btnNovo: TBitBtn
    Left = 8
    Top = 495
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
    TabOrder = 2
    TabStop = False
    OnClick = btnNovoClick
  end
  object btnAbrirFicha: TBitBtn
    Left = 99
    Top = 496
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
    TabOrder = 3
    OnClick = btnAbrirFichaClick
  end
  object dsConsFornecedor: TDataSource
    DataSet = DmFire.ConsFornecedor
    Left = 432
    Top = 128
  end
end
