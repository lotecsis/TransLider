object FConsInfracoes: TFConsInfracoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Infra'#231#245'es'
  ClientHeight = 564
  ClientWidth = 968
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
    Top = 19
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
    Left = 192
    Top = 19
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
  object dbg1: TDBGrid
    Left = -1
    Top = 53
    Width = 970
    Height = 476
    DataSource = dsConsInfracoesCad
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 500
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_PONTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Pontos'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GRAVIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Gravidade'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RESPONSABILIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Resp.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSINFRA'
        Title.Alignment = taCenter
        Title.Caption = 'Obs.'
        Width = 500
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cad.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOMUSU'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio Cad.'
        Width = 100
        Visible = True
      end>
  end
  object edtCodigo: TEdit
    Left = 51
    Top = 16
    Width = 121
    Height = 21
    MaxLength = 6
    TabOrder = 1
    OnChange = edtCodigoChange
    OnEnter = edtCodigoEnter
  end
  object edtDescricao: TEdit
    Left = 253
    Top = 16
    Width = 524
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 200
    TabOrder = 2
    OnChange = edtDescricaoChange
  end
  object btnNovo: TBitBtn
    Left = 4
    Top = 535
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
    TabOrder = 3
    OnClick = btnNovoClick
  end
  object btnAbrirFicha: TBitBtn
    Left = 95
    Top = 535
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
    TabOrder = 4
    OnClick = btnAbrirFichaClick
  end
  object dsConsInfracoesCad: TDataSource
    DataSet = DmFire.ConsInfracoesCad
    OnDataChange = dsConsInfracoesCadDataChange
    Left = 592
    Top = 160
  end
end
