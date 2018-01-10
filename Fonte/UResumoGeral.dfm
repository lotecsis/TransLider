object FResumoGeral: TFResumoGeral
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Resumo Geral'
  ClientHeight = 422
  ClientWidth = 673
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
  object pnl1: TPanel
    Left = 8
    Top = 17
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblDQtdManut: TLabel
      Left = 11
      Top = 10
      Width = 532
      Height = 16
      Cursor = crHandPoint
      Caption = 
        'Manuten'#231#245'es peri'#243'dicas '#192' VENCER/VENCIDAS em que o ve'#237'culo est'#225' n' +
        'o  p'#225'tio  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdManutClick
    end
    object lblQtdManut: TLabel
      Left = 584
      Top = 3
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl3: TPanel
    Left = 8
    Top = 75
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object lblDQtdAbastcAbe: TLabel
      Left = 334
      Top = 10
      Width = 209
      Height = 16
      Cursor = crHandPoint
      Caption = 'Abastecimentos em Aberto  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdAbastcAbeClick
    end
    object lblQtdAbastcAbe: TLabel
      Left = 584
      Top = 4
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl5: TPanel
    Left = 8
    Top = 132
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object lblDQtdIndentCondut: TLabel
      Left = 256
      Top = 10
      Width = 287
      Height = 16
      Cursor = crHandPoint
      Caption = 'Identifica'#231#227'o de Condutores em Aberto  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdIndentCondutClick
    end
    object lblQtdIndentCondut: TLabel
      Left = 584
      Top = 4
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl7: TPanel
    Left = 8
    Top = 191
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object lblDQtdCnhVenc: TLabel
      Left = 360
      Top = 9
      Width = 183
      Height = 16
      Cursor = crHandPoint
      Caption = 'CNH Vencendo/Vencida  -->'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdCnhVencClick
    end
    object lblQtdCnhVenc: TLabel
      Left = 584
      Top = 4
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlLogMonitoramento: TPanel
    Left = 8
    Top = 249
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object lblDQtdLogMonit: TLabel
      Left = 181
      Top = 12
      Width = 362
      Height = 16
      Cursor = crHandPoint
      Caption = 'Log de Monitoramento (Entrada-Sa'#237'da) de Ve'#237'culos  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdLogMonitClick
    end
    object lblQtdLogMonit: TLabel
      Left = 584
      Top = 4
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl2: TPanel
    Left = 8
    Top = 308
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object lblDNivelComb: TLabel
      Left = 349
      Top = 11
      Width = 194
      Height = 16
      Cursor = crHandPoint
      Caption = 'N'#237'vel Tanque Combust'#237'vel  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDNivelCombClick
    end
    object Tanque: TGauge
      Left = 560
      Top = 1
      Width = 69
      Height = 35
      Kind = gkVerticalBar
      Progress = 0
    end
  end
  object pnlEntradasObservacoes: TPanel
    Left = 9
    Top = 366
    Width = 656
    Height = 41
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
    object lblDQtdEntradaObsMot: TLabel
      Left = 258
      Top = 10
      Width = 284
      Height = 16
      Cursor = crHandPoint
      Caption = 'Entradas de Ve'#237'culos com Observa'#231#245'es  -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblDQtdEntradaObsMotClick
    end
    object lblQtdEntradaObsMot: TLabel
      Left = 583
      Top = 1
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ConsAbastecimentosAberto: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT ENTRADA_SAIDA.*,'
      '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,'
      '       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,'
      '       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,'
      '       CARRETA.PLAVEI AS PLAVEI_CARRETA'
      'FROM ENTRADA_SAIDA'
      'INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT'
      
        'INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_S' +
        'AIDA.USUSAIDA'
      
        'LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODC' +
        'ARRETA'
      'WHERE'
      '((ENTRADA_SAIDA.KMSAIDA > 0) and (ENTRADA_SAIDA.KMENT > 0)) and'
      'ENTRADA_SAIDA.QTD_COMB = 0'
      
        'ORDER BY VEICULO.PLAVEI,ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HOREN' +
        'T')
    Left = 80
    Top = 72
    object ConsAbastecimentosAbertoSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosAbertoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosAbertoUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object ConsAbastecimentosAbertoUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object ConsAbastecimentosAbertoCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object ConsAbastecimentosAbertoDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object ConsAbastecimentosAbertoHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object ConsAbastecimentosAbertoKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
    end
    object ConsAbastecimentosAbertoDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object ConsAbastecimentosAbertoHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object ConsAbastecimentosAbertoKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
    end
    object ConsAbastecimentosAbertoDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object ConsAbastecimentosAbertoCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object ConsAbastecimentosAbertoCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object ConsAbastecimentosAbertoIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object ConsAbastecimentosAbertoQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object ConsAbastecimentosAbertoDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object ConsAbastecimentosAbertoMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object ConsAbastecimentosAbertoITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object ConsAbastecimentosAbertoPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsAbastecimentosAbertoDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsAbastecimentosAbertoKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ConsAbastecimentosAbertoNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsAbastecimentosAbertoAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsAbastecimentosAbertoFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsAbastecimentosAbertoUSUARIO_SAIDA: TIBStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsAbastecimentosAbertoPLAVEI_CARRETA: TIBStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
  end
  object ProviderConsAbastecimentosAberto: TDataSetProvider
    DataSet = ConsAbastecimentosAberto
    Left = 80
    Top = 128
  end
  object ClientConsAbastecimentosAberto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsAbastecimentosAberto'
    Left = 80
    Top = 192
    object ClientConsAbastecimentosAbertoSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientConsAbastecimentosAbertoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientConsAbastecimentosAbertoUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object ClientConsAbastecimentosAbertoUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object ClientConsAbastecimentosAbertoCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object ClientConsAbastecimentosAbertoDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object ClientConsAbastecimentosAbertoHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object ClientConsAbastecimentosAbertoKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosAbertoDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object ClientConsAbastecimentosAbertoHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object ClientConsAbastecimentosAbertoKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosAbertoDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object ClientConsAbastecimentosAbertoCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object ClientConsAbastecimentosAbertoCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object ClientConsAbastecimentosAbertoIN_ENGATADO: TWideStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object ClientConsAbastecimentosAbertoQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object ClientConsAbastecimentosAbertoDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object ClientConsAbastecimentosAbertoMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object ClientConsAbastecimentosAbertoITESEL: TWideStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object ClientConsAbastecimentosAbertoPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ClientConsAbastecimentosAbertoDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ClientConsAbastecimentosAbertoKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ClientConsAbastecimentosAbertoNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ClientConsAbastecimentosAbertoAPEMOT: TWideStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ClientConsAbastecimentosAbertoFOTO: TWideStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ClientConsAbastecimentosAbertoUSUARIO_SAIDA: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ClientConsAbastecimentosAbertoPLAVEI_CARRETA: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ClientConsAbastecimentosAbertovnTotalRodado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosAbertovaIteSel: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaIteSel'
      Size = 10
      Calculated = True
    end
    object ClientConsAbastecimentosAbertovnKmSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnKmSelecionado'
    end
    object ClientConsAbastecimentosAbertoTotalKmSel: TAggregateField
      Alignment = taCenter
      FieldName = 'TotalKmSel'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnKmSelecionado)'
    end
  end
end
