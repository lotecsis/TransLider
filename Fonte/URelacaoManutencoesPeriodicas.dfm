object FRelacaoManutencoesPeriodicas: TFRelacaoManutencoesPeriodicas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Manuten'#231#245'es em Aberto'
  ClientHeight = 591
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
    Left = 13
    Top = 18
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
    Left = 195
    Top = 18
    Width = 179
    Height = 17
    DataField = 'DESVEI'
    DataSource = dsVeiculos
  end
  object lblLocalVei: TLabel
    Left = 398
    Top = 18
    Width = 72
    Height = 13
    Caption = 'Local Ve'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblApenasVencidos: TLabel
    Left = 651
    Top = 18
    Width = 162
    Height = 13
    Caption = 'Apenas Vencidos / Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chkPlaca: TCheckBox
    Left = 47
    Top = 17
    Width = 19
    Height = 17
    TabOrder = 0
  end
  object dblkcbbCODVEI: TDBLookupComboBox
    Left = 66
    Top = 15
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
    TabOrder = 1
    OnCloseUp = dblkcbbCODVEICloseUp
    OnKeyUp = dblkcbbCODVEIKeyUp
  end
  object btnMostrar: TBitBtn
    Left = 887
    Top = 10
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
    TabOrder = 2
    OnClick = btnMostrarClick
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 46
    Width = 996
    Height = 546
    DataSource = dsRelacaoManutPeriodicas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
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
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LOCALVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Local Ve'#237'culo'
        Width = 100
        Visible = True
      end>
  end
  object chkLocalVei: TCheckBox
    Left = 476
    Top = 16
    Width = 14
    Height = 17
    TabOrder = 4
  end
  object cbbLocalVei: TComboBox
    Left = 494
    Top = 15
    Width = 135
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 5
    Items.Strings = (
      'PATIO'
      'VIAGEM')
  end
  object chkApenasVencidos: TCheckBox
    Left = 818
    Top = 16
    Width = 15
    Height = 17
    TabOrder = 6
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
    Left = 504
    Top = 216
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 592
    Top = 216
  end
  object dsRelacaoManutPeriodicas: TDataSource
    DataSet = DmFire.ClientRelacaoManutPeriodicas
    Left = 384
    Top = 280
  end
end
