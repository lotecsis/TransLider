object FCadCargas: TFCadCargas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cargas'
  ClientHeight = 227
  ClientWidth = 573
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 73
    Top = 11
    Width = 29
    Height = 13
    Caption = 'Carga'
    FocusControl = dbedtIDCARGA
  end
  object Label2: TLabel
    Left = 66
    Top = 38
    Width = 36
    Height = 13
    Caption = 'Destino'
    FocusControl = dbedtDESTINO
  end
  object Label6: TLabel
    Left = 8
    Top = 65
    Width = 94
    Height = 13
    Caption = 'Valor Adiantamento'
    FocusControl = dbedtVLRADT
  end
  object Label8: TLabel
    Left = 35
    Top = 175
    Width = 67
    Height = 13
    Caption = 'Valor Restiruir'
    FocusControl = dbedtVLRRET
  end
  object Label3: TLabel
    Left = 38
    Top = 92
    Width = 64
    Height = 13
    Caption = 'Vlr. Frete Ida'
    FocusControl = dbedtVLRFREIDA
  end
  object Label4: TLabel
    Left = 15
    Top = 119
    Width = 87
    Height = 13
    Caption = 'Vlr. Frete Retorno'
    FocusControl = dbedtVLRFREVOL
  end
  object Label5: TLabel
    Left = 7
    Top = 147
    Width = 95
    Height = 13
    Caption = 'Frete Retorno Pago'
    FocusControl = dbedtVLRFREVOL
  end
  object dbedtIDCARGA: TDBEdit
    Left = 108
    Top = 8
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'IDCARGA'
    DataSource = dsCadCargas
    ReadOnly = True
    TabOrder = 0
  end
  object dbedtDESTINO: TDBEdit
    Left = 108
    Top = 35
    Width = 300
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESTINO'
    DataSource = dsCadCargas
    TabOrder = 1
  end
  object dbedtVLRADT: TDBEdit
    Left = 108
    Top = 62
    Width = 100
    Height = 21
    DataField = 'VLRADT'
    DataSource = dsCadCargas
    TabOrder = 2
    OnExit = dbedtVLRADTExit
  end
  object dbedtVLRRET: TDBEdit
    Left = 108
    Top = 172
    Width = 100
    Height = 21
    TabStop = False
    DataField = 'VLRRET'
    DataSource = dsCadCargas
    ReadOnly = True
    TabOrder = 6
  end
  object btnCancelar: TBitBtn
    Left = 386
    Top = 195
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
    TabOrder = 7
    TabStop = False
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 477
    Top = 195
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
    TabOrder = 8
    OnClick = btnConfirmarClick
  end
  object dbedtVLRFREIDA: TDBEdit
    Left = 108
    Top = 89
    Width = 100
    Height = 21
    DataField = 'VLRFREIDA'
    DataSource = dsCadCargas
    TabOrder = 3
  end
  object dbedtVLRFREVOL: TDBEdit
    Left = 108
    Top = 116
    Width = 100
    Height = 21
    DataField = 'VLRFREVOL'
    DataSource = dsCadCargas
    TabOrder = 4
  end
  object dbcbbFRERETPAG: TDBComboBox
    Left = 108
    Top = 144
    Width = 100
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'FRERETPAG'
    DataSource = dsCadCargas
    Items.Strings = (
      'SIM'
      'NAO')
    TabOrder = 5
    OnExit = dbcbbFRERETPAGExit
  end
  object dsCadCargas: TDataSource
    DataSet = DmFire.CadCargas
    OnStateChange = dsCadCargasStateChange
    Left = 272
    Top = 80
  end
end
