object DmFire: TDmFire
  OldCreateOrder = False
  Height = 827
  Width = 1104
  object Banco: TIBDatabase
    Connected = True
    DatabaseName = '192.168.10.44:C:\TransLider\Banco\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object ibtTransacao: TIBTransaction
    Active = True
    DefaultDatabase = Banco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 24
  end
  object CadMarcas: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from MARCAS'
      'where'
      '  CODMAR = :OLD_CODMAR')
    InsertSQL.Strings = (
      'insert into MARCAS'
      '  (CODMAR, CODUSU, DESMAR)'
      'values'
      '  (:CODMAR, :CODUSU, :DESMAR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODMAR,'
      '  CODUSU,'
      '  DESMAR'
      'from MARCAS '
      'where'
      '  CODMAR = :CODMAR')
    SelectSQL.Strings = (
      'select * from MARCAS where codmar = :codmar')
    ModifySQL.Strings = (
      'update MARCAS'
      'set'
      '  CODMAR = :CODMAR,'
      '  CODUSU = :CODUSU,'
      '  DESMAR = :DESMAR'
      'where'
      '  CODMAR = :OLD_CODMAR')
    Left = 24
    Top = 104
    object CadMarcasCODMAR: TIntegerField
      FieldName = 'CODMAR'
      Origin = '"MARCAS"."CODMAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadMarcasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MARCAS"."CODUSU"'
      Required = True
    end
    object CadMarcasDESMAR: TIBStringField
      FieldName = 'DESMAR'
      Origin = '"MARCAS"."DESMAR"'
      Size = 100
    end
  end
  object ConsSql: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 184
    Top = 24
  end
  object ConsMarcas: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MARCAS.*,USUARIO.NOMUSU'
      'FROM MARCAS'
      'INNER JOIN USUARIO ON USUARIO.CODUSU = MARCAS.CODUSU'
      'order by MARCAS.DESMAR')
    Left = 104
    Top = 104
    object ConsMarcasCODMAR: TIntegerField
      FieldName = 'CODMAR'
      Origin = '"MARCAS"."CODMAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsMarcasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MARCAS"."CODUSU"'
      Required = True
    end
    object ConsMarcasDESMAR: TIBStringField
      FieldName = 'DESMAR'
      Origin = '"MARCAS"."DESMAR"'
      Size = 100
    end
    object ConsMarcasNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
  end
  object CadModelos: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from MODELOS'
      'where'
      '  CODMOD = :OLD_CODMOD')
    InsertSQL.Strings = (
      'insert into MODELOS'
      '  (CODMAR, CODMOD, CODUSU, DESMOD)'
      'values'
      '  (:CODMAR, :CODMOD, :CODUSU, :DESMOD)')
    RefreshSQL.Strings = (
      'Select '
      '  CODMOD,'
      '  CODUSU,'
      '  CODMAR,'
      '  DESMOD'
      'from MODELOS '
      'where'
      '  CODMOD = :CODMOD')
    SelectSQL.Strings = (
      'select * from MODELOS where codmod = :codmod')
    ModifySQL.Strings = (
      'update MODELOS'
      'set'
      '  CODMAR = :CODMAR,'
      '  CODMOD = :CODMOD,'
      '  CODUSU = :CODUSU,'
      '  DESMOD = :DESMOD'
      'where'
      '  CODMOD = :OLD_CODMOD')
    Left = 24
    Top = 160
    object CadModelosCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"MODELOS"."CODMOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadModelosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MODELOS"."CODUSU"'
      Required = True
    end
    object CadModelosCODMAR: TIntegerField
      FieldName = 'CODMAR'
      Origin = '"MODELOS"."CODMAR"'
      Required = True
    end
    object CadModelosDESMOD: TIBStringField
      FieldName = 'DESMOD'
      Origin = '"MODELOS"."DESMOD"'
      Size = 100
    end
  end
  object ConsModelos: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MODELOS.*,USUARIO.NOMUSU,MARCAS.DESMAR'
      'FROM MODELOS'
      'INNER JOIN USUARIO ON USUARIO.CODUSU = MODELOS.CODUSU'
      'INNER JOIN MARCAS ON MARCAS.CODMAR = MODELOS.CODMAR'
      'ORDER BY DESMOD')
    Left = 104
    Top = 160
    object ConsModelosCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"MODELOS"."CODMOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsModelosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MODELOS"."CODUSU"'
      Required = True
    end
    object ConsModelosCODMAR: TIntegerField
      FieldName = 'CODMAR'
      Origin = '"MODELOS"."CODMAR"'
      Required = True
    end
    object ConsModelosDESMOD: TIBStringField
      FieldName = 'DESMOD'
      Origin = '"MODELOS"."DESMOD"'
      Size = 100
    end
    object ConsModelosNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsModelosDESMAR: TIBStringField
      FieldName = 'DESMAR'
      Origin = '"MARCAS"."DESMAR"'
      Size = 100
    end
  end
  object CadMotoristas: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from MOTORISTA'
      'where'
      '  CODMOT = :OLD_CODMOT')
    InsertSQL.Strings = (
      'insert into MOTORISTA'
      
        '  (APEMOT, BAIMOT, CATCNH, CIDMOT, CNH, CODMOT, CODUSU, CPF, DAT' +
        'ADMI, DATDEMI, '
      
        '   DATNAS, DATVENCNH, EMAIL, ENDMOT, FONE1, FONE2, FOTO, LOCALMO' +
        'T, NOMMOT, '
      '   NUMEND, RG, SIGUFS, SITMOT, TIPMOT, TIPSANG, VLRCOMFIXA)'
      'values'
      
        '  (:APEMOT, :BAIMOT, :CATCNH, :CIDMOT, :CNH, :CODMOT, :CODUSU, :' +
        'CPF, :DATADMI, '
      
        '   :DATDEMI, :DATNAS, :DATVENCNH, :EMAIL, :ENDMOT, :FONE1, :FONE' +
        '2, :FOTO, '
      
        '   :LOCALMOT, :NOMMOT, :NUMEND, :RG, :SIGUFS, :SITMOT, :TIPMOT, ' +
        ':TIPSANG, '
      '   :VLRCOMFIXA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODMOT,'
      '  CODUSU,'
      '  NOMMOT,'
      '  APEMOT,'
      '  DATNAS,'
      '  RG,'
      '  CPF,'
      '  CNH,'
      '  CATCNH,'
      '  DATVENCNH,'
      '  DATADMI,'
      '  DATDEMI,'
      '  FONE1,'
      '  FONE2,'
      '  EMAIL,'
      '  SITMOT,'
      '  ENDMOT,'
      '  NUMEND,'
      '  BAIMOT,'
      '  CIDMOT,'
      '  TIPMOT,'
      '  TIPSANG,'
      '  FOTO,'
      '  SIGUFS,'
      '  LOCALMOT,'
      '  VLRCOMFIXA'
      'from MOTORISTA '
      'where'
      '  CODMOT = :CODMOT')
    SelectSQL.Strings = (
      'select * from MOTORISTA where codmot = :codmot')
    ModifySQL.Strings = (
      'update MOTORISTA'
      'set'
      '  APEMOT = :APEMOT,'
      '  BAIMOT = :BAIMOT,'
      '  CATCNH = :CATCNH,'
      '  CIDMOT = :CIDMOT,'
      '  CNH = :CNH,'
      '  CODMOT = :CODMOT,'
      '  CODUSU = :CODUSU,'
      '  CPF = :CPF,'
      '  DATADMI = :DATADMI,'
      '  DATDEMI = :DATDEMI,'
      '  DATNAS = :DATNAS,'
      '  DATVENCNH = :DATVENCNH,'
      '  EMAIL = :EMAIL,'
      '  ENDMOT = :ENDMOT,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FOTO = :FOTO,'
      '  LOCALMOT = :LOCALMOT,'
      '  NOMMOT = :NOMMOT,'
      '  NUMEND = :NUMEND,'
      '  RG = :RG,'
      '  SIGUFS = :SIGUFS,'
      '  SITMOT = :SITMOT,'
      '  TIPMOT = :TIPMOT,'
      '  TIPSANG = :TIPSANG,'
      '  VLRCOMFIXA = :VLRCOMFIXA'
      'where'
      '  CODMOT = :OLD_CODMOT')
    Left = 32
    Top = 216
    object CadMotoristasCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadMotoristasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MOTORISTA"."CODUSU"'
      Required = True
    end
    object CadMotoristasNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object CadMotoristasAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object CadMotoristasDATNAS: TDateField
      FieldName = 'DATNAS'
      Origin = '"MOTORISTA"."DATNAS"'
    end
    object CadMotoristasRG: TIBStringField
      FieldName = 'RG'
      Origin = '"MOTORISTA"."RG"'
      Size = 15
    end
    object CadMotoristasCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"MOTORISTA"."CPF"'
      EditMask = '!999.999.999-99;0;'
      Size = 15
    end
    object CadMotoristasCNH: TIBStringField
      FieldName = 'CNH'
      Origin = '"MOTORISTA"."CNH"'
      Size = 15
    end
    object CadMotoristasCATCNH: TIBStringField
      FieldName = 'CATCNH'
      Origin = '"MOTORISTA"."CATCNH"'
      Size = 2
    end
    object CadMotoristasDATVENCNH: TDateField
      FieldName = 'DATVENCNH'
      Origin = '"MOTORISTA"."DATVENCNH"'
    end
    object CadMotoristasDATADMI: TDateField
      FieldName = 'DATADMI'
      Origin = '"MOTORISTA"."DATADMI"'
    end
    object CadMotoristasDATDEMI: TDateField
      FieldName = 'DATDEMI'
      Origin = '"MOTORISTA"."DATDEMI"'
    end
    object CadMotoristasFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"MOTORISTA"."FONE1"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object CadMotoristasFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"MOTORISTA"."FONE2"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object CadMotoristasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"MOTORISTA"."EMAIL"'
      Size = 50
    end
    object CadMotoristasSITMOT: TIBStringField
      FieldName = 'SITMOT'
      Origin = '"MOTORISTA"."SITMOT"'
    end
    object CadMotoristasENDMOT: TIBStringField
      FieldName = 'ENDMOT'
      Origin = '"MOTORISTA"."ENDMOT"'
      Size = 100
    end
    object CadMotoristasNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"MOTORISTA"."NUMEND"'
      Size = 10
    end
    object CadMotoristasBAIMOT: TIBStringField
      FieldName = 'BAIMOT'
      Origin = '"MOTORISTA"."BAIMOT"'
      Size = 50
    end
    object CadMotoristasCIDMOT: TIBStringField
      FieldName = 'CIDMOT'
      Origin = '"MOTORISTA"."CIDMOT"'
      Size = 50
    end
    object CadMotoristasTIPMOT: TIBStringField
      FieldName = 'TIPMOT'
      Origin = '"MOTORISTA"."TIPMOT"'
    end
    object CadMotoristasTIPSANG: TIBStringField
      FieldName = 'TIPSANG'
      Origin = '"MOTORISTA"."TIPSANG"'
      Size = 5
    end
    object CadMotoristasFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object CadMotoristasSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"MOTORISTA"."SIGUFS"'
      Size = 2
    end
    object CadMotoristasLOCALMOT: TIBStringField
      FieldName = 'LOCALMOT'
      Origin = '"MOTORISTA"."LOCALMOT"'
      Size = 50
    end
    object CadMotoristasVLRCOMFIXA: TFloatField
      FieldName = 'VLRCOMFIXA'
      Origin = '"MOTORISTA"."VLRCOMFIXA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ConsMotorista: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    AfterScroll = ConsMotoristaAfterScroll
    SQL.Strings = (
      'SELECT MOTORISTA.* FROM MOTORISTA')
    Left = 112
    Top = 216
    object ConsMotoristaCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsMotoristaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MOTORISTA"."CODUSU"'
      Required = True
    end
    object ConsMotoristaNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsMotoristaAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsMotoristaDATNAS: TDateField
      FieldName = 'DATNAS'
      Origin = '"MOTORISTA"."DATNAS"'
    end
    object ConsMotoristaRG: TIBStringField
      FieldName = 'RG'
      Origin = '"MOTORISTA"."RG"'
      Size = 15
    end
    object ConsMotoristaCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"MOTORISTA"."CPF"'
      Size = 15
    end
    object ConsMotoristaCNH: TIBStringField
      FieldName = 'CNH'
      Origin = '"MOTORISTA"."CNH"'
      Size = 15
    end
    object ConsMotoristaCATCNH: TIBStringField
      FieldName = 'CATCNH'
      Origin = '"MOTORISTA"."CATCNH"'
      Size = 2
    end
    object ConsMotoristaDATVENCNH: TDateField
      FieldName = 'DATVENCNH'
      Origin = '"MOTORISTA"."DATVENCNH"'
    end
    object ConsMotoristaDATADMI: TDateField
      FieldName = 'DATADMI'
      Origin = '"MOTORISTA"."DATADMI"'
    end
    object ConsMotoristaDATDEMI: TDateField
      FieldName = 'DATDEMI'
      Origin = '"MOTORISTA"."DATDEMI"'
    end
    object ConsMotoristaFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"MOTORISTA"."FONE1"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object ConsMotoristaFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"MOTORISTA"."FONE2"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object ConsMotoristaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"MOTORISTA"."EMAIL"'
      Size = 50
    end
    object ConsMotoristaSITMOT: TIBStringField
      FieldName = 'SITMOT'
      Origin = '"MOTORISTA"."SITMOT"'
    end
    object ConsMotoristaENDMOT: TIBStringField
      FieldName = 'ENDMOT'
      Origin = '"MOTORISTA"."ENDMOT"'
      Size = 100
    end
    object ConsMotoristaNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"MOTORISTA"."NUMEND"'
      Size = 10
    end
    object ConsMotoristaBAIMOT: TIBStringField
      FieldName = 'BAIMOT'
      Origin = '"MOTORISTA"."BAIMOT"'
      Size = 50
    end
    object ConsMotoristaCIDMOT: TIBStringField
      FieldName = 'CIDMOT'
      Origin = '"MOTORISTA"."CIDMOT"'
      Size = 50
    end
    object ConsMotoristaTIPMOT: TIBStringField
      FieldName = 'TIPMOT'
      Origin = '"MOTORISTA"."TIPMOT"'
    end
    object ConsMotoristaTIPSANG: TIBStringField
      FieldName = 'TIPSANG'
      Origin = '"MOTORISTA"."TIPSANG"'
      Size = 5
    end
    object ConsMotoristaFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsMotoristaSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"MOTORISTA"."SIGUFS"'
      Size = 2
    end
    object ConsMotoristaLOCALMOT: TIBStringField
      FieldName = 'LOCALMOT'
      Origin = '"MOTORISTA"."LOCALMOT"'
      Size = 50
    end
  end
  object CadFornecedor: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  CODFOR = :OLD_CODFOR')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (BAIFOR, CEPFOR, CIDFOR, CODFOR, CODUSU, CPF_CNPJ, DESFOR, EMA' +
        'FOR, ENDFOR, '
      '   NUMEND, OBSFOR, SIGUFS, SITFOR, TEL1, TEL2)'
      'values'
      
        '  (:BAIFOR, :CEPFOR, :CIDFOR, :CODFOR, :CODUSU, :CPF_CNPJ, :DESF' +
        'OR, :EMAFOR, '
      '   :ENDFOR, :NUMEND, :OBSFOR, :SIGUFS, :SITFOR, :TEL1, :TEL2)')
    RefreshSQL.Strings = (
      'Select '
      '  CODFOR,'
      '  CODUSU,'
      '  DESFOR,'
      '  ENDFOR,'
      '  NUMEND,'
      '  BAIFOR,'
      '  CEPFOR,'
      '  CIDFOR,'
      '  SIGUFS,'
      '  SITFOR,'
      '  TEL1,'
      '  TEL2,'
      '  EMAFOR,'
      '  OBSFOR,'
      '  CPF_CNPJ'
      'from FORNECEDOR '
      'where'
      '  CODFOR = :CODFOR')
    SelectSQL.Strings = (
      'select * from FORNECEDOR where codfor = :codfor')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  BAIFOR = :BAIFOR,'
      '  CEPFOR = :CEPFOR,'
      '  CIDFOR = :CIDFOR,'
      '  CODFOR = :CODFOR,'
      '  CODUSU = :CODUSU,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  DESFOR = :DESFOR,'
      '  EMAFOR = :EMAFOR,'
      '  ENDFOR = :ENDFOR,'
      '  NUMEND = :NUMEND,'
      '  OBSFOR = :OBSFOR,'
      '  SIGUFS = :SIGUFS,'
      '  SITFOR = :SITFOR,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2'
      'where'
      '  CODFOR = :OLD_CODFOR')
    Left = 40
    Top = 272
    object CadFornecedorCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"FORNECEDOR"."CODFOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadFornecedorCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"FORNECEDOR"."CODUSU"'
      Required = True
    end
    object CadFornecedorDESFOR: TIBStringField
      FieldName = 'DESFOR'
      Origin = '"FORNECEDOR"."DESFOR"'
      Size = 100
    end
    object CadFornecedorENDFOR: TIBStringField
      FieldName = 'ENDFOR'
      Origin = '"FORNECEDOR"."ENDFOR"'
      Size = 100
    end
    object CadFornecedorNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"FORNECEDOR"."NUMEND"'
      Size = 10
    end
    object CadFornecedorBAIFOR: TIBStringField
      FieldName = 'BAIFOR'
      Origin = '"FORNECEDOR"."BAIFOR"'
      Size = 50
    end
    object CadFornecedorCEPFOR: TIBStringField
      FieldName = 'CEPFOR'
      Origin = '"FORNECEDOR"."CEPFOR"'
      EditMask = '!99999-999;1;_'
      Size = 15
    end
    object CadFornecedorCIDFOR: TIBStringField
      FieldName = 'CIDFOR'
      Origin = '"FORNECEDOR"."CIDFOR"'
      Size = 100
    end
    object CadFornecedorSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"FORNECEDOR"."SIGUFS"'
      Size = 2
    end
    object CadFornecedorSITFOR: TIBStringField
      FieldName = 'SITFOR'
      Origin = '"FORNECEDOR"."SITFOR"'
      Size = 10
    end
    object CadFornecedorTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"FORNECEDOR"."TEL1"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object CadFornecedorTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"FORNECEDOR"."TEL2"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object CadFornecedorEMAFOR: TIBStringField
      FieldName = 'EMAFOR'
      Origin = '"FORNECEDOR"."EMAFOR"'
      Size = 50
    end
    object CadFornecedorOBSFOR: TIBStringField
      FieldName = 'OBSFOR'
      Origin = '"FORNECEDOR"."OBSFOR"'
      Size = 300
    end
    object CadFornecedorCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
    end
  end
  object ConsFornecedor: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT FORNECEDOR.*,USUARIO.NOMUSU'
      'FROM FORNECEDOR'
      'INNER JOIN USUARIO ON USUARIO.CODUSU = FORNECEDOR.CODUSU'
      'ORDER BY FORNECEDOR.DESFOR')
    Left = 128
    Top = 272
    object ConsFornecedorCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"FORNECEDOR"."CODFOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsFornecedorCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"FORNECEDOR"."CODUSU"'
      Required = True
    end
    object ConsFornecedorDESFOR: TIBStringField
      FieldName = 'DESFOR'
      Origin = '"FORNECEDOR"."DESFOR"'
      Size = 100
    end
    object ConsFornecedorENDFOR: TIBStringField
      FieldName = 'ENDFOR'
      Origin = '"FORNECEDOR"."ENDFOR"'
      Size = 100
    end
    object ConsFornecedorNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"FORNECEDOR"."NUMEND"'
      Size = 10
    end
    object ConsFornecedorBAIFOR: TIBStringField
      FieldName = 'BAIFOR'
      Origin = '"FORNECEDOR"."BAIFOR"'
      Size = 50
    end
    object ConsFornecedorCEPFOR: TIBStringField
      FieldName = 'CEPFOR'
      Origin = '"FORNECEDOR"."CEPFOR"'
      Size = 15
    end
    object ConsFornecedorCIDFOR: TIBStringField
      FieldName = 'CIDFOR'
      Origin = '"FORNECEDOR"."CIDFOR"'
      Size = 100
    end
    object ConsFornecedorSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"FORNECEDOR"."SIGUFS"'
      Size = 2
    end
    object ConsFornecedorSITFOR: TIBStringField
      FieldName = 'SITFOR'
      Origin = '"FORNECEDOR"."SITFOR"'
      Size = 10
    end
    object ConsFornecedorTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"FORNECEDOR"."TEL1"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object ConsFornecedorTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"FORNECEDOR"."TEL2"'
      EditMask = '!(99)9999-9999;0;_'
      Size = 15
    end
    object ConsFornecedorEMAFOR: TIBStringField
      FieldName = 'EMAFOR'
      Origin = '"FORNECEDOR"."EMAFOR"'
      Size = 50
    end
    object ConsFornecedorOBSFOR: TIBStringField
      FieldName = 'OBSFOR'
      Origin = '"FORNECEDOR"."OBSFOR"'
      Size = 300
    end
    object ConsFornecedorCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
    end
    object ConsFornecedorNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
  end
  object CadVeiculo: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from VEICULO'
      'where'
      '  CODVEI = :OLD_CODVEI')
    InsertSQL.Strings = (
      'insert into VEICULO'
      
        '  (ALTURA, ANOFAB, CAPPESO, CATEGORIA, CHASSI, CODCAV, CODMOD, C' +
        'ODMOT, '
      
        '   CODUSU, CODVEI, COMPRIMENTO, COR, CUBICO, DATALT, DATAQUI, DA' +
        'TVEN, DESVEI, '
      
        '   EIXOS, IN_MONITORAR, KMATU, KMINI, LARGURA, LOCALVEI, MAXPESO' +
        ', MEDMAXCAR, '
      
        '   MEDMAXVAZ, MEDMINCAR, MEDMINVAZ, OBSVEI, PLAVEI, PLAVEIUF, RE' +
        'NAVAM, '
      '   SITVEI, TARA, TIPO, USUALT)'
      'values'
      
        '  (:ALTURA, :ANOFAB, :CAPPESO, :CATEGORIA, :CHASSI, :CODCAV, :CO' +
        'DMOD, :CODMOT, '
      
        '   :CODUSU, :CODVEI, :COMPRIMENTO, :COR, :CUBICO, :DATALT, :DATA' +
        'QUI, :DATVEN, '
      
        '   :DESVEI, :EIXOS, :IN_MONITORAR, :KMATU, :KMINI, :LARGURA, :LO' +
        'CALVEI, '
      
        '   :MAXPESO, :MEDMAXCAR, :MEDMAXVAZ, :MEDMINCAR, :MEDMINVAZ, :OB' +
        'SVEI, :PLAVEI, '
      '   :PLAVEIUF, :RENAVAM, :SITVEI, :TARA, :TIPO, :USUALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODVEI,'
      '  CODUSU,'
      '  CODMOD,'
      '  CODMOT,'
      '  DESVEI,'
      '  PLAVEI,'
      '  PLAVEIUF,'
      '  ANOFAB,'
      '  DATAQUI,'
      '  DATVEN,'
      '  KMINI,'
      '  KMATU,'
      '  CATEGORIA,'
      '  CHASSI,'
      '  RENAVAM,'
      '  TIPO,'
      '  CODCAV,'
      '  EIXOS,'
      '  ALTURA,'
      '  LARGURA,'
      '  COMPRIMENTO,'
      '  CUBICO,'
      '  TARA,'
      '  MAXPESO,'
      '  CAPPESO,'
      '  SITVEI,'
      '  COR,'
      '  OBSVEI,'
      '  USUALT,'
      '  DATALT,'
      '  LOCALVEI,'
      '  IN_MONITORAR,'
      '  MEDMAXVAZ,'
      '  MEDMAXCAR,'
      '  MEDMINVAZ,'
      '  MEDMINCAR'
      'from VEICULO '
      'where'
      '  CODVEI = :CODVEI')
    SelectSQL.Strings = (
      'select * from VEICULO where codvei = :codvei')
    ModifySQL.Strings = (
      'update VEICULO'
      'set'
      '  ALTURA = :ALTURA,'
      '  ANOFAB = :ANOFAB,'
      '  CAPPESO = :CAPPESO,'
      '  CATEGORIA = :CATEGORIA,'
      '  CHASSI = :CHASSI,'
      '  CODCAV = :CODCAV,'
      '  CODMOD = :CODMOD,'
      '  CODMOT = :CODMOT,'
      '  CODUSU = :CODUSU,'
      '  CODVEI = :CODVEI,'
      '  COMPRIMENTO = :COMPRIMENTO,'
      '  COR = :COR,'
      '  CUBICO = :CUBICO,'
      '  DATALT = :DATALT,'
      '  DATAQUI = :DATAQUI,'
      '  DATVEN = :DATVEN,'
      '  DESVEI = :DESVEI,'
      '  EIXOS = :EIXOS,'
      '  IN_MONITORAR = :IN_MONITORAR,'
      '  KMATU = :KMATU,'
      '  KMINI = :KMINI,'
      '  LARGURA = :LARGURA,'
      '  LOCALVEI = :LOCALVEI,'
      '  MAXPESO = :MAXPESO,'
      '  MEDMAXCAR = :MEDMAXCAR,'
      '  MEDMAXVAZ = :MEDMAXVAZ,'
      '  MEDMINCAR = :MEDMINCAR,'
      '  MEDMINVAZ = :MEDMINVAZ,'
      '  OBSVEI = :OBSVEI,'
      '  PLAVEI = :PLAVEI,'
      '  PLAVEIUF = :PLAVEIUF,'
      '  RENAVAM = :RENAVAM,'
      '  SITVEI = :SITVEI,'
      '  TARA = :TARA,'
      '  TIPO = :TIPO,'
      '  USUALT = :USUALT'
      'where'
      '  CODVEI = :OLD_CODVEI')
    Left = 40
    Top = 328
    object CadVeiculoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadVeiculoCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object CadVeiculoCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object CadVeiculoCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object CadVeiculoDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object CadVeiculoPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object CadVeiculoPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object CadVeiculoANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object CadVeiculoDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object CadVeiculoDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object CadVeiculoKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
    end
    object CadVeiculoKMATU: TIntegerField
      Alignment = taCenter
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object CadVeiculoCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object CadVeiculoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object CadVeiculoRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object CadVeiculoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object CadVeiculoCODCAV: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object CadVeiculoEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object CadVeiculoALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object CadVeiculoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object CadVeiculoOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object CadVeiculoUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object CadVeiculoDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object CadVeiculoLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object CadVeiculoIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
    object CadVeiculoMEDMAXVAZ: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMAXVAZ'
      Origin = '"VEICULO"."MEDMAXVAZ"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoMEDMAXCAR: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMAXCAR'
      Origin = '"VEICULO"."MEDMAXCAR"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoMEDMINVAZ: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMINVAZ'
      Origin = '"VEICULO"."MEDMINVAZ"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadVeiculoMEDMINCAR: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMINCAR'
      Origin = '"VEICULO"."MEDMINCAR"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ConsCavalos: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    OnCalcFields = ConsCavalosCalcFields
    SQL.Strings = (
      'SELECT CODVEI,DESVEI,PLAVEI,CODMOT FROM VEICULO'
      'WHERE'
      'TIPO = '#39'CAVALO'#39' AND'
      'SITVEI = '#39'ATIVO'#39
      'ORDER BY DESVEI')
    Left = 200
    Top = 328
    object ConsCavalosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsCavalosDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsCavalosPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsCavalosvaDesPla: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'vaDesPla'
      Size = 100
      Calculated = True
    end
    object ConsCavalosCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
  end
  object ConsVeiculo: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.*,MOTORISTA.NOMMOT'
      'FROM VEICULO'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT'
      'ORDER BY VEICULO.DESVEI')
    Left = 120
    Top = 328
    object ConsVeiculoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsVeiculoCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object ConsVeiculoCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object ConsVeiculoCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object ConsVeiculoDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsVeiculoPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsVeiculoPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object ConsVeiculoANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object ConsVeiculoDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object ConsVeiculoDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object ConsVeiculoKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ConsVeiculoKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ConsVeiculoCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object ConsVeiculoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object ConsVeiculoRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object ConsVeiculoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object ConsVeiculoCODCAV: TIntegerField
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object ConsVeiculoEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object ConsVeiculoALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
    end
    object ConsVeiculoLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
    end
    object ConsVeiculoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
    end
    object ConsVeiculoCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
    end
    object ConsVeiculoTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
    end
    object ConsVeiculoMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
    end
    object ConsVeiculoCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
    end
    object ConsVeiculoSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object ConsVeiculoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object ConsVeiculoOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object ConsVeiculoUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object ConsVeiculoDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object ConsVeiculoNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsVeiculoLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object ConsVeiculoIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
  end
  object CadServico: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from SERVICO'
      'where'
      '  CODSER = :OLD_CODSER')
    InsertSQL.Strings = (
      'insert into SERVICO'
      
        '  (CODSER, CODSERREV, CODUSU, DATCAD, DESSER, IN_PERIODICO, IN_R' +
        'EVISAO, '
      '   LIMITE_DIAS, LIMITE_KM, SITSER)'
      'values'
      
        '  (:CODSER, :CODSERREV, :CODUSU, :DATCAD, :DESSER, :IN_PERIODICO' +
        ', :IN_REVISAO, '
      '   :LIMITE_DIAS, :LIMITE_KM, :SITSER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODSER,'
      '  CODUSU,'
      '  DESSER,'
      '  IN_PERIODICO,'
      '  LIMITE_KM,'
      '  LIMITE_DIAS,'
      '  IN_REVISAO,'
      '  SITSER,'
      '  DATCAD,'
      '  CODSERREV'
      'from SERVICO '
      'where'
      '  CODSER = :CODSER')
    SelectSQL.Strings = (
      'select * from SERVICO where codser = :codser')
    ModifySQL.Strings = (
      'update SERVICO'
      'set'
      '  CODSER = :CODSER,'
      '  CODSERREV = :CODSERREV,'
      '  CODUSU = :CODUSU,'
      '  DATCAD = :DATCAD,'
      '  DESSER = :DESSER,'
      '  IN_PERIODICO = :IN_PERIODICO,'
      '  IN_REVISAO = :IN_REVISAO,'
      '  LIMITE_DIAS = :LIMITE_DIAS,'
      '  LIMITE_KM = :LIMITE_KM,'
      '  SITSER = :SITSER'
      'where'
      '  CODSER = :OLD_CODSER')
    Left = 40
    Top = 384
    object CadServicoCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object CadServicoDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object CadServicoIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object CadServicoLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object CadServicoLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
    object CadServicoIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object CadServicoSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object CadServicoDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object CadServicoCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadServicoCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
  end
  object CadServico_Revisao: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    AfterInsert = CadServico_RevisaoAfterInsert
    BeforePost = CadServico_RevisaoBeforePost
    DeleteSQL.Strings = (
      'delete from SERVICO_REVISAO'
      'where'
      '  CODREV = :OLD_CODREV and'
      '  CODSER = :OLD_CODSER')
    InsertSQL.Strings = (
      'insert into SERVICO_REVISAO'
      '  (CODREV, CODSER, DESREV, LIMITE_DIAS, LIMITE_KM, ORDEM_REV)'
      'values'
      
        '  (:CODREV, :CODSER, :DESREV, :LIMITE_DIAS, :LIMITE_KM, :ORDEM_R' +
        'EV)')
    RefreshSQL.Strings = (
      'Select '
      '  CODREV,'
      '  CODSER,'
      '  ORDEM_REV,'
      '  DESREV,'
      '  LIMITE_KM,'
      '  LIMITE_DIAS'
      'from SERVICO_REVISAO '
      'where'
      '  CODREV = :CODREV and'
      '  CODSER = :CODSER')
    SelectSQL.Strings = (
      'select * from SERVICO_REVISAO where'
      
        '                                                     codser = :c' +
        'odser'
      'order by ordem_rev')
    ModifySQL.Strings = (
      'update SERVICO_REVISAO'
      'set'
      '  CODREV = :CODREV,'
      '  CODSER = :CODSER,'
      '  DESREV = :DESREV,'
      '  LIMITE_DIAS = :LIMITE_DIAS,'
      '  LIMITE_KM = :LIMITE_KM,'
      '  ORDEM_REV = :ORDEM_REV'
      'where'
      '  CODREV = :OLD_CODREV and'
      '  CODSER = :OLD_CODSER')
    Left = 120
    Top = 384
    object CadServico_RevisaoCODREV: TIntegerField
      FieldName = 'CODREV'
      Origin = '"SERVICO_REVISAO"."CODREV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadServico_RevisaoCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO_REVISAO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadServico_RevisaoORDEM_REV: TIntegerField
      FieldName = 'ORDEM_REV'
      Origin = '"SERVICO_REVISAO"."ORDEM_REV"'
    end
    object CadServico_RevisaoDESREV: TIBStringField
      FieldName = 'DESREV'
      Origin = '"SERVICO_REVISAO"."DESREV"'
      Size = 50
    end
    object CadServico_RevisaoLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO_REVISAO"."LIMITE_KM"'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
    object CadServico_RevisaoLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO_REVISAO"."LIMITE_DIAS"'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
  end
  object ConsServico: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT SERVICO.*'
      'FROM SERVICO'
      'ORDER BY SERVICO.DESSER')
    Left = 208
    Top = 384
    object ConsServicoCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsServicoCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object ConsServicoDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object ConsServicoIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object ConsServicoLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
    object ConsServicoLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
    object ConsServicoIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object ConsServicoSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object ConsServicoDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
  end
  object CadManut_Ger: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from MANUT_GER'
      'where'
      '  CODMAN = :OLD_CODMAN and'
      '  CODVEI = :OLD_CODVEI')
    InsertSQL.Strings = (
      'insert into MANUT_GER'
      
        '  (CODFOR, CODMAN, CODUSU, CODVEI, DATMAN, DESMAN, HORMAN, NUMDO' +
        'C, NUMORDEM, '
      '   VLTDES)'
      'values'
      
        '  (:CODFOR, :CODMAN, :CODUSU, :CODVEI, :DATMAN, :DESMAN, :HORMAN' +
        ', :NUMDOC, '
      '   :NUMORDEM, :VLTDES)')
    RefreshSQL.Strings = (
      'Select '
      '  CODMAN,'
      '  CODVEI,'
      '  CODUSU,'
      '  CODFOR,'
      '  DESMAN,'
      '  DATMAN,'
      '  HORMAN,'
      '  VLTDES,'
      '  NUMORDEM,'
      '  NUMDOC'
      'from MANUT_GER '
      'where'
      '  CODMAN = :CODMAN and'
      '  CODVEI = :CODVEI')
    SelectSQL.Strings = (
      'select * from MANUT_GER '
      'where '
      'codman = :codman and'
      'codvei = :codvei')
    ModifySQL.Strings = (
      'update MANUT_GER'
      'set'
      '  CODFOR = :CODFOR,'
      '  CODMAN = :CODMAN,'
      '  CODUSU = :CODUSU,'
      '  CODVEI = :CODVEI,'
      '  DATMAN = :DATMAN,'
      '  DESMAN = :DESMAN,'
      '  HORMAN = :HORMAN,'
      '  NUMDOC = :NUMDOC,'
      '  NUMORDEM = :NUMORDEM,'
      '  VLTDES = :VLTDES'
      'where'
      '  CODMAN = :OLD_CODMAN and'
      '  CODVEI = :OLD_CODVEI')
    Left = 40
    Top = 436
    object CadManut_GerCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_GER"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadManut_GerCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_GER"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadManut_GerCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MANUT_GER"."CODUSU"'
      Required = True
    end
    object CadManut_GerCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"MANUT_GER"."CODFOR"'
    end
    object CadManut_GerDESMAN: TIBStringField
      FieldName = 'DESMAN'
      Origin = '"MANUT_GER"."DESMAN"'
      Size = 100
    end
    object CadManut_GerDATMAN: TDateField
      FieldName = 'DATMAN'
      Origin = '"MANUT_GER"."DATMAN"'
    end
    object CadManut_GerHORMAN: TTimeField
      FieldName = 'HORMAN'
      Origin = '"MANUT_GER"."HORMAN"'
    end
    object CadManut_GerVLTDES: TFloatField
      FieldName = 'VLTDES'
      Origin = '"MANUT_GER"."VLTDES"'
    end
    object CadManut_GerNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_GER"."NUMORDEM"'
    end
    object CadManut_GerNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = '"MANUT_GER"."NUMDOC"'
      Size = 10
    end
  end
  object CadManut_Serv: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from MANUT_SERV'
      'where'
      '  CODMAN = :OLD_CODMAN and'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQSER = :OLD_SEQSER')
    InsertSQL.Strings = (
      'insert into MANUT_SERV'
      
        '  (CODMAN, CODSER, CODVEI, DATSER, DATVCT, DESSER, GARANTIA, KMS' +
        'ER, KMVCT, '
      
        '   NUMDOC, NUMORDEM, QTDSER, SEQSER, SITSER, TIPSER, VLRDES, VLR' +
        'TOT, VLRUNI, '
      '   VLRUNIDES)'
      'values'
      
        '  (:CODMAN, :CODSER, :CODVEI, :DATSER, :DATVCT, :DESSER, :GARANT' +
        'IA, :KMSER, '
      
        '   :KMVCT, :NUMDOC, :NUMORDEM, :QTDSER, :SEQSER, :SITSER, :TIPSE' +
        'R, :VLRDES, '
      '   :VLRTOT, :VLRUNI, :VLRUNIDES)')
    RefreshSQL.Strings = (
      'Select '
      '  CODMAN,'
      '  CODVEI,'
      '  SEQSER,'
      '  CODSER,'
      '  DESSER,'
      '  DATVCT,'
      '  KMVCT,'
      '  DATSER,'
      '  KMSER,'
      '  QTDSER,'
      '  VLRUNI,'
      '  VLRUNIDES,'
      '  VLRDES,'
      '  SITSER,'
      '  VLRTOT,'
      '  TIPSER,'
      '  NUMORDEM,'
      '  GARANTIA,'
      '  NUMDOC'
      'from MANUT_SERV '
      'where'
      '  CODMAN = :CODMAN and'
      '  CODVEI = :CODVEI and'
      '  SEQSER = :SEQSER')
    SelectSQL.Strings = (
      'select * from MANUT_SERV'
      'where'
      'codman = :codman and'
      'codvei = :codvei and'
      'seqser = :seqser')
    ModifySQL.Strings = (
      'update MANUT_SERV'
      'set'
      '  CODMAN = :CODMAN,'
      '  CODSER = :CODSER,'
      '  CODVEI = :CODVEI,'
      '  DATSER = :DATSER,'
      '  DATVCT = :DATVCT,'
      '  DESSER = :DESSER,'
      '  GARANTIA = :GARANTIA,'
      '  KMSER = :KMSER,'
      '  KMVCT = :KMVCT,'
      '  NUMDOC = :NUMDOC,'
      '  NUMORDEM = :NUMORDEM,'
      '  QTDSER = :QTDSER,'
      '  SEQSER = :SEQSER,'
      '  SITSER = :SITSER,'
      '  TIPSER = :TIPSER,'
      '  VLRDES = :VLRDES,'
      '  VLRTOT = :VLRTOT,'
      '  VLRUNI = :VLRUNI,'
      '  VLRUNIDES = :VLRUNIDES'
      'where'
      '  CODMAN = :OLD_CODMAN and'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQSER = :OLD_SEQSER')
    Left = 128
    Top = 436
    object CadManut_ServCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_SERV"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadManut_ServCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_SERV"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadManut_ServSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = '"MANUT_SERV"."SEQSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadManut_ServCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"MANUT_SERV"."CODSER"'
      Required = True
    end
    object CadManut_ServDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"MANUT_SERV"."DESSER"'
      Size = 200
    end
    object CadManut_ServDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"MANUT_SERV"."DATVCT"'
    end
    object CadManut_ServKMVCT: TIntegerField
      FieldName = 'KMVCT'
      Origin = '"MANUT_SERV"."KMVCT"'
    end
    object CadManut_ServDATSER: TDateField
      FieldName = 'DATSER'
      Origin = '"MANUT_SERV"."DATSER"'
    end
    object CadManut_ServKMSER: TIntegerField
      FieldName = 'KMSER'
      Origin = '"MANUT_SERV"."KMSER"'
    end
    object CadManut_ServQTDSER: TFloatField
      FieldName = 'QTDSER'
      Origin = '"MANUT_SERV"."QTDSER"'
    end
    object CadManut_ServVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      Origin = '"MANUT_SERV"."VLRUNI"'
    end
    object CadManut_ServVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      Origin = '"MANUT_SERV"."VLRUNIDES"'
    end
    object CadManut_ServVLRDES: TFloatField
      FieldName = 'VLRDES'
      Origin = '"MANUT_SERV"."VLRDES"'
    end
    object CadManut_ServSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"MANUT_SERV"."SITSER"'
      Size = 10
    end
    object CadManut_ServVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      Origin = '"MANUT_SERV"."VLRTOT"'
    end
    object CadManut_ServTIPSER: TIBStringField
      FieldName = 'TIPSER'
      Origin = '"MANUT_SERV"."TIPSER"'
      Size = 50
    end
    object CadManut_ServNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_SERV"."NUMORDEM"'
    end
    object CadManut_ServGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = '"MANUT_SERV"."GARANTIA"'
      Size = 30
    end
    object CadManut_ServNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = '"MANUT_SERV"."NUMDOC"'
      Size = 10
    end
  end
  object ConsServicoLancaManut: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT SERVICO.*'
      'FROM SERVICO')
    Left = 320
    Top = 384
    object ConsServicoLancaManutCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsServicoLancaManutCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object ConsServicoLancaManutDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object ConsServicoLancaManutIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object ConsServicoLancaManutLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ConsServicoLancaManutLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ConsServicoLancaManutIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object ConsServicoLancaManutSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object ConsServicoLancaManutDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object ConsServicoLancaManutCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
  end
  object ClientManutencao_Serv: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 232
    Top = 432
    Data = {
      3D0100009619E0BD0100000018000000100000000000030000003D0106434F44
      4D414E040001000000000006434F445645490400010000000000065345515345
      52040001000000000006434F445345520400010000000000064E4F4D53455201
      0049000000010005574944544802000200640006444553534552010049000000
      0100055749445448020002006400064441545643540400060000000000054B4D
      5643540400010000000000064441545345520400060000000000054B4D534552
      040001000000000006515444534552040001000000000006564C52554E490800
      04000000000009564C52554E49444553080004000000000006564C5244455308
      0004000000000006544950534552010049000000010005574944544802000200
      1E0008474152414E5449410100490000000100055749445448020002001E0000
      00}
    object ClientManutencao_ServCODMAN: TIntegerField
      FieldName = 'CODMAN'
    end
    object ClientManutencao_ServCODVEI: TIntegerField
      FieldName = 'CODVEI'
    end
    object ClientManutencao_ServSEQSER: TIntegerField
      FieldName = 'SEQSER'
    end
    object ClientManutencao_ServCODSER: TIntegerField
      FieldName = 'CODSER'
    end
    object ClientManutencao_ServNOMSER: TStringField
      FieldName = 'NOMSER'
      Size = 100
    end
    object ClientManutencao_ServDESSER: TStringField
      FieldName = 'DESSER'
      Size = 100
    end
    object ClientManutencao_ServDATVCT: TDateField
      FieldName = 'DATVCT'
    end
    object ClientManutencao_ServKMVCT: TIntegerField
      FieldName = 'KMVCT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientManutencao_ServDATSER: TDateField
      FieldName = 'DATSER'
    end
    object ClientManutencao_ServKMSER: TIntegerField
      FieldName = 'KMSER'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientManutencao_ServQTDSER: TIntegerField
      FieldName = 'QTDSER'
    end
    object ClientManutencao_ServVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServVLRDES: TFloatField
      FieldName = 'VLRDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServTIPSER: TStringField
      FieldName = 'TIPSER'
      Size = 30
    end
    object ClientManutencao_ServGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object ClientManutencao_ServVLR_TOTAL: TAggregateField
      Alignment = taCenter
      FieldName = 'VLR_TOTAL'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDSER * VLRUNI)'
    end
    object ClientManutencao_ServTOTAL_DESC: TAggregateField
      Alignment = taCenter
      FieldName = 'TOTAL_DESC'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDSER * VLRDES)'
    end
    object ClientManutencao_ServVLR_TOTAL_DESC: TAggregateField
      Alignment = taCenter
      FieldName = 'VLR_TOTAL_DESC'
      Active = True
      DisplayFormat = ',0.00'
      Expression = '(SUM(QTDSER * VLRUNI)) - SUM((QTDSER * VLRDES))'
    end
  end
  object ConsServico_Revisao: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM SERVICO_REVISAO'
      'WHERE CODSER = :CODSER'
      'ORDER BY ORDEM_REV')
    Left = 360
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODSER'
        ParamType = ptUnknown
      end>
    object ConsServico_RevisaoCODREV: TIntegerField
      FieldName = 'CODREV'
      Origin = '"SERVICO_REVISAO"."CODREV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsServico_RevisaoCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO_REVISAO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsServico_RevisaoORDEM_REV: TIntegerField
      FieldName = 'ORDEM_REV'
      Origin = '"SERVICO_REVISAO"."ORDEM_REV"'
    end
    object ConsServico_RevisaoDESREV: TIBStringField
      FieldName = 'DESREV'
      Origin = '"SERVICO_REVISAO"."DESREV"'
      Size = 50
    end
    object ConsServico_RevisaoLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO_REVISAO"."LIMITE_KM"'
    end
    object ConsServico_RevisaoLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO_REVISAO"."LIMITE_DIAS"'
    end
  end
  object Serv_Rev: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT * FROM SERVICO '
      'WHERE CODSERREV = :CODSERREV AND'
      '                      SITSER = '#39'ATIVO'#39)
    Left = 456
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODSERREV'
        ParamType = ptUnknown
      end>
    object Serv_RevCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"SERVICO"."CODSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Serv_RevCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object Serv_RevDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object Serv_RevIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object Serv_RevLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object Serv_RevLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
    object Serv_RevIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object Serv_RevSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object Serv_RevDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object Serv_RevCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
  end
  object SqlInsertServico: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 432
    Top = 381
  end
  object RelacaoManutencoes: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MANUT_SERV.*,MANUT_GER.*,'
      '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,VEICULO.TIPO,'
      '       USUARIO.NOMUSU,'
      '       FORNECEDOR.*,'
      '       SERVICO.*'
      'FROM MANUT_SERV'
      'INNER JOIN MANUT_GER ON MANUT_GER.CODMAN = MANUT_SERV.CODMAN AND'
      '                        MANUT_GER.CODVEI = MANUT_SERV.CODVEI'
      'INNER JOIN VEICULO ON VEICULO.CODVEI = MANUT_GER.CODVEI'
      'INNER JOIN USUARIO ON USUARIO.CODUSU = MANUT_GER.CODUSU'
      'INNER JOIN FORNECEDOR ON FORNECEDOR.CODFOR = MANUT_GER.CODFOR'
      'INNER JOIN SERVICO ON SERVICO.CODSER = MANUT_SERV.CODSER'
      'WHERE'
      'MANUT_SERV.codvei <> 999999')
    Left = 48
    Top = 488
    object RelacaoManutencoesCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_SERV"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutencoesCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_SERV"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutencoesSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = '"MANUT_SERV"."SEQSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutencoesCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"MANUT_SERV"."CODSER"'
      Required = True
    end
    object RelacaoManutencoesDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"MANUT_SERV"."DESSER"'
      Size = 200
    end
    object RelacaoManutencoesDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"MANUT_SERV"."DATVCT"'
    end
    object RelacaoManutencoesKMVCT: TIntegerField
      FieldName = 'KMVCT'
      Origin = '"MANUT_SERV"."KMVCT"'
    end
    object RelacaoManutencoesDATSER: TDateField
      FieldName = 'DATSER'
      Origin = '"MANUT_SERV"."DATSER"'
    end
    object RelacaoManutencoesKMSER: TIntegerField
      FieldName = 'KMSER'
      Origin = '"MANUT_SERV"."KMSER"'
    end
    object RelacaoManutencoesQTDSER: TFloatField
      FieldName = 'QTDSER'
      Origin = '"MANUT_SERV"."QTDSER"'
    end
    object RelacaoManutencoesVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      Origin = '"MANUT_SERV"."VLRUNI"'
    end
    object RelacaoManutencoesVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      Origin = '"MANUT_SERV"."VLRUNIDES"'
    end
    object RelacaoManutencoesVLRDES: TFloatField
      FieldName = 'VLRDES'
      Origin = '"MANUT_SERV"."VLRDES"'
    end
    object RelacaoManutencoesSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"MANUT_SERV"."SITSER"'
      Size = 10
    end
    object RelacaoManutencoesVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      Origin = '"MANUT_SERV"."VLRTOT"'
    end
    object RelacaoManutencoesTIPSER: TIBStringField
      FieldName = 'TIPSER'
      Origin = '"MANUT_SERV"."TIPSER"'
      Size = 50
    end
    object RelacaoManutencoesNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_SERV"."NUMORDEM"'
    end
    object RelacaoManutencoesCODMAN1: TIntegerField
      FieldName = 'CODMAN1'
      Origin = '"MANUT_GER"."CODMAN"'
      Required = True
    end
    object RelacaoManutencoesCODVEI1: TIntegerField
      FieldName = 'CODVEI1'
      Origin = '"MANUT_GER"."CODVEI"'
      Required = True
    end
    object RelacaoManutencoesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MANUT_GER"."CODUSU"'
      Required = True
    end
    object RelacaoManutencoesCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"MANUT_GER"."CODFOR"'
    end
    object RelacaoManutencoesDESMAN: TIBStringField
      FieldName = 'DESMAN'
      Origin = '"MANUT_GER"."DESMAN"'
      Size = 100
    end
    object RelacaoManutencoesDATMAN: TDateField
      FieldName = 'DATMAN'
      Origin = '"MANUT_GER"."DATMAN"'
    end
    object RelacaoManutencoesHORMAN: TTimeField
      FieldName = 'HORMAN'
      Origin = '"MANUT_GER"."HORMAN"'
    end
    object RelacaoManutencoesVLTDES: TFloatField
      FieldName = 'VLTDES'
      Origin = '"MANUT_GER"."VLTDES"'
    end
    object RelacaoManutencoesNUMORDEM1: TIntegerField
      FieldName = 'NUMORDEM1'
      Origin = '"MANUT_GER"."NUMORDEM"'
    end
    object RelacaoManutencoesPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object RelacaoManutencoesDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object RelacaoManutencoesKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object RelacaoManutencoesTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object RelacaoManutencoesNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object RelacaoManutencoesCODFOR1: TIntegerField
      FieldName = 'CODFOR1'
      Origin = '"FORNECEDOR"."CODFOR"'
      Required = True
    end
    object RelacaoManutencoesCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
      Origin = '"FORNECEDOR"."CODUSU"'
      Required = True
    end
    object RelacaoManutencoesDESFOR: TIBStringField
      FieldName = 'DESFOR'
      Origin = '"FORNECEDOR"."DESFOR"'
      Size = 100
    end
    object RelacaoManutencoesENDFOR: TIBStringField
      FieldName = 'ENDFOR'
      Origin = '"FORNECEDOR"."ENDFOR"'
      Size = 100
    end
    object RelacaoManutencoesNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"FORNECEDOR"."NUMEND"'
      Size = 10
    end
    object RelacaoManutencoesBAIFOR: TIBStringField
      FieldName = 'BAIFOR'
      Origin = '"FORNECEDOR"."BAIFOR"'
      Size = 50
    end
    object RelacaoManutencoesCEPFOR: TIBStringField
      FieldName = 'CEPFOR'
      Origin = '"FORNECEDOR"."CEPFOR"'
      Size = 15
    end
    object RelacaoManutencoesCIDFOR: TIBStringField
      FieldName = 'CIDFOR'
      Origin = '"FORNECEDOR"."CIDFOR"'
      Size = 100
    end
    object RelacaoManutencoesSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"FORNECEDOR"."SIGUFS"'
      Size = 2
    end
    object RelacaoManutencoesSITFOR: TIBStringField
      FieldName = 'SITFOR'
      Origin = '"FORNECEDOR"."SITFOR"'
      Size = 10
    end
    object RelacaoManutencoesTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"FORNECEDOR"."TEL1"'
      Size = 15
    end
    object RelacaoManutencoesTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"FORNECEDOR"."TEL2"'
      Size = 15
    end
    object RelacaoManutencoesEMAFOR: TIBStringField
      FieldName = 'EMAFOR'
      Origin = '"FORNECEDOR"."EMAFOR"'
      Size = 50
    end
    object RelacaoManutencoesOBSFOR: TIBStringField
      FieldName = 'OBSFOR'
      Origin = '"FORNECEDOR"."OBSFOR"'
      Size = 300
    end
    object RelacaoManutencoesCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
    end
    object RelacaoManutencoesCODSER1: TIntegerField
      FieldName = 'CODSER1'
      Origin = '"SERVICO"."CODSER"'
      Required = True
    end
    object RelacaoManutencoesCODUSU2: TIntegerField
      FieldName = 'CODUSU2'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object RelacaoManutencoesDESSER1: TIBStringField
      FieldName = 'DESSER1'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object RelacaoManutencoesIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object RelacaoManutencoesLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object RelacaoManutencoesLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
    object RelacaoManutencoesIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object RelacaoManutencoesSITSER1: TIBStringField
      FieldName = 'SITSER1'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object RelacaoManutencoesDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object RelacaoManutencoesCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
    object RelacaoManutencoesGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = '"MANUT_SERV"."GARANTIA"'
      Size = 30
    end
  end
  object ClientRelacaoManutencoes: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderRelacaoManutencoes'
    OnCalcFields = ClientRelacaoManutencoesCalcFields
    Left = 328
    Top = 488
    object ClientRelacaoManutencoesCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Required = True
    end
    object ClientRelacaoManutencoesCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientRelacaoManutencoesSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Required = True
    end
    object ClientRelacaoManutencoesCODSER: TIntegerField
      FieldName = 'CODSER'
      Required = True
    end
    object ClientRelacaoManutencoesDESSER: TWideStringField
      FieldName = 'DESSER'
      Size = 200
    end
    object ClientRelacaoManutencoesDATVCT: TDateField
      FieldName = 'DATVCT'
    end
    object ClientRelacaoManutencoesKMVCT: TIntegerField
      FieldName = 'KMVCT'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
    object ClientRelacaoManutencoesDATSER: TDateField
      FieldName = 'DATSER'
    end
    object ClientRelacaoManutencoesKMSER: TIntegerField
      FieldName = 'KMSER'
      DisplayFormat = '#,###,##0'
      EditFormat = '#,###,##0'
    end
    object ClientRelacaoManutencoesQTDSER: TFloatField
      FieldName = 'QTDSER'
    end
    object ClientRelacaoManutencoesVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesVLRDES: TFloatField
      FieldName = 'VLRDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesSITSER: TWideStringField
      FieldName = 'SITSER'
      Size = 10
    end
    object ClientRelacaoManutencoesVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesTIPSER: TWideStringField
      FieldName = 'TIPSER'
      Size = 50
    end
    object ClientRelacaoManutencoesNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
    end
    object ClientRelacaoManutencoesCODMAN1: TIntegerField
      FieldName = 'CODMAN1'
      Required = True
    end
    object ClientRelacaoManutencoesCODVEI1: TIntegerField
      FieldName = 'CODVEI1'
      Required = True
    end
    object ClientRelacaoManutencoesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object ClientRelacaoManutencoesCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientRelacaoManutencoesDESMAN: TWideStringField
      FieldName = 'DESMAN'
      Size = 100
    end
    object ClientRelacaoManutencoesDATMAN: TDateField
      FieldName = 'DATMAN'
    end
    object ClientRelacaoManutencoesHORMAN: TTimeField
      FieldName = 'HORMAN'
    end
    object ClientRelacaoManutencoesVLTDES: TFloatField
      FieldName = 'VLTDES'
    end
    object ClientRelacaoManutencoesNUMORDEM1: TIntegerField
      FieldName = 'NUMORDEM1'
    end
    object ClientRelacaoManutencoesPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientRelacaoManutencoesDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientRelacaoManutencoesKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientRelacaoManutencoesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object ClientRelacaoManutencoesNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 100
    end
    object ClientRelacaoManutencoesCODFOR1: TIntegerField
      FieldName = 'CODFOR1'
      Required = True
    end
    object ClientRelacaoManutencoesCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
      Required = True
    end
    object ClientRelacaoManutencoesDESFOR: TWideStringField
      FieldName = 'DESFOR'
      Size = 100
    end
    object ClientRelacaoManutencoesENDFOR: TWideStringField
      FieldName = 'ENDFOR'
      Size = 100
    end
    object ClientRelacaoManutencoesNUMEND: TWideStringField
      FieldName = 'NUMEND'
      Size = 10
    end
    object ClientRelacaoManutencoesBAIFOR: TWideStringField
      FieldName = 'BAIFOR'
      Size = 50
    end
    object ClientRelacaoManutencoesCEPFOR: TWideStringField
      FieldName = 'CEPFOR'
      Size = 15
    end
    object ClientRelacaoManutencoesCIDFOR: TWideStringField
      FieldName = 'CIDFOR'
      Size = 100
    end
    object ClientRelacaoManutencoesSIGUFS: TWideStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientRelacaoManutencoesSITFOR: TWideStringField
      FieldName = 'SITFOR'
      Size = 10
    end
    object ClientRelacaoManutencoesTEL1: TWideStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object ClientRelacaoManutencoesTEL2: TWideStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object ClientRelacaoManutencoesEMAFOR: TWideStringField
      FieldName = 'EMAFOR'
      Size = 50
    end
    object ClientRelacaoManutencoesOBSFOR: TWideStringField
      FieldName = 'OBSFOR'
      Size = 300
    end
    object ClientRelacaoManutencoesCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
    end
    object ClientRelacaoManutencoesCODSER1: TIntegerField
      FieldName = 'CODSER1'
      Required = True
    end
    object ClientRelacaoManutencoesCODUSU2: TIntegerField
      FieldName = 'CODUSU2'
      Required = True
    end
    object ClientRelacaoManutencoesDESSER1: TWideStringField
      FieldName = 'DESSER1'
      Size = 100
    end
    object ClientRelacaoManutencoesIN_PERIODICO: TWideStringField
      FieldName = 'IN_PERIODICO'
      Size = 3
    end
    object ClientRelacaoManutencoesLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
    end
    object ClientRelacaoManutencoesLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
    end
    object ClientRelacaoManutencoesIN_REVISAO: TWideStringField
      FieldName = 'IN_REVISAO'
      Size = 3
    end
    object ClientRelacaoManutencoesSITSER1: TWideStringField
      FieldName = 'SITSER1'
      Size = 10
    end
    object ClientRelacaoManutencoesDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ClientRelacaoManutencoesCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
    end
    object ClientRelacaoManutencoesTOTAL_ITEM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_ITEM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesTOTAL_ITEM_DESC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_ITEM_DESC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesTOTAL_DESC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_DESC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientRelacaoManutencoesGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object ClientRelacaoManutencoesTOTAL_GERAL: TAggregateField
      Alignment = taCenter
      FieldName = 'TOTAL_GERAL'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDSER * VLRUNI)'
    end
    object ClientRelacaoManutencoesTOTAL_GERAL_DESC: TAggregateField
      Alignment = taCenter
      FieldName = 'TOTAL_GERAL_DESC'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM((QTDSER * VLRUNI) - (QTDSER * VLRDES) )'
    end
    object ClientRelacaoManutencoesTOTAL_DESC_GERAL: TAggregateField
      Alignment = taCenter
      FieldName = 'TOTAL_DESC_GERAL'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL_DESC)'
    end
  end
  object ProviderRelacaoManutencoes: TDataSetProvider
    DataSet = RelacaoManutencoes
    Left = 176
    Top = 488
  end
  object ConsManut_ServAlt: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MANUT_SERV.*,SERVICO.*'
      'FROM MANUT_SERV'
      'INNER JOIN MANUT_GER ON MANUT_GER.CODMAN = MANUT_SERV.CODMAN AND'
      '                        MANUT_GER.CODVEI = MANUT_SERV.CODVEI'
      'INNER JOIN SERVICO ON SERVICO.CODSER = MANUT_SERV.CODSER'
      'WHERE'
      'MANUT_SERV.NUMORDEM = :NUMORDEM AND'
      'MANUT_SERV.CODVEI = :CODVEI'
      'ORDER BY MANUT_SERV.SEQSER DESC')
    Left = 688
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMORDEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEI'
        ParamType = ptUnknown
      end>
    object ConsManut_ServAltCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_SERV"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsManut_ServAltCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_SERV"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsManut_ServAltSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = '"MANUT_SERV"."SEQSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsManut_ServAltCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"MANUT_SERV"."CODSER"'
      Required = True
    end
    object ConsManut_ServAltDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"MANUT_SERV"."DESSER"'
      Size = 200
    end
    object ConsManut_ServAltDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"MANUT_SERV"."DATVCT"'
    end
    object ConsManut_ServAltKMVCT: TIntegerField
      FieldName = 'KMVCT'
      Origin = '"MANUT_SERV"."KMVCT"'
    end
    object ConsManut_ServAltDATSER: TDateField
      FieldName = 'DATSER'
      Origin = '"MANUT_SERV"."DATSER"'
    end
    object ConsManut_ServAltKMSER: TIntegerField
      FieldName = 'KMSER'
      Origin = '"MANUT_SERV"."KMSER"'
    end
    object ConsManut_ServAltQTDSER: TFloatField
      FieldName = 'QTDSER'
      Origin = '"MANUT_SERV"."QTDSER"'
    end
    object ConsManut_ServAltVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      Origin = '"MANUT_SERV"."VLRUNI"'
    end
    object ConsManut_ServAltVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      Origin = '"MANUT_SERV"."VLRUNIDES"'
    end
    object ConsManut_ServAltVLRDES: TFloatField
      FieldName = 'VLRDES'
      Origin = '"MANUT_SERV"."VLRDES"'
    end
    object ConsManut_ServAltSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"MANUT_SERV"."SITSER"'
      Size = 10
    end
    object ConsManut_ServAltVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      Origin = '"MANUT_SERV"."VLRTOT"'
    end
    object ConsManut_ServAltTIPSER: TIBStringField
      FieldName = 'TIPSER'
      Origin = '"MANUT_SERV"."TIPSER"'
      Size = 50
    end
    object ConsManut_ServAltNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_SERV"."NUMORDEM"'
    end
    object ConsManut_ServAltCODSER1: TIntegerField
      FieldName = 'CODSER1'
      Origin = '"SERVICO"."CODSER"'
      Required = True
    end
    object ConsManut_ServAltCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object ConsManut_ServAltDESSER1: TIBStringField
      FieldName = 'DESSER1'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object ConsManut_ServAltIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object ConsManut_ServAltLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object ConsManut_ServAltLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
    object ConsManut_ServAltIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object ConsManut_ServAltSITSER1: TIBStringField
      FieldName = 'SITSER1'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object ConsManut_ServAltDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object ConsManut_ServAltCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
  end
  object ConsManut_GerAlt: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    Left = 560
    Top = 424
  end
  object ClientManutencao_ServAlt: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 478
    Top = 489
    Data = {
      650100009619E0BD010000001800000012000000000003000000650106434F44
      4D414E040001000000000006434F445645490400010000000000065345515345
      52040001000000000006434F445345520400010000000000064E4F4D53455201
      0049000000010005574944544802000200640006444553534552010049000000
      0100055749445448020002006400064441545643540400060000000000054B4D
      5643540400010000000000064441545345520400060000000000054B4D534552
      040001000000000006515444534552040001000000000006564C52554E490800
      04000000000009564C52554E49444553080004000000000006564C5244455308
      0004000000000006544950534552010049000000010005574944544802000200
      1E00094C494D4954455F4B4D04000100000000000B4C494D4954455F44494153
      04000100000000000A494E5F5245564953414F01004900000001000557494454
      480200020003000000}
    object ClientManutencao_ServAltCODMAN: TIntegerField
      FieldName = 'CODMAN'
    end
    object ClientManutencao_ServAltCODVEI: TIntegerField
      FieldName = 'CODVEI'
    end
    object ClientManutencao_ServAltSEQSER: TIntegerField
      FieldName = 'SEQSER'
    end
    object ClientManutencao_ServAltCODSER: TIntegerField
      FieldName = 'CODSER'
    end
    object ClientManutencao_ServAltNOMSER: TStringField
      FieldName = 'NOMSER'
      Size = 100
    end
    object ClientManutencao_ServAltDESSER: TStringField
      FieldName = 'DESSER'
      Size = 100
    end
    object ClientManutencao_ServAltDATVCT: TDateField
      FieldName = 'DATVCT'
    end
    object ClientManutencao_ServAltKMVCT: TIntegerField
      FieldName = 'KMVCT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientManutencao_ServAltDATSER: TDateField
      FieldName = 'DATSER'
    end
    object ClientManutencao_ServAltKMSER: TIntegerField
      FieldName = 'KMSER'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientManutencao_ServAltQTDSER: TIntegerField
      FieldName = 'QTDSER'
    end
    object ClientManutencao_ServAltVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServAltVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServAltVLRDES: TFloatField
      FieldName = 'VLRDES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientManutencao_ServAltTIPSER: TStringField
      FieldName = 'TIPSER'
      Size = 30
    end
    object ClientManutencao_ServAltLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
    end
    object ClientManutencao_ServAltLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
    end
    object ClientManutencao_ServAltIN_REVISAO: TStringField
      FieldName = 'IN_REVISAO'
      Size = 3
    end
    object ClientManutencao_ServAltVLR_TOTAL: TAggregateField
      Alignment = taCenter
      FieldName = 'VLR_TOTAL'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDSER * VLRUNI)'
    end
    object ClientManutencao_ServAltTOTAL_DESC: TAggregateField
      Alignment = taCenter
      FieldName = 'TOTAL_DESC'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTDSER * VLRDES)'
    end
    object ClientManutencao_ServAltVLR_TOTAL_DESC: TAggregateField
      Alignment = taCenter
      FieldName = 'VLR_TOTAL_DESC'
      Active = True
      DisplayFormat = ',0.00'
      Expression = '(SUM(QTDSER * VLRUNI)) - SUM((QTDSER * VLRDES))'
    end
  end
  object ConsVeiculosPatio: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.*,MOTORISTA.NOMMOT,MOTORISTA.FOTO'
      'FROM VEICULO'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT'
      'WHERE'
      'VEICULO.SITVEI = '#39'ATIVO'#39' AND'
      'VEICULO.LOCALVEI = '#39'PATIO'#39' AND'
      'VEICULO.TIPO <> '#39'CARRETA'#39
      'ORDER BY VEICULO.PLAVEI ')
    Left = 144
    Top = 592
    object ConsVeiculosPatioCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsVeiculosPatioCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"VEICULO"."CODUSU"'
      Required = True
    end
    object ConsVeiculosPatioCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Origin = '"VEICULO"."CODMOD"'
      Required = True
    end
    object ConsVeiculosPatioCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"VEICULO"."CODMOT"'
      Required = True
    end
    object ConsVeiculosPatioDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsVeiculosPatioPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsVeiculosPatioPLAVEIUF: TIBStringField
      FieldName = 'PLAVEIUF'
      Origin = '"VEICULO"."PLAVEIUF"'
      FixedChar = True
      Size = 2
    end
    object ConsVeiculosPatioANOFAB: TIBStringField
      FieldName = 'ANOFAB'
      Origin = '"VEICULO"."ANOFAB"'
      Size = 30
    end
    object ConsVeiculosPatioDATAQUI: TDateField
      FieldName = 'DATAQUI'
      Origin = '"VEICULO"."DATAQUI"'
    end
    object ConsVeiculosPatioDATVEN: TDateField
      FieldName = 'DATVEN'
      Origin = '"VEICULO"."DATVEN"'
    end
    object ConsVeiculosPatioKMINI: TIntegerField
      FieldName = 'KMINI'
      Origin = '"VEICULO"."KMINI"'
    end
    object ConsVeiculosPatioKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ConsVeiculosPatioCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"VEICULO"."CATEGORIA"'
      Size = 50
    end
    object ConsVeiculosPatioCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
    end
    object ConsVeiculosPatioRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 15
    end
    object ConsVeiculosPatioTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object ConsVeiculosPatioCODCAV: TIntegerField
      FieldName = 'CODCAV'
      Origin = '"VEICULO"."CODCAV"'
    end
    object ConsVeiculosPatioEIXOS: TIBStringField
      FieldName = 'EIXOS'
      Origin = '"VEICULO"."EIXOS"'
      Size = 50
    end
    object ConsVeiculosPatioALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = '"VEICULO"."ALTURA"'
    end
    object ConsVeiculosPatioLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = '"VEICULO"."LARGURA"'
    end
    object ConsVeiculosPatioCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = '"VEICULO"."COMPRIMENTO"'
    end
    object ConsVeiculosPatioCUBICO: TFloatField
      FieldName = 'CUBICO'
      Origin = '"VEICULO"."CUBICO"'
    end
    object ConsVeiculosPatioTARA: TFloatField
      FieldName = 'TARA'
      Origin = '"VEICULO"."TARA"'
    end
    object ConsVeiculosPatioMAXPESO: TFloatField
      FieldName = 'MAXPESO'
      Origin = '"VEICULO"."MAXPESO"'
    end
    object ConsVeiculosPatioCAPPESO: TIntegerField
      FieldName = 'CAPPESO'
      Origin = '"VEICULO"."CAPPESO"'
    end
    object ConsVeiculosPatioSITVEI: TIBStringField
      FieldName = 'SITVEI'
      Origin = '"VEICULO"."SITVEI"'
      Size = 10
    end
    object ConsVeiculosPatioCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
      Size = 30
    end
    object ConsVeiculosPatioOBSVEI: TIBStringField
      FieldName = 'OBSVEI'
      Origin = '"VEICULO"."OBSVEI"'
      Size = 300
    end
    object ConsVeiculosPatioUSUALT: TIntegerField
      FieldName = 'USUALT'
      Origin = '"VEICULO"."USUALT"'
    end
    object ConsVeiculosPatioDATALT: TDateField
      FieldName = 'DATALT'
      Origin = '"VEICULO"."DATALT"'
    end
    object ConsVeiculosPatioLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object ConsVeiculosPatioNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsVeiculosPatioFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsVeiculosPatioIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
  end
  object CadEntradaSaida: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from ENTRADA_SAIDA'
      'where'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQENTSAI = :OLD_SEQENTSAI')
    InsertSQL.Strings = (
      'insert into ENTRADA_SAIDA'
      
        '  (CARGA, CODCARRETA, CODMOT, CODVEI, DAT_ABASTEC, DATENT, DATSA' +
        'IDA, DESTINO, '
      
        '   HORENT, HORSAIDA, IN_COMISSAO, IN_ENGATADO, IN_VISUALIZADO, I' +
        'TESEL, '
      
        '   KMENT, KMSAIDA, MEDIA_CONS, OBS_MOTORISTA, QTD_CHEQUE_REC, QT' +
        'D_COMB, '
      
        '   QTD_COMBEMP, QTD_COMBPOS, RETORNO, SEQENTSAI, USUENT, USUSAID' +
        'A, VLR_COMBEMP, '
      
        '   VLR_COMBPOS, VLR_COMISSAO, VLR_DEPRECIASSAO, VLR_DESCARGA, VL' +
        'R_FINANCIAMENTOS, '
      
        '   VLR_OUTRAS_DESP, VLR_PEDAGIO, VLR_PNEUS, VLR_REFEICOES, VLR_S' +
        'ALARIO, '
      '   VLR_VIAFACIL)'
      'values'
      
        '  (:CARGA, :CODCARRETA, :CODMOT, :CODVEI, :DAT_ABASTEC, :DATENT,' +
        ' :DATSAIDA, '
      
        '   :DESTINO, :HORENT, :HORSAIDA, :IN_COMISSAO, :IN_ENGATADO, :IN' +
        '_VISUALIZADO, '
      
        '   :ITESEL, :KMENT, :KMSAIDA, :MEDIA_CONS, :OBS_MOTORISTA, :QTD_' +
        'CHEQUE_REC, '
      
        '   :QTD_COMB, :QTD_COMBEMP, :QTD_COMBPOS, :RETORNO, :SEQENTSAI, ' +
        ':USUENT, '
      
        '   :USUSAIDA, :VLR_COMBEMP, :VLR_COMBPOS, :VLR_COMISSAO, :VLR_DE' +
        'PRECIASSAO, '
      
        '   :VLR_DESCARGA, :VLR_FINANCIAMENTOS, :VLR_OUTRAS_DESP, :VLR_PE' +
        'DAGIO, '
      '   :VLR_PNEUS, :VLR_REFEICOES, :VLR_SALARIO, :VLR_VIAFACIL)')
    RefreshSQL.Strings = (
      'Select '
      '  SEQENTSAI,'
      '  CODVEI,'
      '  USUENT,'
      '  USUSAIDA,'
      '  CODMOT,'
      '  DATSAIDA,'
      '  HORSAIDA,'
      '  KMSAIDA,'
      '  DATENT,'
      '  HORENT,'
      '  KMENT,'
      '  DESTINO,'
      '  CARGA,'
      '  CODCARRETA,'
      '  IN_ENGATADO,'
      '  QTD_COMB,'
      '  DAT_ABASTEC,'
      '  MEDIA_CONS,'
      '  ITESEL,'
      '  QTD_COMBEMP,'
      '  QTD_COMBPOS,'
      '  OBS_MOTORISTA,'
      '  IN_VISUALIZADO,'
      '  VLR_COMBEMP,'
      '  VLR_COMBPOS,'
      '  VLR_PEDAGIO,'
      '  VLR_DESCARGA,'
      '  VLR_REFEICOES,'
      '  VLR_OUTRAS_DESP,'
      '  QTD_CHEQUE_REC,'
      '  RETORNO,'
      '  VLR_VIAFACIL,'
      '  VLR_COMISSAO,'
      '  VLR_SALARIO,'
      '  IN_COMISSAO,'
      '  VLR_DEPRECIASSAO,'
      '  VLR_FINANCIAMENTOS,'
      '  VLR_PNEUS'
      'from ENTRADA_SAIDA '
      'where'
      '  CODVEI = :CODVEI and'
      '  SEQENTSAI = :SEQENTSAI')
    SelectSQL.Strings = (
      'select * from ENTRADA_SAIDA'
      'where'
      'codvei = :codvei and'
      'seqentsai = :seqentsai')
    ModifySQL.Strings = (
      'update ENTRADA_SAIDA'
      'set'
      '  CARGA = :CARGA,'
      '  CODCARRETA = :CODCARRETA,'
      '  CODMOT = :CODMOT,'
      '  CODVEI = :CODVEI,'
      '  DAT_ABASTEC = :DAT_ABASTEC,'
      '  DATENT = :DATENT,'
      '  DATSAIDA = :DATSAIDA,'
      '  DESTINO = :DESTINO,'
      '  HORENT = :HORENT,'
      '  HORSAIDA = :HORSAIDA,'
      '  IN_COMISSAO = :IN_COMISSAO,'
      '  IN_ENGATADO = :IN_ENGATADO,'
      '  IN_VISUALIZADO = :IN_VISUALIZADO,'
      '  ITESEL = :ITESEL,'
      '  KMENT = :KMENT,'
      '  KMSAIDA = :KMSAIDA,'
      '  MEDIA_CONS = :MEDIA_CONS,'
      '  OBS_MOTORISTA = :OBS_MOTORISTA,'
      '  QTD_CHEQUE_REC = :QTD_CHEQUE_REC,'
      '  QTD_COMB = :QTD_COMB,'
      '  QTD_COMBEMP = :QTD_COMBEMP,'
      '  QTD_COMBPOS = :QTD_COMBPOS,'
      '  RETORNO = :RETORNO,'
      '  SEQENTSAI = :SEQENTSAI,'
      '  USUENT = :USUENT,'
      '  USUSAIDA = :USUSAIDA,'
      '  VLR_COMBEMP = :VLR_COMBEMP,'
      '  VLR_COMBPOS = :VLR_COMBPOS,'
      '  VLR_COMISSAO = :VLR_COMISSAO,'
      '  VLR_DEPRECIASSAO = :VLR_DEPRECIASSAO,'
      '  VLR_DESCARGA = :VLR_DESCARGA,'
      '  VLR_FINANCIAMENTOS = :VLR_FINANCIAMENTOS,'
      '  VLR_OUTRAS_DESP = :VLR_OUTRAS_DESP,'
      '  VLR_PEDAGIO = :VLR_PEDAGIO,'
      '  VLR_PNEUS = :VLR_PNEUS,'
      '  VLR_REFEICOES = :VLR_REFEICOES,'
      '  VLR_SALARIO = :VLR_SALARIO,'
      '  VLR_VIAFACIL = :VLR_VIAFACIL'
      'where'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQENTSAI = :OLD_SEQENTSAI')
    Left = 40
    Top = 592
    object CadEntradaSaidaSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadEntradaSaidaCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadEntradaSaidaUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object CadEntradaSaidaUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object CadEntradaSaidaCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object CadEntradaSaidaDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object CadEntradaSaidaHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object CadEntradaSaidaKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object CadEntradaSaidaDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object CadEntradaSaidaHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object CadEntradaSaidaKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object CadEntradaSaidaDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object CadEntradaSaidaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object CadEntradaSaidaCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object CadEntradaSaidaIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object CadEntradaSaidaQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
      DisplayFormat = ',0.00'
    end
    object CadEntradaSaidaDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object CadEntradaSaidaMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
      DisplayFormat = ',0.00'
    end
    object CadEntradaSaidaITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object CadEntradaSaidaQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBEMP"'
      DisplayFormat = ',0.00'
    end
    object CadEntradaSaidaQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBPOS"'
      DisplayFormat = ',0.00'
    end
    object CadEntradaSaidaOBS_MOTORISTA: TIBStringField
      FieldName = 'OBS_MOTORISTA'
      Origin = '"ENTRADA_SAIDA"."OBS_MOTORISTA"'
      Size = 300
    end
    object CadEntradaSaidaIN_VISUALIZADO: TIBStringField
      FieldName = 'IN_VISUALIZADO'
      Origin = '"ENTRADA_SAIDA"."IN_VISUALIZADO"'
      Size = 3
    end
    object CadEntradaSaidaVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBEMP"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBPOS"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
      Origin = '"ENTRADA_SAIDA"."VLR_PEDAGIO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaVLR_DESCARGA: TFloatField
      FieldName = 'VLR_DESCARGA'
      Origin = '"ENTRADA_SAIDA"."VLR_DESCARGA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaVLR_REFEICOES: TFloatField
      FieldName = 'VLR_REFEICOES'
      Origin = '"ENTRADA_SAIDA"."VLR_REFEICOES"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaVLR_OUTRAS_DESP: TFloatField
      FieldName = 'VLR_OUTRAS_DESP'
      Origin = '"ENTRADA_SAIDA"."VLR_OUTRAS_DESP"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadEntradaSaidaQTD_CHEQUE_REC: TIntegerField
      FieldName = 'QTD_CHEQUE_REC'
      Origin = '"ENTRADA_SAIDA"."QTD_CHEQUE_REC"'
    end
    object CadEntradaSaidaRETORNO: TIBStringField
      FieldName = 'RETORNO'
      Origin = '"ENTRADA_SAIDA"."RETORNO"'
      Size = 30
    end
    object CadEntradaSaidaVLR_VIAFACIL: TFloatField
      FieldName = 'VLR_VIAFACIL'
      Origin = '"ENTRADA_SAIDA"."VLR_VIAFACIL"'
    end
    object CadEntradaSaidaVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      Origin = '"ENTRADA_SAIDA"."VLR_COMISSAO"'
    end
    object CadEntradaSaidaVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
      Origin = '"ENTRADA_SAIDA"."VLR_SALARIO"'
    end
    object CadEntradaSaidaIN_COMISSAO: TIBStringField
      FieldName = 'IN_COMISSAO'
      Origin = '"ENTRADA_SAIDA"."IN_COMISSAO"'
      Size = 3
    end
    object CadEntradaSaidaVLR_DEPRECIASSAO: TFloatField
      FieldName = 'VLR_DEPRECIASSAO'
      Origin = '"ENTRADA_SAIDA"."VLR_DEPRECIASSAO"'
    end
    object CadEntradaSaidaVLR_FINANCIAMENTOS: TFloatField
      FieldName = 'VLR_FINANCIAMENTOS'
      Origin = '"ENTRADA_SAIDA"."VLR_FINANCIAMENTOS"'
    end
    object CadEntradaSaidaVLR_PNEUS: TFloatField
      FieldName = 'VLR_PNEUS'
      Origin = '"ENTRADA_SAIDA"."VLR_PNEUS"'
    end
  end
  object ConsVeiculosViagem: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT ENTRADA_SAIDA.*,'
      
        '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,VEICULO.TIPO,' +
        'VEICULO.IN_MONITORAR,'
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
      'ENTRADA_SAIDA.KMENT = 0'
      'ORDER BY ENTRADA_SAIDA.DATSAIDA,ENTRADA_SAIDA.HORSAIDA')
    Left = 240
    Top = 592
    object ConsVeiculosViagemSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsVeiculosViagemCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsVeiculosViagemUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object ConsVeiculosViagemUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object ConsVeiculosViagemCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object ConsVeiculosViagemDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object ConsVeiculosViagemHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object ConsVeiculosViagemKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
    end
    object ConsVeiculosViagemDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object ConsVeiculosViagemHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object ConsVeiculosViagemKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
    end
    object ConsVeiculosViagemDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object ConsVeiculosViagemCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object ConsVeiculosViagemCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object ConsVeiculosViagemPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsVeiculosViagemDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsVeiculosViagemKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ConsVeiculosViagemNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsVeiculosViagemAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsVeiculosViagemFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsVeiculosViagemUSUARIO_SAIDA: TIBStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsVeiculosViagemPLAVEI_CARRETA: TIBStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsVeiculosViagemIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object ConsVeiculosViagemQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object ConsVeiculosViagemDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object ConsVeiculosViagemMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object ConsVeiculosViagemITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object ConsVeiculosViagemTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object ConsVeiculosViagemIN_MONITORAR: TIBStringField
      FieldName = 'IN_MONITORAR'
      Origin = '"VEICULO"."IN_MONITORAR"'
      Size = 3
    end
  end
  object RelacaoEntradaSaida: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT ENTRADA_SAIDA.*,'
      '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,'
      '       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,'
      '       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,'
      '       USUARIO_ENT.NOMUSU AS USUARIO_ENT,'
      '       CARRETA.PLAVEI AS PLAVEI_CARRETA'
      'FROM ENTRADA_SAIDA'
      'INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI'
      'INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT'
      
        'INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_S' +
        'AIDA.USUSAIDA'
      
        'LEFT JOIN USUARIO USUARIO_ENT ON USUARIO_ENT.CODUSU = ENTRADA_SA' +
        'IDA.USUENT'
      
        'LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODC' +
        'ARRETA'
      'WHERE VEICULO.CODVEI <> 999999'
      'ORDER BY ENTRADA_SAIDA.DATSAIDA,ENTRADA_SAIDA.HORSAIDA')
    Left = 352
    Top = 592
    object RelacaoEntradaSaidaSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoEntradaSaidaCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoEntradaSaidaUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object RelacaoEntradaSaidaUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object RelacaoEntradaSaidaCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object RelacaoEntradaSaidaDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object RelacaoEntradaSaidaHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object RelacaoEntradaSaidaKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
    end
    object RelacaoEntradaSaidaDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object RelacaoEntradaSaidaHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object RelacaoEntradaSaidaKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
    end
    object RelacaoEntradaSaidaDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object RelacaoEntradaSaidaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object RelacaoEntradaSaidaCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object RelacaoEntradaSaidaIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object RelacaoEntradaSaidaQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object RelacaoEntradaSaidaDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object RelacaoEntradaSaidaMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object RelacaoEntradaSaidaITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object RelacaoEntradaSaidaPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object RelacaoEntradaSaidaDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object RelacaoEntradaSaidaKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object RelacaoEntradaSaidaNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object RelacaoEntradaSaidaAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object RelacaoEntradaSaidaFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object RelacaoEntradaSaidaUSUARIO_SAIDA: TIBStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object RelacaoEntradaSaidaUSUARIO_ENT: TIBStringField
      FieldName = 'USUARIO_ENT'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object RelacaoEntradaSaidaPLAVEI_CARRETA: TIBStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object RelacaoEntradaSaidaQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBEMP"'
    end
    object RelacaoEntradaSaidaQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBPOS"'
    end
    object RelacaoEntradaSaidaOBS_MOTORISTA: TIBStringField
      FieldName = 'OBS_MOTORISTA'
      Origin = '"ENTRADA_SAIDA"."OBS_MOTORISTA"'
      Size = 300
    end
    object RelacaoEntradaSaidaIN_VISUALIZADO: TIBStringField
      FieldName = 'IN_VISUALIZADO'
      Origin = '"ENTRADA_SAIDA"."IN_VISUALIZADO"'
      Size = 3
    end
    object RelacaoEntradaSaidaVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBEMP"'
    end
    object RelacaoEntradaSaidaVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBPOS"'
    end
    object RelacaoEntradaSaidaVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
      Origin = '"ENTRADA_SAIDA"."VLR_PEDAGIO"'
    end
    object RelacaoEntradaSaidaVLR_DESCARGA: TFloatField
      FieldName = 'VLR_DESCARGA'
      Origin = '"ENTRADA_SAIDA"."VLR_DESCARGA"'
    end
    object RelacaoEntradaSaidaVLR_REFEICOES: TFloatField
      FieldName = 'VLR_REFEICOES'
      Origin = '"ENTRADA_SAIDA"."VLR_REFEICOES"'
    end
    object RelacaoEntradaSaidaVLR_OUTRAS_DESP: TFloatField
      FieldName = 'VLR_OUTRAS_DESP'
      Origin = '"ENTRADA_SAIDA"."VLR_OUTRAS_DESP"'
    end
    object RelacaoEntradaSaidaQTD_CHEQUE_REC: TIntegerField
      FieldName = 'QTD_CHEQUE_REC'
      Origin = '"ENTRADA_SAIDA"."QTD_CHEQUE_REC"'
    end
    object RelacaoEntradaSaidaRETORNO: TIBStringField
      FieldName = 'RETORNO'
      Origin = '"ENTRADA_SAIDA"."RETORNO"'
      Size = 30
    end
    object RelacaoEntradaSaidaVLR_VIAFACIL: TFloatField
      FieldName = 'VLR_VIAFACIL'
      Origin = '"ENTRADA_SAIDA"."VLR_VIAFACIL"'
    end
    object RelacaoEntradaSaidaVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      Origin = '"ENTRADA_SAIDA"."VLR_COMISSAO"'
    end
    object RelacaoEntradaSaidaVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
      Origin = '"ENTRADA_SAIDA"."VLR_SALARIO"'
    end
    object RelacaoEntradaSaidaIN_COMISSAO: TIBStringField
      FieldName = 'IN_COMISSAO'
      Origin = '"ENTRADA_SAIDA"."IN_COMISSAO"'
      Size = 3
    end
    object RelacaoEntradaSaidaVLR_DEPRECIASSAO: TFloatField
      FieldName = 'VLR_DEPRECIASSAO'
      Origin = '"ENTRADA_SAIDA"."VLR_DEPRECIASSAO"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object RelacaoEntradaSaidaVLR_FINANCIAMENTOS: TFloatField
      FieldName = 'VLR_FINANCIAMENTOS'
      Origin = '"ENTRADA_SAIDA"."VLR_FINANCIAMENTOS"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object RelacaoEntradaSaidaVLR_PNEUS: TFloatField
      FieldName = 'VLR_PNEUS'
      Origin = '"ENTRADA_SAIDA"."VLR_PNEUS"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object RelacaoManutPeriodicas: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MANUT_SERV.*,MANUT_GER.*,'
      
        '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,VEICULO.TIPO,' +
        'VEICULO.LOCALVEI,'
      '       USUARIO.NOMUSU,'
      '       FORNECEDOR.*,'
      '       SERVICO.*'
      'FROM MANUT_SERV'
      'INNER JOIN MANUT_GER ON MANUT_GER.CODMAN = MANUT_SERV.CODMAN AND'
      '                        MANUT_GER.CODVEI = MANUT_SERV.CODVEI'
      'INNER JOIN VEICULO ON VEICULO.CODVEI = MANUT_GER.CODVEI'
      'INNER JOIN USUARIO ON USUARIO.CODUSU = MANUT_GER.CODUSU'
      'INNER JOIN FORNECEDOR ON FORNECEDOR.CODFOR = MANUT_GER.CODFOR'
      'INNER JOIN SERVICO ON SERVICO.CODSER = MANUT_SERV.CODSER'
      'WHERE'
      'MANUT_SERV.codvei <> 999999')
    Left = 54
    Top = 542
    object RelacaoManutPeriodicasCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Origin = '"MANUT_SERV"."CODMAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutPeriodicasCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"MANUT_SERV"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutPeriodicasSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = '"MANUT_SERV"."SEQSER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoManutPeriodicasCODSER: TIntegerField
      FieldName = 'CODSER'
      Origin = '"MANUT_SERV"."CODSER"'
      Required = True
    end
    object RelacaoManutPeriodicasDESSER: TIBStringField
      FieldName = 'DESSER'
      Origin = '"MANUT_SERV"."DESSER"'
      Size = 200
    end
    object RelacaoManutPeriodicasDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"MANUT_SERV"."DATVCT"'
    end
    object RelacaoManutPeriodicasKMVCT: TIntegerField
      FieldName = 'KMVCT'
      Origin = '"MANUT_SERV"."KMVCT"'
    end
    object RelacaoManutPeriodicasDATSER: TDateField
      FieldName = 'DATSER'
      Origin = '"MANUT_SERV"."DATSER"'
    end
    object RelacaoManutPeriodicasKMSER: TIntegerField
      FieldName = 'KMSER'
      Origin = '"MANUT_SERV"."KMSER"'
    end
    object RelacaoManutPeriodicasQTDSER: TFloatField
      FieldName = 'QTDSER'
      Origin = '"MANUT_SERV"."QTDSER"'
    end
    object RelacaoManutPeriodicasVLRUNI: TFloatField
      FieldName = 'VLRUNI'
      Origin = '"MANUT_SERV"."VLRUNI"'
    end
    object RelacaoManutPeriodicasVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
      Origin = '"MANUT_SERV"."VLRUNIDES"'
    end
    object RelacaoManutPeriodicasVLRDES: TFloatField
      FieldName = 'VLRDES'
      Origin = '"MANUT_SERV"."VLRDES"'
    end
    object RelacaoManutPeriodicasSITSER: TIBStringField
      FieldName = 'SITSER'
      Origin = '"MANUT_SERV"."SITSER"'
      Size = 10
    end
    object RelacaoManutPeriodicasVLRTOT: TFloatField
      FieldName = 'VLRTOT'
      Origin = '"MANUT_SERV"."VLRTOT"'
    end
    object RelacaoManutPeriodicasTIPSER: TIBStringField
      FieldName = 'TIPSER'
      Origin = '"MANUT_SERV"."TIPSER"'
      Size = 50
    end
    object RelacaoManutPeriodicasNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
      Origin = '"MANUT_SERV"."NUMORDEM"'
    end
    object RelacaoManutPeriodicasCODMAN1: TIntegerField
      FieldName = 'CODMAN1'
      Origin = '"MANUT_GER"."CODMAN"'
      Required = True
    end
    object RelacaoManutPeriodicasCODVEI1: TIntegerField
      FieldName = 'CODVEI1'
      Origin = '"MANUT_GER"."CODVEI"'
      Required = True
    end
    object RelacaoManutPeriodicasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MANUT_GER"."CODUSU"'
      Required = True
    end
    object RelacaoManutPeriodicasCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = '"MANUT_GER"."CODFOR"'
    end
    object RelacaoManutPeriodicasDESMAN: TIBStringField
      FieldName = 'DESMAN'
      Origin = '"MANUT_GER"."DESMAN"'
      Size = 100
    end
    object RelacaoManutPeriodicasDATMAN: TDateField
      FieldName = 'DATMAN'
      Origin = '"MANUT_GER"."DATMAN"'
    end
    object RelacaoManutPeriodicasHORMAN: TTimeField
      FieldName = 'HORMAN'
      Origin = '"MANUT_GER"."HORMAN"'
    end
    object RelacaoManutPeriodicasVLTDES: TFloatField
      FieldName = 'VLTDES'
      Origin = '"MANUT_GER"."VLTDES"'
    end
    object RelacaoManutPeriodicasNUMORDEM1: TIntegerField
      FieldName = 'NUMORDEM1'
      Origin = '"MANUT_GER"."NUMORDEM"'
    end
    object RelacaoManutPeriodicasPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object RelacaoManutPeriodicasDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object RelacaoManutPeriodicasKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object RelacaoManutPeriodicasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object RelacaoManutPeriodicasNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object RelacaoManutPeriodicasCODFOR1: TIntegerField
      FieldName = 'CODFOR1'
      Origin = '"FORNECEDOR"."CODFOR"'
      Required = True
    end
    object RelacaoManutPeriodicasCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
      Origin = '"FORNECEDOR"."CODUSU"'
      Required = True
    end
    object RelacaoManutPeriodicasDESFOR: TIBStringField
      FieldName = 'DESFOR'
      Origin = '"FORNECEDOR"."DESFOR"'
      Size = 100
    end
    object RelacaoManutPeriodicasENDFOR: TIBStringField
      FieldName = 'ENDFOR'
      Origin = '"FORNECEDOR"."ENDFOR"'
      Size = 100
    end
    object RelacaoManutPeriodicasNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"FORNECEDOR"."NUMEND"'
      Size = 10
    end
    object RelacaoManutPeriodicasBAIFOR: TIBStringField
      FieldName = 'BAIFOR'
      Origin = '"FORNECEDOR"."BAIFOR"'
      Size = 50
    end
    object RelacaoManutPeriodicasCEPFOR: TIBStringField
      FieldName = 'CEPFOR'
      Origin = '"FORNECEDOR"."CEPFOR"'
      Size = 15
    end
    object RelacaoManutPeriodicasCIDFOR: TIBStringField
      FieldName = 'CIDFOR'
      Origin = '"FORNECEDOR"."CIDFOR"'
      Size = 100
    end
    object RelacaoManutPeriodicasSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"FORNECEDOR"."SIGUFS"'
      Size = 2
    end
    object RelacaoManutPeriodicasSITFOR: TIBStringField
      FieldName = 'SITFOR'
      Origin = '"FORNECEDOR"."SITFOR"'
      Size = 10
    end
    object RelacaoManutPeriodicasTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"FORNECEDOR"."TEL1"'
      Size = 15
    end
    object RelacaoManutPeriodicasTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"FORNECEDOR"."TEL2"'
      Size = 15
    end
    object RelacaoManutPeriodicasEMAFOR: TIBStringField
      FieldName = 'EMAFOR'
      Origin = '"FORNECEDOR"."EMAFOR"'
      Size = 50
    end
    object RelacaoManutPeriodicasOBSFOR: TIBStringField
      FieldName = 'OBSFOR'
      Origin = '"FORNECEDOR"."OBSFOR"'
      Size = 300
    end
    object RelacaoManutPeriodicasCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
    end
    object RelacaoManutPeriodicasCODSER1: TIntegerField
      FieldName = 'CODSER1'
      Origin = '"SERVICO"."CODSER"'
      Required = True
    end
    object RelacaoManutPeriodicasCODUSU2: TIntegerField
      FieldName = 'CODUSU2'
      Origin = '"SERVICO"."CODUSU"'
      Required = True
    end
    object RelacaoManutPeriodicasDESSER1: TIBStringField
      FieldName = 'DESSER1'
      Origin = '"SERVICO"."DESSER"'
      Size = 100
    end
    object RelacaoManutPeriodicasIN_PERIODICO: TIBStringField
      FieldName = 'IN_PERIODICO'
      Origin = '"SERVICO"."IN_PERIODICO"'
      Size = 3
    end
    object RelacaoManutPeriodicasLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
      Origin = '"SERVICO"."LIMITE_KM"'
    end
    object RelacaoManutPeriodicasLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
      Origin = '"SERVICO"."LIMITE_DIAS"'
    end
    object RelacaoManutPeriodicasIN_REVISAO: TIBStringField
      FieldName = 'IN_REVISAO'
      Origin = '"SERVICO"."IN_REVISAO"'
      Size = 3
    end
    object RelacaoManutPeriodicasSITSER1: TIBStringField
      FieldName = 'SITSER1'
      Origin = '"SERVICO"."SITSER"'
      Size = 10
    end
    object RelacaoManutPeriodicasDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"SERVICO"."DATCAD"'
    end
    object RelacaoManutPeriodicasCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
      Origin = '"SERVICO"."CODSERREV"'
    end
    object RelacaoManutPeriodicasLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
  end
  object ProviderRelacaoManutPeriodicas: TDataSetProvider
    DataSet = RelacaoManutPeriodicas
    Left = 200
    Top = 544
  end
  object ClientRelacaoManutPeriodicas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderRelacaoManutPeriodicas'
    OnCalcFields = ClientRelacaoManutPeriodicasCalcFields
    Left = 360
    Top = 544
    object ClientRelacaoManutPeriodicasCODMAN: TIntegerField
      FieldName = 'CODMAN'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientRelacaoManutPeriodicasSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODSER: TIntegerField
      FieldName = 'CODSER'
      Required = True
    end
    object ClientRelacaoManutPeriodicasDESSER: TWideStringField
      FieldName = 'DESSER'
      Size = 200
    end
    object ClientRelacaoManutPeriodicasDATVCT: TDateField
      FieldName = 'DATVCT'
    end
    object ClientRelacaoManutPeriodicasKMVCT: TIntegerField
      FieldName = 'KMVCT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoManutPeriodicasDATSER: TDateField
      FieldName = 'DATSER'
    end
    object ClientRelacaoManutPeriodicasKMSER: TIntegerField
      FieldName = 'KMSER'
    end
    object ClientRelacaoManutPeriodicasQTDSER: TFloatField
      FieldName = 'QTDSER'
    end
    object ClientRelacaoManutPeriodicasVLRUNI: TFloatField
      FieldName = 'VLRUNI'
    end
    object ClientRelacaoManutPeriodicasVLRUNIDES: TFloatField
      FieldName = 'VLRUNIDES'
    end
    object ClientRelacaoManutPeriodicasVLRDES: TFloatField
      FieldName = 'VLRDES'
    end
    object ClientRelacaoManutPeriodicasSITSER: TWideStringField
      FieldName = 'SITSER'
      Size = 10
    end
    object ClientRelacaoManutPeriodicasVLRTOT: TFloatField
      FieldName = 'VLRTOT'
    end
    object ClientRelacaoManutPeriodicasTIPSER: TWideStringField
      FieldName = 'TIPSER'
      Size = 50
    end
    object ClientRelacaoManutPeriodicasNUMORDEM: TIntegerField
      FieldName = 'NUMORDEM'
    end
    object ClientRelacaoManutPeriodicasCODMAN1: TIntegerField
      FieldName = 'CODMAN1'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODVEI1: TIntegerField
      FieldName = 'CODVEI1'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object ClientRelacaoManutPeriodicasDESMAN: TWideStringField
      FieldName = 'DESMAN'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasDATMAN: TDateField
      FieldName = 'DATMAN'
    end
    object ClientRelacaoManutPeriodicasHORMAN: TTimeField
      FieldName = 'HORMAN'
    end
    object ClientRelacaoManutPeriodicasVLTDES: TFloatField
      FieldName = 'VLTDES'
    end
    object ClientRelacaoManutPeriodicasNUMORDEM1: TIntegerField
      FieldName = 'NUMORDEM1'
    end
    object ClientRelacaoManutPeriodicasPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientRelacaoManutPeriodicasDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasKMATU: TIntegerField
      FieldName = 'KMATU'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoManutPeriodicasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object ClientRelacaoManutPeriodicasNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasCODFOR1: TIntegerField
      FieldName = 'CODFOR1'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
      Required = True
    end
    object ClientRelacaoManutPeriodicasDESFOR: TWideStringField
      FieldName = 'DESFOR'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasENDFOR: TWideStringField
      FieldName = 'ENDFOR'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasNUMEND: TWideStringField
      FieldName = 'NUMEND'
      Size = 10
    end
    object ClientRelacaoManutPeriodicasBAIFOR: TWideStringField
      FieldName = 'BAIFOR'
      Size = 50
    end
    object ClientRelacaoManutPeriodicasCEPFOR: TWideStringField
      FieldName = 'CEPFOR'
      Size = 15
    end
    object ClientRelacaoManutPeriodicasCIDFOR: TWideStringField
      FieldName = 'CIDFOR'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasSIGUFS: TWideStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientRelacaoManutPeriodicasSITFOR: TWideStringField
      FieldName = 'SITFOR'
      Size = 10
    end
    object ClientRelacaoManutPeriodicasTEL1: TWideStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object ClientRelacaoManutPeriodicasTEL2: TWideStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object ClientRelacaoManutPeriodicasEMAFOR: TWideStringField
      FieldName = 'EMAFOR'
      Size = 50
    end
    object ClientRelacaoManutPeriodicasOBSFOR: TWideStringField
      FieldName = 'OBSFOR'
      Size = 300
    end
    object ClientRelacaoManutPeriodicasCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
    end
    object ClientRelacaoManutPeriodicasCODSER1: TIntegerField
      FieldName = 'CODSER1'
      Required = True
    end
    object ClientRelacaoManutPeriodicasCODUSU2: TIntegerField
      FieldName = 'CODUSU2'
      Required = True
    end
    object ClientRelacaoManutPeriodicasDESSER1: TWideStringField
      FieldName = 'DESSER1'
      Size = 100
    end
    object ClientRelacaoManutPeriodicasIN_PERIODICO: TWideStringField
      FieldName = 'IN_PERIODICO'
      Size = 3
    end
    object ClientRelacaoManutPeriodicasLIMITE_KM: TIntegerField
      FieldName = 'LIMITE_KM'
    end
    object ClientRelacaoManutPeriodicasLIMITE_DIAS: TIntegerField
      FieldName = 'LIMITE_DIAS'
    end
    object ClientRelacaoManutPeriodicasIN_REVISAO: TWideStringField
      FieldName = 'IN_REVISAO'
      Size = 3
    end
    object ClientRelacaoManutPeriodicasSITSER1: TWideStringField
      FieldName = 'SITSER1'
      Size = 10
    end
    object ClientRelacaoManutPeriodicasDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ClientRelacaoManutPeriodicasCODSERREV: TIntegerField
      FieldName = 'CODSERREV'
    end
    object ClientRelacaoManutPeriodicasvnKmRestante: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnKmRestante'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoManutPeriodicasvnDiasRestante: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnDiasRestante'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoManutPeriodicasLOCALVEI: TWideStringField
      FieldName = 'LOCALVEI'
      Size = 30
    end
  end
  object CadInfracoesCad: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from INFRACOES_CAD'
      'where'
      '  CODINFRA = :OLD_CODINFRA')
    InsertSQL.Strings = (
      'insert into INFRACOES_CAD'
      
        '  (CODINFRA, CODUSU, DATCAD, DESINFRA, GRAVIDADE, OBSINFRA, QTD_' +
        'PONTOS, '
      '   RESPONSABILIDADE)'
      'values'
      
        '  (:CODINFRA, :CODUSU, :DATCAD, :DESINFRA, :GRAVIDADE, :OBSINFRA' +
        ', :QTD_PONTOS, '
      '   :RESPONSABILIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODINFRA,'
      '  CODUSU,'
      '  DESINFRA,'
      '  QTD_PONTOS,'
      '  RESPONSABILIDADE,'
      '  GRAVIDADE,'
      '  OBSINFRA,'
      '  DATCAD'
      'from INFRACOES_CAD '
      'where'
      '  CODINFRA = :CODINFRA')
    SelectSQL.Strings = (
      'select * from INFRACOES_CAD where codinfra = :codinfra')
    ModifySQL.Strings = (
      'update INFRACOES_CAD'
      'set'
      '  CODINFRA = :CODINFRA,'
      '  CODUSU = :CODUSU,'
      '  DATCAD = :DATCAD,'
      '  DESINFRA = :DESINFRA,'
      '  GRAVIDADE = :GRAVIDADE,'
      '  OBSINFRA = :OBSINFRA,'
      '  QTD_PONTOS = :QTD_PONTOS,'
      '  RESPONSABILIDADE = :RESPONSABILIDADE'
      'where'
      '  CODINFRA = :OLD_CODINFRA')
    Left = 520
    Top = 88
    object CadInfracoesCadCODINFRA: TIBStringField
      FieldName = 'CODINFRA'
      Origin = '"INFRACOES_CAD"."CODINFRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object CadInfracoesCadCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"INFRACOES_CAD"."CODUSU"'
    end
    object CadInfracoesCadDESINFRA: TIBStringField
      FieldName = 'DESINFRA'
      Origin = '"INFRACOES_CAD"."DESINFRA"'
      Size = 200
    end
    object CadInfracoesCadQTD_PONTOS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'QTD_PONTOS'
      Origin = '"INFRACOES_CAD"."QTD_PONTOS"'
    end
    object CadInfracoesCadRESPONSABILIDADE: TIBStringField
      FieldName = 'RESPONSABILIDADE'
      Origin = '"INFRACOES_CAD"."RESPONSABILIDADE"'
    end
    object CadInfracoesCadGRAVIDADE: TIBStringField
      FieldName = 'GRAVIDADE'
      Origin = '"INFRACOES_CAD"."GRAVIDADE"'
    end
    object CadInfracoesCadOBSINFRA: TIBStringField
      FieldName = 'OBSINFRA'
      Origin = '"INFRACOES_CAD"."OBSINFRA"'
      Size = 100
    end
    object CadInfracoesCadDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"INFRACOES_CAD"."DATCAD"'
    end
  end
  object ConsInfracoesCad: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'select infracoes_cad.*,usuario.nomusu'
      'from infracoes_cad'
      'inner join usuario on usuario.codusu = infracoes_cad.codusu')
    Left = 624
    Top = 88
    object ConsInfracoesCadCODINFRA: TIBStringField
      FieldName = 'CODINFRA'
      Origin = '"INFRACOES_CAD"."CODINFRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ConsInfracoesCadCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"INFRACOES_CAD"."CODUSU"'
    end
    object ConsInfracoesCadDESINFRA: TIBStringField
      FieldName = 'DESINFRA'
      Origin = '"INFRACOES_CAD"."DESINFRA"'
      Size = 200
    end
    object ConsInfracoesCadQTD_PONTOS: TIntegerField
      FieldName = 'QTD_PONTOS'
      Origin = '"INFRACOES_CAD"."QTD_PONTOS"'
    end
    object ConsInfracoesCadRESPONSABILIDADE: TIBStringField
      FieldName = 'RESPONSABILIDADE'
      Origin = '"INFRACOES_CAD"."RESPONSABILIDADE"'
    end
    object ConsInfracoesCadGRAVIDADE: TIBStringField
      FieldName = 'GRAVIDADE'
      Origin = '"INFRACOES_CAD"."GRAVIDADE"'
    end
    object ConsInfracoesCadOBSINFRA: TIBStringField
      FieldName = 'OBSINFRA'
      Origin = '"INFRACOES_CAD"."OBSINFRA"'
      Size = 100
    end
    object ConsInfracoesCadDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"INFRACOES_CAD"."DATCAD"'
    end
    object ConsInfracoesCadNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
  end
  object CadInfracoesMov: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from INFRACOES_MOV'
      'where'
      '  SEQINFRA = :OLD_SEQINFRA')
    InsertSQL.Strings = (
      'insert into INFRACOES_MOV'
      
        '  (AUTOINFRA, CID_INFRA, CODINFRA, CODMOT, CODUSU, CODVEI, CONDU' +
        'TOR_CONF, '
      
        '   DATENVIO, DATINFRA, DATVCT, DATVCT_CONDUT, ENVIO_CONF, HORINF' +
        'RA, IN_CONDUTOR, '
      
        '   LOCAL_INFRA, OBSINFRA, SEQINFRA, SIGUFS, VLRINFRA, VLRINFRADE' +
        'SC)'
      'values'
      
        '  (:AUTOINFRA, :CID_INFRA, :CODINFRA, :CODMOT, :CODUSU, :CODVEI,' +
        ' :CONDUTOR_CONF, '
      
        '   :DATENVIO, :DATINFRA, :DATVCT, :DATVCT_CONDUT, :ENVIO_CONF, :' +
        'HORINFRA, '
      
        '   :IN_CONDUTOR, :LOCAL_INFRA, :OBSINFRA, :SEQINFRA, :SIGUFS, :V' +
        'LRINFRA, '
      '   :VLRINFRADESC)')
    RefreshSQL.Strings = (
      'Select '
      '  SEQINFRA,'
      '  AUTOINFRA,'
      '  CODINFRA,'
      '  CODMOT,'
      '  CODVEI,'
      '  DATINFRA,'
      '  HORINFRA,'
      '  LOCAL_INFRA,'
      '  CID_INFRA,'
      '  SIGUFS,'
      '  OBSINFRA,'
      '  CONDUTOR_CONF,'
      '  DATVCT_CONDUT,'
      '  VLRINFRA,'
      '  VLRINFRADESC,'
      '  DATVCT,'
      '  ENVIO_CONF,'
      '  DATENVIO,'
      '  IN_CONDUTOR,'
      '  CODUSU'
      'from INFRACOES_MOV '
      'where'
      '  SEQINFRA = :SEQINFRA')
    SelectSQL.Strings = (
      'select * from INFRACOES_MOV where seqinfra = :seqinfra ')
    ModifySQL.Strings = (
      'update INFRACOES_MOV'
      'set'
      '  AUTOINFRA = :AUTOINFRA,'
      '  CID_INFRA = :CID_INFRA,'
      '  CODINFRA = :CODINFRA,'
      '  CODMOT = :CODMOT,'
      '  CODUSU = :CODUSU,'
      '  CODVEI = :CODVEI,'
      '  CONDUTOR_CONF = :CONDUTOR_CONF,'
      '  DATENVIO = :DATENVIO,'
      '  DATINFRA = :DATINFRA,'
      '  DATVCT = :DATVCT,'
      '  DATVCT_CONDUT = :DATVCT_CONDUT,'
      '  ENVIO_CONF = :ENVIO_CONF,'
      '  HORINFRA = :HORINFRA,'
      '  IN_CONDUTOR = :IN_CONDUTOR,'
      '  LOCAL_INFRA = :LOCAL_INFRA,'
      '  OBSINFRA = :OBSINFRA,'
      '  SEQINFRA = :SEQINFRA,'
      '  SIGUFS = :SIGUFS,'
      '  VLRINFRA = :VLRINFRA,'
      '  VLRINFRADESC = :VLRINFRADESC'
      'where'
      '  SEQINFRA = :OLD_SEQINFRA')
    Left = 736
    Top = 88
    object CadInfracoesMovSEQINFRA: TIntegerField
      FieldName = 'SEQINFRA'
      Origin = '"INFRACOES_MOV"."SEQINFRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadInfracoesMovAUTOINFRA: TIBStringField
      FieldName = 'AUTOINFRA'
      Origin = '"INFRACOES_MOV"."AUTOINFRA"'
    end
    object CadInfracoesMovCODINFRA: TIBStringField
      FieldName = 'CODINFRA'
      Origin = '"INFRACOES_MOV"."CODINFRA"'
      Required = True
      Size = 10
    end
    object CadInfracoesMovCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"INFRACOES_MOV"."CODMOT"'
    end
    object CadInfracoesMovCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"INFRACOES_MOV"."CODVEI"'
    end
    object CadInfracoesMovDATINFRA: TDateField
      FieldName = 'DATINFRA'
      Origin = '"INFRACOES_MOV"."DATINFRA"'
    end
    object CadInfracoesMovHORINFRA: TTimeField
      FieldName = 'HORINFRA'
      Origin = '"INFRACOES_MOV"."HORINFRA"'
      EditMask = '!90:00;1;_'
    end
    object CadInfracoesMovLOCAL_INFRA: TIBStringField
      FieldName = 'LOCAL_INFRA'
      Origin = '"INFRACOES_MOV"."LOCAL_INFRA"'
      Size = 200
    end
    object CadInfracoesMovCID_INFRA: TIBStringField
      FieldName = 'CID_INFRA'
      Origin = '"INFRACOES_MOV"."CID_INFRA"'
      Size = 100
    end
    object CadInfracoesMovSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"INFRACOES_MOV"."SIGUFS"'
      Size = 2
    end
    object CadInfracoesMovOBSINFRA: TIBStringField
      FieldName = 'OBSINFRA'
      Origin = '"INFRACOES_MOV"."OBSINFRA"'
      Size = 200
    end
    object CadInfracoesMovCONDUTOR_CONF: TIBStringField
      FieldName = 'CONDUTOR_CONF'
      Origin = '"INFRACOES_MOV"."CONDUTOR_CONF"'
      Size = 3
    end
    object CadInfracoesMovDATVCT_CONDUT: TDateField
      FieldName = 'DATVCT_CONDUT'
      Origin = '"INFRACOES_MOV"."DATVCT_CONDUT"'
    end
    object CadInfracoesMovVLRINFRA: TFloatField
      FieldName = 'VLRINFRA'
      Origin = '"INFRACOES_MOV"."VLRINFRA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadInfracoesMovVLRINFRADESC: TFloatField
      FieldName = 'VLRINFRADESC'
      Origin = '"INFRACOES_MOV"."VLRINFRADESC"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadInfracoesMovDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"INFRACOES_MOV"."DATVCT"'
    end
    object CadInfracoesMovENVIO_CONF: TIBStringField
      FieldName = 'ENVIO_CONF'
      Origin = '"INFRACOES_MOV"."ENVIO_CONF"'
      Size = 3
    end
    object CadInfracoesMovDATENVIO: TDateField
      FieldName = 'DATENVIO'
      Origin = '"INFRACOES_MOV"."DATENVIO"'
    end
    object CadInfracoesMovIN_CONDUTOR: TIBStringField
      FieldName = 'IN_CONDUTOR'
      Origin = '"INFRACOES_MOV"."IN_CONDUTOR"'
      Size = 3
    end
    object CadInfracoesMovCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"INFRACOES_MOV"."CODUSU"'
    end
  end
  object ConsInfracoesMov: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT infracoes_mov.*,infracoes_cad.*,'
      '       motorista.nommot,motorista.foto,motorista.localmot,'
      
        '       veiculo.desvei,veiculo.plavei,veiculo.kmatu,veiculo.local' +
        'vei,'
      '       usuario.nomusu'
      'FROM infracoes_mov'
      
        'INNER JOIN infracoes_cad ON infracoes_cad.codinfra = infracoes_m' +
        'ov.codinfra'
      'INNER JOIN motorista ON motorista.codmot = infracoes_mov.codmot'
      'INNER JOIN veiculo ON veiculo.codvei = infracoes_mov.codvei'
      'INNER JOIN usuario ON usuario.codusu = infracoes_mov.codusu')
    Left = 828
    Top = 88
    object ConsInfracoesMovSEQINFRA: TIntegerField
      FieldName = 'SEQINFRA'
      Origin = '"INFRACOES_MOV"."SEQINFRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsInfracoesMovAUTOINFRA: TIBStringField
      FieldName = 'AUTOINFRA'
      Origin = '"INFRACOES_MOV"."AUTOINFRA"'
    end
    object ConsInfracoesMovCODINFRA: TIBStringField
      FieldName = 'CODINFRA'
      Origin = '"INFRACOES_MOV"."CODINFRA"'
      Required = True
      Size = 10
    end
    object ConsInfracoesMovCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"INFRACOES_MOV"."CODMOT"'
    end
    object ConsInfracoesMovCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"INFRACOES_MOV"."CODVEI"'
    end
    object ConsInfracoesMovDATINFRA: TDateField
      FieldName = 'DATINFRA'
      Origin = '"INFRACOES_MOV"."DATINFRA"'
    end
    object ConsInfracoesMovHORINFRA: TTimeField
      FieldName = 'HORINFRA'
      Origin = '"INFRACOES_MOV"."HORINFRA"'
    end
    object ConsInfracoesMovLOCAL_INFRA: TIBStringField
      FieldName = 'LOCAL_INFRA'
      Origin = '"INFRACOES_MOV"."LOCAL_INFRA"'
      Size = 200
    end
    object ConsInfracoesMovCID_INFRA: TIBStringField
      FieldName = 'CID_INFRA'
      Origin = '"INFRACOES_MOV"."CID_INFRA"'
      Size = 100
    end
    object ConsInfracoesMovSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"INFRACOES_MOV"."SIGUFS"'
      Size = 2
    end
    object ConsInfracoesMovOBSINFRA: TIBStringField
      FieldName = 'OBSINFRA'
      Origin = '"INFRACOES_MOV"."OBSINFRA"'
      Size = 200
    end
    object ConsInfracoesMovCONDUTOR_CONF: TIBStringField
      FieldName = 'CONDUTOR_CONF'
      Origin = '"INFRACOES_MOV"."CONDUTOR_CONF"'
      Size = 3
    end
    object ConsInfracoesMovDATVCT_CONDUT: TDateField
      FieldName = 'DATVCT_CONDUT'
      Origin = '"INFRACOES_MOV"."DATVCT_CONDUT"'
    end
    object ConsInfracoesMovVLRINFRA: TFloatField
      FieldName = 'VLRINFRA'
      Origin = '"INFRACOES_MOV"."VLRINFRA"'
    end
    object ConsInfracoesMovVLRINFRADESC: TFloatField
      FieldName = 'VLRINFRADESC'
      Origin = '"INFRACOES_MOV"."VLRINFRADESC"'
    end
    object ConsInfracoesMovDATVCT: TDateField
      FieldName = 'DATVCT'
      Origin = '"INFRACOES_MOV"."DATVCT"'
    end
    object ConsInfracoesMovENVIO_CONF: TIBStringField
      FieldName = 'ENVIO_CONF'
      Origin = '"INFRACOES_MOV"."ENVIO_CONF"'
      Size = 3
    end
    object ConsInfracoesMovDATENVIO: TDateField
      FieldName = 'DATENVIO'
      Origin = '"INFRACOES_MOV"."DATENVIO"'
    end
    object ConsInfracoesMovIN_CONDUTOR: TIBStringField
      FieldName = 'IN_CONDUTOR'
      Origin = '"INFRACOES_MOV"."IN_CONDUTOR"'
      Size = 3
    end
    object ConsInfracoesMovCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"INFRACOES_MOV"."CODUSU"'
    end
    object ConsInfracoesMovCODINFRA1: TIBStringField
      FieldName = 'CODINFRA1'
      Origin = '"INFRACOES_CAD"."CODINFRA"'
      Required = True
      Size = 10
    end
    object ConsInfracoesMovCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
      Origin = '"INFRACOES_CAD"."CODUSU"'
    end
    object ConsInfracoesMovDESINFRA: TIBStringField
      FieldName = 'DESINFRA'
      Origin = '"INFRACOES_CAD"."DESINFRA"'
      Size = 200
    end
    object ConsInfracoesMovQTD_PONTOS: TIntegerField
      FieldName = 'QTD_PONTOS'
      Origin = '"INFRACOES_CAD"."QTD_PONTOS"'
    end
    object ConsInfracoesMovRESPONSABILIDADE: TIBStringField
      FieldName = 'RESPONSABILIDADE'
      Origin = '"INFRACOES_CAD"."RESPONSABILIDADE"'
    end
    object ConsInfracoesMovGRAVIDADE: TIBStringField
      FieldName = 'GRAVIDADE'
      Origin = '"INFRACOES_CAD"."GRAVIDADE"'
    end
    object ConsInfracoesMovOBSINFRA1: TIBStringField
      FieldName = 'OBSINFRA1'
      Origin = '"INFRACOES_CAD"."OBSINFRA"'
      Size = 100
    end
    object ConsInfracoesMovDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"INFRACOES_CAD"."DATCAD"'
    end
    object ConsInfracoesMovNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsInfracoesMovFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsInfracoesMovLOCALMOT: TIBStringField
      FieldName = 'LOCALMOT'
      Origin = '"MOTORISTA"."LOCALMOT"'
      Size = 50
    end
    object ConsInfracoesMovDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsInfracoesMovPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsInfracoesMovKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ConsInfracoesMovLOCALVEI: TIBStringField
      FieldName = 'LOCALVEI'
      Origin = '"VEICULO"."LOCALVEI"'
      Size = 30
    end
    object ConsInfracoesMovNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
  end
  object ClientConsInfracoesMov: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsInfracoesMov'
    OnCalcFields = ClientConsInfracoesMovCalcFields
    Left = 832
    Top = 200
    object ClientConsInfracoesMovSEQINFRA: TIntegerField
      FieldName = 'SEQINFRA'
      Required = True
    end
    object ClientConsInfracoesMovAUTOINFRA: TWideStringField
      FieldName = 'AUTOINFRA'
    end
    object ClientConsInfracoesMovCODINFRA: TWideStringField
      FieldName = 'CODINFRA'
      Required = True
      Size = 10
    end
    object ClientConsInfracoesMovCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientConsInfracoesMovCODVEI: TIntegerField
      FieldName = 'CODVEI'
    end
    object ClientConsInfracoesMovDATINFRA: TDateField
      FieldName = 'DATINFRA'
    end
    object ClientConsInfracoesMovHORINFRA: TTimeField
      FieldName = 'HORINFRA'
    end
    object ClientConsInfracoesMovLOCAL_INFRA: TWideStringField
      FieldName = 'LOCAL_INFRA'
      Size = 200
    end
    object ClientConsInfracoesMovCID_INFRA: TWideStringField
      FieldName = 'CID_INFRA'
      Size = 100
    end
    object ClientConsInfracoesMovSIGUFS: TWideStringField
      FieldName = 'SIGUFS'
      Size = 2
    end
    object ClientConsInfracoesMovOBSINFRA: TWideStringField
      FieldName = 'OBSINFRA'
      Size = 200
    end
    object ClientConsInfracoesMovCONDUTOR_CONF: TWideStringField
      FieldName = 'CONDUTOR_CONF'
      Size = 3
    end
    object ClientConsInfracoesMovDATVCT_CONDUT: TDateField
      FieldName = 'DATVCT_CONDUT'
    end
    object ClientConsInfracoesMovVLRINFRA: TFloatField
      FieldName = 'VLRINFRA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsInfracoesMovVLRINFRADESC: TFloatField
      FieldName = 'VLRINFRADESC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsInfracoesMovDATVCT: TDateField
      FieldName = 'DATVCT'
    end
    object ClientConsInfracoesMovENVIO_CONF: TWideStringField
      FieldName = 'ENVIO_CONF'
      Size = 3
    end
    object ClientConsInfracoesMovDATENVIO: TDateField
      FieldName = 'DATENVIO'
    end
    object ClientConsInfracoesMovIN_CONDUTOR: TWideStringField
      FieldName = 'IN_CONDUTOR'
      Size = 3
    end
    object ClientConsInfracoesMovCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object ClientConsInfracoesMovCODINFRA1: TWideStringField
      FieldName = 'CODINFRA1'
      Required = True
      Size = 10
    end
    object ClientConsInfracoesMovCODUSU1: TIntegerField
      FieldName = 'CODUSU1'
    end
    object ClientConsInfracoesMovDESINFRA: TWideStringField
      FieldName = 'DESINFRA'
      Size = 200
    end
    object ClientConsInfracoesMovQTD_PONTOS: TIntegerField
      FieldName = 'QTD_PONTOS'
    end
    object ClientConsInfracoesMovRESPONSABILIDADE: TWideStringField
      FieldName = 'RESPONSABILIDADE'
    end
    object ClientConsInfracoesMovGRAVIDADE: TWideStringField
      FieldName = 'GRAVIDADE'
    end
    object ClientConsInfracoesMovOBSINFRA1: TWideStringField
      FieldName = 'OBSINFRA1'
      Size = 100
    end
    object ClientConsInfracoesMovDATCAD: TDateField
      FieldName = 'DATCAD'
    end
    object ClientConsInfracoesMovNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientConsInfracoesMovFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientConsInfracoesMovLOCALMOT: TWideStringField
      FieldName = 'LOCALMOT'
      Size = 50
    end
    object ClientConsInfracoesMovDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientConsInfracoesMovPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientConsInfracoesMovKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientConsInfracoesMovLOCALVEI: TWideStringField
      FieldName = 'LOCALVEI'
      Size = 30
    end
    object ClientConsInfracoesMovNOMUSU: TWideStringField
      FieldName = 'NOMUSU'
      Size = 100
    end
    object ClientConsInfracoesMovvnQtdDiasIdentCondut: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnQtdDiasIdentCondut'
    end
    object ClientConsInfracoesMovvnQtdPontos: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdPontos'
      Active = True
      Expression = 'SUM(QTD_PONTOS)'
    end
    object ClientConsInfracoesMovvnQtdInfra: TAggregateField
      Alignment = taCenter
      FieldName = 'vnQtdInfra'
      Active = True
      Expression = 'COUNT(SEQINFRA)'
    end
    object ClientConsInfracoesMovvnVlrTotal: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrTotal'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLRINFRA)'
    end
  end
  object ProviderConsInfracoesMov: TDataSetProvider
    DataSet = ConsInfracoesMov
    Left = 832
    Top = 144
  end
  object ConsVencimentoCNH: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    OnCalcFields = ConsVencimentoCNHCalcFields
    SQL.Strings = (
      'SELECT motorista.*'
      'FROM motorista'
      'WHERE'
      'motorista.sitmot = '#39'ATIVO'#39
      'order by motorista.datvencnh')
    Left = 544
    Top = 168
    object ConsVencimentoCNHCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsVencimentoCNHCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"MOTORISTA"."CODUSU"'
      Required = True
    end
    object ConsVencimentoCNHNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsVencimentoCNHAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsVencimentoCNHDATNAS: TDateField
      FieldName = 'DATNAS'
      Origin = '"MOTORISTA"."DATNAS"'
    end
    object ConsVencimentoCNHRG: TIBStringField
      FieldName = 'RG'
      Origin = '"MOTORISTA"."RG"'
      Size = 15
    end
    object ConsVencimentoCNHCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"MOTORISTA"."CPF"'
      Size = 15
    end
    object ConsVencimentoCNHCNH: TIBStringField
      FieldName = 'CNH'
      Origin = '"MOTORISTA"."CNH"'
      Size = 15
    end
    object ConsVencimentoCNHCATCNH: TIBStringField
      FieldName = 'CATCNH'
      Origin = '"MOTORISTA"."CATCNH"'
      Size = 2
    end
    object ConsVencimentoCNHDATVENCNH: TDateField
      FieldName = 'DATVENCNH'
      Origin = '"MOTORISTA"."DATVENCNH"'
    end
    object ConsVencimentoCNHDATADMI: TDateField
      FieldName = 'DATADMI'
      Origin = '"MOTORISTA"."DATADMI"'
    end
    object ConsVencimentoCNHDATDEMI: TDateField
      FieldName = 'DATDEMI'
      Origin = '"MOTORISTA"."DATDEMI"'
    end
    object ConsVencimentoCNHFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"MOTORISTA"."FONE1"'
      Size = 15
    end
    object ConsVencimentoCNHFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"MOTORISTA"."FONE2"'
      Size = 15
    end
    object ConsVencimentoCNHEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"MOTORISTA"."EMAIL"'
      Size = 50
    end
    object ConsVencimentoCNHSITMOT: TIBStringField
      FieldName = 'SITMOT'
      Origin = '"MOTORISTA"."SITMOT"'
    end
    object ConsVencimentoCNHENDMOT: TIBStringField
      FieldName = 'ENDMOT'
      Origin = '"MOTORISTA"."ENDMOT"'
      Size = 100
    end
    object ConsVencimentoCNHNUMEND: TIBStringField
      FieldName = 'NUMEND'
      Origin = '"MOTORISTA"."NUMEND"'
      Size = 10
    end
    object ConsVencimentoCNHBAIMOT: TIBStringField
      FieldName = 'BAIMOT'
      Origin = '"MOTORISTA"."BAIMOT"'
      Size = 50
    end
    object ConsVencimentoCNHCIDMOT: TIBStringField
      FieldName = 'CIDMOT'
      Origin = '"MOTORISTA"."CIDMOT"'
      Size = 50
    end
    object ConsVencimentoCNHTIPMOT: TIBStringField
      FieldName = 'TIPMOT'
      Origin = '"MOTORISTA"."TIPMOT"'
    end
    object ConsVencimentoCNHTIPSANG: TIBStringField
      FieldName = 'TIPSANG'
      Origin = '"MOTORISTA"."TIPSANG"'
      Size = 5
    end
    object ConsVencimentoCNHFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsVencimentoCNHSIGUFS: TIBStringField
      FieldName = 'SIGUFS'
      Origin = '"MOTORISTA"."SIGUFS"'
      Size = 2
    end
    object ConsVencimentoCNHLOCALMOT: TIBStringField
      FieldName = 'LOCALMOT'
      Origin = '"MOTORISTA"."LOCALMOT"'
      Size = 50
    end
    object ConsVencimentoCNHvnQtdDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vnQtdDias'
      Calculated = True
    end
  end
  object CadChega_Vei_Mot: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from CHEGA_VEI_MOT'
      'where'
      '  SEQCHE = :OLD_SEQCHE')
    InsertSQL.Strings = (
      'insert into CHEGA_VEI_MOT'
      
        '  (CODMOT, CODUSU, CODVEI, DATCHE, DATVISU, DESCRICAO, HORCHE, H' +
        'ORVISU, '
      '   IN_VISU, SEQCHE, TIPMOV)'
      'values'
      
        '  (:CODMOT, :CODUSU, :CODVEI, :DATCHE, :DATVISU, :DESCRICAO, :HO' +
        'RCHE, :HORVISU, '
      '   :IN_VISU, :SEQCHE, :TIPMOV)')
    RefreshSQL.Strings = (
      'Select '
      '  SEQCHE,'
      '  CODUSU,'
      '  CODMOT,'
      '  CODVEI,'
      '  DATCHE,'
      '  HORCHE,'
      '  DESCRICAO,'
      '  IN_VISU,'
      '  DATVISU,'
      '  HORVISU,'
      '  TIPMOV'
      'from CHEGA_VEI_MOT '
      'where'
      '  SEQCHE = :SEQCHE')
    SelectSQL.Strings = (
      'select * from CHEGA_VEI_MOT where seqche = :seqche')
    ModifySQL.Strings = (
      'update CHEGA_VEI_MOT'
      'set'
      '  CODMOT = :CODMOT,'
      '  CODUSU = :CODUSU,'
      '  CODVEI = :CODVEI,'
      '  DATCHE = :DATCHE,'
      '  DATVISU = :DATVISU,'
      '  DESCRICAO = :DESCRICAO,'
      '  HORCHE = :HORCHE,'
      '  HORVISU = :HORVISU,'
      '  IN_VISU = :IN_VISU,'
      '  SEQCHE = :SEQCHE,'
      '  TIPMOV = :TIPMOV'
      'where'
      '  SEQCHE = :OLD_SEQCHE')
    Left = 680
    Top = 480
    object CadChega_Vei_MotSEQCHE: TIntegerField
      FieldName = 'SEQCHE'
      Origin = '"CHEGA_VEI_MOT"."SEQCHE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadChega_Vei_MotCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"CHEGA_VEI_MOT"."CODUSU"'
    end
    object CadChega_Vei_MotCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"CHEGA_VEI_MOT"."CODMOT"'
    end
    object CadChega_Vei_MotCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"CHEGA_VEI_MOT"."CODVEI"'
    end
    object CadChega_Vei_MotDATCHE: TDateField
      FieldName = 'DATCHE'
      Origin = '"CHEGA_VEI_MOT"."DATCHE"'
    end
    object CadChega_Vei_MotHORCHE: TTimeField
      FieldName = 'HORCHE'
      Origin = '"CHEGA_VEI_MOT"."HORCHE"'
    end
    object CadChega_Vei_MotDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CHEGA_VEI_MOT"."DESCRICAO"'
      Size = 100
    end
    object CadChega_Vei_MotIN_VISU: TIBStringField
      FieldName = 'IN_VISU'
      Origin = '"CHEGA_VEI_MOT"."IN_VISU"'
      Size = 3
    end
    object CadChega_Vei_MotDATVISU: TDateField
      FieldName = 'DATVISU'
      Origin = '"CHEGA_VEI_MOT"."DATVISU"'
    end
    object CadChega_Vei_MotHORVISU: TTimeField
      FieldName = 'HORVISU'
      Origin = '"CHEGA_VEI_MOT"."HORVISU"'
    end
    object CadChega_Vei_MotTIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"CHEGA_VEI_MOT"."TIPMOV"'
    end
  end
  object CadUsuario: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  CODUSU = :OLD_CODUSU')
    InsertSQL.Strings = (
      'insert into USUARIO'
      
        '  (CATUSU, CODUSU, DATCAD, DESUSU, IN_LEMBRETE, LOGUSU, NOMUSU, ' +
        'SENUSU, '
      '   SITUSU)'
      'values'
      
        '  (:CATUSU, :CODUSU, :DATCAD, :DESUSU, :IN_LEMBRETE, :LOGUSU, :N' +
        'OMUSU, '
      '   :SENUSU, :SITUSU)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSU,'
      '  NOMUSU,'
      '  DESUSU,'
      '  LOGUSU,'
      '  SENUSU,'
      '  DATCAD,'
      '  SITUSU,'
      '  CATUSU,'
      '  IN_LEMBRETE'
      'from USUARIO '
      'where'
      '  CODUSU = :CODUSU')
    SelectSQL.Strings = (
      'select * from USUARIO where codusu = :codusu')
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  CATUSU = :CATUSU,'
      '  CODUSU = :CODUSU,'
      '  DATCAD = :DATCAD,'
      '  DESUSU = :DESUSU,'
      '  IN_LEMBRETE = :IN_LEMBRETE,'
      '  LOGUSU = :LOGUSU,'
      '  NOMUSU = :NOMUSU,'
      '  SENUSU = :SENUSU,'
      '  SITUSU = :SITUSU'
      'where'
      '  CODUSU = :OLD_CODUSU')
    Left = 808
    Top = 416
    object CadUsuarioCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsuarioNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object CadUsuarioDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object CadUsuarioLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object CadUsuarioSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object CadUsuarioDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object CadUsuarioSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
    object CadUsuarioCATUSU: TIBStringField
      FieldName = 'CATUSU'
      Origin = '"USUARIO"."CATUSU"'
      Size = 30
    end
    object CadUsuarioIN_LEMBRETE: TIBStringField
      FieldName = 'IN_LEMBRETE'
      Origin = '"USUARIO"."IN_LEMBRETE"'
      Size = 3
    end
  end
  object ConsUsuario: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    AfterScroll = ConsUsuarioAfterScroll
    SQL.Strings = (
      'select * from USUARIO order by nomusu')
    Left = 808
    Top = 464
    object ConsUsuarioCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsUsuarioNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsUsuarioDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object ConsUsuarioLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object ConsUsuarioSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object ConsUsuarioDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object ConsUsuarioSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
    object ConsUsuarioCATUSU: TIBStringField
      FieldName = 'CATUSU'
      Origin = '"USUARIO"."CATUSU"'
      Size = 30
    end
    object ConsUsuarioIN_LEMBRETE: TIBStringField
      FieldName = 'IN_LEMBRETE'
      Origin = '"USUARIO"."IN_LEMBRETE"'
      Size = 3
    end
  end
  object CadUsuPermissoes: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from USUPERMISSOES'
      'where'
      '  CODUSU = :OLD_CODUSU and'
      '  SEQPER = :OLD_SEQPER')
    InsertSQL.Strings = (
      'insert into USUPERMISSOES'
      '  (CODUSU, DESACT, IMGINDEX, IN_LIBERADO, NOMACT, SEQPER, TAG)'
      'values'
      
        '  (:CODUSU, :DESACT, :IMGINDEX, :IN_LIBERADO, :NOMACT, :SEQPER, ' +
        ':TAG)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSU,'
      '  SEQPER,'
      '  NOMACT,'
      '  DESACT,'
      '  IMGINDEX,'
      '  TAG,'
      '  IN_LIBERADO'
      'from USUPERMISSOES '
      'where'
      '  CODUSU = :CODUSU and'
      '  SEQPER = :SEQPER')
    SelectSQL.Strings = (
      'select * from USUPERMISSOES'
      'where'
      'codusu = :codusu '
      'order by tag,desact')
    ModifySQL.Strings = (
      'update USUPERMISSOES'
      'set'
      '  CODUSU = :CODUSU,'
      '  DESACT = :DESACT,'
      '  IMGINDEX = :IMGINDEX,'
      '  IN_LIBERADO = :IN_LIBERADO,'
      '  NOMACT = :NOMACT,'
      '  SEQPER = :SEQPER,'
      '  TAG = :TAG'
      'where'
      '  CODUSU = :OLD_CODUSU and'
      '  SEQPER = :OLD_SEQPER')
    Left = 912
    Top = 424
    object CadUsuPermissoesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUPERMISSOES"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsuPermissoesSEQPER: TIntegerField
      FieldName = 'SEQPER'
      Origin = '"USUPERMISSOES"."SEQPER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadUsuPermissoesNOMACT: TIBStringField
      FieldName = 'NOMACT'
      Origin = '"USUPERMISSOES"."NOMACT"'
      Size = 50
    end
    object CadUsuPermissoesDESACT: TIBStringField
      FieldName = 'DESACT'
      Origin = '"USUPERMISSOES"."DESACT"'
      Size = 50
    end
    object CadUsuPermissoesIMGINDEX: TIntegerField
      FieldName = 'IMGINDEX'
      Origin = '"USUPERMISSOES"."IMGINDEX"'
    end
    object CadUsuPermissoesTAG: TIntegerField
      FieldName = 'TAG'
      Origin = '"USUPERMISSOES"."TAG"'
    end
    object CadUsuPermissoesIN_LIBERADO: TIBStringField
      FieldName = 'IN_LIBERADO'
      Origin = '"USUPERMISSOES"."IN_LIBERADO"'
      Size = 10
    end
    object CadUsuPermissoesImagemIcone: TStringField
      FieldKind = fkCalculated
      FieldName = 'ImagemIcone'
      Size = 100
      Calculated = True
    end
    object CadUsuPermissoesImagemSit: TStringField
      FieldKind = fkCalculated
      FieldName = 'ImagemSit'
      Size = 100
      Calculated = True
    end
  end
  object ValidaLogin: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      ' SELECT * FROM USUARIO'
      ' WHERE'
      ' LOGUSU = :LOGUSU AND'
      ' SENUSU = :SENUSU')
    Left = 280
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOGUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENUSU'
        ParamType = ptUnknown
      end>
    object ValidaLoginCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ValidaLoginNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ValidaLoginDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object ValidaLoginLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object ValidaLoginSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object ValidaLoginDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object ValidaLoginSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
    object ValidaLoginCATUSU: TIBStringField
      FieldName = 'CATUSU'
      Origin = '"USUARIO"."CATUSU"'
      Size = 30
    end
    object ValidaLoginIN_LEMBRETE: TIBStringField
      FieldName = 'IN_LEMBRETE'
      Origin = '"USUARIO"."IN_LEMBRETE"'
      Size = 3
    end
  end
  object ConsLogMonitoramento: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT chega_vei_mot.*,'
      '       usuario.nomusu,'
      '       motorista.nommot,'
      '       veiculo.desvei,veiculo.plavei'
      'FROM chega_vei_mot'
      'inner join usuario on usuario.codusu = chega_vei_mot.codusu'
      'inner join motorista on  motorista.codmot = chega_vei_mot.codmot'
      'inner join veiculo on veiculo.codvei = chega_vei_mot.codvei'
      'where chega_vei_mot.in_visu = '#39'NAO'#39
      'order by chega_vei_mot.seqche desc')
    Left = 912
    Top = 488
    object ConsLogMonitoramentoSEQCHE: TIntegerField
      FieldName = 'SEQCHE'
      Origin = '"CHEGA_VEI_MOT"."SEQCHE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsLogMonitoramentoCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"CHEGA_VEI_MOT"."CODUSU"'
    end
    object ConsLogMonitoramentoCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"CHEGA_VEI_MOT"."CODMOT"'
    end
    object ConsLogMonitoramentoCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"CHEGA_VEI_MOT"."CODVEI"'
    end
    object ConsLogMonitoramentoDATCHE: TDateField
      FieldName = 'DATCHE'
      Origin = '"CHEGA_VEI_MOT"."DATCHE"'
    end
    object ConsLogMonitoramentoHORCHE: TTimeField
      FieldName = 'HORCHE'
      Origin = '"CHEGA_VEI_MOT"."HORCHE"'
    end
    object ConsLogMonitoramentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CHEGA_VEI_MOT"."DESCRICAO"'
      Size = 100
    end
    object ConsLogMonitoramentoIN_VISU: TIBStringField
      FieldName = 'IN_VISU'
      Origin = '"CHEGA_VEI_MOT"."IN_VISU"'
      Size = 3
    end
    object ConsLogMonitoramentoDATVISU: TDateField
      FieldName = 'DATVISU'
      Origin = '"CHEGA_VEI_MOT"."DATVISU"'
    end
    object ConsLogMonitoramentoHORVISU: TTimeField
      FieldName = 'HORVISU'
      Origin = '"CHEGA_VEI_MOT"."HORVISU"'
    end
    object ConsLogMonitoramentoTIPMOV: TIBStringField
      FieldName = 'TIPMOV'
      Origin = '"CHEGA_VEI_MOT"."TIPMOV"'
    end
    object ConsLogMonitoramentoNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsLogMonitoramentoNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsLogMonitoramentoDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsLogMonitoramentoPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
  end
  object CadTanque_Comb: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from TANQUE_COMB'
      'where'
      '  CODTAN = :OLD_CODTAN')
    InsertSQL.Strings = (
      'insert into TANQUE_COMB'
      '  (CODTAN, DESTAN, NIVEL, NIVEL_MAX, NIVEL_MIN)'
      'values'
      '  (:CODTAN, :DESTAN, :NIVEL, :NIVEL_MAX, :NIVEL_MIN)')
    RefreshSQL.Strings = (
      'Select '
      '  CODTAN,'
      '  DESTAN,'
      '  NIVEL,'
      '  NIVEL_MAX,'
      '  NIVEL_MIN'
      'from TANQUE_COMB '
      'where'
      '  CODTAN = :CODTAN')
    SelectSQL.Strings = (
      'select * from TANQUE_COMB where codtan = :codtan')
    ModifySQL.Strings = (
      'update TANQUE_COMB'
      'set'
      '  CODTAN = :CODTAN,'
      '  DESTAN = :DESTAN,'
      '  NIVEL = :NIVEL,'
      '  NIVEL_MAX = :NIVEL_MAX,'
      '  NIVEL_MIN = :NIVEL_MIN'
      'where'
      '  CODTAN = :OLD_CODTAN')
    Left = 984
    Top = 352
    object CadTanque_CombCODTAN: TIntegerField
      FieldName = 'CODTAN'
      Origin = '"TANQUE_COMB"."CODTAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadTanque_CombDESTAN: TIBStringField
      FieldName = 'DESTAN'
      Origin = '"TANQUE_COMB"."DESTAN"'
      Size = 40
    end
    object CadTanque_CombNIVEL: TFloatField
      FieldName = 'NIVEL'
      Origin = '"TANQUE_COMB"."NIVEL"'
    end
    object CadTanque_CombNIVEL_MAX: TFloatField
      FieldName = 'NIVEL_MAX'
      Origin = '"TANQUE_COMB"."NIVEL_MAX"'
    end
    object CadTanque_CombNIVEL_MIN: TFloatField
      FieldName = 'NIVEL_MIN'
      Origin = '"TANQUE_COMB"."NIVEL_MIN"'
    end
  end
  object CadConfig_Geral: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from CONFIG_GERAL'
      'where'
      '  CODCONFIG = :OLD_CODCONFIG')
    InsertSQL.Strings = (
      'insert into CONFIG_GERAL'
      '  (CODCONFIG, HOR_LOGOF_PORTARIA_M, HOR_LOGOF_PORTARIA_T)'
      'values'
      '  (:CODCONFIG, :HOR_LOGOF_PORTARIA_M, :HOR_LOGOF_PORTARIA_T)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCONFIG,'
      '  HOR_LOGOF_PORTARIA_T,'
      '  HOR_LOGOF_PORTARIA_M'
      'from CONFIG_GERAL '
      'where'
      '  CODCONFIG = :CODCONFIG')
    SelectSQL.Strings = (
      'select * from CONFIG_GERAL where codconfig = :codconfig')
    ModifySQL.Strings = (
      'update CONFIG_GERAL'
      'set'
      '  CODCONFIG = :CODCONFIG,'
      '  HOR_LOGOF_PORTARIA_M = :HOR_LOGOF_PORTARIA_M,'
      '  HOR_LOGOF_PORTARIA_T = :HOR_LOGOF_PORTARIA_T'
      'where'
      '  CODCONFIG = :OLD_CODCONFIG')
    Left = 384
    Top = 24
    object CadConfig_GeralCODCONFIG: TIntegerField
      FieldName = 'CODCONFIG'
      Origin = '"CONFIG_GERAL"."CODCONFIG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadConfig_GeralHOR_LOGOF_PORTARIA_T: TTimeField
      FieldName = 'HOR_LOGOF_PORTARIA_T'
      Origin = '"CONFIG_GERAL"."HOR_LOGOF_PORTARIA_T"'
    end
    object CadConfig_GeralHOR_LOGOF_PORTARIA_M: TTimeField
      FieldName = 'HOR_LOGOF_PORTARIA_M'
      Origin = '"CONFIG_GERAL"."HOR_LOGOF_PORTARIA_M"'
    end
  end
  object CustoKm: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT veiculo.plavei,veiculo.codvei,veiculo.tipo,'
      
        '         sum(entrada_saida.qtd_combemp * entrada_saida.vlr_combe' +
        'mp) as comb_emp,'
      
        '         sum(entrada_saida.qtd_combpos * entrada_saida.vlr_combp' +
        'os) as comb_posto,'
      '         sum(entrada_saida.vlr_pedagio) as pedagio,'
      '         sum(entrada_saida.vlr_viafacil) as viafacil,'
      '         sum(entrada_saida.vlr_descarga) as descarga,'
      '         sum(entrada_saida.vlr_refeicoes) as refeicoes,'
      '         sum(entrada_saida.vlr_outras_desp) as outras_desp,'
      '         sum(entrada_saida.vlr_comissao) as comissao,'
      '         sum(entrada_saida.vlr_salario) as salario,'
      
        '         sum(entrada_saida.kment - entrada_saida.kmsaida) as tot' +
        'al_km,'
      '         sum(entrada_saida.vlr_depreciassao) as depreciacao,'
      
        '         sum(entrada_saida.vlr_financiamentos) as financiamentos' +
        ','
      '         sum(entrada_saida.vlr_pneus) as pneus,'
      '         999999.999 AS manutencoes,'
      '         999999.999 AS campo2'
      ' from veiculo'
      
        ' inner join entrada_saida on entrada_saida.codvei = veiculo.codv' +
        'ei'
      ' where'
      ' entrada_saida.datsaida between :datini and :datfim and'
      ' veiculo.tipo in ('#39'CAVALO'#39','#39'TRUCK'#39') and'
      ' entrada_saida.kment <> 0'
      ' group by veiculo.plavei,veiculo.codvei,veiculo.tipo')
    Left = 696
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datfim'
        ParamType = ptUnknown
      end>
    object CustoKmPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object CustoKmCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CustoKmCOMB_EMP: TFloatField
      FieldName = 'COMB_EMP'
      ProviderFlags = []
    end
    object CustoKmCOMB_POSTO: TFloatField
      FieldName = 'COMB_POSTO'
      ProviderFlags = []
    end
    object CustoKmPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ProviderFlags = []
    end
    object CustoKmVIAFACIL: TFloatField
      FieldName = 'VIAFACIL'
      ProviderFlags = []
    end
    object CustoKmDESCARGA: TFloatField
      FieldName = 'DESCARGA'
      ProviderFlags = []
    end
    object CustoKmREFEICOES: TFloatField
      FieldName = 'REFEICOES'
      ProviderFlags = []
    end
    object CustoKmOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = []
    end
    object CustoKmCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = []
    end
    object CustoKmSALARIO: TFloatField
      FieldName = 'SALARIO'
      ProviderFlags = []
    end
    object CustoKmTOTAL_KM: TLargeintField
      FieldName = 'TOTAL_KM'
      ProviderFlags = []
    end
    object CustoKmMANUTENCOES: TIBBCDField
      FieldName = 'MANUTENCOES'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object CustoKmCAMPO2: TIBBCDField
      FieldName = 'CAMPO2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object CustoKmTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object CustoKmDEPRECIACAO: TFloatField
      FieldName = 'DEPRECIACAO'
      ProviderFlags = []
    end
    object CustoKmFINANCIAMENTOS: TFloatField
      FieldName = 'FINANCIAMENTOS'
      ProviderFlags = []
    end
    object CustoKmPNEUS: TFloatField
      FieldName = 'PNEUS'
      ProviderFlags = []
    end
  end
  object ClientCustoKm: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderCustoKm'
    OnCalcFields = ClientCustoKmCalcFields
    Left = 696
    Top = 328
    object ClientCustoKmPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ClientCustoKmCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"VEICULO"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientCustoKmCOMB_EMP: TFloatField
      FieldName = 'COMB_EMP'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmCOMB_POSTO: TFloatField
      FieldName = 'COMB_POSTO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmVIAFACIL: TFloatField
      FieldName = 'VIAFACIL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmDESCARGA: TFloatField
      FieldName = 'DESCARGA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmREFEICOES: TFloatField
      FieldName = 'REFEICOES'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmSALARIO: TFloatField
      FieldName = 'SALARIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmTOTAL_KM: TLargeintField
      FieldName = 'TOTAL_KM'
      ProviderFlags = []
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientCustoKmvnPedagio: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnPedagio'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmvnCombustivel: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnCombustivel'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmMANUTENCOES: TBCDField
      FieldName = 'MANUTENCOES'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object ClientCustoKmCAMPO2: TBCDField
      FieldName = 'CAMPO2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object ClientCustoKmvnTotalGasto: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalGasto'
      DisplayFormat = ',0.00'
    end
    object ClientCustoKmvnCustoKm: TFloatField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'vnCustoKm'
      DisplayFormat = ',0.00'
    end
    object ClientCustoKmvnTotalKm: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalKm'
    end
    object ClientCustoKmTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = '"VEICULO"."TIPO"'
      Size = 30
    end
    object ClientCustoKmDEPRECIACAO: TFloatField
      FieldName = 'DEPRECIACAO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmFINANCIAMENTOS: TFloatField
      FieldName = 'FINANCIAMENTOS'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmPNEUS: TFloatField
      FieldName = 'PNEUS'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientCustoKmvnTGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTGeral'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnTotalGasto)'
    end
    object ClientCustoKmvnTManutencoes: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTManutencoes'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(MANUTENCOES)'
    end
    object ClientCustoKmvnTSalario: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTSalario'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(SALARIO)'
    end
    object ClientCustoKmvnTComissao: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTComissao'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(COMISSAO)'
    end
    object ClientCustoKmvnTOutrasDesp: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTOutrasDesp'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(OUTRAS_DESP)'
    end
    object ClientCustoKmvnTRefeicoes: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTRefeicoes'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(REFEICOES)'
    end
    object ClientCustoKmvnTDescarga: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTDescarga'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(DESCARGA)'
    end
    object ClientCustoKmvnTCombustivel: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTCombustivel'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnCombustivel)'
    end
    object ClientCustoKmvnTPedagio: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTPedagio'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnPedagio)'
    end
    object ClientCustoKmvnTKm: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTKm'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'sum(vnTotalKm)'
    end
    object ClientCustoKmvnTDepreciacao: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTDepreciacao'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(depreciacao)'
    end
    object ClientCustoKmvnTFinanciamentos: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTFinanciamentos'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(financiamentos)'
    end
    object ClientCustoKmvnTPneus: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTPneus'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(pneus)'
    end
  end
  object ProviderCustoKm: TDataSetProvider
    DataSet = CustoKm
    Left = 696
    Top = 280
  end
  object TotalManutencoes: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      
        ' select  sum(manut_serv.qtdser * (manut_serv.vlruni - manut_serv' +
        '.vlrdes)) as total'
      ' from manut_serv'
      ' where'
      ' manut_serv.datser between :datini and :datfim and'
      ' manut_serv.codvei = :codvei')
    Left = 776
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codvei'
        ParamType = ptUnknown
      end>
    object TotalManutencoesTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object RelacaoComissoes: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT motorista.codmot,motorista.nommot,motorista.vlrcomfixa,'
      '         sum(entrada_saida.qtd_cheque_rec) as QtdCheques,'
      '         999999.999 as ValorCheques,'
      
        '         sum(entrada_saida.kment - entrada_saida.kmsaida) as tot' +
        'al_km,'
      '         999999.999 as ValorKm,'
      '         999999.999 AS TotalCarga,'
      '         9999999.999 AS ValorCarga,'
      '         9999999.999 AS ValorManual'
      ' from motorista'
      
        ' inner join entrada_saida on entrada_saida.codmot = motorista.co' +
        'dmot'
      ' inner join veiculo on veiculo.codvei = entrada_saida.codvei'
      ' where'
      ' entrada_saida.datsaida between :DATINI and :DATFIM and'
      ' veiculo.tipo in ('#39'CAVALO'#39','#39'TRUCK'#39') and'
      ' entrada_saida.kment > 0 and'
      ' entrada_saida.carga <> 0 and'
      ' entrada_saida.in_comissao = '#39'SIM'#39
      ' group by motorista.codmot,motorista.nommot,motorista.vlrcomfixa'
      ' order by motorista.nommot')
    Left = 584
    Top = 232
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
      end>
    object RelacaoComissoesCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelacaoComissoesNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object RelacaoComissoesQTDCHEQUES: TLargeintField
      FieldName = 'QTDCHEQUES'
      ProviderFlags = []
    end
    object RelacaoComissoesVALORCHEQUES: TIBBCDField
      FieldName = 'VALORCHEQUES'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object RelacaoComissoesTOTAL_KM: TLargeintField
      FieldName = 'TOTAL_KM'
      ProviderFlags = []
    end
    object RelacaoComissoesVALORKM: TIBBCDField
      FieldName = 'VALORKM'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object RelacaoComissoesTOTALCARGA: TIBBCDField
      FieldName = 'TOTALCARGA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object RelacaoComissoesVALORCARGA: TIBBCDField
      FieldName = 'VALORCARGA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object RelacaoComissoesVLRCOMFIXA: TFloatField
      FieldName = 'VLRCOMFIXA'
      Origin = '"MOTORISTA"."VLRCOMFIXA"'
    end
    object RelacaoComissoesVALORMANUAL: TIBBCDField
      FieldName = 'VALORMANUAL'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object ProviderRelacaoComissoes: TDataSetProvider
    DataSet = RelacaoComissoes
    Left = 584
    Top = 280
  end
  object ClientRelacaoComissoes: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderRelacaoComissoes'
    OnCalcFields = ClientRelacaoComissoesCalcFields
    Left = 584
    Top = 328
    object ClientRelacaoComissoesCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientRelacaoComissoesNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ClientRelacaoComissoesQTDCHEQUES: TLargeintField
      FieldName = 'QTDCHEQUES'
      ProviderFlags = []
    end
    object ClientRelacaoComissoesVALORCHEQUES: TBCDField
      FieldName = 'VALORCHEQUES'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object ClientRelacaoComissoesTOTAL_KM: TLargeintField
      FieldName = 'TOTAL_KM'
      ProviderFlags = []
      DisplayFormat = '###,###,##0'
    end
    object ClientRelacaoComissoesVALORKM: TBCDField
      FieldName = 'VALORKM'
      ProviderFlags = []
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object ClientRelacaoComissoesTOTALCARGA: TBCDField
      FieldName = 'TOTALCARGA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object ClientRelacaoComissoesVALORCARGA: TBCDField
      FieldName = 'VALORCARGA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object ClientRelacaoComissoesvnTotalComissoes: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalComissoes'
      DisplayFormat = ',0.00'
    end
    object ClientRelacaoComissoesImg: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'Img'
      Size = 30
      Calculated = True
    end
    object ClientRelacaoComissoesVLRCOMFIXA: TFloatField
      FieldName = 'VLRCOMFIXA'
      Origin = '"MOTORISTA"."VLRCOMFIXA"'
    end
    object ClientRelacaoComissoesVALORMANUAL: TBCDField
      FieldName = 'VALORMANUAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object ClientRelacaoComissoesvnTotalCheques: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCheques'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALORCHEQUES)'
    end
    object ClientRelacaoComissoesvnTotalKm: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalKm'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(valorkm)'
    end
    object ClientRelacaoComissoesvnTotalCarga: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCarga'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(valorcarga)'
    end
    object ClientRelacaoComissoesvnTotalComGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalComGeral'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnTotalComissoes+VALORMANUAL)'
    end
  end
  object CargasMotorista: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      ' select entrada_saida.carga'
      ' from entrada_saida'
      ' inner join veiculo on veiculo.codvei = entrada_saida.codvei'
      ' where'
      ' entrada_saida.datsaida between :DATINI and :DATFIM and'
      ' veiculo.tipo in ('#39'CAVALO'#39','#39'TRUCK'#39') and'
      ' entrada_saida.kment > 0 and'
      ' entrada_saida.carga <> 0 and'
      ' entrada_saida.in_comissao = '#39'SIM'#39' and'
      ' entrada_saida.codmot = :CODMOT')
    Left = 488
    Top = 232
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
    object CargasMotoristaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
  end
  object ProviderRelacaoEntradaSaida: TDataSetProvider
    DataSet = RelacaoEntradaSaida
    Left = 288
    Top = 120
  end
  object ClientRelacaoEntradaSaida: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderRelacaoEntradaSaida'
    OnCalcFields = ClientRelacaoEntradaSaidaCalcFields
    Left = 288
    Top = 168
    object ClientRelacaoEntradaSaidaSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Required = True
    end
    object ClientRelacaoEntradaSaidaCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientRelacaoEntradaSaidaUSUENT: TIntegerField
      FieldName = 'USUENT'
    end
    object ClientRelacaoEntradaSaidaUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
    end
    object ClientRelacaoEntradaSaidaCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientRelacaoEntradaSaidaDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
    end
    object ClientRelacaoEntradaSaidaHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
    end
    object ClientRelacaoEntradaSaidaKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidaDATENT: TDateField
      FieldName = 'DATENT'
    end
    object ClientRelacaoEntradaSaidaHORENT: TTimeField
      FieldName = 'HORENT'
    end
    object ClientRelacaoEntradaSaidaKMENT: TIntegerField
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaCARGA: TIntegerField
      FieldName = 'CARGA'
    end
    object ClientRelacaoEntradaSaidaCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object ClientRelacaoEntradaSaidaIN_ENGATADO: TWideStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
    end
    object ClientRelacaoEntradaSaidaDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
    end
    object ClientRelacaoEntradaSaidaMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      DisplayFormat = ',0.00'
    end
    object ClientRelacaoEntradaSaidaITESEL: TWideStringField
      FieldName = 'ITESEL'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientRelacaoEntradaSaidaDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientRelacaoEntradaSaidaNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaAPEMOT: TWideStringField
      FieldName = 'APEMOT'
      Size = 50
    end
    object ClientRelacaoEntradaSaidaFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientRelacaoEntradaSaidaUSUARIO_SAIDA: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaUSUARIO_ENT: TWideStringField
      FieldName = 'USUARIO_ENT'
      Size = 100
    end
    object ClientRelacaoEntradaSaidaPLAVEI_CARRETA: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Size = 15
    end
    object ClientRelacaoEntradaSaidavnTotalRodado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientRelacaoEntradaSaidaQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
    end
    object ClientRelacaoEntradaSaidaQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
    end
    object ClientRelacaoEntradaSaidaOBS_MOTORISTA: TWideStringField
      FieldName = 'OBS_MOTORISTA'
      Size = 300
    end
    object ClientRelacaoEntradaSaidaIN_VISUALIZADO: TWideStringField
      FieldName = 'IN_VISUALIZADO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
    end
    object ClientRelacaoEntradaSaidaVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
    end
    object ClientRelacaoEntradaSaidaVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
    end
    object ClientRelacaoEntradaSaidaVLR_DESCARGA: TFloatField
      FieldName = 'VLR_DESCARGA'
    end
    object ClientRelacaoEntradaSaidaVLR_REFEICOES: TFloatField
      FieldName = 'VLR_REFEICOES'
    end
    object ClientRelacaoEntradaSaidaVLR_OUTRAS_DESP: TFloatField
      FieldName = 'VLR_OUTRAS_DESP'
    end
    object ClientRelacaoEntradaSaidaQTD_CHEQUE_REC: TIntegerField
      FieldName = 'QTD_CHEQUE_REC'
    end
    object ClientRelacaoEntradaSaidaRETORNO: TWideStringField
      FieldName = 'RETORNO'
      Size = 30
    end
    object ClientRelacaoEntradaSaidaVLR_VIAFACIL: TFloatField
      FieldName = 'VLR_VIAFACIL'
    end
    object ClientRelacaoEntradaSaidaVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object ClientRelacaoEntradaSaidaVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
    end
    object ClientRelacaoEntradaSaidaIN_COMISSAO: TWideStringField
      FieldName = 'IN_COMISSAO'
      Size = 3
    end
    object ClientRelacaoEntradaSaidaImg: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'Img'
      Size = 30
      Calculated = True
    end
    object ClientRelacaoEntradaSaidavnTotalRodadoGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalRodadoGeral'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnTotalRodado)'
    end
  end
  object ConfigComissoes: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'select * from CONFIG_COMISSOES')
    Left = 528
    Top = 24
    object ConfigComissoesCODCONFIG: TIntegerField
      FieldName = 'CODCONFIG'
      Origin = '"CONFIG_COMISSOES"."CODCONFIG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConfigComissoesDATINI: TDateField
      FieldName = 'DATINI'
      Origin = '"CONFIG_COMISSOES"."DATINI"'
    end
    object ConfigComissoesDATFIM: TDateField
      FieldName = 'DATFIM'
      Origin = '"CONFIG_COMISSOES"."DATFIM"'
    end
    object ConfigComissoesVLRKM: TFloatField
      FieldName = 'VLRKM'
      Origin = '"CONFIG_COMISSOES"."VLRKM"'
    end
    object ConfigComissoesVLRCHEQUE: TFloatField
      FieldName = 'VLRCHEQUE'
      Origin = '"CONFIG_COMISSOES"."VLRCHEQUE"'
    end
    object ConfigComissoesPERCARGA: TFloatField
      FieldName = 'PERCARGA'
      Origin = '"CONFIG_COMISSOES"."PERCARGA"'
    end
    object ConfigComissoesDATEXEC: TDateField
      FieldName = 'DATEXEC'
      Origin = '"CONFIG_COMISSOES"."DATEXEC"'
    end
  end
  object CadConfigComissoes: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from CONFIG_COMISSOES'
      'where'
      '  CODCONFIG = :OLD_CODCONFIG')
    InsertSQL.Strings = (
      'insert into CONFIG_COMISSOES'
      
        '  (CODCONFIG, DATEXEC, DATFIM, DATINI, PERCARGA, VLRCHEQUE, VLRK' +
        'M)'
      'values'
      
        '  (:CODCONFIG, :DATEXEC, :DATFIM, :DATINI, :PERCARGA, :VLRCHEQUE' +
        ', :VLRKM)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCONFIG,'
      '  DATINI,'
      '  DATFIM,'
      '  VLRKM,'
      '  VLRCHEQUE,'
      '  PERCARGA,'
      '  DATEXEC'
      'from CONFIG_COMISSOES '
      'where'
      '  CODCONFIG = :CODCONFIG')
    SelectSQL.Strings = (
      'select * from CONFIG_COMISSOES where codconfig = :codconfig')
    ModifySQL.Strings = (
      'update CONFIG_COMISSOES'
      'set'
      '  CODCONFIG = :CODCONFIG,'
      '  DATEXEC = :DATEXEC,'
      '  DATFIM = :DATFIM,'
      '  DATINI = :DATINI,'
      '  PERCARGA = :PERCARGA,'
      '  VLRCHEQUE = :VLRCHEQUE,'
      '  VLRKM = :VLRKM'
      'where'
      '  CODCONFIG = :OLD_CODCONFIG')
    Left = 624
    Top = 24
    object CadConfigComissoesCODCONFIG: TIntegerField
      FieldName = 'CODCONFIG'
      Origin = '"CONFIG_COMISSOES"."CODCONFIG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadConfigComissoesDATINI: TDateField
      FieldName = 'DATINI'
      Origin = '"CONFIG_COMISSOES"."DATINI"'
    end
    object CadConfigComissoesDATFIM: TDateField
      FieldName = 'DATFIM'
      Origin = '"CONFIG_COMISSOES"."DATFIM"'
    end
    object CadConfigComissoesVLRKM: TFloatField
      FieldName = 'VLRKM'
      Origin = '"CONFIG_COMISSOES"."VLRKM"'
    end
    object CadConfigComissoesVLRCHEQUE: TFloatField
      FieldName = 'VLRCHEQUE'
      Origin = '"CONFIG_COMISSOES"."VLRCHEQUE"'
    end
    object CadConfigComissoesPERCARGA: TFloatField
      FieldName = 'PERCARGA'
      Origin = '"CONFIG_COMISSOES"."PERCARGA"'
    end
    object CadConfigComissoesDATEXEC: TDateField
      FieldName = 'DATEXEC'
      Origin = '"CONFIG_COMISSOES"."DATEXEC"'
    end
  end
  object RvRelacaoComissoes: TRvProject
    Engine = RvSystem
    ProjectFile = 'C:\TransLider\Relatorios\RelacaoComissoes.rav'
    Left = 976
    Top = 72
    RaveBlobNew = {
      6F480000DED652370F80E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      303333333333CB0340BFED84B000000006BFED84B0164400760043006F006D00
      6900730073006F00650073000B4476436F6D6973736F6573BFED84B01A540052
      00610076006500440061007400610056006900650077000D5452617665446174
      615669657700590E000000BFED84B01A54005200610076006500440061007400
      610056006900650077000D54526176654461746156696577BFED84B016440076
      0043006F006D006900730073006F00650073000B4476436F6D6973736F657308
      BFED84B01A43006F006D00700069006C0065004E00650065006400650064000D
      436F6D70696C654E656564656400BFED84B00A460061006C0073006500054661
      6C7365BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B0164400760043006F006D006900730073006F00650073000B4476
      436F6D6973736F6573BFED84B01C43006F006E006E0065006300740069006F00
      6E004E0061006D0065000E436F6E6E656374696F6E4E616D6506BFED84B03052
      00760043006C00690065006E007400520065006C006100630061006F0043006F
      006D006900730073006F0065007300185276436C69656E7452656C6163616F43
      6F6D6973736F6573BFED84B000000C00BFED84B0225400520061007600650049
      006E00740065006700650072004600690065006C006400115452617665496E74
      656765724669656C64BFED84B0224400760043006F006D006900730073006F00
      6500730043004F0044004D004F005400114476436F6D6973736F6573434F444D
      4F5408BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B00C43004F0044004D004F00540006434F444D4F54BFED84
      B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0
      0C43004F0044004D004F00540006434F444D4F54BFED84B008530069007A0065
      000453697A650104BFED84B000000000BFED84B0205400520061007600650053
      007400720069006E0067004600690065006C006400105452617665537472696E
      674669656C64BFED84B0224400760043006F006D006900730073006F00650073
      004E004F004D004D004F005400114476436F6D6973736F65734E4F4D4D4F5408
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C4E004F004D004D004F005400064E4F4D4D4F54BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C4E00
      4F004D004D004F005400064E4F4D4D4F54BFED84B008530069007A0065000453
      697A650180CABFED84B000000000BFED84B01E5400520061007600650049006E
      007400360034004600690065006C0064000F5452617665496E7436344669656C
      64BFED84B02A4400760043006F006D006900730073006F006500730051005400
      44004300480045005100550045005300154476436F6D6973736F657351544443
      48455155455308BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B014510054004400430048004500510055004500
      53000A51544443484551554553BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B014510054004400430048004500510055
      00450053000A51544443484551554553BFED84B008530069007A006500045369
      7A650108BFED84B000000000BFED84B01A540052006100760065004200430044
      004600690065006C0064000D54526176654243444669656C64BFED84B02E4400
      760043006F006D006900730073006F0065007300560041004C004F0052004300
      480045005100550045005300174476436F6D6973736F657356414C4F52434845
      5155455308BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B018560041004C004F00520043004800450051005500
      450053000C56414C4F5243484551554553BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B018560041004C004F00520043
      004800450051005500450053000C56414C4F5243484551554553BFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B01E5400520061
      007600650049006E007400360034004600690065006C0064000F545261766549
      6E7436344669656C64BFED84B0264400760043006F006D006900730073006F00
      6500730054004F00540041004C005F004B004D00134476436F6D6973736F6573
      544F54414C5F4B4D08BFED84B0124600690065006C0064004E0061006D006500
      094669656C644E616D6506BFED84B01054004F00540041004C005F004B004D00
      08544F54414C5F4B4DBFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B01054004F00540041004C005F004B004D0008544F
      54414C5F4B4DBFED84B008530069007A0065000453697A650108BFED84B00000
      0000BFED84B01A540052006100760065004200430044004600690065006C0064
      000D54526176654243444669656C64BFED84B0244400760043006F006D006900
      730073006F0065007300560041004C004F0052004B004D00124476436F6D6973
      736F657356414C4F524B4D08BFED84B0124600690065006C0064004E0061006D
      006500094669656C644E616D6506BFED84B00E560041004C004F0052004B004D
      000756414C4F524B4DBFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B00E560041004C004F0052004B004D000756414C4F
      524B4DBFED84B008530069007A0065000453697A650108BFED84B000000000BF
      ED84B01A540052006100760065004200430044004600690065006C0064000D54
      526176654243444669656C64BFED84B02A4400760043006F006D006900730073
      006F006500730054004F00540041004C0043004100520047004100154476436F
      6D6973736F6573544F54414C434152474108BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B01454004F00540041
      004C00430041005200470041000A544F54414C4341524741BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01454004F00
      540041004C00430041005200470041000A544F54414C4341524741BFED84B008
      530069007A0065000453697A650108BFED84B000000000BFED84B01A54005200
      6100760065004200430044004600690065006C0064000D545261766542434446
      69656C64BFED84B02A4400760043006F006D006900730073006F006500730056
      0041004C004F00520043004100520047004100154476436F6D6973736F657356
      414C4F52434152474108BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B014560041004C004F0052004300410052
      00470041000A56414C4F524341524741BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B014560041004C004F0052004300
      41005200470041000A56414C4F524341524741BFED84B008530069007A006500
      0453697A650108BFED84B000000000BFED84B01E540052006100760065004600
      6C006F00610074004600690065006C0064000F5452617665466C6F6174466965
      6C64BFED84B0364400760043006F006D006900730073006F006500730076006E
      0054006F00740061006C0043006F006D006900730073006F00650073001B4476
      436F6D6973736F6573766E546F74616C436F6D6973736F657308BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      2076006E0054006F00740061006C0043006F006D006900730073006F00650073
      0010766E546F74616C436F6D6973736F6573BFED84B010460075006C006C004E
      0061006D0065000846756C6C4E616D6506BFED84B02076006E0054006F007400
      61006C0043006F006D006900730073006F006500730010766E546F74616C436F
      6D6973736F6573BFED84B008530069007A0065000453697A650108BFED84B000
      000000BFED84B0205400520061007600650053007400720069006E0067004600
      690065006C006400105452617665537472696E674669656C64BFED84B01C4400
      760043006F006D006900730073006F006500730049006D0067000E4476436F6D
      6973736F6573496D6708BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B00649006D00670003496D67BFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00649
      006D00670003496D67BFED84B008530069007A0065000453697A65011FBFED84
      B000000000BFED84B01E5400520061007600650046006C006F00610074004600
      690065006C0064000F5452617665466C6F61744669656C64BFED84B02A440076
      0043006F006D006900730073006F006500730056004C00520043004F004D0046
      00490058004100154476436F6D6973736F6573564C52434F4D4649584108BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B01456004C00520043004F004D0046004900580041000A564C52434F4D
      46495841BFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B01456004C00520043004F004D0046004900580041000A564C52
      434F4D46495841BFED84B008530069007A0065000453697A650108BFED84B000
      000000BFED84B01A540052006100760065004200430044004600690065006C00
      64000D54526176654243444669656C64BFED84B02C4400760043006F006D0069
      00730073006F0065007300560041004C004F0052004D0041004E00550041004C
      00164476436F6D6973736F657356414C4F524D414E55414C08BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B016
      560041004C004F0052004D0041004E00550041004C000B56414C4F524D414E55
      414CBFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B016560041004C004F0052004D0041004E00550041004C000B56414C
      4F524D414E55414CBFED84B008530069007A0065000453697A650108BFED84B0
      00000004BFED84B00E5200650070006F00720074003100075265706F72743100
      D7370000BFED84B00A500061006700650031000550616765310100BFED84B00A
      5000610067006500310005506167653101BFED84B00A50006100670065003100
      05506167653100BFED84B016540052006100760065005200650070006F007200
      74000B54526176655265706F7274BFED84B00E5200650070006F007200740031
      00075265706F72743108BFED84B01A43006F006D00700069006C0065004E0065
      0065006400650064000D436F6D70696C654E656564656400BFED84B00A460061
      006C00730065000546616C7365BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00E5200650070006F0072007400310007
      5265706F727431BFED84B0124600690072007300740050006100670065000946
      697273745061676500BFED84B01A5200650070006F007200740031002E005000
      61006700650031000D5265706F7274312E5061676531BFED84B0145000610072
      0061006D00650074006500720073000A506172616D657465727308BFED84B000
      00BFED84B00C5000490056006100720073000650495661727308BFED84B00000
      BFED84B0000000002F36000000BFED84B0125400520061007600650050006100
      6700650009545261766550616765BFED84B00A50006100670065003100055061
      67653108BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00A50006100670065003100055061676531BFED84B006
      420069006E000342696E0201BFED84B01247007200690064004C0069006E0065
      00730009477269644C696E65730105BFED84B016470072006900640053007000
      6100630069006E0067000B4772696453706163696E67050048201008040281F7
      3FBFED84B0164F007200690065006E0074006100740069006F006E000B4F7269
      656E746174696F6E00BFED84B01270006F00440065006600610075006C007400
      09706F44656661756C74BFED84B01250006100700065007200530069007A0065
      0009506170657253697A650109BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00E53007400720069006E
      006700730007537472696E67732F010607504552494F444F0609766E43686571
      7565730604766E4B6D0608766E4361726761730607766E546F74616C00BFED84
      B00000BFED84B00C5000490056006100720073000650495661727308BFED84B0
      0000BFED84B000000300BFED84B0165400520061007600650052006500670069
      006F006E000B5452617665526567696F6EBFED84B00E52006500670069006F00
      6E00310007526567696F6E3108BFED84B00C4800650069006700680074000648
      65696768740500E83075B9FD41AC0240BFED84B0084C00650066007400044C65
      6674050088814E1BE8B481FA3FBFED84B00654006F00700003546F7005000000
      00000000E0FE3FBFED84B00A570069006400740068000557696474680500F0CD
      AB896745830240BFED84B01A43006F006C0075006D006E005300700061006300
      69006E0067000D436F6C756D6E53706163696E670500000000000000000000BF
      ED84B000000200BFED84B01A5400520061007600650044006100740061004200
      61006E0064000D54526176654461746142616E64BFED84B00E44006500740061
      006C006800650007446574616C686508BFED84B00C41006E00630068006F0072
      0006416E63686F720103BFED84B012420061006E0064005300740079006C0065
      000942616E645374796C6508BFED84B0105000720069006E0074004C006F0063
      00085072696E744C6F6307BFED84B01070006C00440065007400610069006C00
      08706C44657461696CBFED84B00000BFED84B00000BFED84B00C480065006900
      670068007400064865696768740500888888888888C8FE3FBFED84B01A4D0069
      006E004800650069006700680074004C006500660074000D4D696E4865696768
      744C6566740500000000000000000000BFED84B01A50006F0073006900740069
      006F006E00560061006C00750065000D506F736974696F6E56616C7565050000
      0000000000000000BFED84B01A43006F006C0075006D006E0053007000610063
      0069006E0067000D436F6C756D6E53706163696E670500000000000000000000
      BFED84B0104400610074006100560069006500770008446174615669657700BF
      ED84B0164400760043006F006D006900730073006F00650073000B4476436F6D
      6973736F6573BFED84B000000C00BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B012
      4400610074006100540065007800740031000944617461546578743108BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A65010A
      BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C6566740500806E7F90A1B2C3FC3FBF
      ED84B0085400650078007400045465787406BFED84B00C4E004F004D004D004F
      005400064E4F4D4D4F54BFED84B00654006F00700003546F700500089E158D04
      7CF3FA3FBFED84B00A57006900640074006800055769647468050080B47602F3
      15BA0040BFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B00C4E004F004D004D004F005400064E4F4D4D4F54BFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B0164400760043006F006D006900730073006F00650073000B4476436F6D6973
      736F6573BFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0124400
      610074006100540065007800740033000944617461546578743308BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A65010ABFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500B08A4602BE79D5FE3FBFED84
      B0085400650078007400045465787406BFED84B018560041004C004F00520043
      004800450051005500450053000C56414C4F5243484551554553BFED84B00654
      006F00700003546F70050060A0D3063A6DA0FD3FBFED84B00A57006900640074
      0068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B018560041004C
      004F00520043004800450051005500450053000C56414C4F5243484551554553
      BFED84B0104400610074006100560069006500770008446174615669657700BF
      ED84B0164400760043006F006D006900730073006F00650073000B4476436F6D
      6973736F6573BFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B012
      4400610074006100540065007800740035000944617461546578743508BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A65010A
      BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C6566740500909A78563412C00040BF
      ED84B0085400650078007400045465787406BFED84B00E560041004C004F0052
      004B004D000756414C4F524B4DBFED84B00654006F00700003546F70050060A0
      D3063A6DA0FD3FBFED84B00A5700690064007400680005576964746805008014
      AE47E17AD4FE3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B00E560041004C004F0052004B004D000756414C
      4F524B4DBFED84B0104400610074006100560069006500770008446174615669
      657700BFED84B0164400760043006F006D006900730073006F00650073000B44
      76436F6D6973736F6573BFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400370009446174615465787437
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C656674050010A62EB73FC8
      9C0140BFED84B0085400650078007400045465787406BFED84B014560041004C
      004F005200430041005200470041000A56414C4F524341524741BFED84B00654
      006F00700003546F70050060A0D3063A6DA0FD3FBFED84B00A57006900640074
      0068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B014560041004C
      004F005200430041005200470041000A56414C4F524341524741BFED84B01044
      00610074006100560069006500770008446174615669657700BFED84B0164400
      760043006F006D006900730073006F00650073000B4476436F6D6973736F6573
      BFED84B000000000BFED84B01254005200610076006500540065007800740009
      545261766554657874BFED84B00A5400650078007400310005546578743108BF
      ED84B00846006F006E00740004466F6E7408BFED84B00E430068006100720073
      006500740007436861727365740101BFED84B00A43006F006C006F0072000543
      6F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100
      7200690061006C0005417269616CBFED84B008530069007A0065000453697A65
      010ABFED84B00A5300740079006C006500055374796C6507BFED84B00C660073
      0042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0
      1646006F006E0074004A007500730074006900660079000B466F6E744A757374
      69667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0
      084C00650066007400044C656674050000AD6824E09BD7FC3FBFED84B0085400
      650078007400045465787406BFED84B00E4300680065007100750065003A0007
      4368657175653ABFED84B00654006F00700003546F70050060A0D3063A6DA0FD
      3FBFED84B00A570069006400740068000557696474680500000000000000A0FE
      3FBFED84B000000000BFED84B012540052006100760065005400650078007400
      09545261766554657874BFED84B00A5400650078007400320005546578743208
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00C6600
      730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84
      B01646006F006E0074004A007500730074006900660079000B466F6E744A7573
      7469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84
      B0084C00650066007400044C656674050000436587A9CB850040BFED84B00854
      00650078007400045465787406BFED84B0144B006D00200052006F0064006100
      64006F003A000A4B6D20526F6461646F3ABFED84B00654006F00700003546F70
      050060A0D3063A6DA0FD3FBFED84B00A57006900640074006800055769647468
      050020C7711CC771DCFE3FBFED84B000000000BFED84B0125400520061007600
      6500540065007800740009545261766554657874BFED84B00A54006500780074
      00330005546578743308BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A65010ABFED84B00A5300740079006C00650005537479
      6C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B000
      00BFED84B00000BFED84B01646006F006E0074004A0075007300740069006600
      79000B466F6E744A75737469667900BFED84B00C70006A004C00650066007400
      06706A4C656674BFED84B0084C00650066007400044C6566740500F0D5C4B3A2
      91880140BFED84B0085400650078007400045465787406BFED84B00E43006100
      72006700610073003A00074361726761733ABFED84B00654006F00700003546F
      70050060A0D3063A6DA0FD3FBFED84B00A570069006400740068000557696474
      68050078563412F0CD8BFE3FBFED84B000000000BFED84B01254005200610076
      006500540065007800740009545261766554657874BFED84B00A540065007800
      7400340005546578743408BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A65010ABFED84B00A5300740079006C006500055374
      796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C656674050040674523
      01DFC80140BFED84B0085400650078007400045465787406BFED84B00C54006F
      00740061006C003A0006546F74616C3ABFED84B00654006F00700003546F7005
      0060A0D3063A6DA0FD3FBFED84B00A5700690064007400680005576964746805
      006047E17A14AEC7FD3FBFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400320009446174615465787432
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C656674050060158D047CF3
      D60140BFED84B0085400650078007400045465787406BFED84B02076006E0054
      006F00740061006C0043006F006D006900730073006F006500730010766E546F
      74616C436F6D6973736F6573BFED84B00654006F00700003546F70050060A0D3
      063A6DA0FD3FBFED84B00A570069006400740068000557696474680500D0CCCC
      CCCCCCCCFE3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B02076006E0054006F00740061006C0043006F006D
      006900730073006F006500730010766E546F74616C436F6D6973736F6573BFED
      84B0104400610074006100560069006500770008446174615669657700BFED84
      B0164400760043006F006D006900730073006F00650073000B4476436F6D6973
      736F6573BFED84B000000000BFED84B0145400520061007600650048004C0069
      006E0065000A5452617665484C696E65BFED84B00C48004C0069006E00650031
      0006484C696E653108BFED84B00C480065006900670068007400064865696768
      740500000000000000000000BFED84B0084C00650066007400044C6566740500
      40C240A70D74DAF63FBFED84B0124C0069006E00650057006900640074006800
      094C696E655769647468050000000000000080FF3FBFED84B0084E0045005300
      5700044E45535700BFED84B00A460061006C00730065000546616C7365BFED84
      B00654006F00700003546F70050068BC58F28B25BFF83FBFED84B00A57006900
      6400740068000557696474680500308EE3388EE3820240BFED84B000000000BF
      ED84B01A54005200610076006500440061007400610054006500780074000D54
      526176654461746154657874BFED84B014440061007400610054006500780074
      00310031000A4461746154657874313108BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A65010ABFED84B00A5300740079006C
      006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C65667405000063C92F96FCD60140BFED84B0085400650078007400
      045465787406BFED84B016560041004C004F0052004D0041004E00550041004C
      000B56414C4F524D414E55414CBFED84B00654006F00700003546F7005009080
      6F5E4D3C8BFE3FBFED84B00A570069006400740068000557696474680500D0CC
      CCCCCCCCCCFE3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B016560041004C004F0052004D0041004E005500
      41004C000B56414C4F524D414E55414CBFED84B0104400610074006100560069
      006500770008446174615669657700BFED84B0164400760043006F006D006900
      730073006F00650073000B4476436F6D6973736F6573BFED84B000000000BFED
      84B01254005200610076006500540065007800740009545261766554657874BF
      ED84B00C5400650078007400310031000654657874313108BFED84B00846006F
      006E00740004466F6E7408BFED84B00E43006800610072007300650074000743
      6861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BF
      ED84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C
      0005417269616CBFED84B008530069007A0065000453697A65010ABFED84B00A
      5300740079006C006500055374796C6507BFED84B00C6600730042006F006C00
      6400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E00
      74004A007500730074006900660079000B466F6E744A75737469667900BFED84
      B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065006600
      7400044C6566740500803EE9933EE9B30140BFED84B008540065007800740004
      5465787406BFED84B01E54006F00740061006C00200041006A00750073007400
      610064006F003A000F546F74616C20416A75737461646F3ABFED84B00654006F
      00700003546F700500E0FE2043658789FE3FBFED84B00A570069006400740068
      000557696474680500D8A3703D0AD783FF3FBFED84B000000000BFED84B01254
      005200610076006500420061006E00640009545261766542616E64BFED84B010
      53007500620054006F00740061006C0008537562546F74616C08BFED84B00C41
      006E00630068006F00720006416E63686F720103BFED84B012420061006E0064
      005300740079006C0065000942616E645374796C6508BFED84B0105000720069
      006E0074004C006F006300085072696E744C6F6307BFED84B01870006C004200
      6F006400790046006F006F007400650072000C706C426F6479466F6F746572BF
      ED84B00000BFED84B00000BFED84B00C48006500690067006800740006486569
      676874050020F1AC6824E0FBFE3FBFED84B01A4D0069006E0048006500690067
      00680074004C006500660074000D4D696E4865696768744C6566740500000000
      000000000000BFED84B01A50006F0073006900740069006F006E00560061006C
      00750065000D506F736974696F6E56616C75650500000000000000000000BFED
      84B000000B00BFED84B0145400520061007600650048004C0069006E0065000A
      5452617665484C696E65BFED84B00C48004C0069006E006500320006484C696E
      653208BFED84B00C480065006900670068007400064865696768740500000000
      000000000000BFED84B0084C00650066007400044C6566740500C06E7F90A1B2
      C3F93FBFED84B0124C0069006E00650057006900640074006800094C696E6557
      69647468050000000000000080FF3FBFED84B0084E00450053005700044E4553
      5700BFED84B00A460061006C00730065000546616C7365BFED84B00654006F00
      700003546F700500B0E3388EE3388EFB3FBFED84B00A57006900640074006800
      0557696474680500388EE3388EE3820240BFED84B000000000BFED84B0125400
      5200610076006500540065007800740009545261766554657874BFED84B00A54
      00650078007400360005546578743608BFED84B00846006F006E00740004466F
      6E7408BFED84B00E430068006100720073006500740007436861727365740101
      BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E006100
      6D006500044E616D6506BFED84B00A41007200690061006C0005417269616CBF
      ED84B008530069007A0065000453697A65010ABFED84B00A5300740079006C00
      6500055374796C6507BFED84B00C6600730042006F006C006400066673426F6C
      64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00406587A9CBEDCFFF3FBFED84B0085400650078007400045465787406BFED84
      B00E43006800650071007500650073000743686571756573BFED84B00654006F
      00700003546F70050080E3388EE3388EFD3FBFED84B00A570069006400740068
      000557696474680500B0166CC1166CA1FE3FBFED84B000000000BFED84B01254
      005200610076006500540065007800740009545261766554657874BFED84B00A
      5400650078007400370005546578743708BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A65010ABFED84B00A5300740079006C
      006500055374796C6507BFED84B00C6600730042006F006C006400066673426F
      6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500A02EB73FC850B9FF3FBFED84B0085400650078007400045465787406BFED
      84B0124B006D00200052006F006400610064006F00094B6D20526F6461646FBF
      ED84B00654006F00700003546F700500508EE3388EE3F8FD3FBFED84B00A5700
      6900640074006800055769647468050000840C951DA6CEFE3FBFED84B0000000
      00BFED84B0125400520061007600650054006500780074000954526176655465
      7874BFED84B00A5400650078007400380005546578743808BFED84B00846006F
      006E00740004466F6E7408BFED84B00E43006800610072007300650074000743
      6861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BF
      ED84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C
      0005417269616CBFED84B008530069007A0065000453697A65010ABFED84B00A
      5300740079006C006500055374796C6507BFED84B00C6600730042006F006C00
      6400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E00
      74004A007500730074006900660079000B466F6E744A75737469667900BFED84
      B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065006600
      7400044C656674050028BF58F28B25DFFF3FBFED84B008540065007800740004
      5465787406BFED84B00C43006100720067006100730006436172676173BFED84
      B00654006F00700003546F70050080B9FD4186CAAEFE3FBFED84B00A57006900
      6400740068000557696474680500F062C92F96FC82FE3FBFED84B000000000BF
      ED84B01254005200610076006500540065007800740009545261766554657874
      BFED84B00A5400650078007400390005546578743908BFED84B00846006F006E
      00740004466F6E7408BFED84B00E430068006100720073006500740007436861
      727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84
      B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C0005
      417269616CBFED84B008530069007A0065000453697A65010ABFED84B00A5300
      740079006C006500055374796C6507BFED84B00C6600730042006F006C006400
      066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E007400
      4A007500730074006900660079000B466F6E744A75737469667900BFED84B00C
      70006A004C0065006600740006706A4C656674BFED84B0084C00650066007400
      044C6566740500004D3C2B1A09F8FB3FBFED84B0085400650078007400045465
      787406BFED84B01E54006F00740061006C00200043006F006D00690073007300
      F500650073000F546F74616C20436F6D697373F56573BFED84B00654006F0070
      0003546F70050058000000000080FC3FBFED84B00A5700690064007400680005
      57696474680500408EE3388EE398FF3FBFED84B000000000BFED84B012540052
      00610076006500540065007800740009545261766554657874BFED84B00C5400
      650078007400310030000654657874313008BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A65010ABFED84B00A530074007900
      6C006500055374796C6507BFED84B00C6600730042006F006C00640006667342
      6F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500
      730074006900660079000B466F6E744A75737469667900BFED84B00C70006A00
      4C0065006600740006706A4C656674BFED84B0084C00650066007400044C6566
      74050038F1AC6824E0A70140BFED84B0085400650078007400045465787406BF
      ED84B00A54006F00740061006C0005546F74616CBFED84B00654006F00700003
      546F700500B0AAAAAAAAAAEAFD3FBFED84B00A57006900640074006800055769
      6474680500C0711CC7711CC7FD3FBFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003600094461746154
      6578743608BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A65010ABFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C6566740500984F
      FAA44FFA940040BFED84B0085400650078007400045465787406BFED84B01E50
      006100720061006D002E0076006E0043006800650071007500650073000F5061
      72616D2E766E43686571756573BFED84B00654006F00700003546F70050080E3
      388EE3388EFD3FBFED84B00A5700690064007400680005576964746805000000
      0000000080FF3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B01E50006100720061006D002E0076006E004300
      6800650071007500650073000F506172616D2E766E43686571756573BFED84B0
      00000000BFED84B01A5400520061007600650044006100740061005400650078
      0074000D54526176654461746154657874BFED84B01244006100740061005400
      65007800740038000944617461546578743808BFED84B00846006F006E007400
      04466F6E7408BFED84B00E430068006100720073006500740007436861727365
      740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E
      0061006D006500044E616D6506BFED84B00A41007200690061006C0005417269
      616CBFED84B008530069007A0065000453697A65010ABFED84B00A5300740079
      006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C6566740500984FFAA44FFA940040BFED84B008540065007800
      7400045465787406BFED84B01450006100720061006D002E0076006E004B006D
      000A506172616D2E766E4B6DBFED84B00654006F00700003546F70050060E259
      D148C0F7FD3FBFED84B00A570069006400740068000557696474680500000000
      00000080FF3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B01450006100720061006D002E0076006E004B006D
      000A506172616D2E766E4B6DBFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B0124400610074006100540065007800740039000944617461546578
      743908BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500984FFAA4
      4FFA940040BFED84B0085400650078007400045465787406BFED84B01C500061
      00720061006D002E0076006E004300610072006700610073000E506172616D2E
      766E436172676173BFED84B00654006F00700003546F700500904602BE7935B1
      FE3FBFED84B00A57006900640074006800055769647468050000000000000080
      FF3FBFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B01C50006100720061006D002E0076006E0043006100720067
      00610073000E506172616D2E766E436172676173BFED84B000000000BFED84B0
      1A54005200610076006500440061007400610054006500780074000D54526176
      654461746154657874BFED84B014440061007400610054006500780074003100
      30000A4461746154657874313008BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A65010ABFED84B00A5300740079006C006500
      055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E007400
      4A007500730074006900660079000B466F6E744A75737469667900BFED84B00C
      70006A004C0065006600740006706A4C656674BFED84B0084C00650066007400
      044C6566740500A8703D0AD7A3B40140BFED84B0085400650078007400045465
      787406BFED84B01A50006100720061006D002E0076006E0054006F0074006100
      6C000D506172616D2E766E546F74616CBFED84B00654006F00700003546F7005
      00E0FE20436587E9FD3FBFED84B00A5700690064007400680005576964746805
      0000000000000080FF3FBFED84B01244006100740061004600690065006C0064
      0009446174614669656C6406BFED84B01A50006100720061006D002E0076006E
      0054006F00740061006C000D506172616D2E766E546F74616CBFED84B0000000
      00BFED84B0145400520061007600650048004C0069006E0065000A5452617665
      484C696E65BFED84B00C48004C0069006E006500330006484C696E653308BFED
      84B00C4800650069006700680074000648656967687405000000000000000000
      00BFED84B0084C00650066007400044C6566740500F0F4499FF4499FF93FBFED
      84B0124C0069006E00650057006900640074006800094C696E65576964746805
      0000000000000080FF3FBFED84B0084E00450053005700044E45535700BFED84
      B00A460061006C00730065000546616C7365BFED84B00654006F00700003546F
      700500F08A4602BE79F5FE3FBFED84B00A570069006400740068000557696474
      680500388EE3388EE3820240BFED84B000000000BFED84B01254005200610076
      006500540065007800740009545261766554657874BFED84B00A540065007800
      7400350005546578743508BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A65010CBFED84B00A5300740079006C006500055374
      796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500608FC2F5
      285CBF0040BFED84B0085400650078007400045465787406BFED84B038520065
      006C006100E700E3006F00200064006500200043006F006D00690073007300F5
      00650073002000E0002000500061006700610072001C52656C61E7E36F206465
      20436F6D697373F5657320E0205061676172BFED84B00654006F00700003546F
      70050088B9FD4186CA8EFD3FBFED84B00A570069006400740068000557696474
      680500F8FFFFFFFFFFA70040BFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B0124400610074006100540065007800740034000944617461546578
      743408BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A650109BFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B01070006A00430065006E0074
      006500720008706A43656E746572BFED84B0084C00650066007400044C656674
      0500C8711CC7711CCF0040BFED84B0085400650078007400045465787406BFED
      84B01A50006100720061006D002E0050004500520049004F0044004F000D5061
      72616D2E504552494F444FBFED84B00654006F00700003546F70050038D8822D
      D8828DFE3FBFED84B00A570069006400740068000557696474680500701CC771
      1CC7810040BFED84B01244006100740061004600690065006C00640009446174
      614669656C6406BFED84B01A50006100720061006D002E005000450052004900
      4F0044004F000D506172616D2E504552494F444FBFED84B0000000}
  end
  object RvSystem: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 976
    Top = 16
  end
  object RvClientRelacaoComissoes: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ClientRelacaoComissoes
    Left = 976
    Top = 128
  end
  object RvClientCustoKm: TRvProject
    Engine = RvSystem
    ProjectFile = 'C:\TransLider\Relatorios\ImpressaoCustoKm.rav'
    Left = 776
    Top = 328
    RaveBlobNew = {
      5CA30000121385D43380E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      303333333333CB0340BFED84B000000006BFED84B01244007600430075007300
      74006F004B006D00094476437573746F4B6DBFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      5519000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440076004300750073
      0074006F004B006D00094476437573746F4B6D08BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400760043
      007500730074006F004B006D00094476437573746F4B6DBFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B01E4400730043006C00690065006E007400430075
      00730074006F004B006D000F4473436C69656E74437573746F4B6DBFED84B000
      001700BFED84B0205400520061007600650053007400720069006E0067004600
      690065006C006400105452617665537472696E674669656C64BFED84B01E4400
      760043007500730074006F004B006D0050004C0041005600450049000F447643
      7573746F4B6D504C4156454908BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B00C50004C004100560045004900
      06504C41564549BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00C50004C00410056004500490006504C41564549BFED
      84B008530069007A0065000453697A650120BFED84B000000000BFED84B02254
      00520061007600650049006E00740065006700650072004600690065006C0064
      00115452617665496E74656765724669656C64BFED84B01E4400760043007500
      730074006F004B006D0043004F0044005600450049000F4476437573746F4B6D
      434F4456454908BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B00C43004F00440056004500490006434F445645
      49BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00C43004F00440056004500490006434F44564549BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B01E54005200610076
      00650046006C006F00610074004600690065006C0064000F5452617665466C6F
      61744669656C64BFED84B0224400760043007500730074006F004B006D004300
      4F004D0042005F0045004D005000114476437573746F4B6D434F4D425F454D50
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B01043004F004D0042005F0045004D00500008434F4D425F454D
      50BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B01043004F004D0042005F0045004D00500008434F4D425F454D50BFED
      84B008530069007A0065000453697A650108BFED84B000000000BFED84B01E54
      00520061007600650046006C006F00610074004600690065006C0064000F5452
      617665466C6F61744669656C64BFED84B0264400760043007500730074006F00
      4B006D0043004F004D0042005F0050004F00530054004F00134476437573746F
      4B6D434F4D425F504F53544F08BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B01443004F004D0042005F005000
      4F00530054004F000A434F4D425F504F53544FBFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B01443004F004D0042005F
      0050004F00530054004F000A434F4D425F504F53544FBFED84B008530069007A
      0065000453697A650108BFED84B000000000BFED84B01E540052006100760065
      0046006C006F00610074004600690065006C0064000F5452617665466C6F6174
      4669656C64BFED84B0204400760043007500730074006F004B006D0050004500
      44004100470049004F00104476437573746F4B6D5045444147494F08BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00E5000450044004100470049004F00075045444147494FBFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00E500045
      0044004100470049004F00075045444147494FBFED84B008530069007A006500
      0453697A650108BFED84B000000000BFED84B01E540052006100760065004600
      6C006F00610074004600690065006C0064000F5452617665466C6F6174466965
      6C64BFED84B0224400760043007500730074006F004B006D0056004900410046
      004100430049004C00114476437573746F4B6D564941464143494C08BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B01056004900410046004100430049004C0008564941464143494CBFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B010
      56004900410046004100430049004C0008564941464143494CBFED84B0085300
      69007A0065000453697A650108BFED84B000000000BFED84B01E540052006100
      7600650046006C006F00610074004600690065006C0064000F5452617665466C
      6F61744669656C64BFED84B0224400760043007500730074006F004B006D0044
      004500530043004100520047004100114476437573746F4B6D44455343415247
      4108BFED84B0124600690065006C0064004E0061006D006500094669656C644E
      616D6506BFED84B0104400450053004300410052004700410008444553434152
      4741BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B01044004500530043004100520047004100084445534341524741BF
      ED84B008530069007A0065000453697A650108BFED84B000000000BFED84B01E
      5400520061007600650046006C006F00610074004600690065006C0064000F54
      52617665466C6F61744669656C64BFED84B0244400760043007500730074006F
      004B006D005200450046004500490043004F0045005300124476437573746F4B
      6D5245464549434F455308BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B0125200450046004500490043004F00
      45005300095245464549434F4553BFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B0125200450046004500490043004F00
      45005300095245464549434F4553BFED84B008530069007A0065000453697A65
      0108BFED84B000000000BFED84B01E5400520061007600650046006C006F0061
      0074004600690065006C0064000F5452617665466C6F61744669656C64BFED84
      B0284400760043007500730074006F004B006D004F0055005400520041005300
      5F004400450053005000144476437573746F4B6D4F55545241535F4445535008
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B0164F00550054005200410053005F0044004500530050000B4F55
      545241535F44455350BFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B0164F00550054005200410053005F004400450053
      0050000B4F55545241535F44455350BFED84B008530069007A0065000453697A
      650108BFED84B000000000BFED84B01E5400520061007600650046006C006F00
      610074004600690065006C0064000F5452617665466C6F61744669656C64BFED
      84B0224400760043007500730074006F004B006D0043004F004D004900530053
      0041004F00114476437573746F4B6D434F4D495353414F08BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B01043
      004F004D0049005300530041004F0008434F4D495353414FBFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01043004F00
      4D0049005300530041004F0008434F4D495353414FBFED84B008530069007A00
      65000453697A650108BFED84B000000000BFED84B01E54005200610076006500
      46006C006F00610074004600690065006C0064000F5452617665466C6F617446
      69656C64BFED84B0204400760043007500730074006F004B006D00530041004C
      004100520049004F00104476437573746F4B6D53414C4152494F08BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B00E530041004C004100520049004F000753414C4152494FBFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00E53004100
      4C004100520049004F000753414C4152494FBFED84B008530069007A00650004
      53697A650108BFED84B000000000BFED84B01E5400520061007600650049006E
      007400360034004600690065006C0064000F5452617665496E7436344669656C
      64BFED84B0224400760043007500730074006F004B006D0054004F0054004100
      4C005F004B004D00114476437573746F4B6D544F54414C5F4B4D08BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B01054004F00540041004C005F004B004D0008544F54414C5F4B4DBFED84B010
      460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01054
      004F00540041004C005F004B004D0008544F54414C5F4B4DBFED84B008530069
      007A0065000453697A650108BFED84B000000000BFED84B01E54005200610076
      00650046006C006F00610074004600690065006C0064000F5452617665466C6F
      61744669656C64BFED84B0244400760043007500730074006F004B006D007600
      6E005000650064006100670069006F00124476437573746F4B6D766E50656461
      67696F08BFED84B0124600690065006C0064004E0061006D006500094669656C
      644E616D6506BFED84B01276006E005000650064006100670069006F0009766E
      5065646167696FBFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B01276006E005000650064006100670069006F0009766E
      5065646167696FBFED84B008530069007A0065000453697A650108BFED84B000
      000000BFED84B01E5400520061007600650046006C006F006100740046006900
      65006C0064000F5452617665466C6F61744669656C64BFED84B02C4400760043
      007500730074006F004B006D0076006E0043006F006D00620075007300740069
      00760065006C00164476437573746F4B6D766E436F6D627573746976656C08BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B01A76006E0043006F006D0062007500730074006900760065006C00
      0D766E436F6D627573746976656CBFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B01A76006E0043006F006D0062007500
      730074006900760065006C000D766E436F6D627573746976656CBFED84B00853
      0069007A0065000453697A650108BFED84B000000000BFED84B01A5400520061
      00760065004200430044004600690065006C0064000D54526176654243444669
      656C64BFED84B0284400760043007500730074006F004B006D004D0041004E00
      5500540045004E0043004F0045005300144476437573746F4B6D4D414E555445
      4E434F455308BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B0164D0041004E005500540045004E0043004F0045
      0053000B4D414E5554454E434F4553BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B0164D0041004E005500540045004E
      0043004F00450053000B4D414E5554454E434F4553BFED84B008530069007A00
      65000453697A650108BFED84B000000000BFED84B01A54005200610076006500
      4200430044004600690065006C0064000D54526176654243444669656C64BFED
      84B01E4400760043007500730074006F004B006D00430041004D0050004F0032
      000F4476437573746F4B6D43414D504F3208BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B00C430041004D0050
      004F0032000643414D504F32BFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00C430041004D0050004F0032000643414D
      504F32BFED84B008530069007A0065000453697A650108BFED84B000000000BF
      ED84B01E5400520061007600650046006C006F00610074004600690065006C00
      64000F5452617665466C6F61744669656C64BFED84B02A440076004300750073
      0074006F004B006D0076006E0054006F00740061006C0047006100730074006F
      00154476437573746F4B6D766E546F74616C476173746F08BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B01876
      006E0054006F00740061006C0047006100730074006F000C766E546F74616C47
      6173746FBFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B01876006E0054006F00740061006C0047006100730074006F00
      0C766E546F74616C476173746FBFED84B008530069007A0065000453697A6501
      08BFED84B000000000BFED84B01E5400520061007600650046006C006F006100
      74004600690065006C0064000F5452617665466C6F61744669656C64BFED84B0
      244400760043007500730074006F004B006D0076006E0043007500730074006F
      004B006D00124476437573746F4B6D766E437573746F4B6D08BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B012
      76006E0043007500730074006F004B006D0009766E437573746F4B6DBFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B012
      76006E0043007500730074006F004B006D0009766E437573746F4B6DBFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B022540052
      0061007600650049006E00740065006700650072004600690065006C00640011
      5452617665496E74656765724669656C64BFED84B02444007600430075007300
      74006F004B006D0076006E0054006F00740061006C004B006D00124476437573
      746F4B6D766E546F74616C4B6D08BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B01276006E0054006F00740061
      006C004B006D0009766E546F74616C4B6DBFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B01276006E0054006F00740061
      006C004B006D0009766E546F74616C4B6DBFED84B008530069007A0065000453
      697A650104BFED84B000000000BFED84B0205400520061007600650053007400
      720069006E0067004600690065006C006400105452617665537472696E674669
      656C64BFED84B01A4400760043007500730074006F004B006D00540049005000
      4F000D4476437573746F4B6D5449504F08BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B0085400490050004F00
      045449504FBFED84B010460075006C006C004E0061006D0065000846756C6C4E
      616D6506BFED84B0085400490050004F00045449504FBFED84B008530069007A
      0065000453697A65013EBFED84B000000000BFED84B01E540052006100760065
      0046006C006F00610074004600690065006C0064000F5452617665466C6F6174
      4669656C64BFED84B0284400760043007500730074006F004B006D0044004500
      500052004500430049004100430041004F00144476437573746F4B6D44455052
      4543494143414F08BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B0164400450050005200450043004900410043
      0041004F000B444550524543494143414FBFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B0164400450050005200450043
      0049004100430041004F000B444550524543494143414FBFED84B00853006900
      7A0065000453697A650108BFED84B000000000BFED84B01E5400520061007600
      650046006C006F00610074004600690065006C0064000F5452617665466C6F61
      744669656C64BFED84B02E4400760043007500730074006F004B006D00460049
      004E0041004E004300490041004D0045004E0054004F00530017447643757374
      6F4B6D46494E414E4349414D454E544F5308BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B01C460049004E0041
      004E004300490041004D0045004E0054004F0053000E46494E414E4349414D45
      4E544F53BFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B01C460049004E0041004E004300490041004D0045004E005400
      4F0053000E46494E414E4349414D454E544F53BFED84B008530069007A006500
      0453697A650108BFED84B000000000BFED84B01E540052006100760065004600
      6C006F00610074004600690065006C0064000F5452617665466C6F6174466965
      6C64BFED84B01C4400760043007500730074006F004B006D0050004E00450055
      0053000E4476437573746F4B6D504E45555308BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B00A50004E004500
      5500530005504E455553BFED84B010460075006C006C004E0061006D00650008
      46756C6C4E616D6506BFED84B00A50004E0045005500530005504E455553BFED
      84B008530069007A0065000453697A650108BFED84B000000004BFED84B00E52
      00650070006F00720074003100075265706F72743100CE870000BFED84B00A50
      0061006700650031000550616765310100BFED84B00A50006100670065003100
      05506167653101BFED84B00A5000610067006500310005506167653100BFED84
      B016540052006100760065005200650070006F00720074000B54526176655265
      706F7274BFED84B00E5200650070006F00720074003100075265706F72743108
      BFED84B01A43006F006D00700069006C0065004E00650065006400650064000D
      436F6D70696C654E656564656400BFED84B00A460061006C0073006500054661
      6C7365BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D
      6506BFED84B00E5200650070006F00720074003100075265706F727431BFED84
      B0124600690072007300740050006100670065000946697273745061676500BF
      ED84B01A5200650070006F007200740031002E00500061006700650031000D52
      65706F7274312E5061676531BFED84B01450006100720061006D006500740065
      00720073000A506172616D657465727308BFED84B00000BFED84B00C50004900
      56006100720073000650495661727308BFED84B00000BFED84B0000000002686
      000000BFED84B012540052006100760065005000610067006500095452617665
      50616765BFED84B00A5000610067006500310005506167653108BFED84B01A43
      006F006D00700069006C0065004E00650065006400650064000D436F6D70696C
      654E656564656400BFED84B00A460061006C00730065000546616C7365BFED84
      B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0
      0A50006100670065003100055061676531BFED84B006420069006E000342696E
      0201BFED84B01247007200690064004C0069006E006500730009477269644C69
      6E65730105BFED84B0164700720069006400530070006100630069006E006700
      0B4772696453706163696E67050048201008040281F73FBFED84B0164F007200
      690065006E0074006100740069006F006E000B4F7269656E746174696F6E00BF
      ED84B01670006F004C0061006E006400530063006100700065000B706F4C616E
      645363617065BFED84B01250006100700065007200530069007A006500095061
      70657253697A650109BFED84B01450006100720061006D006500740065007200
      73000A506172616D657465727308BFED84B00E53007400720069006E00670073
      0007537472696E677380C00106097661506572696F646F060976615065646167
      696F060D7661436F6D627573746976656C060A76614465736361726761060B76
      615265666569636F6573060A7661436F6D697373616F0609766153616C617269
      6F060D7661446570726563696163616F060F766146696E616E6369616D656E74
      6F06077661506E657573060C76614F757472617344657370060C76614D616E75
      74656E63616F060C7661546F74616C476173746F06097661546F74616C4B6D06
      097661437573746F4B6D00BFED84B00000BFED84B00C50004900560061007200
      73000650495661727308BFED84B00000BFED84B000000600BFED84B016540052
      0061007600650052006500670069006F006E000B5452617665526567696F6EBF
      ED84B00E52006500670069006F006E00310007526567696F6E3108BFED84B00C
      480065006900670068007400064865696768740500C8711CC7711CE30140BFED
      84B0084C00650066007400044C656674050068EB51B81E85EBFB3FBFED84B006
      54006F00700003546F700500000000000000C0FE3FBFED84B00A570069006400
      740068000557696474680500E0388EE3388EB70240BFED84B01A43006F006C00
      75006D006E00530070006100630069006E0067000D436F6C756D6E5370616369
      6E670500000000000000000000BFED84B000000200BFED84B01A540052006100
      760065004400610074006100420061006E0064000D5452617665446174614261
      6E64BFED84B0124400610074006100420061006E006400310009446174614261
      6E643108BFED84B00C41006E00630068006F00720006416E63686F720103BFED
      84B012420061006E0064005300740079006C0065000942616E645374796C6508
      BFED84B00000BFED84B00C480065006900670068007400064865696768740500
      702CF9C5925FECFD3FBFED84B01A4D0069006E00480065006900670068007400
      4C006500660074000D4D696E4865696768744C65667405000000000000000000
      00BFED84B01A50006F0073006900740069006F006E00560061006C0075006500
      0D506F736974696F6E56616C75650500000000000000000000BFED84B01A4300
      6F006C0075006D006E00530070006100630069006E0067000D436F6C756D6E53
      706163696E670500000000000000000000BFED84B01044006100740061005600
      69006500770008446174615669657700BFED84B0124400760043007500730074
      006F004B006D00094476437573746F4B6DBFED84B000001E00BFED84B01A5400
      5200610076006500440061007400610054006500780074000D54526176654461
      746154657874BFED84B012440061007400610054006500780074003100094461
      7461546578743108BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010ABFED84B00A5300740079006C006500055374796C65
      07BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C656674050010000000000080
      FC3FBFED84B0085400650078007400045465787406BFED84B00C50004C004100
      56004500490006504C41564549BFED84B00654006F00700003546F7005008038
      8EE3388EE3FA3FBFED84B00A570069006400740068000557696474680500B860
      0BB6600B86FF3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B00C50004C00410056004500490006504C415645
      49BFED84B0104400610074006100560069006500770008446174615669657700
      BFED84B0124400760043007500730074006F004B006D00094476437573746F4B
      6DBFED84B000000000BFED84B012540052006100760065005400650078007400
      09545261766554657874BFED84B00A5400650078007400310005546578743108
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C6600
      730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84
      B01646006F006E0074004A007500730074006900660079000B466F6E744A7573
      7469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84
      B0084C00650066007400044C6566740500B837AF269E159DFF3FBFED84B00854
      00650078007400045465787406BFED84B010500045004400C100470049004F00
      3A0008504544C147494F3ABFED84B00654006F00700003546F700500F04186CA
      0E5397FB3FBFED84B00A570069006400740068000557696474680500200AD7A3
      703D8AFE3FBFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01244
      00610074006100540065007800740033000944617461546578743308BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B00C70006A004C0065006600740006706A4C6566
      74BFED84B0084C00650066007400044C656674050048C337AF269EE5FF3FBFED
      84B0085400650078007400045465787406BFED84B01276006E00500065006400
      6100670069006F0009766E5065646167696FBFED84B00654006F00700003546F
      700500F04186CA0E5397FB3FBFED84B00A570069006400740068000557696474
      68050090999999999999FE3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B01276006E00500065006400610067
      0069006F0009766E5065646167696FBFED84B010440061007400610056006900
      6500770008446174615669657700BFED84B0124400760043007500730074006F
      004B006D00094476437573746F4B6DBFED84B000000000BFED84B01254005200
      610076006500540065007800740009545261766554657874BFED84B00A540065
      0078007400320005546578743208BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A650108BFED84B00A5300740079006C006500
      055374796C6507BFED84B00C6600730042006F006C006400066673426F6C64BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050090
      184B7EB1E49F0040BFED84B0085400650078007400045465787406BFED84B00A
      43004F004D0042003A0005434F4D423ABFED84B00654006F00700003546F7005
      00F04186CA0E5397FB3FBFED84B00A5700690064007400680005576964746805
      006047E17A14AEC7FD3FBFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400320009446174615465787432
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C656674050040DC40A70D74
      BA0040BFED84B0085400650078007400045465787406BFED84B01A76006E0043
      006F006D0062007500730074006900760065006C000D766E436F6D6275737469
      76656CBFED84B00654006F00700003546F700500F04186CA0E5397FB3FBFED84
      B00A57006900640074006800055769647468050050B81E85EB51B8FE3FBFED84
      B01244006100740061004600690065006C00640009446174614669656C6406BF
      ED84B01A76006E0043006F006D0062007500730074006900760065006C000D76
      6E436F6D627573746976656CBFED84B010440061007400610056006900650077
      0008446174615669657700BFED84B0124400760043007500730074006F004B00
      6D00094476437573746F4B6DBFED84B000000000BFED84B01254005200610076
      006500540065007800740009545261766554657874BFED84B00A540065007800
      7400330005546578743308BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A650108BFED84B00A5300740079006C006500055374
      796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500A0B4C3D4
      E5F6EF0040BFED84B0085400650078007400045465787406BFED84B00A440045
      00530043003A0005444553433ABFED84B00654006F00700003546F700500F041
      86CA0E5397FB3FBFED84B00A570069006400740068000557696474680500203D
      0AD7A370BDFD3FBFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      124400610074006100540065007800740034000944617461546578743408BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C
      656674BFED84B0084C00650066007400044C656674050078961DA62EB7830140
      BFED84B0085400650078007400045465787406BFED84B0104400450053004300
      4100520047004100084445534341524741BFED84B00654006F00700003546F70
      0500F04186CA0E5397FB3FBFED84B00A57006900640074006800055769647468
      050080EB51B81E85ABFE3FBFED84B01244006100740061004600690065006C00
      640009446174614669656C6406BFED84B0104400450053004300410052004700
      4100084445534341524741BFED84B01044006100740061005600690065007700
      08446174615669657700BFED84B0124400760043007500730074006F004B006D
      00094476437573746F4B6DBFED84B000000000BFED84B0125400520061007600
      6500540065007800740009545261766554657874BFED84B00A54006500780074
      00340005546578743408BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A650108BFED84B00A5300740079006C00650005537479
      6C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B000
      00BFED84B00000BFED84B01646006F006E0074004A0075007300740069006600
      79000B466F6E744A75737469667900BFED84B00C70006A004C00650066007400
      06706A4C656674BFED84B0084C00650066007400044C656674050030B73FC850
      D99D0140BFED84B0085400650078007400045465787406BFED84B00C52004500
      460045002E003A0006524546452E3ABFED84B00654006F00700003546F700500
      F04186CA0E5397FB3FBFED84B00A570069006400740068000557696474680500
      203D0AD7A370BDFD3FBFED84B000000000BFED84B01A54005200610076006500
      440061007400610054006500780074000D54526176654461746154657874BFED
      84B0124400610074006100540065007800740035000944617461546578743508
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C656674050020F8E6D5C4B3AA
      0140BFED84B0085400650078007400045465787406BFED84B012520045004600
      4500490043004F0045005300095245464549434F4553BFED84B00654006F0070
      0003546F700500F04186CA0E5397FB3FBFED84B00A5700690064007400680005
      57696474680500C0F5285C8FC2B5FE3FBFED84B0124400610074006100460069
      0065006C00640009446174614669656C6406BFED84B012520045004600450049
      0043004F0045005300095245464549434F4553BFED84B0104400610074006100
      560069006500770008446174615669657700BFED84B012440076004300750073
      0074006F004B006D00094476437573746F4B6DBFED84B000000000BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0A5400650078007400350005546578743508BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650108BFED84B00A530074007900
      6C006500055374796C6507BFED84B00C6600730042006F006C00640006667342
      6F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500
      730074006900660079000B466F6E744A75737469667900BFED84B00C70006A00
      4C0065006600740006706A4C656674BFED84B0084C00650066007400044C6566
      740500E89A78563412C40140BFED84B0085400650078007400045465787406BF
      ED84B01A4F0055005400520041005300200044004500530050002E003A000D4F
      555452415320444553502E3ABFED84B00654006F00700003546F700500F04186
      CA0E5397FB3FBFED84B00A570069006400740068000557696474680500B01E85
      EB51B8DEFE3FBFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B012
      4400610074006100540065007800740036000944617461546578743608BFED84
      B00846006F006E00740004466F6E7408BFED84B00E4300680061007200730065
      00740007436861727365740101BFED84B00A43006F006C006F00720005436F6C
      6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41007200
      690061006C0005417269616CBFED84B008530069007A0065000453697A650108
      BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C65667405007009F8E6D5C4DF0140BF
      ED84B0085400650078007400045465787406BFED84B0164F0055005400520041
      0053005F0044004500530050000B4F55545241535F44455350BFED84B0065400
      6F00700003546F700500F04186CA0E5397FB3FBFED84B00A5700690064007400
      680005576964746805007014AE47E17A94FE3FBFED84B0124400610074006100
      4600690065006C00640009446174614669656C6406BFED84B0164F0055005400
      5200410053005F0044004500530050000B4F55545241535F44455350BFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B012
      4400760043007500730074006F004B006D00094476437573746F4B6DBFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00A5400650078007400360005546578743608BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00C6600730042006F
      006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C6566740500D0B0055BB005F70140BFED84B008540065007800
      7400045465787406BFED84B00E43004F004D00490053002E003A0007434F4D49
      532E3ABFED84B00654006F00700003546F700500F04186CA0E5397FB3FBFED84
      B00A570069006400740068000557696474680500003C2B1A09F8E6FD3FBFED84
      B000000000BFED84B01A54005200610076006500440061007400610054006500
      780074000D54526176654461746154657874BFED84B012440061007400610054
      0065007800740037000944617461546578743708BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650108BFED84B00A53007400
      79006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C656674050020073A6DA0D3820240BFED84B0085400650078
      007400045465787406BFED84B01043004F004D0049005300530041004F000843
      4F4D495353414FBFED84B00654006F00700003546F700500F04186CA0E5397FB
      3FBFED84B00A570069006400740068000557696474680500D0CCCCCCCCCCCCFE
      3FBFED84B01244006100740061004600690065006C0064000944617461466965
      6C6406BFED84B01043004F004D0049005300530041004F0008434F4D49535341
      4FBFED84B0104400610074006100560069006500770008446174615669657700
      BFED84B0124400760043007500730074006F004B006D00094476437573746F4B
      6DBFED84B000000000BFED84B012540052006100760065005400650078007400
      09545261766554657874BFED84B00A5400650078007400370005546578743708
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C6600
      730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84
      B01646006F006E0074004A007500730074006900660079000B466F6E744A7573
      7469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84
      B0084C00650066007400044C6566740500F8BBBBBBBBBB910240BFED84B00854
      00650078007400045465787406BFED84B010530041004C00C100520049004F00
      3A000853414CC152494F3ABFED84B00654006F00700003546F700500F04186CA
      0E5397FB3FBFED84B00A570069006400740068000557696474680500D06AE259
      D14880FE3FBFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01244
      00610074006100540065007800740038000944617461546578743808BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B00C70006A004C0065006600740006706A4C6566
      74BFED84B0084C00650066007400044C656674050038E9933EE9939A0240BFED
      84B0085400650078007400045465787406BFED84B00E530041004C0041005200
      49004F000753414C4152494FBFED84B00654006F00700003546F700500F83075
      B9FD4186FB3FBFED84B00A570069006400740068000557696474680500A047E1
      7A14AE87FE3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B00E530041004C004100520049004F000753414C41
      52494FBFED84B010440061007400610056006900650077000844617461566965
      7700BFED84B0124400760043007500730074006F004B006D0009447643757374
      6F4B6DBFED84B000000000BFED84B01254005200610076006500540065007800
      740009545261766554657874BFED84B00A540065007800740038000554657874
      3808BFED84B00846006F006E00740004466F6E7408BFED84B00E430068006100
      720073006500740007436861727365740101BFED84B00A43006F006C006F0072
      0005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B0
      0A41007200690061006C0005417269616CBFED84B008530069007A0065000453
      697A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C
      6600730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BF
      ED84B01646006F006E0074004A007500730074006900660079000B466F6E744A
      75737469667900BFED84B00C70006A004C0065006600740006706A4C656674BF
      ED84B0084C00650066007400044C6566740500404C5D6E7F90A1FF3FBFED84B0
      085400650078007400045465787406BFED84B00E4D0041004E00550054002E00
      3A00074D414E55542E3ABFED84B00654006F00700003546F700500007CF36AE2
      5991FD3FBFED84B00A570069006400740068000557696474680500A07A14AE47
      E1FAFD3FBFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0124400
      610074006100540065007800740039000944617461546578743908BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C65667405000874DA40A70DE4FF3FBFED84
      B0085400650078007400045465787406BFED84B0164D0041004E005500540045
      004E0043004F00450053000B4D414E5554454E434F4553BFED84B00654006F00
      700003546F700500007CF36AE25991FD3FBFED84B00A57006900640074006800
      055769647468050090999999999999FE3FBFED84B01244006100740061004600
      690065006C00640009446174614669656C6406BFED84B0164D0041004E005500
      540045004E0043004F00450053000B4D414E5554454E434F4553BFED84B01044
      00610074006100560069006500770008446174615669657700BFED84B0124400
      760043007500730074006F004B006D00094476437573746F4B6DBFED84B00000
      0000BFED84B01254005200610076006500540065007800740009545261766554
      657874BFED84B00A5400650078007400390005546578743908BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00C6600730042006F006C
      006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C6566740500B855555555559D0040BFED84B0085400650078007400
      045465787406BFED84B00E460049004E0041004E002E003A000746494E414E2E
      3ABFED84B00654006F00700003546F700500007CF36AE25991FD3FBFED84B00A
      570069006400740068000557696474680500A0C3D4E5F607D9FD3FBFED84B000
      000000BFED84B01A540052006100760065004400610074006100540065007800
      74000D54526176654461746154657874BFED84B0144400610074006100540065
      0078007400310030000A4461746154657874313008BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C6566740500B8B73FC850D9B90040BFED84B00854006500
      78007400045465787406BFED84B01C460049004E0041004E004300490041004D
      0045004E0054004F0053000E46494E414E4349414D454E544F53BFED84B00654
      006F00700003546F700500007CF36AE25991FD3FBFED84B00A57006900640074
      006800055769647468050050B81E85EB51B8FE3FBFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B01C460049004E
      0041004E004300490041004D0045004E0054004F0053000E46494E414E434941
      4D454E544F53BFED84B010440061007400610056006900650077000844617461
      5669657700BFED84B0124400760043007500730074006F004B006D0009447643
      7573746F4B6DBFED84B000000000BFED84B01254005200610076006500540065
      007800740009545261766554657874BFED84B00C540065007800740031003000
      0654657874313008BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A650108BFED84B00A5300740079006C006500055374796C65
      07BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C656674050020F46AE259D1F0
      0040BFED84B0085400650078007400045465787406BFED84B010440045005000
      5200450043002E003A00084445505245432E3ABFED84B00654006F0070000354
      6F700500007CF36AE25991FD3FBFED84B00A5700690064007400680005576964
      74680500D051B81E85EB91FE3FBFED84B000000000BFED84B01A540052006100
      76006500440061007400610054006500780074000D5452617665446174615465
      7874BFED84B01444006100740061005400650078007400310031000A44617461
      54657874313108BFED84B00846006F006E00740004466F6E7408BFED84B00E43
      0068006100720073006500740007436861727365740101BFED84B00A43006F00
      6C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D65
      06BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A
      0065000453697A650108BFED84B00A5300740079006C006500055374796C6507
      BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500730074
      006900660079000B466F6E744A75737469667900BFED84B00C70006A004C0065
      006600740006706A4C656674BFED84B0084C00650066007400044C6566740500
      50BD9A7856348A0140BFED84B0085400650078007400045465787406BFED84B0
      1644004500500052004500430049004100430041004F000B4445505245434941
      43414FBFED84B00654006F00700003546F700500007CF36AE25991FD3FBFED84
      B00A570069006400740068000557696474680500406666666666E6FD3FBFED84
      B01244006100740061004600690065006C00640009446174614669656C6406BF
      ED84B01644004500500052004500430049004100430041004F000B4445505245
      43494143414FBFED84B010440061007400610056006900650077000844617461
      5669657700BFED84B0124400760043007500730074006F004B006D0009447643
      7573746F4B6DBFED84B000000000BFED84B01254005200610076006500540065
      007800740009545261766554657874BFED84B00C540065007800740031003100
      0654657874313108BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A650108BFED84B00A5300740079006C006500055374796C65
      07BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C6566740500D05C8FC2F5289C
      0140BFED84B0085400650078007400045465787406BFED84B00C50004E004500
      550053003A0006504E4555533ABFED84B00654006F00700003546F700500007C
      F36AE25991FD3FBFED84B00A570069006400740068000557696474680500C062
      C92F96FCE2FD3FBFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      1444006100740061005400650078007400310032000A44617461546578743132
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C65667405005837D069039D
      AA0140BFED84B0085400650078007400045465787406BFED84B00A50004E0045
      005500530005504E455553BFED84B00654006F00700003546F700500007CF36A
      E25991FD3FBFED84B00A570069006400740068000557696474680500C07A14AE
      47E1FAFD3FBFED84B01244006100740061004600690065006C00640009446174
      614669656C6406BFED84B00A50004E0045005500530005504E455553BFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B012
      4400760043007500730074006F004B006D00094476437573746F4B6DBFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00C5400650078007400310032000654657874313208BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00C66007300
      42006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B016
      46006F006E0074004A007500730074006900660079000B466F6E744A75737469
      667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B008
      4C00650066007400044C656674050010B4A291806FD60140BFED84B008540065
      0078007400045465787406BFED84B01854004F00540041004C00200047004100
      530054004F003A000C544F54414C20474153544F3ABFED84B00654006F007000
      03546F700500A86824E09B5793FD3FBFED84B00A570069006400740068000557
      6964746805007014AE47E17AD4FE3FBFED84B000000000BFED84B01A54005200
      610076006500440061007400610054006500780074000D545261766544617461
      54657874BFED84B01444006100740061005400650078007400310033000A4461
      746154657874313308BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      050040935F2CF9C5F20140BFED84B0085400650078007400045465787406BFED
      84B01876006E0054006F00740061006C0047006100730074006F000C766E546F
      74616C476173746FBFED84B00654006F00700003546F700500007CF36AE25991
      FD3FBFED84B00A570069006400740068000557696474680500D0A3703D0AD7A3
      FE3FBFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B01876006E0054006F00740061006C0047006100730074006F
      000C766E546F74616C476173746FBFED84B01044006100740061005600690065
      00770008446174615669657700BFED84B0124400760043007500730074006F00
      4B006D00094476437573746F4B6DBFED84B000000000BFED84B0125400520061
      0076006500540065007800740009545261766554657874BFED84B00C54006500
      78007400310033000654657874313308BFED84B00846006F006E00740004466F
      6E7408BFED84B00E430068006100720073006500740007436861727365740101
      BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E006100
      6D006500044E616D6506BFED84B00A41007200690061006C0005417269616CBF
      ED84B008530069007A0065000453697A650108BFED84B00A5300740079006C00
      6500055374796C6507BFED84B00C6600730042006F006C006400066673426F6C
      64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00304FFAA44FFA840240BFED84B0085400650078007400045465787406BFED84
      B0144B004D00200052004F004400410044004F003A000A4B4D20524F4441444F
      3ABFED84B00654006F00700003546F700500A86824E09B5793FD3FBFED84B00A
      570069006400740068000557696474680500F0FFFFFFFFFFBFFE3FBFED84B000
      000000BFED84B01A540052006100760065004400610074006100540065007800
      74000D54526176654461746154657874BFED84B0144400610074006100540065
      0078007400310034000A4461746154657874313408BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C
      00650066007400044C656674050048D2277DD227910240BFED84B00854006500
      78007400045465787406BFED84B01054004F00540041004C005F004B004D0008
      544F54414C5F4B4DBFED84B00654006F00700003546F700500E0BC9A78563492
      FD3FBFED84B00A57006900640074006800055769647468050040E17A14AE47A1
      FE3FBFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B01054004F00540041004C005F004B004D0008544F54414C5F
      4B4DBFED84B01044006100740061005600690065007700084461746156696577
      00BFED84B0124400760043007500730074006F004B006D00094476437573746F
      4B6DBFED84B000000000BFED84B0125400520061007600650054006500780074
      0009545261766554657874BFED84B00C54006500780074003100340006546578
      74313408BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A650108BFED84B00A5300740079006C006500055374796C6507BFED84
      B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B00C70006A004C0065006600740006706A4C6566
      74BFED84B0084C00650066007400044C656674050000DEBC9A78569C0240BFED
      84B0085400650078007400045465787406BFED84B01243005500530054004F00
      20004B004D003A0009435553544F204B4D3ABFED84B00654006F00700003546F
      700500A86824E09B5793FD3FBFED84B00A570069006400740068000557696474
      680500E0285C8FC2F5A8FE3FBFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B01444006100740061005400650078007400310035000A4461746154
      657874313508BFED84B00846006F006E00740004466F6E7408BFED84B00E4300
      68006100720073006500740007436861727365740101BFED84B00A43006F006C
      006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506
      BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A00
      65000453697A650108BFED84B00A5300740079006C006500055374796C6507BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050030
      EA72FB830CA70240BFED84B0085400650078007400045465787406BFED84B012
      76006E0043007500730074006F004B006D0009766E437573746F4B6DBFED84B0
      0654006F00700003546F70050040D069039D3690FD3FBFED84B00A5700690064
      00740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B0124400610074
      0061004600690065006C00640009446174614669656C6406BFED84B01276006E
      0043007500730074006F004B006D0009766E437573746F4B6DBFED84B0104400
      610074006100560069006500770008446174615669657700BFED84B012440076
      0043007500730074006F004B006D00094476437573746F4B6DBFED84B0000000
      00BFED84B0145400520061007600650048004C0069006E0065000A5452617665
      484C696E65BFED84B00C48004C0069006E006500310006484C696E653108BFED
      84B00C4800650069006700680074000648656967687405000000000000000000
      00BFED84B0084C00650066007400044C6566740500808867452301DFF93FBFED
      84B0124C0069006E00650057006900640074006800094C696E65576964746805
      0000000000000080FF3FBFED84B0084E00450053005700044E45535700BFED84
      B00A460061006C00730065000546616C7365BFED84B00654006F00700003546F
      700500600BB6600BB6E0FD3FBFED84B00A570069006400740068000557696474
      680500C8711CC7711CB70240BFED84B000000000BFED84B01254005200610076
      006500420061006E00640009545261766542616E64BFED84B00A420061006E00
      640031000542616E643108BFED84B00C41006E00630068006F00720006416E63
      686F720103BFED84B012420061006E0064005300740079006C0065000942616E
      645374796C6508BFED84B0105000720069006E0074004C006F00630008507269
      6E744C6F6307BFED84B01870006C0042006F006400790046006F006F00740065
      0072000C706C426F6479466F6F746572BFED84B00000BFED84B00000BFED84B0
      0C48006500690067006800740006486569676874050080FC62C92F96ACFF3FBF
      ED84B01A4D0069006E004800650069006700680074004C006500660074000D4D
      696E4865696768744C6566740500000000000000000000BFED84B01A50006F00
      73006900740069006F006E00560061006C00750065000D506F736974696F6E56
      616C75650500000000000000000000BFED84B000001C00BFED84B01254005200
      610076006500540065007800740009545261766554657874BFED84B00C540065
      0078007400310037000654657874313708BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A650108BFED84B00A5300740079006C
      006500055374796C6507BFED84B00C6600730042006F006C006400066673426F
      6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      050030BF58F28B25BFFF3FBFED84B0085400650078007400045465787406BFED
      84B00E500045004400C100470049004F0007504544C147494FBFED84B0065400
      6F00700003546F700500A0C3D4E5F60799FC3FBFED84B00A5700690064007400
      68000557696474680500701CC7711CC7B1FE3FBFED84B000000000BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0C5400650078007400310038000654657874313808BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00C6600730042006F006C00640006
      6673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500D8CFFCF5BB4EB60040BFED84B008540065007800740004546578
      7406BFED84B01643004F004D004200550053005400CD00560045004C000B434F
      4D42555354CD56454CBFED84B00654006F00700003546F70050070C3D4E5F607
      99FC3FBFED84B00A570069006400740068000557696474680500785E4D3C2B1A
      89FF3FBFED84B000000000BFED84B01254005200610076006500540065007800
      740009545261766554657874BFED84B00C540065007800740031003900065465
      7874313908BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C65667405006814413A0093920140BF
      ED84B0085400650078007400045465787406BFED84B010440045005300430041
      00520047004100084445534341524741BFED84B00654006F00700003546F7005
      00A0C3D4E5F60799FC3FBFED84B00A5700690064007400680005576964746805
      00303333333333D3FE3FBFED84B000000000BFED84B012540052006100760065
      00540065007800740009545261766554657874BFED84B00C5400650078007400
      320030000654657874323008BFED84B00846006F006E00740004466F6E7408BF
      ED84B00E430068006100720073006500740007436861727365740101BFED84B0
      0A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500
      044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B008
      530069007A0065000453697A650108BFED84B00A5300740079006C0065000553
      74796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C6566740500B0CFD6
      107E1EC20140BFED84B0085400650078007400045465787406BFED84B0125200
      4500460045004900C700D50045005300095245464549C7D54553BFED84B00654
      006F00700003546F700500A0C3D4E5F60799FC3FBFED84B00A57006900640074
      006800055769647468050020C7711CC771DCFE3FBFED84B000000000BFED84B0
      1254005200610076006500540065007800740009545261766554657874BFED84
      B00C5400650078007400320031000654657874323108BFED84B00846006F006E
      00740004466F6E7408BFED84B00E430068006100720073006500740007436861
      727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84
      B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C0005
      417269616CBFED84B008530069007A0065000453697A650108BFED84B00A5300
      740079006C006500055374796C6507BFED84B00C6600730042006F006C006400
      066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E007400
      4A007500730074006900660079000B466F6E744A75737469667900BFED84B00C
      70006A004C0065006600740006706A4C656674BFED84B0084C00650066007400
      044C6566740500D861EA72FB83D20140BFED84B0085400650078007400045465
      787406BFED84B0184F0055005400520041005300200044004500530050002E00
      0C4F555452415320444553502EBFED84B00654006F00700003546F7005005034
      12F0CDAB89FE3FBFED84B00A57006900640074006800055769647468050018B6
      600BB6608BFF3FBFED84B000000000BFED84B012540052006100760065005400
      65007800740009545261766554657874BFED84B00C5400650078007400320032
      000654657874323208BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500785D9464CED1
      F20140BFED84B0085400650078007400045465787406BFED84B01043004F004D
      00490053005300C3004F0008434F4D495353C34FBFED84B00654006F00700003
      546F700500A0C3D4E5F60799FC3FBFED84B00A57006900640074006800055769
      6474680500C0CCCCCCCCCCCCFE3FBFED84B000000000BFED84B0125400520061
      0076006500540065007800740009545261766554657874BFED84B00C54006500
      78007400320033000654657874323308BFED84B00846006F006E00740004466F
      6E7408BFED84B00E430068006100720073006500740007436861727365740101
      BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E006100
      6D006500044E616D6506BFED84B00A41007200690061006C0005417269616CBF
      ED84B008530069007A0065000453697A650108BFED84B00A5300740079006C00
      6500055374796C6507BFED84B00C6600730042006F006C006400066673426F6C
      64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00F8A52EB73FC8900240BFED84B0085400650078007400045465787406BFED84
      B00E530041004C00C100520049004F000753414CC152494FBFED84B00654006F
      00700003546F700500A0C3D4E5F60799FC3FBFED84B00A570069006400740068
      000557696474680500A0FE20436587A9FE3FBFED84B000000000BFED84B01254
      005200610076006500540065007800740009545261766554657874BFED84B00C
      5400650078007400320034000654657874323408BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650108BFED84B00A53007400
      79006C006500055374796C6507BFED84B00C6600730042006F006C0064000666
      73426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00
      7500730074006900660079000B466F6E744A75737469667900BFED84B00C7000
      6A004C0065006600740006706A4C656674BFED84B0084C00650066007400044C
      6566740500505555555555830240BFED84B00854006500780074000454657874
      06BFED84B0144D0041004E005500540045004E00C700C3004F000A4D414E5554
      454EC7C34FBFED84B00654006F00700003546F700500503412F0CDAB89FE3FBF
      ED84B00A5700690064007400680005576964746805002085EB51B81E85FF3FBF
      ED84B000000000BFED84B0125400520061007600650054006500780074000954
      5261766554657874BFED84B00C54006500780074003200350006546578743235
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C66
      00730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C6566740500B0E4174B7EB1F00040BFED84B008
      5400650078007400045465787406BFED84B01A460049004E0041004E00430049
      0041004D0045004E0054004F000D46494E414E4349414D454E544FBFED84B006
      54006F00700003546F700500503412F0CDAB89FE3FBFED84B00A570069006400
      740068000557696474680500A0AAAAAAAAAA9AFF3FBFED84B000000000BFED84
      B01254005200610076006500540065007800740009545261766554657874BFED
      84B00C5400650078007400320036000654657874323608BFED84B00846006F00
      6E00740004466F6E7408BFED84B00E4300680061007200730065007400074368
      61727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED
      84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C00
      05417269616CBFED84B008530069007A0065000453697A650108BFED84B00A53
      00740079006C006500055374796C6507BFED84B00C6600730042006F006C0064
      00066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500B0AAAAAAAAAA8A0040BFED84B00854006500780074000454
      65787406BFED84B01644004500500052004500430049004100C700C3004F000B
      4445505245434941C7C34FBFED84B00654006F00700003546F700500503412F0
      CDAB89FE3FBFED84B00A570069006400740068000557696474680500D0063A6D
      A0D386FF3FBFED84B000000000BFED84B0125400520061007600650054006500
      7800740009545261766554657874BFED84B00C54006500780074003200370006
      54657874323708BFED84B00846006F006E00740004466F6E7408BFED84B00E43
      0068006100720073006500740007436861727365740101BFED84B00A43006F00
      6C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D65
      06BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A
      0065000453697A650108BFED84B00A5300740079006C006500055374796C6507
      BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A
      4C656674BFED84B0084C00650066007400044C656674050050B81E85EB51B001
      40BFED84B0085400650078007400045465787406BFED84B00A50004E00450055
      00530005504E455553BFED84B00654006F00700003546F700500503412F0CDAB
      89FE3FBFED84B00A570069006400740068000557696474680500C0711CC7711C
      87FE3FBFED84B000000000BFED84B01254005200610076006500540065007800
      740009545261766554657874BFED84B00C540065007800740032003800065465
      7874323808BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C6566740500988967452301C70040BF
      ED84B0085400650078007400045465787406BFED84B01654004F00540041004C
      00200047004100530054004F000B544F54414C20474153544FBFED84B0065400
      6F00700003546F70050050EA72FB830CF5FE3FBFED84B00A5700690064007400
      68000557696474680500E0FE2043658789FF3FBFED84B000000000BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0C5400650078007400320039000654657874323908BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00C6600730042006F006C00640006
      6673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500C8E5F607192AAB0140BFED84B008540065007800740004546578
      7406BFED84B01054004F00540041004C0020004B004D0008544F54414C204B4D
      BFED84B00654006F00700003546F70050050EA72FB830CF5FE3FBFED84B00A57
      0069006400740068000557696474680500300AD7A3703DCAFE3FBFED84B00000
      0000BFED84B01254005200610076006500540065007800740009545261766554
      657874BFED84B00C5400650078007400330030000654657874333008BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C656674050050A8EC3075B9E90140BFED84B0085400650078
      007400045465787406BFED84B01043005500530054004F0020004B004D000843
      5553544F204B4DBFED84B00654006F00700003546F70050050EA72FB830CF5FE
      3FBFED84B00A570069006400740068000557696474680500C0CCCCCCCCCCCCFE
      3FBFED84B000000000BFED84B01A540052006100760065004400610074006100
      54006500780074000D54526176654461746154657874BFED84B0144400610074
      0061005400650078007400310039000A4461746154657874313908BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B01070006A00430065006E0074006500720008706A
      43656E746572BFED84B0084C00650066007400044C6566740500784E1BE8B481
      9EFF3FBFED84B0085400650078007400045465787406BFED84B01E5000610072
      0061006D002E00760061005000650064006100670069006F000F506172616D2E
      76615065646167696FBFED84B00654006F00700003546F70050080DA40A70D74
      9AFD3FBFED84B00A570069006400740068000557696474680500000000000000
      80FF3FBFED84B01244006100740061004600690065006C006400094461746146
      69656C6406BFED84B01E50006100720061006D002E0076006100500065006400
      6100670069006F000F506172616D2E76615065646167696FBFED84B000000000
      BFED84B01A54005200610076006500440061007400610054006500780074000D
      54526176654461746154657874BFED84B0144400610074006100540065007800
      7400320030000A4461746154657874323008BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650108BFED84B00A530074007900
      6C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F00
      6E0074004A007500730074006900660079000B466F6E744A75737469667900BF
      ED84B01070006A00430065006E0074006500720008706A43656E746572BFED84
      B0084C00650066007400044C656674050088D148C037AFAE0040BFED84B00854
      00650078007400045465787406BFED84B02650006100720061006D002E007600
      610043006F006D0062007500730074006900760065006C0013506172616D2E76
      61436F6D627573746976656CBFED84B00654006F00700003546F70050080DA40
      A70D749AFD3FBFED84B00A570069006400740068000557696474680500000000
      00000080FF3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B02650006100720061006D002E007600610043006F
      006D0062007500730074006900760065006C0013506172616D2E7661436F6D62
      7573746976656CBFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      1444006100740061005400650078007400320031000A44617461546578743231
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B01070006A00430065006E00740065
      00720008706A43656E746572BFED84B0084C00650066007400044C6566740500
      188C25BF58F28B0140BFED84B0085400650078007400045465787406BFED84B0
      2050006100720061006D002E0076006100440065007300630061007200670061
      0010506172616D2E76614465736361726761BFED84B00654006F00700003546F
      70050080DA40A70D749AFD3FBFED84B00A570069006400740068000557696474
      68050000000000000080FF3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B02050006100720061006D002E0076
      0061004400650073006300610072006700610010506172616D2E766144657363
      61726761BFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0144400
      6100740061005400650078007400320032000A4461746154657874323208BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B01070006A00430065006E00740065007200
      08706A43656E746572BFED84B0084C00650066007400044C6566740500A08888
      888888BC0140BFED84B0085400650078007400045465787406BFED84B0225000
      6100720061006D002E00760061005200650066006500690063006F0065007300
      11506172616D2E76615265666569636F6573BFED84B00654006F00700003546F
      70050080DA40A70D749AFD3FBFED84B00A570069006400740068000557696474
      68050000000000000080FF3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B02250006100720061006D002E0076
      0061005200650066006500690063006F006500730011506172616D2E76615265
      666569636F6573BFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      1444006100740061005400650078007400320033000A44617461546578743233
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B01070006A00430065006E00740065
      00720008706A43656E746572BFED84B0084C00650066007400044C6566740500
      586DA0D3063AED0140BFED84B0085400650078007400045465787406BFED84B0
      2050006100720061006D002E007600610043006F006D0069007300730061006F
      0010506172616D2E7661436F6D697373616FBFED84B00654006F00700003546F
      70050080DA40A70D749AFD3FBFED84B00A570069006400740068000557696474
      68050000000000000080FF3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B02050006100720061006D002E0076
      00610043006F006D0069007300730061006F0010506172616D2E7661436F6D69
      7373616FBFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0144400
      6100740061005400650078007400320034000A4461746154657874323408BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B01070006A00430065006E00740065007200
      08706A43656E746572BFED84B0084C00650066007400044C656674050090B9FD
      4186CA8C0240BFED84B0085400650078007400045465787406BFED84B01E5000
      6100720061006D002E0076006100530061006C006100720069006F000F506172
      616D2E766153616C6172696FBFED84B00654006F00700003546F70050080DA40
      A70D749AFD3FBFED84B00A570069006400740068000557696474680500000000
      00000080FF3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B01E50006100720061006D002E0076006100530061
      006C006100720069006F000F506172616D2E766153616C6172696FBFED84B000
      000000BFED84B01A540052006100760065004400610074006100540065007800
      74000D54526176654461746154657874BFED84B0144400610074006100540065
      0078007400320035000A4461746154657874323508BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A650108BFED84B00A530074
      0079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646
      006F006E0074004A007500730074006900660079000B466F6E744A7573746966
      7900BFED84B01070006A00430065006E0074006500720008706A43656E746572
      BFED84B0084C00650066007400044C65667405003063C92F96FC820040BFED84
      B0085400650078007400045465787406BFED84B02650006100720061006D002E
      007600610044006500700072006500630069006100630061006F001350617261
      6D2E7661446570726563696163616FBFED84B00654006F00700003546F700500
      F0F607192A3BACFE3FBFED84B00A570069006400740068000557696474680500
      00000000000080FF3FBFED84B01244006100740061004600690065006C006400
      09446174614669656C6406BFED84B02650006100720061006D002E0076006100
      44006500700072006500630069006100630061006F0013506172616D2E766144
      6570726563696163616FBFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01444006100740061005400650078007400320036000A44617461546578
      74323608BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A650108BFED84B00A5300740079006C006500055374796C6507BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B01070006A00430065006E00
      74006500720008706A43656E746572BFED84B0084C00650066007400044C6566
      740500F872FB830C95ED0040BFED84B0085400650078007400045465787406BF
      ED84B02A50006100720061006D002E0076006100460069006E0061006E006300
      690061006D0065006E0074006F0015506172616D2E766146696E616E6369616D
      656E746FBFED84B00654006F00700003546F700500F0F607192A3BACFE3FBFED
      84B00A57006900640074006800055769647468050000000000000080FF3FBFED
      84B01244006100740061004600690065006C00640009446174614669656C6406
      BFED84B02A50006100720061006D002E0076006100460069006E0061006E0063
      00690061006D0065006E0074006F0015506172616D2E766146696E616E636961
      6D656E746FBFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01444
      006100740061005400650078007400320037000A4461746154657874323708BF
      ED84B00846006F006E00740004466F6E7408BFED84B00E430068006100720073
      006500740007436861727365740101BFED84B00A43006F006C006F0072000543
      6F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100
      7200690061006C0005417269616CBFED84B008530069007A0065000453697A65
      0108BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B01070006A00430065006E007400650072
      0008706A43656E746572BFED84B0084C00650066007400044C6566740500F01E
      85EB51B8A60140BFED84B0085400650078007400045465787406BFED84B01A50
      006100720061006D002E007600610050006E006500750073000D506172616D2E
      7661506E657573BFED84B00654006F00700003546F700500E0F607192A3BACFE
      3FBFED84B00A57006900640074006800055769647468050000000000000080FF
      3FBFED84B01244006100740061004600690065006C0064000944617461466965
      6C6406BFED84B01A50006100720061006D002E007600610050006E0065007500
      73000D506172616D2E7661506E657573BFED84B000000000BFED84B01A540052
      00610076006500440061007400610054006500780074000D5452617665446174
      6154657874BFED84B01444006100740061005400650078007400320038000A44
      61746154657874323808BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A650108BFED84B00A5300740079006C00650005537479
      6C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A007500
      730074006900660079000B466F6E744A75737469667900BFED84B01070006A00
      430065006E0074006500720008706A43656E746572BFED84B0084C0065006600
      7400044C6566740500487EB1E4174BD20140BFED84B008540065007800740004
      5465787406BFED84B02450006100720061006D002E00760061004F0075007400
      720061007300440065007300700012506172616D2E76614F7574726173446573
      70BFED84B00654006F00700003546F700500F0F607192A3BACFE3FBFED84B00A
      570069006400740068000557696474680500C0CCCCCCCCCCCCFE3FBFED84B012
      44006100740061004600690065006C00640009446174614669656C6406BFED84
      B02450006100720061006D002E00760061004F00750074007200610073004400
      65007300700012506172616D2E76614F757472617344657370BFED84B0000000
      00BFED84B01A5400520061007600650044006100740061005400650078007400
      0D54526176654461746154657874BFED84B01444006100740061005400650078
      007400320039000A4461746154657874323908BFED84B00846006F006E007400
      04466F6E7408BFED84B00E430068006100720073006500740007436861727365
      740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E
      0061006D006500044E616D6506BFED84B00A41007200690061006C0005417269
      616CBFED84B008530069007A0065000453697A650108BFED84B00A5300740079
      006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B01070006A00430065006E0074006500720008706A43656E746572BFED
      84B0084C00650066007400044C6566740500F0CDAB896745830240BFED84B008
      5400650078007400045465787406BFED84B02450006100720061006D002E0076
      0061004D0061006E007500740065006E00630061006F0012506172616D2E7661
      4D616E7574656E63616FBFED84B00654006F00700003546F700500F0F607192A
      3BACFE3FBFED84B00A570069006400740068000557696474680500300AD7A370
      3DCAFE3FBFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B02450006100720061006D002E00760061004D0061006E
      007500740065006E00630061006F0012506172616D2E76614D616E7574656E63
      616FBFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01444006100
      740061005400650078007400330030000A4461746154657874333008BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B01070006A00430065006E007400650072000870
      6A43656E746572BFED84B0084C00650066007400044C65667405009090A1B2C3
      D4C50040BFED84B0085400650078007400045465787406BFED84B02450006100
      720061006D002E007600610054006F00740061006C0047006100730074006F00
      12506172616D2E7661546F74616C476173746FBFED84B00654006F0070000354
      6F70050020C7711CC7718CFF3FBFED84B00A5700690064007400680005576964
      74680500300AD7A3703DCAFE3FBFED84B0124400610074006100460069006500
      6C00640009446174614669656C6406BFED84B02450006100720061006D002E00
      7600610054006F00740061006C0047006100730074006F0012506172616D2E76
      61546F74616C476173746FBFED84B000000000BFED84B01A5400520061007600
      6500440061007400610054006500780074000D54526176654461746154657874
      BFED84B01444006100740061005400650078007400330031000A446174615465
      7874333108BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B01070006A00430065006E
      0074006500720008706A43656E746572BFED84B0084C00650066007400044C65
      66740500907777777777A70140BFED84B0085400650078007400045465787406
      BFED84B01E50006100720061006D002E007600610054006F00740061006C004B
      006D000F506172616D2E7661546F74616C4B6DBFED84B00654006F0070000354
      6F70050020C7711CC7718CFF3FBFED84B00A5700690064007400680005576964
      74680500508FC2F5285CCFFE3FBFED84B0124400610074006100460069006500
      6C00640009446174614669656C6406BFED84B01E50006100720061006D002E00
      7600610054006F00740061006C004B006D000F506172616D2E7661546F74616C
      4B6DBFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01444006100
      740061005400650078007400330032000A4461746154657874333208BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B01070006A00430065006E007400650072000870
      6A43656E746572BFED84B0084C00650066007400044C656674050098B1E4174B
      7EE50140BFED84B0085400650078007400045465787406BFED84B01E50006100
      720061006D002E007600610043007500730074006F004B006D000F506172616D
      2E7661437573746F4B6DBFED84B00654006F00700003546F70050018C7711CC7
      718CFF3FBFED84B00A570069006400740068000557696474680500205C8FC2F5
      28DCFE3FBFED84B01244006100740061004600690065006C0064000944617461
      4669656C6406BFED84B01E50006100720061006D002E00760061004300750073
      0074006F004B006D000F506172616D2E7661437573746F4B6DBFED84B0000000
      00BFED84B0125400520061007600650054006500780074000954526176655465
      7874BFED84B00C5400650078007400310035000654657874313508BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A65010ABFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500F090806F5E4DA00140BFED84
      B0085400650078007400045465787406BFED84B02643005500530054004F0020
      0050004F00520020004B004D00200052004F004400410044004F001343555354
      4F20504F52204B4D20524F4441444FBFED84B00654006F00700003546F700500
      D09B5713CF8AC6FC3FBFED84B00A570069006400740068000557696474680500
      605555555555E5FF3FBFED84B000000000BFED84B01454005200610076006500
      48004C0069006E0065000A5452617665484C696E65BFED84B00C48004C006900
      6E006500320006484C696E653208BFED84B00C48006500690067006800740006
      4865696768740500000000000000000000BFED84B0084C00650066007400044C
      6566740500E0E6D5C4B3A291FC3FBFED84B0124C0069006E0065005700690064
      0074006800094C696E655769647468050000000000000080FF3FBFED84B0084E
      00450053005700044E45535700BFED84B00A460061006C00730065000546616C
      7365BFED84B00654006F00700003546F700500488EE3388EE3B8FE3FBFED84B0
      0A570069006400740068000557696474680500388EE3388EE3B60240BFED84B0
      00000000BFED84B01A5400520061007600650044006100740061005400650078
      0074000D54526176654461746154657874BFED84B01444006100740061005400
      650078007400310036000A4461746154657874313608BFED84B00846006F006E
      00740004466F6E7408BFED84B00E430068006100720073006500740007436861
      727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84
      B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C0005
      417269616CBFED84B008530069007A0065000453697A650109BFED84B00A5300
      740079006C006500055374796C6507BFED84B00000BFED84B00000BFED84B016
      46006F006E0074004A007500730074006900660079000B466F6E744A75737469
      667900BFED84B01070006A00430065006E0074006500720008706A43656E7465
      72BFED84B0084C00650066007400044C6566740500309E158D047CA30140BFED
      84B0085400650078007400045465787406BFED84B01E50006100720061006D00
      2E007600610050006500720069006F0064006F000F506172616D2E7661506572
      696F646FBFED84B00654006F00700003546F7005002001DFBC9A78D6FD3FBFED
      84B00A57006900640074006800055769647468050020C7711CC771CCFF3FBFED
      84B01244006100740061004600690065006C00640009446174614669656C6406
      BFED84B01E50006100720061006D002E007600610050006500720069006F0064
      006F000F506172616D2E7661506572696F646FBFED84B000000000BFED84B01A
      54005200610076006500440061007400610054006500780074000D5452617665
      4461746154657874BFED84B01444006100740061005400650078007400310037
      000A4461746154657874313708BFED84B00846006F006E00740004466F6E7408
      BFED84B00E430068006100720073006500740007436861727365740101BFED84
      B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D0065
      00044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0
      08530069007A0065000453697A650108BFED84B00A5300740079006C00650005
      5374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C65667405006067452301DFBCFD3FBFED84B008540065007800740004546578
      7406BFED84B0205200650070006F00720074002E004400610074006500530068
      006F0072007400105265706F72742E4461746553686F7274BFED84B00654006F
      00700003546F700500E0388EE3388E83FE3FBFED84B00A570069006400740068
      000557696474680500605555555555F5FE3FBFED84B012440061007400610046
      00690065006C00640009446174614669656C6406BFED84B0205200650070006F
      00720074002E004400610074006500530068006F0072007400105265706F7274
      2E4461746553686F7274BFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01444006100740061005400650078007400310038000A44617461546578
      74313808BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A650108BFED84B00A5300740079006C006500055374796C6507BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B01070006A00430065006E00
      74006500720008706A43656E746572BFED84B0084C00650066007400044C6566
      740500D8925F2CF9C5A40240BFED84B0085400650078007400045465787406BF
      ED84B05E270050006700200027002B0020005200650070006F00720074002E00
      430075007200720065006E00740050006100670065002B0027002F0027002B00
      5200650070006F00720074002E0054006F00740061006C005000610067006500
      73002F27506720272B205265706F72742E43757272656E74506167652B272F27
      2B5265706F72742E546F74616C5061676573BFED84B00654006F00700003546F
      700500B047E17A14AE87FE3FBFED84B00A570069006400740068000557696474
      68050058B81E85EB5198FF3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B05E270050006700200027002B0020
      005200650070006F00720074002E00430075007200720065006E007400500061
      00670065002B0027002F0027002B005200650070006F00720074002E0054006F
      00740061006C00500061006700650073002F27506720272B205265706F72742E
      43757272656E74506167652B272F272B5265706F72742E546F74616C50616765
      73BFED84B0000000}
  end
  object DsClientCustoKm: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ClientCustoKm
    Left = 872
    Top = 328
  end
  object CadCargas: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from cargas'
      'where'
      '  IDCARGA = :OLD_IDCARGA')
    InsertSQL.Strings = (
      'insert into cargas'
      
        '  (CODMOT, CODVEI, DATCHE, DATSAI, DESTINO, FRERETPAG, IDCARGA, ' +
        'SITCAR, '
      '   VLRADT, VLRFREIDA, VLRFREVOL, VLRGAS, VLRRET)'
      'values'
      
        '  (:CODMOT, :CODVEI, :DATCHE, :DATSAI, :DESTINO, :FRERETPAG, :ID' +
        'CARGA, '
      '   :SITCAR, :VLRADT, :VLRFREIDA, :VLRFREVOL, :VLRGAS, :VLRRET)')
    RefreshSQL.Strings = (
      'Select '
      '  IDCARGA,'
      '  DESTINO,'
      '  CODMOT,'
      '  DATSAI,'
      '  DATCHE,'
      '  VLRADT,'
      '  VLRGAS,'
      '  VLRRET,'
      '  CODVEI,'
      '  SITCAR,'
      '  VLRFREIDA,'
      '  VLRFREVOL,'
      '  FRERETPAG'
      'from cargas '
      'where'
      '  IDCARGA = :IDCARGA')
    SelectSQL.Strings = (
      'SELECT CARGAS.*'
      '     FROM cargas'
      '      WHERE'
      '        CARGAS.idcarga = :IDCARGA'
      '')
    ModifySQL.Strings = (
      'update cargas'
      'set'
      '  CODMOT = :CODMOT,'
      '  CODVEI = :CODVEI,'
      '  DATCHE = :DATCHE,'
      '  DATSAI = :DATSAI,'
      '  DESTINO = :DESTINO,'
      '  FRERETPAG = :FRERETPAG,'
      '  IDCARGA = :IDCARGA,'
      '  SITCAR = :SITCAR,'
      '  VLRADT = :VLRADT,'
      '  VLRFREIDA = :VLRFREIDA,'
      '  VLRFREVOL = :VLRFREVOL,'
      '  VLRGAS = :VLRGAS,'
      '  VLRRET = :VLRRET'
      'where'
      '  IDCARGA = :OLD_IDCARGA')
    Left = 664
    Top = 552
    object CadCargasIDCARGA: TIntegerField
      Alignment = taCenter
      FieldName = 'IDCARGA'
      Origin = '"CARGAS"."IDCARGA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadCargasDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"CARGAS"."DESTINO"'
      Size = 100
    end
    object CadCargasCODMOT: TIntegerField
      Alignment = taCenter
      FieldName = 'CODMOT'
      Origin = '"CARGAS"."CODMOT"'
    end
    object CadCargasDATSAI: TDateField
      Alignment = taCenter
      FieldName = 'DATSAI'
      Origin = '"CARGAS"."DATSAI"'
    end
    object CadCargasDATCHE: TDateField
      Alignment = taCenter
      FieldName = 'DATCHE'
      Origin = '"CARGAS"."DATCHE"'
    end
    object CadCargasVLRADT: TFloatField
      Alignment = taCenter
      FieldName = 'VLRADT'
      Origin = '"CARGAS"."VLRADT"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadCargasVLRGAS: TFloatField
      Alignment = taCenter
      FieldName = 'VLRGAS'
      Origin = '"CARGAS"."VLRGAS"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadCargasVLRRET: TFloatField
      Alignment = taCenter
      FieldName = 'VLRRET'
      Origin = '"CARGAS"."VLRRET"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadCargasCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"CARGAS"."CODVEI"'
    end
    object CadCargasSITCAR: TIBStringField
      FieldName = 'SITCAR'
      Origin = '"CARGAS"."SITCAR"'
      Size = 10
    end
    object CadCargasVLRFREIDA: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREIDA'
      Origin = '"CARGAS"."VLRFREIDA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadCargasVLRFREVOL: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREVOL'
      Origin = '"CARGAS"."VLRFREVOL"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CadCargasFRERETPAG: TIBStringField
      FieldName = 'FRERETPAG'
      Origin = '"CARGAS"."FRERETPAG"'
      Size = 10
    end
  end
  object ConsCargas: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT CARGAS.*,'
      '       MOTORISTA.NOMMOT,'
      '       VEICULO.PLAVEI'
      '    FROM CARGAS'
      '    LEFT JOIN MOTORISTA ON MOTORISTA.CODMOT = CARGAS.CODMOT'
      '    LEFT JOIN VEICULO ON VEICULO.CODVEI = CARGAS.CODVEI')
    Left = 744
    Top = 552
    object ConsCargasIDCARGA: TIntegerField
      Alignment = taCenter
      FieldName = 'IDCARGA'
      Origin = '"CARGAS"."IDCARGA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsCargasDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"CARGAS"."DESTINO"'
      Size = 100
    end
    object ConsCargasCODMOT: TIntegerField
      Alignment = taCenter
      FieldName = 'CODMOT'
      Origin = '"CARGAS"."CODMOT"'
    end
    object ConsCargasDATSAI: TDateField
      Alignment = taCenter
      FieldName = 'DATSAI'
      Origin = '"CARGAS"."DATSAI"'
    end
    object ConsCargasDATCHE: TDateField
      Alignment = taCenter
      FieldName = 'DATCHE'
      Origin = '"CARGAS"."DATCHE"'
    end
    object ConsCargasVLRADT: TFloatField
      Alignment = taCenter
      FieldName = 'VLRADT'
      Origin = '"CARGAS"."VLRADT"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsCargasVLRGAS: TFloatField
      Alignment = taCenter
      FieldName = 'VLRGAS'
      Origin = '"CARGAS"."VLRGAS"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsCargasVLRRET: TFloatField
      Alignment = taCenter
      FieldName = 'VLRRET'
      Origin = '"CARGAS"."VLRRET"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsCargasCODVEI: TIntegerField
      Alignment = taCenter
      FieldName = 'CODVEI'
      Origin = '"CARGAS"."CODVEI"'
    end
    object ConsCargasSITCAR: TIBStringField
      Alignment = taCenter
      FieldName = 'SITCAR'
      Origin = '"CARGAS"."SITCAR"'
      Size = 10
    end
    object ConsCargasNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsCargasPLAVEI: TIBStringField
      Alignment = taCenter
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsCargasVLRFREIDA: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREIDA'
      Origin = '"CARGAS"."VLRFREIDA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsCargasVLRFREVOL: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREVOL'
      Origin = '"CARGAS"."VLRFREVOL"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsCargasImg: TStringField
      FieldKind = fkCalculated
      FieldName = 'Img'
      Size = 10
      Calculated = True
    end
    object ConsCargasFRERETPAG: TIBStringField
      Alignment = taCenter
      FieldName = 'FRERETPAG'
      Origin = '"CARGAS"."FRERETPAG"'
      Size = 10
    end
  end
  object ConsComissaoVlrFrete: TIBQuery
    Database = Banco
    Transaction = ibtTransacao
    SQL.Strings = (
      'SELECT MOTORISTA.CODMOT, MOTORISTA.NOMMOT, MOTORISTA.VLRCOMFIXA,'
      
        '            sum(CARGAS.vlrfreida) as vlrfreida, sum(CARGAS.vlrfr' +
        'evol) as vlrfrevol,'
      
        '            sum(CARGAS.vlrfreida + CARGAS.vlrfrevol) as vlrtotal' +
        ','
      '            count(CARGAS.IDCARGA) AS QTDCARGA'
      '            FROM CARGAS'
      '     INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = CARGAS.CODMOT'
      '         WHERE'
      '           CARGAS.DATSAI BETWEEN :DATINI AND :DATFIM'
      
        '            group BY MOTORISTA.CODMOT, MOTORISTA.NOMMOT, MOTORIS' +
        'TA.VLRCOMFIXA'
      '          ORDER BY 5')
    Left = 672
    Top = 608
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
      end>
    object ConsComissaoVlrFreteCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsComissaoVlrFreteNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsComissaoVlrFreteVLRFREIDA: TFloatField
      FieldName = 'VLRFREIDA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsComissaoVlrFreteVLRFREVOL: TFloatField
      FieldName = 'VLRFREVOL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsComissaoVlrFreteVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsComissaoVlrFreteQTDCARGA: TIntegerField
      FieldName = 'QTDCARGA'
      ProviderFlags = []
    end
    object ConsComissaoVlrFreteVLRCOMFIXA: TFloatField
      Alignment = taCenter
      FieldName = 'VLRCOMFIXA'
      Origin = '"MOTORISTA"."VLRCOMFIXA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ProviderConsComissaoVlrFrete: TDataSetProvider
    DataSet = ConsComissaoVlrFrete
    Left = 672
    Top = 656
  end
  object ClientConsComissaoVlrFrete: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsComissaoVlrFrete'
    OnCalcFields = ClientConsComissaoVlrFreteCalcFields
    Left = 664
    Top = 704
    object ClientConsComissaoVlrFreteCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"MOTORISTA"."CODMOT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientConsComissaoVlrFreteNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ClientConsComissaoVlrFreteVLRFREIDA: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREIDA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsComissaoVlrFreteVLRFREVOL: TFloatField
      Alignment = taCenter
      FieldName = 'VLRFREVOL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsComissaoVlrFreteVLRTOTAL: TFloatField
      Alignment = taCenter
      FieldName = 'VLRTOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsComissaoVlrFreteQTDCARGA: TIntegerField
      Alignment = taCenter
      FieldName = 'QTDCARGA'
      ProviderFlags = []
    end
    object ClientConsComissaoVlrFretevnVlrCom: TFloatField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'vnVlrCom'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsComissaoVlrFreteVLRCOMFIXA: TFloatField
      Alignment = taCenter
      FieldName = 'VLRCOMFIXA'
      Origin = '"MOTORISTA"."VLRCOMFIXA"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsComissaoVlrFretevaImg: TStringField
      FieldKind = fkCalculated
      FieldName = 'vaImg'
      Size = 10
      Calculated = True
    end
    object ClientConsComissaoVlrFreteTVlrFreIda: TAggregateField
      Alignment = taCenter
      FieldName = 'TVlrFreIda'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(VLRFREIDA)'
    end
    object ClientConsComissaoVlrFreteTVlrFreVol: TAggregateField
      Alignment = taCenter
      FieldName = 'TVlrFreVol'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(VLRFREVOL)'
    end
    object ClientConsComissaoVlrFreteTVlrFreTot: TAggregateField
      Alignment = taCenter
      FieldName = 'TVlrFreTot'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(VLRTOTAL)'
    end
    object ClientConsComissaoVlrFreteTVlrCom: TAggregateField
      Alignment = taCenter
      FieldName = 'TVlrCom'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'sum(vnVlrCom)'
    end
    object ClientConsComissaoVlrFreteTQtdCar: TAggregateField
      Alignment = taCenter
      FieldName = 'TQtdCar'
      Active = True
      Expression = 'sum(QTDCARGA)'
    end
  end
  object RvComissaoPorFrete: TRvProject
    Engine = RvSystem
    ProjectFile = 'C:\TransLider\Relatorios\ComissaoPorFrete.rav'
    Left = 792
    Top = 704
    RaveBlobNew = {
      5C45000032C72DF073B7E4405241561A803801000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      00000000000080FF3FBFED84B000000006BFED84B01244006100740061005600
      690065007700310009446174615669657731BFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      990A000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440061007400610056
      0069006500770031000944617461566965773108BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B03C520076004400730043006C00690065006E0074
      0043006F006E00730043006F006D0069007300730061006F0056006C00720046
      0072006500740065001E52764473436C69656E74436F6E73436F6D697373616F
      566C724672657465BFED84B000000900BFED84B0225400520061007600650049
      006E00740065006700650072004600690065006C006400115452617665496E74
      656765724669656C64BFED84B01E440061007400610056006900650077003100
      43004F0044004D004F0054000F446174615669657731434F444D4F5408BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B00C43004F0044004D004F00540006434F444D4F54BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C43004F0044
      004D004F00540006434F444D4F54BFED84B008530069007A0065000453697A65
      0104BFED84B000000000BFED84B0205400520061007600650053007400720069
      006E0067004600690065006C006400105452617665537472696E674669656C64
      BFED84B01E4400610074006100560069006500770031004E004F004D004D004F
      0054000F4461746156696577314E4F4D4D4F5408BFED84B0124600690065006C
      0064004E0061006D006500094669656C644E616D6506BFED84B00C4E004F004D
      004D004F005400064E4F4D4D4F54BFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B00C4E004F004D004D004F005400064E
      4F4D4D4F54BFED84B008530069007A0065000453697A650180CABFED84B00000
      0000BFED84B01E5400520061007600650046006C006F00610074004600690065
      006C0064000F5452617665466C6F61744669656C64BFED84B024440061007400
      61005600690065007700310056004C0052004600520045004900440041001244
      6174615669657731564C5246524549444108BFED84B0124600690065006C0064
      004E0061006D006500094669656C644E616D6506BFED84B01256004C00520046
      005200450049004400410009564C52465245494441BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B01256004C00520046
      005200450049004400410009564C52465245494441BFED84B008530069007A00
      65000453697A650108BFED84B000000000BFED84B01E54005200610076006500
      46006C006F00610074004600690065006C0064000F5452617665466C6F617446
      69656C64BFED84B02444006100740061005600690065007700310056004C0052
      0046005200450056004F004C0012446174615669657731564C52465245564F4C
      08BFED84B0124600690065006C0064004E0061006D006500094669656C644E61
      6D6506BFED84B01256004C00520046005200450056004F004C0009564C524652
      45564F4CBFED84B010460075006C006C004E0061006D0065000846756C6C4E61
      6D6506BFED84B01256004C00520046005200450056004F004C0009564C524652
      45564F4CBFED84B008530069007A0065000453697A650108BFED84B000000000
      BFED84B01E5400520061007600650046006C006F00610074004600690065006C
      0064000F5452617665466C6F61744669656C64BFED84B0224400610074006100
      5600690065007700310056004C00520054004F00540041004C00114461746156
      69657731564C52544F54414C08BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B01056004C00520054004F005400
      41004C0008564C52544F54414CBFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B01056004C00520054004F00540041004C
      0008564C52544F54414CBFED84B008530069007A0065000453697A650108BFED
      84B000000000BFED84B0225400520061007600650049006E0074006500670065
      0072004600690065006C006400115452617665496E74656765724669656C64BF
      ED84B02244006100740061005600690065007700310051005400440043004100
      52004700410011446174615669657731515444434152474108BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B010
      51005400440043004100520047004100085154444341524741BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B010510054
      00440043004100520047004100085154444341524741BFED84B008530069007A
      0065000453697A650104BFED84B000000000BFED84B01E540052006100760065
      0046006C006F00610074004600690065006C0064000F5452617665466C6F6174
      4669656C64BFED84B02244006100740061005600690065007700310076006E00
      56006C00720043006F006D0011446174615669657731766E566C72436F6D08BF
      ED84B0124600690065006C0064004E0061006D006500094669656C644E616D65
      06BFED84B01076006E0056006C00720043006F006D0008766E566C72436F6DBF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B01076006E0056006C00720043006F006D0008766E566C72436F6DBFED84B0
      08530069007A0065000453697A650108BFED84B000000000BFED84B01E540052
      0061007600650046006C006F00610074004600690065006C0064000F54526176
      65466C6F61744669656C64BFED84B02644006100740061005600690065007700
      310056004C00520043004F004D00460049005800410013446174615669657731
      564C52434F4D4649584108BFED84B0124600690065006C0064004E0061006D00
      6500094669656C644E616D6506BFED84B01456004C00520043004F004D004600
      4900580041000A564C52434F4D46495841BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B01456004C00520043004F004D
      0046004900580041000A564C52434F4D46495841BFED84B008530069007A0065
      000453697A650108BFED84B000000000BFED84B0205400520061007600650053
      007400720069006E0067004600690065006C006400105452617665537472696E
      674669656C64BFED84B01C440061007400610056006900650077003100760061
      0049006D0067000E4461746156696577317661496D6708BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B00A7600
      610049006D006700057661496D67BFED84B010460075006C006C004E0061006D
      0065000846756C6C4E616D6506BFED84B00A7600610049006D00670005766149
      6D67BFED84B008530069007A0065000453697A65010BBFED84B000000004BFED
      84B00E5200650070006F00720074003100075265706F727431008A380000BFED
      84B00A500061006700650031000550616765310100BFED84B00A500061006700
      6500310005506167653101BFED84B00A50006100670065003100055061676531
      00BFED84B016540052006100760065005200650070006F00720074000B545261
      76655265706F7274BFED84B00E5200650070006F00720074003100075265706F
      72743108BFED84B01A43006F006D00700069006C0065004E0065006500640065
      0064000D436F6D70696C654E656564656400BFED84B00A460061006C00730065
      000546616C7365BFED84B010460075006C006C004E0061006D0065000846756C
      6C4E616D6506BFED84B00E5200650070006F00720074003100075265706F7274
      31BFED84B0124600690072007300740050006100670065000946697273745061
      676500BFED84B01A5200650070006F007200740031002E005000610067006500
      31000D5265706F7274312E5061676531BFED84B01450006100720061006D0065
      0074006500720073000A506172616D657465727308BFED84B00000BFED84B00C
      5000490056006100720073000650495661727308BFED84B00000BFED84B00000
      0000E236000000BFED84B0125400520061007600650050006100670065000954
      5261766550616765BFED84B00A5000610067006500310005506167653108BFED
      84B01A43006F006D00700069006C0065004E00650065006400650064000D436F
      6D70696C654E656564656400BFED84B00A460061006C00730065000546616C73
      65BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506
      BFED84B00A50006100670065003100055061676531BFED84B006420069006E00
      0342696E0201BFED84B01247007200690064004C0069006E0065007300094772
      69644C696E65730105BFED84B016470072006900640053007000610063006900
      6E0067000B4772696453706163696E670500D0CCCCCCCCCCCCFB3FBFED84B016
      4F007200690065006E0074006100740069006F006E000B4F7269656E74617469
      6F6E00BFED84B01270006F00440065006600610075006C00740009706F446566
      61756C74BFED84B01250006100700065007200530069007A0065000950617065
      7253697A650109BFED84B01450006100720061006D0065007400650072007300
      0A506172616D657465727308BFED84B00E53007400720069006E006700730007
      537472696E67733B010607504552494F444F0609564C52465245494441060956
      4C52465245564F4C0608564C52544F54414C0606564C52434F4D060651544443
      415200BFED84B00000BFED84B00C500049005600610072007300065049566172
      7308BFED84B00000BFED84B000000500BFED84B0165400520061007600650052
      006500670069006F006E000B5452617665526567696F6EBFED84B00E52006500
      670069006F006E00310007526567696F6E3108BFED84B00C4800650069006700
      6800740006486569676874050058B81E85EB51AC0240BFED84B0084C00650066
      007400044C6566740500C0F5285C8FC2F5F93FBFED84B00654006F0070000354
      6F700500606666666666E6FE3FBFED84B00A5700690064007400680005576964
      74680500588FC2F5285C830240BFED84B01A43006F006C0075006D006E005300
      70006100630069006E0067000D436F6C756D6E53706163696E67050000000000
      0000000000BFED84B000000300BFED84B01A5400520061007600650044006100
      74006100420061006E0064000D54526176654461746142616E64BFED84B01244
      00610074006100420061006E0064003100094461746142616E643108BFED84B0
      0C41006E00630068006F00720006416E63686F720103BFED84B012420061006E
      0064005300740079006C0065000942616E645374796C6508BFED84B010500072
      0069006E0074004C006F006300085072696E744C6F6307BFED84B01070006C00
      440065007400610069006C0008706C44657461696CBFED84B00000BFED84B000
      00BFED84B00C480065006900670068007400064865696768740500508FC2F528
      5C8FFD3FBFED84B01A4D0069006E004800650069006700680074004C00650066
      0074000D4D696E4865696768744C6566740500000000000000000000BFED84B0
      1A50006F0073006900740069006F006E00560061006C00750065000D506F7369
      74696F6E56616C75650500000000000000000000BFED84B01A43006F006C0075
      006D006E00530070006100630069006E0067000D436F6C756D6E53706163696E
      670500000000000000000000BFED84B010440061007400610056006900650077
      0008446174615669657700BFED84B01244006100740061005600690065007700
      310009446174615669657731BFED84B000000600BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B0124400610074006100540065007800740031000944617461546578
      743108BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A650108BFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500508FC2F5
      285C8FFC3FBFED84B0085400650078007400045465787406BFED84B00C4E004F
      004D004D004F005400064E4F4D4D4F54BFED84B00654006F00700003546F7005
      00D8F5285C8FC2F5FA3FBFED84B00A5700690064007400680005576964746805
      00F047E17A14AEA70040BFED84B01244006100740061004600690065006C0064
      0009446174614669656C6406BFED84B00C4E004F004D004D004F005400064E4F
      4D4D4F54BFED84B0104400610074006100560069006500770008446174615669
      657700BFED84B012440061007400610056006900650077003100094461746156
      69657731BFED84B000000000BFED84B01A540052006100760065004400610074
      00610054006500780074000D54526176654461746154657874BFED84B0124400
      610074006100540065007800740032000944617461546578743208BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500E0C2F5285C8FF20040BFED84
      B0085400650078007400045465787406BFED84B01256004C0052004600520045
      0049004400410009564C52465245494441BFED84B00654006F00700003546F70
      0500D8F5285C8FC2F5FA3FBFED84B00A57006900640074006800055769647468
      0500D0CCCCCCCCCCCCFE3FBFED84B01244006100740061004600690065006C00
      640009446174614669656C6406BFED84B01256004C0052004600520045004900
      4400410009564C52465245494441BFED84B01044006100740061005600690065
      00770008446174615669657700BFED84B0124400610074006100560069006500
      7700310009446174615669657731BFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003300094461746154
      6578743308BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C6566740500405C
      8FC2F5289C0140BFED84B0085400650078007400045465787406BFED84B01256
      004C00520046005200450056004F004C0009564C52465245564F4CBFED84B006
      54006F00700003546F700500D8F5285C8FC2F5FA3FBFED84B00A570069006400
      740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B012440061007400
      61004600690065006C00640009446174614669656C6406BFED84B01256004C00
      520046005200450056004F004C0009564C52465245564F4CBFED84B010440061
      0074006100560069006500770008446174615669657700BFED84B01244006100
      740061005600690065007700310009446174615669657731BFED84B000000000
      BFED84B01A54005200610076006500440061007400610054006500780074000D
      54526176654461746154657874BFED84B0124400610074006100540065007800
      740034000944617461546578743408BFED84B00846006F006E00740004466F6E
      7408BFED84B00E430068006100720073006500740007436861727365740101BF
      ED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D
      006500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED
      84B008530069007A0065000453697A650108BFED84B00A5300740079006C0065
      00055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500100000000000C00140BFED84B00854006500780074000454
      65787406BFED84B01056004C00520054004F00540041004C0008564C52544F54
      414CBFED84B00654006F00700003546F700500D8F5285C8FC2F5FA3FBFED84B0
      0A570069006400740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B0
      1244006100740061004600690065006C00640009446174614669656C6406BFED
      84B01056004C00520054004F00540041004C0008564C52544F54414CBFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B012
      44006100740061005600690065007700310009446174615669657731BFED84B0
      00000000BFED84B01A5400520061007600650044006100740061005400650078
      0074000D54526176654461746154657874BFED84B01244006100740061005400
      65007800740035000944617461546578743508BFED84B00846006F006E007400
      04466F6E7408BFED84B00E430068006100720073006500740007436861727365
      740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E
      0061006D006500044E616D6506BFED84B00A41007200690061006C0005417269
      616CBFED84B008530069007A0065000453697A650108BFED84B00A5300740079
      006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C65667405006047E17A14AEC70040BFED84B008540065007800
      7400045465787406BFED84B01051005400440043004100520047004100085154
      444341524741BFED84B00654006F00700003546F700500D8F5285C8FC2F5FA3F
      BFED84B00A570069006400740068000557696474680500D0CCCCCCCCCCCCFD3F
      BFED84B01244006100740061004600690065006C00640009446174614669656C
      6406BFED84B01051005400440043004100520047004100085154444341524741
      BFED84B0104400610074006100560069006500770008446174615669657700BF
      ED84B01244006100740061005600690065007700310009446174615669657731
      BFED84B000000000BFED84B01A54005200610076006500440061007400610054
      006500780074000D54526176654461746154657874BFED84B012440061007400
      6100540065007800740036000944617461546578743608BFED84B00846006F00
      6E00740004466F6E7408BFED84B00E4300680061007200730065007400074368
      61727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED
      84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C00
      05417269616CBFED84B008530069007A0065000453697A650108BFED84B00A53
      00740079006C006500055374796C6507BFED84B00C6600730042006F006C0064
      00066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500483333333333E30140BFED84B00854006500780074000454
      65787406BFED84B01076006E0056006C00720043006F006D0008766E566C7243
      6F6DBFED84B00654006F00700003546F700500D8F5285C8FC2F5FA3FBFED84B0
      0A570069006400740068000557696474680500D0CCCCCCCCCCCCFE3FBFED84B0
      1244006100740061004600690065006C00640009446174614669656C6406BFED
      84B01076006E0056006C00720043006F006D0008766E566C72436F6DBFED84B0
      104400610074006100560069006500770008446174615669657700BFED84B012
      44006100740061005600690065007700310009446174615669657731BFED84B0
      00000000BFED84B01254005200610076006500420061006E0064000954526176
      6542616E64BFED84B00A420061006E00640031000542616E643108BFED84B00C
      41006E00630068006F00720006416E63686F720103BFED84B012420061006E00
      64005300740079006C0065000942616E645374796C6508BFED84B01050007200
      69006E0074004C006F006300085072696E744C6F6307BFED84B01870006C0042
      006F00640079004800650061006400650072000C706C426F6479486561646572
      BFED84B01A70006C00470072006F00750070004800650061006400650072000D
      706C47726F7570486561646572BFED84B00000BFED84B0105000720069006E00
      74004F0063006300085072696E744F636307BFED84B00E70006F004600690072
      007300740007706F4669727374BFED84B01270006F004E006500770050006100
      6700650009706F4E657750616765BFED84B00000BFED84B00000BFED84B01C43
      006F006E00740072006F006C006C0065007200420061006E0064000E436F6E74
      726F6C6C657242616E6400BFED84B0124400610074006100420061006E006400
      3100094461746142616E6431BFED84B00C480065006900670068007400064865
      69676874050050E17A14AE47E1FC3FBFED84B01A4D0069006E00480065006900
      6700680074004C006500660074000D4D696E4865696768744C65667405000000
      00000000000000BFED84B01A50006F0073006900740069006F006E0056006100
      6C00750065000D506F736974696F6E56616C75650500000000000000000000BF
      ED84B000000700BFED84B0125400520061007600650054006500780074000954
      5261766554657874BFED84B00A5400650078007400320005546578743208BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00C66007300
      42006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B016
      46006F006E0074004A007500730074006900660079000B466F6E744A75737469
      667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B008
      4C00650066007400044C656674050080999999999999FC3FBFED84B008540065
      0078007400045465787406BFED84B0124D006F0074006F007200690073007400
      6100094D6F746F7269737461BFED84B00654006F00700003546F700500C0F528
      5C8FC2F5F93FBFED84B00A570069006400740068000557696474680500E0285C
      8FC2F5A8FE3FBFED84B000000000BFED84B0145400520061007600650048004C
      0069006E0065000A5452617665484C696E65BFED84B00C48004C0069006E0065
      00320006484C696E653208BFED84B00C48006500690067006800740006486569
      6768740500000000000000000000BFED84B0084C00650066007400044C656674
      0500000000000000000000BFED84B0124C0069006E0065005700690064007400
      6800094C696E655769647468050000000000000080FF3FBFED84B0084E004500
      53005700044E45535700BFED84B00A460061006C00730065000546616C7365BF
      ED84B00654006F00700003546F700500D0CCCCCCCCCCCCFC3FBFED84B00A5700
      69006400740068000557696474680500303333333333830240BFED84B0000000
      00BFED84B0125400520061007600650054006500780074000954526176655465
      7874BFED84B00A5400650078007400340005546578743408BFED84B00846006F
      006E00740004466F6E7408BFED84B00E43006800610072007300650074000743
      6861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BF
      ED84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C
      0005417269616CBFED84B008530069007A0065000453697A650108BFED84B00A
      5300740079006C006500055374796C6507BFED84B00C6600730042006F006C00
      6400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E00
      74004A007500730074006900660079000B466F6E744A75737469667900BFED84
      B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065006600
      7400044C656674050048295C8FC2F5B80040BFED84B008540065007800740004
      5465787406BFED84B0145100740064002E002000430061007200670061000A51
      74642E204361726761BFED84B00654006F00700003546F700500C0F5285C8FC2
      F5F93FBFED84B00A570069006400740068000557696474680500105C8FC2F528
      9CFE3FBFED84B000000000BFED84B01254005200610076006500540065007800
      740009545261766554657874BFED84B00A540065007800740035000554657874
      3508BFED84B00846006F006E00740004466F6E7408BFED84B00E430068006100
      720073006500740007436861727365740101BFED84B00A43006F006C006F0072
      0005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B0
      0A41007200690061006C0005417269616CBFED84B008530069007A0065000453
      697A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C
      6600730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BF
      ED84B01646006F006E0074004A007500730074006900660079000B466F6E744A
      75737469667900BFED84B00C70006A004C0065006600740006706A4C656674BF
      ED84B0084C00650066007400044C65667405003090C2F5285CEF0040BFED84B0
      085400650078007400045465787406BFED84B012460072006500740065002000
      49006400610009467265746520496461BFED84B00654006F00700003546F7005
      00C0F5285C8FC2F5F93FBFED84B00A5700690064007400680005576964746805
      0080999999999999FE3FBFED84B000000000BFED84B012540052006100760065
      00540065007800740009545261766554657874BFED84B00A5400650078007400
      360005546578743608BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500507B14AE47E1
      9A0140BFED84B0085400650078007400045465787406BFED84B01A4600720065
      007400650020005200650074006F0072006E006F000D4672657465205265746F
      726E6FBFED84B00654006F00700003546F700500C0F5285C8FC2F5F93FBFED84
      B00A570069006400740068000557696474680500300AD7A3703DCAFE3FBFED84
      B000000000BFED84B01254005200610076006500540065007800740009545261
      766554657874BFED84B00A5400650078007400370005546578743708BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C656674050098AE47E17A14BE0140BFED84B0085400650078
      007400045465787406BFED84B01846007200650074006500200054006F007400
      61006C0020000C467265746520546F74616C20BFED84B00654006F0070000354
      6F700500C0F5285C8FC2F5F93FBFED84B00A5700690064007400680005576964
      7468050080A3703D0AD7A3FE3FBFED84B000000000BFED84B012540052006100
      76006500540065007800740009545261766554657874BFED84B00A5400650078
      007400380005546578743808BFED84B00846006F006E00740004466F6E7408BF
      ED84B00E430068006100720073006500740007436861727365740101BFED84B0
      0A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500
      044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B008
      530069007A0065000453697A650108BFED84B00A5300740079006C0065000553
      74796C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C656674050090703D
      0AD7A3E00140BFED84B0085400650078007400045465787406BFED84B01C5400
      6F00740061006C00200043006F006D00690073007300E3006F000E546F74616C
      20436F6D697373E36FBFED84B00654006F00700003546F700500C0F5285C8FC2
      F5F93FBFED84B00A57006900640074006800055769647468050040E17A14AE47
      E1FE3FBFED84B000000000BFED84B01254005200610076006500420061006E00
      640009545261766542616E64BFED84B00A420061006E00640032000542616E64
      3208BFED84B00C41006E00630068006F00720006416E63686F720103BFED84B0
      12420061006E0064005300740079006C0065000942616E645374796C6508BFED
      84B0105000720069006E0074004C006F006300085072696E744C6F6307BFED84
      B01870006C0042006F006400790046006F006F007400650072000C706C426F64
      79466F6F746572BFED84B00000BFED84B00000BFED84B01C43006F006E007400
      72006F006C006C0065007200420061006E0064000E436F6E74726F6C6C657242
      616E6400BFED84B0124400610074006100420061006E00640031000944617461
      42616E6431BFED84B00C48006500690067006800740006486569676874050080
      47E17A14AEC7FD3FBFED84B01A4D0069006E004800650069006700680074004C
      006500660074000D4D696E4865696768744C6566740500000000000000000000
      BFED84B01A50006F0073006900740069006F006E00560061006C00750065000D
      506F736974696F6E56616C75650500000000000000000000BFED84B000000600
      BFED84B0145400520061007600650048004C0069006E0065000A545261766548
      4C696E65BFED84B00C48004C0069006E006500330006484C696E653308BFED84
      B00C480065006900670068007400064865696768740500000000000000000000
      BFED84B0084C00650066007400044C656674050090F6285C8FC2F5F9BFBFED84
      B0124C0069006E00650057006900640074006800094C696E6557696474680500
      00000000000080FF3FBFED84B0084E00450053005700044E45535700BFED84B0
      0A460061006C00730065000546616C7365BFED84B00654006F00700003546F70
      0500C0F5285C8FC2F5F93FBFED84B00A57006900640074006800055769647468
      050058B81E85EB51840240BFED84B000000000BFED84B01A5400520061007600
      6500440061007400610054006500780074000D54526176654461746154657874
      BFED84B012440061007400610054006500780074003900094461746154657874
      3908BFED84B00846006F006E00740004466F6E7408BFED84B00E430068006100
      720073006500740007436861727365740101BFED84B00A43006F006C006F0072
      0005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B0
      0A41007200690061006C0005417269616CBFED84B008530069007A0065000453
      697A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00C
      6600730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BF
      ED84B01646006F006E0074004A007500730074006900660079000B466F6E744A
      75737469667900BFED84B00C70006A004C0065006600740006706A4C656674BF
      ED84B0084C00650066007400044C6566740500483333333333E30140BFED84B0
      085400650078007400045465787406BFED84B01850006100720061006D002E00
      56004C00520043004F004D000C506172616D2E564C52434F4DBFED84B0065400
      6F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84B00A5700690064007400
      68000557696474680500F0285C8FC2F5E8FE3FBFED84B0124400610074006100
      4600690065006C00640009446174614669656C6406BFED84B018500061007200
      61006D002E0056004C00520043004F004D000C506172616D2E564C52434F4DBF
      ED84B000000000BFED84B01A5400520061007600650044006100740061005400
      6500780074000D54526176654461746154657874BFED84B01444006100740061
      005400650078007400310030000A4461746154657874313008BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00C6600730042006F006C
      006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C6566740500100000000000C00140BFED84B0085400650078007400
      045465787406BFED84B01C50006100720061006D002E0056004C00520054004F
      00540041004C000E506172616D2E564C52544F54414CBFED84B00654006F0070
      0003546F700500D0CCCCCCCCCCCCFB3FBFED84B00A5700690064007400680005
      5769647468050080C2F5285C8FC2FE3FBFED84B0124400610074006100460069
      0065006C00640009446174614669656C6406BFED84B01C50006100720061006D
      002E0056004C00520054004F00540041004C000E506172616D2E564C52544F54
      414CBFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01444006100
      740061005400650078007400310031000A4461746154657874313108BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C6566740500405C8FC2F5289C0140BFED84B0085400650078
      007400045465787406BFED84B01E50006100720061006D002E0056004C005200
      46005200450056004F004C000F506172616D2E564C52465245564F4CBFED84B0
      0654006F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84B00A5700690064
      00740068000557696474680500A047E17A14AEC7FE3FBFED84B0124400610074
      0061004600690065006C00640009446174614669656C6406BFED84B01E500061
      00720061006D002E0056004C00520046005200450056004F004C000F50617261
      6D2E564C52465245564F4CBFED84B000000000BFED84B01A5400520061007600
      6500440061007400610054006500780074000D54526176654461746154657874
      BFED84B01444006100740061005400650078007400310032000A446174615465
      7874313208BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650108BFED84B00A5300740079006C006500055374796C6507BFED
      84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED84B0
      0000BFED84B01646006F006E0074004A007500730074006900660079000B466F
      6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C65
      6674BFED84B0084C00650066007400044C6566740500E0C2F5285C8FF20040BF
      ED84B0085400650078007400045465787406BFED84B01E50006100720061006D
      002E0056004C0052004600520045004900440041000F506172616D2E564C5246
      5245494441BFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFB3FBF
      ED84B00A570069006400740068000557696474680500508FC2F5285CCFFE3FBF
      ED84B01244006100740061004600690065006C00640009446174614669656C64
      06BFED84B01E50006100720061006D002E0056004C0052004600520045004900
      440041000F506172616D2E564C52465245494441BFED84B000000000BFED84B0
      1A54005200610076006500440061007400610054006500780074000D54526176
      654461746154657874BFED84B014440061007400610054006500780074003100
      33000A4461746154657874313308BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A650108BFED84B00A5300740079006C006500
      055374796C6507BFED84B00C6600730042006F006C006400066673426F6C64BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050060
      47E17A14AEC70040BFED84B0085400650078007400045465787406BFED84B018
      50006100720061006D002E005100540044004300410052000C506172616D2E51
      5444434152BFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFB3FBF
      ED84B00A570069006400740068000557696474680500A051B81E85EBD1FD3FBF
      ED84B01244006100740061004600690065006C00640009446174614669656C64
      06BFED84B01850006100720061006D002E005100540044004300410052000C50
      6172616D2E515444434152BFED84B000000000BFED84B0125400520061007600
      6500540065007800740009545261766554657874BFED84B00A54006500780074
      00310005546578743108BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A65010BBFED84B00A5300740079006C00650005537479
      6C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B000
      00BFED84B00000BFED84B01646006F006E0074004A0075007300740069006600
      79000B466F6E744A75737469667900BFED84B01070006A00430065006E007400
      6500720008706A43656E746572BFED84B0084C00650066007400044C65667405
      00403333333333B30040BFED84B0085400650078007400045465787406BFED84
      B03643004F004D00490053005300C3004F00200050004F005200200056004100
      4C004F0052002000440045002000460052004500540045001B434F4D495353C3
      4F20504F522056414C4F52204445204652455445BFED84B00654006F00700003
      546F70050080F5285C8FC2F5FC3FBFED84B00A57006900640074006800055769
      6474680500909999999999B90040BFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003700094461746154
      6578743708BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650109BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B01070006A00430065006E
      0074006500720008706A43656E746572BFED84B0084C00650066007400044C65
      66740500C8703D0AD7A3C00040BFED84B0085400650078007400045465787406
      BFED84B01A50006100720061006D002E0050004500520049004F0044004F000D
      506172616D2E504552494F444FBFED84B00654006F00700003546F70050090C2
      F5285C8F82FE3FBFED84B00A5700690064007400680005576964746805005866
      66666666960040BFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B01A50006100720061006D002E00500045005200
      49004F0044004F000D506172616D2E504552494F444FBFED84B000000000BFED
      84B0145400520061007600650048004C0069006E0065000A5452617665484C69
      6E65BFED84B00C48004C0069006E006500310006484C696E653108BFED84B00C
      480065006900670068007400064865696768740500000000000000000000BFED
      84B0084C00650066007400044C6566740500E0F5285C8FC2F5F93FBFED84B012
      4C0069006E00650057006900640074006800094C696E65576964746805000000
      0000000080FF3FBFED84B0084E00450053005700044E45535700BFED84B00A46
      0061006C00730065000546616C7365BFED84B00654006F00700003546F700500
      50E17A14AE47E1FE3FBFED84B00A570069006400740068000557696474680500
      8847E17A14AE830240BFED84B000000000BFED84B01A54005200610076006500
      440061007400610054006500780074000D54526176654461746154657874BFED
      84B0124400610074006100540065007800740038000944617461546578743808
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650107BFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C65667405001085EB51B81EE5
      0140BFED84B0085400650078007400045465787406BFED84B04C520065007000
      6F00720074002E004400610074006500530068006F00720074002B0027002000
      200027002B005200650070006F00720074002E00540069006D00650053006800
      6F0072007400265265706F72742E4461746553686F72742B272020272B526570
      6F72742E54696D6553686F7274BFED84B00654006F00700003546F70050028AE
      47E17A14AEFE3FBFED84B00A570069006400740068000557696474680500205C
      8FC2F528DCFE3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B04C5200650070006F00720074002E0044006100
      74006500530068006F00720074002B0027002000200027002B00520065007000
      6F00720074002E00540069006D006500530068006F0072007400265265706F72
      742E4461746553686F72742B272020272B5265706F72742E54696D6553686F72
      74BFED84B0000000}
  end
  object RvDsClientConsComissaoVlrFrete: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ClientConsComissaoVlrFrete
    Left = 792
    Top = 752
  end
  object ClientDiasTrabalhados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = ClientDiasTrabalhadosCalcFields
    Left = 56
    Top = 672
    Data = {
      E00000009619E0BD01000000180000000F000000000003000000E00006436F64
      4D6F740400010000000000064E6F6D4D6F740100490000000100055749445448
      020002006400034A616E0800040000000000034665760800040000000000034D
      61720800040000000000034162720800040000000000034D6169080004000000
      0000034A756E0800040000000000034A756C08000400000000000341676F0800
      040000000000035365740800040000000000034F75740800040000000000034E
      6F7608000400000000000344657A080004000000000003416E6F080004000000
      00000000}
    object ClientDiasTrabalhadosCodMot: TIntegerField
      FieldName = 'CodMot'
    end
    object ClientDiasTrabalhadosNomMot: TStringField
      FieldName = 'NomMot'
      Size = 100
    end
    object ClientDiasTrabalhadosvnMediaDias: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnMediaDias'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosJan: TFloatField
      FieldName = 'Jan'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosFev: TFloatField
      FieldName = 'Fev'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosMar: TFloatField
      FieldName = 'Mar'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosAbr: TFloatField
      FieldName = 'Abr'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosMai: TFloatField
      FieldName = 'Mai'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosJun: TFloatField
      FieldName = 'Jun'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosJul: TFloatField
      FieldName = 'Jul'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosAgo: TFloatField
      FieldName = 'Ago'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosSet: TFloatField
      FieldName = 'Set'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosOut: TFloatField
      FieldName = 'Out'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosNov: TFloatField
      FieldName = 'Nov'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosDez: TFloatField
      FieldName = 'Dez'
      DisplayFormat = ',0.00'
    end
    object ClientDiasTrabalhadosAno: TFloatField
      FieldName = 'Ano'
    end
    object ClientDiasTrabalhadosvnTotalDias: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalDias'
      DisplayFormat = ',0.00'
    end
  end
  object CadHoras_Trab: TIBDataSet
    Database = Banco
    Transaction = ibtTransacao
    DeleteSQL.Strings = (
      'delete from HORAS_TRAB'
      'where'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQENTSAI = :OLD_SEQENTSAI and'
      '  SEQMOV = :OLD_SEQMOV')
    InsertSQL.Strings = (
      'insert into HORAS_TRAB'
      '  (CODVEI, DATA, QTDMIN, SEQENTSAI, SEQMOV)'
      'values'
      '  (:CODVEI, :DATA, :QTDMIN, :SEQENTSAI, :SEQMOV)')
    RefreshSQL.Strings = (
      'Select '
      '  SEQENTSAI,'
      '  CODVEI,'
      '  SEQMOV,'
      '  DATA,'
      '  QTDMIN'
      'from HORAS_TRAB '
      'where'
      '  CODVEI = :CODVEI and'
      '  SEQENTSAI = :SEQENTSAI and'
      '  SEQMOV = :SEQMOV')
    SelectSQL.Strings = (
      'SELECT HORAS_TRAB.*'
      '  FROM HORAS_TRAB'
      '    WHERE'
      '     SEQENTSAI = :SEQENTSAI AND'
      '     CODVEI = :CODVEI AND'
      '     SEQMOV = :SEQMOV')
    ModifySQL.Strings = (
      'update HORAS_TRAB'
      'set'
      '  CODVEI = :CODVEI,'
      '  DATA = :DATA,'
      '  QTDMIN = :QTDMIN,'
      '  SEQENTSAI = :SEQENTSAI,'
      '  SEQMOV = :SEQMOV'
      'where'
      '  CODVEI = :OLD_CODVEI and'
      '  SEQENTSAI = :OLD_SEQENTSAI and'
      '  SEQMOV = :OLD_SEQMOV')
    Left = 168
    Top = 672
    object CadHoras_TrabSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"HORAS_TRAB"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadHoras_TrabCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"HORAS_TRAB"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadHoras_TrabSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
      Origin = '"HORAS_TRAB"."SEQMOV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadHoras_TrabDATA: TDateField
      FieldName = 'DATA'
      Origin = '"HORAS_TRAB"."DATA"'
    end
    object CadHoras_TrabQTDMIN: TFloatField
      FieldName = 'QTDMIN'
      Origin = '"HORAS_TRAB"."QTDMIN"'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = RelacaoEntradaSaida
    Left = 592
    Top = 200
  end
  object ds1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderRelacaoEntradaSaida'
    OnCalcFields = ClientRelacaoEntradaSaidaCalcFields
    Left = 592
    Top = 272
    object IntegerField1: TIntegerField
      FieldName = 'SEQENTSAI'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'USUENT'
    end
    object IntegerField4: TIntegerField
      FieldName = 'USUSAIDA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODMOT'
    end
    object DateField1: TDateField
      FieldName = 'DATSAIDA'
    end
    object TimeField1: TTimeField
      FieldName = 'HORSAIDA'
    end
    object IntegerField6: TIntegerField
      FieldName = 'KMSAIDA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object DateField2: TDateField
      FieldName = 'DATENT'
    end
    object TimeField2: TTimeField
      FieldName = 'HORENT'
    end
    object IntegerField7: TIntegerField
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object WideStringField1: TWideStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object IntegerField8: TIntegerField
      FieldName = 'CARGA'
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object WideStringField2: TWideStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'QTD_COMB'
    end
    object DateField3: TDateField
      FieldName = 'DAT_ABASTEC'
    end
    object FloatField2: TFloatField
      FieldName = 'MEDIA_CONS'
    end
    object WideStringField3: TWideStringField
      FieldName = 'ITESEL'
      Size = 3
    end
    object WideStringField4: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object WideStringField5: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object IntegerField10: TIntegerField
      FieldName = 'KMATU'
    end
    object WideStringField6: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object WideStringField7: TWideStringField
      FieldName = 'APEMOT'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object WideStringField9: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Size = 100
    end
    object WideStringField10: TWideStringField
      FieldName = 'USUARIO_ENT'
      Size = 100
    end
    object WideStringField11: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Size = 15
    end
    object IntegerField11: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object AggregateField1: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalRodadoGeral'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnTotalRodado)'
    end
  end
end
