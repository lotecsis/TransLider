object FCadFornecedor: TFCadFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fornecedores'
  ClientHeight = 381
  ClientWidth = 528
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaControle: TPageControl
    Left = 0
    Top = 0
    Width = 528
    Height = 381
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = '     Cadastro     '
      object lbl1: TLabel
        Left = 47
        Top = 9
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
        Left = 30
        Top = 36
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
      object lbl3: TLabel
        Left = 32
        Top = 63
        Width = 53
        Height = 13
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 36
        Top = 90
        Width = 49
        Height = 13
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 214
        Top = 90
        Width = 49
        Height = 13
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 55
        Top = 117
        Width = 30
        Height = 13
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 33
        Top = 144
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 51
        Top = 171
        Width = 34
        Height = 13
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 366
        Top = 171
        Width = 20
        Height = 13
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 47
        Top = 198
        Width = 38
        Height = 13
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 36
        Top = 225
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
      object lbl12: TLabel
        Left = 18
        Top = 250
        Width = 67
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 290
        Top = 226
        Width = 70
        Height = 13
        Caption = 'Usu'#225'rio Cad.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnNovo: TBitBtn
        Left = 34
        Top = 326
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
        TabOrder = 12
        TabStop = False
        OnClick = btnNovoClick
      end
      object btnAlterar: TBitBtn
        Left = 126
        Top = 326
        Width = 85
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
        TabOrder = 13
        TabStop = False
        OnClick = btnAlterarClick
      end
      object btnExcluir: TBitBtn
        Left = 218
        Top = 326
        Width = 85
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
        TabOrder = 14
        TabStop = False
        OnClick = btnExcluirClick
      end
      object btnCancelar: TBitBtn
        Left = 310
        Top = 326
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
        TabOrder = 15
        TabStop = False
        OnClick = btnCancelarClick
      end
      object btnConfirmar: TBitBtn
        Left = 402
        Top = 326
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
        TabOrder = 16
        OnClick = btnConfirmarClick
      end
      object edtCodFor: TCurrencyEdit
        Left = 90
        Top = 6
        Width = 100
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0'
        TabOrder = 0
        OnExit = edtCodForExit
      end
      object DBEDESFOR: TDBEdit
        Left = 90
        Top = 33
        Width = 400
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESFOR'
        DataSource = dsCadFornecedor
        TabOrder = 1
      end
      object DBECPF_CNPJ: TDBEdit
        Left = 90
        Top = 60
        Width = 151
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF_CNPJ'
        DataSource = dsCadFornecedor
        TabOrder = 2
      end
      object DBETEL1: TDBEdit
        Left = 90
        Top = 87
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TEL1'
        DataSource = dsCadFornecedor
        TabOrder = 3
      end
      object DBETEL2: TDBEdit
        Left = 269
        Top = 87
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TEL2'
        DataSource = dsCadFornecedor
        TabOrder = 4
      end
      object DBEEMAFOR: TDBEdit
        Left = 91
        Top = 114
        Width = 400
        Height = 21
        DataField = 'EMAFOR'
        DataSource = dsCadFornecedor
        TabOrder = 5
      end
      object DBEENDFOR: TDBEdit
        Left = 90
        Top = 141
        Width = 350
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDFOR'
        DataSource = dsCadFornecedor
        TabOrder = 6
      end
      object DBENUMEND: TDBEdit
        Left = 446
        Top = 141
        Width = 44
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMEND'
        DataSource = dsCadFornecedor
        MaxLength = 6
        TabOrder = 7
      end
      object DBEBAIFOR: TDBEdit
        Left = 90
        Top = 168
        Width = 267
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIFOR'
        DataSource = dsCadFornecedor
        TabOrder = 8
      end
      object DBECEPFOR: TDBEdit
        Left = 392
        Top = 168
        Width = 98
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEPFOR'
        DataSource = dsCadFornecedor
        TabOrder = 9
      end
      object DBECIDFOR: TDBEdit
        Left = 90
        Top = 195
        Width = 350
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDFOR'
        DataSource = dsCadFornecedor
        MaxLength = 50
        TabOrder = 10
      end
      object dbcbbSIGUFS: TDBComboBox
        Left = 446
        Top = 195
        Width = 44
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SIGUFS'
        DataSource = dsCadFornecedor
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RR'
          'RO'
          'RJ'
          'RN'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 11
      end
      object dbcbbSITFOR: TDBComboBox
        Left = 90
        Top = 222
        Width = 125
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'SITFOR'
        DataSource = dsCadFornecedor
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        TabOrder = 17
        TabStop = False
      end
      object dbmmoOBSFOR: TDBMemo
        Left = 90
        Top = 250
        Width = 400
        Height = 63
        TabStop = False
        DataField = 'OBSFOR'
        DataSource = dsCadFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 300
        ParentFont = False
        TabOrder = 18
        OnKeyPress = dbmmoOBSFORKeyPress
      end
      object dblkcbbCODUSU: TDBLookupComboBox
        Left = 366
        Top = 223
        Width = 121
        Height = 21
        DataField = 'CODUSU'
        DataSource = dsCadFornecedor
        KeyField = 'CODUSU'
        ListField = 'NOMUSU'
        ListSource = dsUsuarios
        ReadOnly = True
        TabOrder = 19
        TabStop = False
      end
    end
  end
  object dsCadFornecedor: TDataSource
    AutoEdit = False
    DataSet = DmFire.CadFornecedor
    OnStateChange = dsCadFornecedorStateChange
    Left = 424
    Top = 88
  end
  object Usuarios: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'select * from USUARIO order by nomusu')
    Left = 272
    Top = 280
    object UsuariosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = '"USUARIO"."CODUSU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UsuariosNOMUSU: TIBStringField
      FieldName = 'NOMUSU'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object UsuariosDESUSU: TIBStringField
      FieldName = 'DESUSU'
      Origin = '"USUARIO"."DESUSU"'
      Size = 100
    end
    object UsuariosLOGUSU: TIBStringField
      FieldName = 'LOGUSU'
      Origin = '"USUARIO"."LOGUSU"'
    end
    object UsuariosSENUSU: TIBStringField
      FieldName = 'SENUSU'
      Origin = '"USUARIO"."SENUSU"'
    end
    object UsuariosDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = '"USUARIO"."DATCAD"'
    end
    object UsuariosSITUSU: TIBStringField
      FieldName = 'SITUSU'
      Origin = '"USUARIO"."SITUSU"'
      Size = 10
    end
  end
  object dsUsuarios: TDataSource
    DataSet = Usuarios
    Left = 344
    Top = 280
  end
end
