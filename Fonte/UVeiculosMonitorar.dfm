object FVeiculosMonitorar: TFVeiculosMonitorar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ve'#237'culos a serem monitorados'
  ClientHeight = 469
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
  object lbl1: TLabel
    Left = 196
    Top = 19
    Width = 77
    Height = 16
    Caption = 'MONITORAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 740
    Top = 19
    Width = 108
    Height = 16
    Caption = 'N'#195'O MONITORAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 49
    Width = 460
    Height = 421
    TabStop = False
    DataSource = dsVeiculosMonitorar
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Motorista'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Local'
        Width = 180
        Visible = True
      end>
  end
  object dbg2: TDBGrid
    Left = 535
    Top = 49
    Width = 460
    Height = 421
    TabStop = False
    DataSource = dsVeiculosNaoMonitorar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Motorista'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALVEI'
        Title.Alignment = taCenter
        Title.Caption = 'Local'
        Width = 180
        Visible = True
      end>
  end
  object btnSim: TBitBtn
    Left = 460
    Top = 210
    Width = 75
    Height = 25
    Caption = '>>>'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    TabStop = False
    OnClick = btnSimClick
  end
  object btnNao: TBitBtn
    Left = 460
    Top = 258
    Width = 75
    Height = 25
    Caption = '<<<'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    TabStop = False
    OnClick = btnNaoClick
  end
  object VeiculosMonitorar: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      ' SELECT VEICULO.*,MOTORISTA.NOMMOT'
      'FROM VEICULO'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT'
      'WHERE VEICULO.IN_MONITORAR = '#39'SIM'#39' AND'
      '             VEICULO.SITVEI = '#39'ATIVO'#39' '
      'ORDER BY VEICULO.DESVEI')
    Left = 304
    Top = 160
    object VeiculosMonitorarCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VeiculosMonitorarCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object VeiculosMonitorarCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object VeiculosMonitorarCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object VeiculosMonitorarDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object VeiculosMonitorarPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object VeiculosMonitorarPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object VeiculosMonitorarANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object VeiculosMonitorarDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object VeiculosMonitorarDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object VeiculosMonitorarKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
    end
    object VeiculosMonitorarKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object VeiculosMonitorarCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object VeiculosMonitorarCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object VeiculosMonitorarRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object VeiculosMonitorarTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object VeiculosMonitorarCODCAV: TIntegerField
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object VeiculosMonitorarEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object VeiculosMonitorarALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
    end
    object VeiculosMonitorarLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
    end
    object VeiculosMonitorarCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
    end
    object VeiculosMonitorarCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
    end
    object VeiculosMonitorarTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
    end
    object VeiculosMonitorarMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
    end
    object VeiculosMonitorarCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
    end
    object VeiculosMonitorarSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object VeiculosMonitorarCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object VeiculosMonitorarOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object VeiculosMonitorarUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object VeiculosMonitorarDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object VeiculosMonitorarLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object VeiculosMonitorarIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
    object VeiculosMonitorarNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
  end
  object VeiculosNaoMonitorar: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      ' SELECT VEICULO.*,MOTORISTA.NOMMOT'
      'FROM VEICULO'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT'
      'WHERE VEICULO.IN_MONITORAR = '#39'NAO'#39' AND'
      '             VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.DESVEI')
    Left = 632
    Top = 152
    object VeiculosNaoMonitorarCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VeiculosNaoMonitorarCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object VeiculosNaoMonitorarCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object VeiculosNaoMonitorarCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object VeiculosNaoMonitorarDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object VeiculosNaoMonitorarPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object VeiculosNaoMonitorarPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object VeiculosNaoMonitorarANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object VeiculosNaoMonitorarDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object VeiculosNaoMonitorarDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object VeiculosNaoMonitorarKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
    end
    object VeiculosNaoMonitorarKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object VeiculosNaoMonitorarCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object VeiculosNaoMonitorarCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object VeiculosNaoMonitorarRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object VeiculosNaoMonitorarTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object VeiculosNaoMonitorarCODCAV: TIntegerField
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object VeiculosNaoMonitorarEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object VeiculosNaoMonitorarALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
    end
    object VeiculosNaoMonitorarLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
    end
    object VeiculosNaoMonitorarCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
    end
    object VeiculosNaoMonitorarCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
    end
    object VeiculosNaoMonitorarTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
    end
    object VeiculosNaoMonitorarMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
    end
    object VeiculosNaoMonitorarCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
    end
    object VeiculosNaoMonitorarSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object VeiculosNaoMonitorarCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object VeiculosNaoMonitorarOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object VeiculosNaoMonitorarUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object VeiculosNaoMonitorarDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object VeiculosNaoMonitorarLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object VeiculosNaoMonitorarIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
    object VeiculosNaoMonitorarNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
  end
  object dsVeiculosMonitorar: TDataSource
    DataSet = VeiculosMonitorar
    Left = 304
    Top = 224
  end
  object dsVeiculosNaoMonitorar: TDataSource
    DataSet = VeiculosNaoMonitorar
    Left = 640
    Top = 216
  end
end
