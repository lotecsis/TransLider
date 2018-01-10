object FDiasTrabalhados: TFDiasTrabalhados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Dias Trabalhados'
  ClientHeight = 554
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 19
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object edtAno: TCurrencyEdit
    Left = 56
    Top = 16
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 0
  end
  object btnMostrar: TBitBtn
    Left = 901
    Top = 29
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnMostrarClick
  end
  object dbg1: TDBGrid
    Left = 0
    Top = 56
    Width = 984
    Height = 433
    DataSource = dsClientDiasTrabalhados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = dbg1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NomMot'
        Title.Alignment = taCenter
        Title.Caption = 'Motorista'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Jan'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fev'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Mar'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Abr'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Mai'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Jun'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Jul'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ago'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Set'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Out'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nov'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dez'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnTotalDias'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnMediaDias'
        Title.Alignment = taCenter
        Title.Caption = 'M'#233'dia'
        Visible = True
      end>
  end
  object btnImprimir: TBitBtn
    Left = 901
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnImprimirClick
  end
  object dsClientDiasTrabalhados: TDataSource
    DataSet = DmFire.ClientDiasTrabalhados
    Left = 296
    Top = 192
  end
  object Motoristas: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT CODMOT, NOMMOT, SITMOT,TIPMOT'
      '   FROM MOTORISTA'
      '     WHERE'
      '       SITMOT = '#39'ATIVO'#39' AND'
      '       TIPMOT = '#39'TODOS'#39
      '       ORDER BY NOMMOT DESC')
    Left = 424
    Top = 160
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
    object MotoristasSITMOT: TIBStringField
      FieldName = 'SITMOT'
      Origin = '"MOTORISTA"."SITMOT"'
    end
    object MotoristasTIPMOT: TIBStringField
      FieldName = 'TIPMOT'
      Origin = '"MOTORISTA"."TIPMOT"'
    end
  end
  object Entrada_Saida: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      
        'SELECT ENTRADA_SAIDA.CODMOT, ENTRADA_SAIDA.DATSAIDA, ENTRADA_SAI' +
        'DA.DATENT,'
      '       ENTRADA_SAIDA.CARGA'
      'FROM ENTRADA_SAIDA'
      'WHERE'
      ' ENTRADA_SAIDA.DATSAIDA BETWEEN :DATINI AND :DATFIM AND'
      ' ENTRADA_SAIDA.CODMOT = :CODMOT AND'
      ' ENTRADA_SAIDA.CARGA <> 0'
      ' ORDER BY ENTRADA_SAIDA.DATSAIDA')
    Left = 424
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMOT'
        ParamType = ptUnknown
      end>
    object Entrada_SaidaCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object Entrada_SaidaDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object Entrada_SaidaDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object Entrada_SaidaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
  end
  object frxImpressao: TfrxReport
    Version = '4.8.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42702.609187060200000000
    ReportOptions.LastChange = 42702.657112175930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxImpressaoGetValue
    Left = 696
    Top = 136
    Datasets = <
      item
        DataSet = frxDBClientDiasTrabalhados
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Parametros'
        Value = Null
      end
      item
        Name = 'Ano'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Rela'#231#227'o de Dias Trabalhados')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]  [Time]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 50.913420000000000000
          Width = 1039.370750000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Ano: TfrxMemoView
          Left = 465.220780000000000000
          Top = 30.236240000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Ano]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBClientDiasTrabalhados
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomMot: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 132.283305910000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NomMot'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NomMot"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1Jan: TfrxMemoView
          Left = 143.622140000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Jan'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Jan"]')
          ParentFont = False
        end
        object frxDBDataset1Fev: TfrxMemoView
          Left = 206.551330000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Fev'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Fev"]')
          ParentFont = False
        end
        object frxDBDataset1Mar: TfrxMemoView
          Left = 272.126160000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Mar'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Mar"]')
          ParentFont = False
        end
        object frxDBDataset1Abr: TfrxMemoView
          Left = 336.378170000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Abr'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Abr"]')
          ParentFont = False
        end
        object frxDBDataset1Mai: TfrxMemoView
          Left = 396.850650000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Mai'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Mai"]')
          ParentFont = False
        end
        object frxDBDataset1Jun: TfrxMemoView
          Left = 461.102660000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Jun'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Jun"]')
          ParentFont = False
        end
        object frxDBDataset1Jul: TfrxMemoView
          Left = 521.575140000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Jul'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Jul"]')
          ParentFont = False
        end
        object frxDBDataset1Ago: TfrxMemoView
          Left = 585.827150000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Ago'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Ago"]')
          ParentFont = False
        end
        object frxDBDataset1Set: TfrxMemoView
          Left = 650.079160000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Set'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Set"]')
          ParentFont = False
        end
        object frxDBDataset1Out: TfrxMemoView
          Left = 714.331170000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Out'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Out"]')
          ParentFont = False
        end
        object frxDBDataset1Nov: TfrxMemoView
          Left = 774.803650000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Nov'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Nov"]')
          ParentFont = False
        end
        object frxDBDataset1Dez: TfrxMemoView
          Left = 840.315503330000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Dez'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Dez"]')
          ParentFont = False
        end
        object frxDBDataset1vnTotalDias: TfrxMemoView
          Left = 905.827356670000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'vnTotalDias'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."vnTotalDias"]')
          ParentFont = False
        end
        object frxDBDataset1vnMediaDias: TfrxMemoView
          Left = 971.339210000000000000
          Top = 5.779530000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'vnMediaDias'
          DataSet = frxDBClientDiasTrabalhados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."vnMediaDias"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 29.456710000000000000
          Width = 1039.370750000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 94.488250000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Motorista')
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Jan')
        end
        object Memo4: TfrxMemoView
          Left = 206.551330000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Fev')
        end
        object Memo5: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Mar')
        end
        object Memo6: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Abr')
        end
        object Memo7: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Mai')
        end
        object Memo8: TfrxMemoView
          Left = 461.102660000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Jun')
        end
        object Memo9: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Jul')
        end
        object Memo10: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Ago')
        end
        object Memo11: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Set')
        end
        object Memo12: TfrxMemoView
          Left = 714.331170000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Out')
        end
        object Memo13: TfrxMemoView
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Nov')
        end
        object Memo14: TfrxMemoView
          Left = 840.315503330000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Dez')
        end
        object Memo15: TfrxMemoView
          Left = 905.827356670000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Total')
        end
        object Memo16: TfrxMemoView
          Left = 971.339210000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'M'#233'dia')
        end
        object Line2: TfrxLineView
          Top = 26.456710000000000000
          Width = 1039.370750000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBClientDiasTrabalhados: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DmFire.ClientDiasTrabalhados
    BCDToCurrency = False
    Left = 696
    Top = 192
  end
end
