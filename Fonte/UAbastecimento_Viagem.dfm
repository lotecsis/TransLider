object FAbastecimento_Viagem: TFAbastecimento_Viagem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Abastecimentos'
  ClientHeight = 607
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
  object lblTrucks_Cavalos: TLabel
    Left = 36
    Top = 16
    Width = 94
    Height = 13
    Caption = 'Trucks / Cavalos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLeves: TLabel
    Left = 36
    Top = 38
    Width = 33
    Height = 13
    Caption = 'Leves'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPlaca: TLabel
    Left = 205
    Top = 13
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
  object lblCarga: TLabel
    Left = 433
    Top = 13
    Width = 33
    Height = 13
    Caption = 'Carga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblData: TLabel
    Left = 617
    Top = 13
    Width = 79
    Height = 13
    Caption = 'Data Chegada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMotorista: TLabel
    Left = 205
    Top = 44
    Width = 55
    Height = 13
    Caption = 'Motorista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PaginaControle: TPageControl
    Left = -1
    Top = 69
    Width = 998
    Height = 540
    ActivePage = tsEmAberto
    TabOrder = 0
    object tsEmAberto: TTabSheet
      Caption = '     Em Aberto     '
      object dbgAbastecimentosAberto: TDBGrid
        Left = -2
        Top = -1
        Width = 994
        Height = 433
        DataSource = dsClientConsAbastecimentosAberto
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgAbastecimentosAbertoCellClick
        OnDrawColumnCell = dbgAbastecimentosAbertoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'vaIteSel'
            Title.Caption = '  '
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PLAVEI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Placa'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Km Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATENT'
            Title.Alignment = taCenter
            Title.Caption = 'Data Chegada'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMENT'
            Title.Alignment = taCenter
            Title.Caption = 'Km Chegada'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnTotalRodado'
            Title.Alignment = taCenter
            Title.Caption = 'Km Rodado'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CARGA'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESTINO'
            Title.Alignment = taCenter
            Title.Caption = 'Destino'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMMOT'
            Title.Alignment = taCenter
            Title.Caption = 'Motorista'
            Width = 160
            Visible = True
          end>
      end
      object pnl1: TPanel
        Left = -2
        Top = 431
        Width = 994
        Height = 81
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        object lblTotalKmSel: TLabel
          Left = 7
          Top = 7
          Width = 113
          Height = 13
          Caption = 'Total de Km rodado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblQtdComb: TLabel
          Left = 290
          Top = 7
          Width = 155
          Height = 13
          Caption = 'Quantidade de Combust'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMediaKmLitro: TLabel
          Left = 632
          Top = 7
          Width = 87
          Height = 13
          Caption = 'M'#233'dia Km/Litro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblQtdCombEmp: TLabel
          Left = 328
          Top = 32
          Width = 117
          Height = 13
          Caption = 'Quantidade Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblQtdCombPost: TLabel
          Left = 318
          Top = 55
          Width = 127
          Height = 13
          Caption = 'Quantidade em Postos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlrCombEmp: TLabel
          Left = 596
          Top = 32
          Width = 123
          Height = 13
          Caption = 'Valor P/Litro Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlrCombPost: TLabel
          Left = 613
          Top = 56
          Width = 106
          Height = 13
          Caption = 'Valor P/Litro Potos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbedtTotalKmSel: TDBEdit
          Left = 126
          Top = 4
          Width = 121
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'TotalKmSel'
          DataSource = dsClientConsAbastecimentosAberto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtQtdComb: TCurrencyEdit
          Left = 452
          Top = 4
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Alignment = taCenter
          Color = clInfoBk
          DisplayFormat = ',0.00;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = edtQtdCombChange
        end
        object edtMediaKmLitro: TCurrencyEdit
          Left = 726
          Top = 4
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          Alignment = taCenter
          Color = clInfoBk
          DisplayFormat = ' ,0.00;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object btnConfirmar: TBitBtn
          Left = 884
          Top = 2
          Width = 100
          Height = 25
          Caption = 'Confirmar'
          DoubleBuffered = True
          Glyph.Data = {
            46050000424D460500000000000036040000280000000D000000110000000100
            08000000000010010000C30E0000C30E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
            60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
            B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
            1D007666280000450000013E450013286A006A39850085324A00040404000808
            08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
            5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
            840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
            0000000039009B00000000250000000049003B111100002F000000005D004517
            1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
            00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
            2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
            A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
            2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
            89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
            AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
            0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
            0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
            42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
            890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
            C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
            FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
            F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
            FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
            CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
            8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
            7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
            BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
            88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
            A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
            0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
            00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
            001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
            11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
            110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
            11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
            110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
            110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
            0F0F0F0F0F0F0F000000}
          ParentDoubleBuffered = False
          TabOrder = 6
          OnClick = btnConfirmarClick
        end
        object edtQtdCombEmp: TCurrencyEdit
          Left = 452
          Top = 29
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Alignment = taCenter
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 2
        end
        object edtQtdCombPost: TCurrencyEdit
          Left = 452
          Top = 53
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Alignment = taCenter
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 4
        end
        object edtVlrCombEmp: TCurrencyEdit
          Left = 726
          Top = 29
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Alignment = taCenter
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 3
        end
        object edtVlrCombPost: TCurrencyEdit
          Left = 726
          Top = 53
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          Alignment = taCenter
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 5
        end
      end
    end
    object tsRealizado: TTabSheet
      Caption = '     Realizados     '
      ImageIndex = 1
      object lblDataAbastec: TLabel
        Left = 544
        Top = 8
        Width = 119
        Height = 13
        Caption = 'Abastecimento Entre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblADatAbastec: TLabel
        Left = 787
        Top = 8
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDataSaida: TLabel
        Left = 97
        Top = 8
        Width = 64
        Height = 13
        Caption = 'Sa'#237'da Entre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblADatSaida: TLabel
        Left = 284
        Top = 8
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnl2: TPanel
        Left = -1
        Top = 431
        Width = 992
        Height = 82
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        object lbl3: TLabel
          Left = 295
          Top = 7
          Width = 96
          Height = 13
          Caption = 'Total Km Rodado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 514
          Top = 7
          Width = 106
          Height = 13
          Caption = 'Combust'#237'vel Gasto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 740
          Top = 7
          Width = 67
          Height = 13
          Caption = 'M'#233'dia Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 571
          Top = 35
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 582
          Top = 60
          Width = 38
          Height = 13
          Caption = 'Postos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 749
          Top = 34
          Width = 58
          Height = 13
          Caption = 'Valor Litro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 749
          Top = 59
          Width = 58
          Height = 13
          Caption = 'Valor Litro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbedtvnTotalRodadoGeral: TDBEdit
          Left = 395
          Top = 4
          Width = 100
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'vnTotalRodadoGeral'
          DataSource = dsClientConsAbastecimentosRealizados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbedtvnTotalCombusivel: TDBEdit
          Left = 624
          Top = 4
          Width = 100
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'vnTotalCombusivel'
          DataSource = dsClientConsAbastecimentosRealizados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbedtvnMediaGeral: TDBEdit
          Left = 811
          Top = 4
          Width = 100
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'vnMediaGeral'
          DataSource = dsClientConsAbastecimentosRealizados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object pnl3: TPanel
          Left = -1
          Top = -1
          Width = 218
          Height = 55
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 3
          object btnEstornar: TBitBtn
            Left = 51
            Top = 8
            Width = 100
            Height = 25
            Caption = 'Estornar'
            DoubleBuffered = True
            Glyph.Data = {
              7E030000424D7E030000000000003600000028000000120000000F0000000100
              1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BF3F3700BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFCF6760CF67
              60CF6760CF6760000000BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBFBF
              BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF007F00007F00007F00007F00007F0000
              0000BFBFBFBFBFBFBFBFBF000000A0983F000000BFBFBFBFBFBFBFBFBFBFBFBF
              0000BFBFBFA0983FA0983FA0983FA0983F007F00000000BFBFBFBFBFBFBFBFBF
              3F3700A0983F00FF007F7F003F37003F3700BFBFBFBFBFBF0000BFBFBFA0983F
              00FF00A0983F007F00000000BFBFBFBFBFBFBFBFBF3F3700A0983F00FF00A098
              3FA0983F007F003F3700007F00BFBFBF0000BFBFBFA0983F00FF00A0983F0000
              00BFBFBFBFBFBFBFBFBFA0983FA0983F00FF00A0983F00FF00A0983F007F0000
              7F003F3700BFBFBF0000BFBFBFA0983F90FF2FA0983F007F003F3700BFBFBFBF
              BFBF90FF2FFFFFFFA0983F90FF2FA0983FA0983F007F003F37003F3700BFBFBF
              0000BFBFBFA0983F90FF2FA0983FA0983F007F003F3700BFBFBFBFBFBF90FF2F
              FFFFFFA0983F90FF2FA0983F007F00007F003F3700BFBFBF0000BFBFBFA0983F
              90FF2FFFFFFF90FF2F90FF2F007F003F370000000000000090FF2FFFFFFFA098
              3FA0983F007F003F37003F3700BFBFBF0000BFBFBFA0983FFFFFFFA0983F0000
              0000000000000000000000000000000000000000FF00FFFFFF00000090FF2F00
              7F003F3700BFBFBF0000BFBFBFA0983F90FF2F0000000000003F37000000003F
              37000000003F370000000000000000FF0000000000000090FF2F3F3700BFBFBF
              0000BFBFBFA0983F90FF2FA0983F3F370000000060302F00000060302F000000
              000000000000000000000000000000A0983F007F00BFBFBF0000BFBFBFBFBFBF
              A0983F90FF2FCF67603F37003F37003F37000000003F37000000000000000000
              00000000007F00007F00BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFA0983FA098
              3FA0983F007F00007F00007F00007F00007F00007F00007F00007F00007F00BF
              BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              0000}
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = btnEstornarClick
          end
        end
        object dbedtvnTotalCombEmp: TDBEdit
          Left = 624
          Top = 29
          Width = 100
          Height = 21
          TabStop = False
          DataField = 'vnTotalCombEmp'
          DataSource = dsClientConsAbastecimentosRealizados
          ReadOnly = True
          TabOrder = 4
        end
        object dbedtvnTotalCombPos: TDBEdit
          Left = 624
          Top = 56
          Width = 100
          Height = 21
          TabStop = False
          DataField = 'vnTotalCombPos'
          DataSource = dsClientConsAbastecimentosRealizados
          ReadOnly = True
          TabOrder = 5
        end
        object dbedtvnVlrTotalCombEmp: TDBEdit
          Left = 811
          Top = 29
          Width = 100
          Height = 21
          TabStop = False
          DataField = 'vnVlrTotalCombEmp'
          DataSource = dsClientConsAbastecimentosRealizados
          ReadOnly = True
          TabOrder = 6
        end
        object dbedtvnVlrTotalCombPos: TDBEdit
          Left = 811
          Top = 56
          Width = 100
          Height = 21
          TabStop = False
          DataField = 'vnVlrTotalCombPos'
          DataSource = dsClientConsAbastecimentosRealizados
          ReadOnly = True
          TabOrder = 7
        end
      end
      object dbg1: TDBGrid
        Left = -1
        Top = 32
        Width = 993
        Height = 400
        DataSource = dsClientConsAbastecimentosRealizados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
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
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATENT'
            Title.Alignment = taCenter
            Title.Caption = 'Data Chegada'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Km Sa'#237'da'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KMENT'
            Title.Alignment = taCenter
            Title.Caption = 'Km Chegada'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vnTotalRodado'
            Title.Alignment = taCenter
            Title.Caption = 'Total Rodado'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CARGA'
            Title.Alignment = taCenter
            Title.Caption = 'Carga'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESTINO'
            Title.Alignment = taCenter
            Title.Caption = 'Destino'
            Width = 170
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'QTD_COMB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.Comb.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clWindow
            Expanded = False
            FieldName = 'MEDIA_CONS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'M'#233'dia Km/L'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMMOT'
            Title.Alignment = taCenter
            Title.Caption = 'Motorista'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DAT_ABASTEC'
            Title.Alignment = taCenter
            Title.Caption = 'Data Abastec.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_COMBEMP'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.Comb.Emp.'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_COMBEMP'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Comb.Emp.'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_COMBPOS'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.Comb.Posto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_COMBPOS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Comb.Posto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IN_COMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Gerar Comiss'#227'o'
            Width = 80
            Visible = True
          end>
      end
      object edtDatAbastecimentoIni: TDateEdit
        Left = 669
        Top = 5
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object edtDatAbastecimentoFim: TDateEdit
        Left = 810
        Top = 5
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
      object chkDataAbastec: TCheckBox
        Left = 527
        Top = 7
        Width = 13
        Height = 17
        TabOrder = 4
      end
      object chkDataSaida: TCheckBox
        Left = 80
        Top = 7
        Width = 15
        Height = 17
        TabOrder = 5
      end
      object edtDatSaidaIni: TDateEdit
        Left = 167
        Top = 5
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
      object edtDatSaidaFim: TDateEdit
        Left = 310
        Top = 5
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
      end
    end
    object tsGraficoPorMotorista: TTabSheet
      Caption = 'Gr'#225'fico por Motorista'
      ImageIndex = 2
      object ChartMotoristas: TChart
        Left = 0
        Top = 0
        Width = 990
        Height = 513
        Legend.Font.Height = -8
        Legend.Title.Font.Height = -8
        PrintProportional = False
        SubFoot.Font.Height = -9
        SubTitle.Text.Strings = (
          '.')
        Title.Font.Height = -13
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'TChart')
        BottomAxis.LabelsFont.Height = -9
        BottomAxis.PositionPercent = -1.000000000000000000
        LeftAxis.PositionPercent = -1.000000000000000000
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          0
          5
          0
          5)
        object btnImprimirGraficoMotoristas: TBitBtn
          Left = 908
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnImprimirGraficoMotoristasClick
        end
        object MotoristaSeries1: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Font.Height = -8
          Marks.Visible = True
          Title = 'Motorista'
          LinePen.Color = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object btnGraficoPorMotorista: TBitBtn
        Left = 804
        Top = 3
        Width = 100
        Height = 25
        Caption = 'Gerar Gr'#225'fico'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btnGraficoPorMotoristaClick
      end
    end
    object tsGraficoPorPlaca: TTabSheet
      Caption = 'Gr'#225'fico por Placa'
      ImageIndex = 3
      object ChartPlaca: TChart
        Left = 0
        Top = 0
        Width = 990
        Height = 513
        Legend.Font.Height = -8
        Legend.Title.Font.Height = -8
        PrintProportional = False
        SubTitle.Text.Strings = (
          '-')
        Title.Font.Height = -13
        Title.Text.Strings = (
          'Titulo')
        BottomAxis.LabelsFont.Height = -8
        LeftAxis.PositionPercent = -1.000000000000000000
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          0
          5
          0
          5)
        object btnGraficoPorPlacas: TBitBtn
          Left = 804
          Top = 3
          Width = 100
          Height = 25
          Caption = 'Gerar Gr'#225'fico'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnGraficoPorPlacasClick
        end
        object btnImprimirGraficoPlaca: TBitBtn
          Left = 908
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnImprimirGraficoPlacaClick
        end
        object MotoristaSeries2: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Font.Height = -8
          Marks.Style = smsLabelValue
          Marks.Visible = True
          Title = 'Placas'
          LinePen.Color = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
  end
  object chkTrucks_Cavalos: TCheckBox
    Left = 19
    Top = 15
    Width = 15
    Height = 17
    TabOrder = 1
  end
  object chkLeves: TCheckBox
    Left = 19
    Top = 37
    Width = 15
    Height = 17
    TabOrder = 2
  end
  object chkPlaca: TCheckBox
    Left = 190
    Top = 12
    Width = 15
    Height = 17
    TabOrder = 3
  end
  object dblkcbbPlaca: TDBLookupComboBox
    Left = 241
    Top = 9
    Width = 145
    Height = 21
    KeyField = 'CODVEI'
    ListField = 'PLAVEI'
    ListSource = dsVeiculos
    TabOrder = 4
  end
  object chkCarga: TCheckBox
    Left = 416
    Top = 12
    Width = 15
    Height = 17
    TabOrder = 5
  end
  object edtCarga: TCurrencyEdit
    Left = 470
    Top = 9
    Width = 100
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = '0'
    TabOrder = 6
  end
  object chkData: TCheckBox
    Left = 599
    Top = 12
    Width = 15
    Height = 17
    TabOrder = 7
  end
  object btnMostrar: TBitBtn
    Left = 885
    Top = 23
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
    TabOrder = 8
    OnClick = btnMostrarClick
  end
  object edtData: TDateEdit
    Left = 698
    Top = 9
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 9
  end
  object chkMotorista: TCheckBox
    Left = 187
    Top = 43
    Width = 18
    Height = 17
    TabOrder = 10
  end
  object dblkcbbMotorista: TDBLookupComboBox
    Left = 264
    Top = 39
    Width = 306
    Height = 21
    KeyField = 'CODMOT'
    ListField = 'NOMMOT'
    ListSource = dsMotoristas
    TabOrder = 11
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
    Left = 328
    Top = 144
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
    object ConsAbastecimentosAbertoQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBEMP"'
    end
    object ConsAbastecimentosAbertoQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBPOS"'
    end
    object ConsAbastecimentosAbertoOBS_MOTORISTA: TIBStringField
      FieldName = 'OBS_MOTORISTA'
      Origin = '"ENTRADA_SAIDA"."OBS_MOTORISTA"'
      Size = 300
    end
    object ConsAbastecimentosAbertoIN_VISUALIZADO: TIBStringField
      FieldName = 'IN_VISUALIZADO'
      Origin = '"ENTRADA_SAIDA"."IN_VISUALIZADO"'
      Size = 3
    end
    object ConsAbastecimentosAbertoVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBEMP"'
    end
    object ConsAbastecimentosAbertoVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBPOS"'
    end
  end
  object ClientConsAbastecimentosAberto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsAbastecimentosAberto'
    OnCalcFields = ClientConsAbastecimentosAbertoCalcFields
    Left = 328
    Top = 264
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
    object ClientConsAbastecimentosAbertoQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
    end
    object ClientConsAbastecimentosAbertoQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
    end
    object ClientConsAbastecimentosAbertoOBS_MOTORISTA: TWideStringField
      FieldName = 'OBS_MOTORISTA'
      Size = 300
    end
    object ClientConsAbastecimentosAbertoIN_VISUALIZADO: TWideStringField
      FieldName = 'IN_VISUALIZADO'
      Size = 3
    end
    object ClientConsAbastecimentosAbertoVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
    end
    object ClientConsAbastecimentosAbertoVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
    end
    object ClientConsAbastecimentosAbertoTotalKmSel: TAggregateField
      Alignment = taCenter
      FieldName = 'TotalKmSel'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnKmSelecionado)'
    end
  end
  object ProviderConsAbastecimentosAberto: TDataSetProvider
    DataSet = ConsAbastecimentosAberto
    Left = 328
    Top = 200
  end
  object dsClientConsAbastecimentosAberto: TDataSource
    DataSet = ClientConsAbastecimentosAberto
    Left = 328
    Top = 320
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 728
    Top = 192
  end
  object Veiculos: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT VEICULO.CODVEI,VEICULO.DESVEI,VEICULO.PLAVEI'
      'FROM VEICULO'
      'WHERE VEICULO.SITVEI = '#39'ATIVO'#39
      'ORDER BY VEICULO.PLAVEI')
    Left = 728
    Top = 328
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
    Left = 728
    Top = 280
  end
  object ConsAbastecimentosRealizados: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT ENTRADA_SAIDA.*,'
      '       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,'
      
        '      VEICULO.MEDMAXVAZ,VEICULO.MEDMAXCAR,VEICULO.MEDMINVAZ,VEIC' +
        'ULO.MEDMINCAR,'
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
      'ENTRADA_SAIDA.QTD_COMB > 0'
      
        'ORDER BY VEICULO.PLAVEI,ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HOREN' +
        'T')
    Left = 528
    Top = 144
    object ConsAbastecimentosRealizadosSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Origin = '"ENTRADA_SAIDA"."SEQENTSAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosRealizadosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = '"ENTRADA_SAIDA"."CODVEI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsAbastecimentosRealizadosUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = '"ENTRADA_SAIDA"."USUENT"'
    end
    object ConsAbastecimentosRealizadosUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
      Origin = '"ENTRADA_SAIDA"."USUSAIDA"'
    end
    object ConsAbastecimentosRealizadosCODMOT: TIntegerField
      FieldName = 'CODMOT'
      Origin = '"ENTRADA_SAIDA"."CODMOT"'
    end
    object ConsAbastecimentosRealizadosDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
      Origin = '"ENTRADA_SAIDA"."DATSAIDA"'
    end
    object ConsAbastecimentosRealizadosHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
      Origin = '"ENTRADA_SAIDA"."HORSAIDA"'
    end
    object ConsAbastecimentosRealizadosKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      Origin = '"ENTRADA_SAIDA"."KMSAIDA"'
    end
    object ConsAbastecimentosRealizadosDATENT: TDateField
      FieldName = 'DATENT'
      Origin = '"ENTRADA_SAIDA"."DATENT"'
    end
    object ConsAbastecimentosRealizadosHORENT: TTimeField
      FieldName = 'HORENT'
      Origin = '"ENTRADA_SAIDA"."HORENT"'
    end
    object ConsAbastecimentosRealizadosKMENT: TIntegerField
      FieldName = 'KMENT'
      Origin = '"ENTRADA_SAIDA"."KMENT"'
    end
    object ConsAbastecimentosRealizadosDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = '"ENTRADA_SAIDA"."DESTINO"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"ENTRADA_SAIDA"."CARGA"'
    end
    object ConsAbastecimentosRealizadosCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
      Origin = '"ENTRADA_SAIDA"."CODCARRETA"'
    end
    object ConsAbastecimentosRealizadosIN_ENGATADO: TIBStringField
      FieldName = 'IN_ENGATADO'
      Origin = '"ENTRADA_SAIDA"."IN_ENGATADO"'
      Size = 3
    end
    object ConsAbastecimentosRealizadosQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      Origin = '"ENTRADA_SAIDA"."QTD_COMB"'
    end
    object ConsAbastecimentosRealizadosDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
      Origin = '"ENTRADA_SAIDA"."DAT_ABASTEC"'
    end
    object ConsAbastecimentosRealizadosMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      Origin = '"ENTRADA_SAIDA"."MEDIA_CONS"'
    end
    object ConsAbastecimentosRealizadosITESEL: TIBStringField
      FieldName = 'ITESEL'
      Origin = '"ENTRADA_SAIDA"."ITESEL"'
      Size = 3
    end
    object ConsAbastecimentosRealizadosPLAVEI: TIBStringField
      FieldName = 'PLAVEI'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsAbastecimentosRealizadosDESVEI: TIBStringField
      FieldName = 'DESVEI'
      Origin = '"VEICULO"."DESVEI"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosKMATU: TIntegerField
      FieldName = 'KMATU'
      Origin = '"VEICULO"."KMATU"'
    end
    object ConsAbastecimentosRealizadosNOMMOT: TIBStringField
      FieldName = 'NOMMOT'
      Origin = '"MOTORISTA"."NOMMOT"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosAPEMOT: TIBStringField
      FieldName = 'APEMOT'
      Origin = '"MOTORISTA"."APEMOT"'
      Size = 50
    end
    object ConsAbastecimentosRealizadosFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"MOTORISTA"."FOTO"'
      Size = 300
    end
    object ConsAbastecimentosRealizadosUSUARIO_SAIDA: TIBStringField
      FieldName = 'USUARIO_SAIDA'
      Origin = '"USUARIO"."NOMUSU"'
      Size = 100
    end
    object ConsAbastecimentosRealizadosPLAVEI_CARRETA: TIBStringField
      FieldName = 'PLAVEI_CARRETA'
      Origin = '"VEICULO"."PLAVEI"'
      Size = 15
    end
    object ConsAbastecimentosRealizadosQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBEMP"'
    end
    object ConsAbastecimentosRealizadosQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."QTD_COMBPOS"'
    end
    object ConsAbastecimentosRealizadosOBS_MOTORISTA: TIBStringField
      FieldName = 'OBS_MOTORISTA'
      Origin = '"ENTRADA_SAIDA"."OBS_MOTORISTA"'
      Size = 300
    end
    object ConsAbastecimentosRealizadosIN_VISUALIZADO: TIBStringField
      FieldName = 'IN_VISUALIZADO'
      Origin = '"ENTRADA_SAIDA"."IN_VISUALIZADO"'
      Size = 3
    end
    object ConsAbastecimentosRealizadosVLR_COMBEMP: TFloatField
      FieldName = 'VLR_COMBEMP'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBEMP"'
    end
    object ConsAbastecimentosRealizadosVLR_COMBPOS: TFloatField
      FieldName = 'VLR_COMBPOS'
      Origin = '"ENTRADA_SAIDA"."VLR_COMBPOS"'
    end
    object ConsAbastecimentosRealizadosMEDMAXVAZ: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMAXVAZ'
      Origin = '"VEICULO"."MEDMAXVAZ"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsAbastecimentosRealizadosMEDMAXCAR: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMAXCAR'
      Origin = '"VEICULO"."MEDMAXCAR"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsAbastecimentosRealizadosMEDMINVAZ: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMINVAZ'
      Origin = '"VEICULO"."MEDMINVAZ"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsAbastecimentosRealizadosMEDMINCAR: TFloatField
      Alignment = taCenter
      FieldName = 'MEDMINCAR'
      Origin = '"VEICULO"."MEDMINCAR"'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ConsAbastecimentosRealizadosRETORNO: TIBStringField
      FieldName = 'RETORNO'
      Origin = '"ENTRADA_SAIDA"."RETORNO"'
      Size = 30
    end
    object ConsAbastecimentosRealizadosIN_COMISSAO: TIBStringField
      FieldName = 'IN_COMISSAO'
      Origin = '"ENTRADA_SAIDA"."IN_COMISSAO"'
      Size = 3
    end
  end
  object ProviderConsAbastecimentosRealizados: TDataSetProvider
    DataSet = ConsAbastecimentosRealizados
    Left = 528
    Top = 200
  end
  object ClientConsAbastecimentosRealizados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'ProviderConsAbastecimentosRealizados'
    OnCalcFields = ClientConsAbastecimentosRealizadosCalcFields
    Left = 528
    Top = 256
    object ClientConsAbastecimentosRealizadosSEQENTSAI: TIntegerField
      FieldName = 'SEQENTSAI'
      Required = True
    end
    object ClientConsAbastecimentosRealizadosCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Required = True
    end
    object ClientConsAbastecimentosRealizadosUSUENT: TIntegerField
      FieldName = 'USUENT'
    end
    object ClientConsAbastecimentosRealizadosUSUSAIDA: TIntegerField
      FieldName = 'USUSAIDA'
    end
    object ClientConsAbastecimentosRealizadosCODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object ClientConsAbastecimentosRealizadosDATSAIDA: TDateField
      FieldName = 'DATSAIDA'
    end
    object ClientConsAbastecimentosRealizadosHORSAIDA: TTimeField
      FieldName = 'HORSAIDA'
    end
    object ClientConsAbastecimentosRealizadosKMSAIDA: TIntegerField
      FieldName = 'KMSAIDA'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosDATENT: TDateField
      FieldName = 'DATENT'
    end
    object ClientConsAbastecimentosRealizadosHORENT: TTimeField
      FieldName = 'HORENT'
    end
    object ClientConsAbastecimentosRealizadosKMENT: TIntegerField
      FieldName = 'KMENT'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosCARGA: TIntegerField
      FieldName = 'CARGA'
    end
    object ClientConsAbastecimentosRealizadosCODCARRETA: TIntegerField
      FieldName = 'CODCARRETA'
    end
    object ClientConsAbastecimentosRealizadosIN_ENGATADO: TWideStringField
      FieldName = 'IN_ENGATADO'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosQTD_COMB: TFloatField
      FieldName = 'QTD_COMB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosDAT_ABASTEC: TDateField
      FieldName = 'DAT_ABASTEC'
    end
    object ClientConsAbastecimentosRealizadosMEDIA_CONS: TFloatField
      FieldName = 'MEDIA_CONS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosITESEL: TWideStringField
      FieldName = 'ITESEL'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosPLAVEI: TWideStringField
      FieldName = 'PLAVEI'
      Size = 15
    end
    object ClientConsAbastecimentosRealizadosDESVEI: TWideStringField
      FieldName = 'DESVEI'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosKMATU: TIntegerField
      FieldName = 'KMATU'
    end
    object ClientConsAbastecimentosRealizadosNOMMOT: TWideStringField
      FieldName = 'NOMMOT'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosAPEMOT: TWideStringField
      FieldName = 'APEMOT'
      Size = 50
    end
    object ClientConsAbastecimentosRealizadosFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ClientConsAbastecimentosRealizadosUSUARIO_SAIDA: TWideStringField
      FieldName = 'USUARIO_SAIDA'
      Size = 100
    end
    object ClientConsAbastecimentosRealizadosPLAVEI_CARRETA: TWideStringField
      FieldName = 'PLAVEI_CARRETA'
      Size = 15
    end
    object ClientConsAbastecimentosRealizadosvnTotalRodado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vnTotalRodado'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object ClientConsAbastecimentosRealizadosQTD_COMBEMP: TFloatField
      FieldName = 'QTD_COMBEMP'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosQTD_COMBPOS: TFloatField
      FieldName = 'QTD_COMBPOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosOBS_MOTORISTA: TWideStringField
      FieldName = 'OBS_MOTORISTA'
      Size = 300
    end
    object ClientConsAbastecimentosRealizadosIN_VISUALIZADO: TWideStringField
      FieldName = 'IN_VISUALIZADO'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosVLR_COMBEMP: TFloatField
      Alignment = taCenter
      FieldName = 'VLR_COMBEMP'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosVLR_COMBPOS: TFloatField
      Alignment = taCenter
      FieldName = 'VLR_COMBPOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosMEDMAXVAZ: TFloatField
      FieldName = 'MEDMAXVAZ'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosMEDMAXCAR: TFloatField
      FieldName = 'MEDMAXCAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosMEDMINVAZ: TFloatField
      FieldName = 'MEDMINVAZ'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosMEDMINCAR: TFloatField
      FieldName = 'MEDMINCAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object ClientConsAbastecimentosRealizadosRETORNO: TWideStringField
      FieldName = 'RETORNO'
      Size = 30
    end
    object ClientConsAbastecimentosRealizadosIN_COMISSAO: TWideStringField
      Alignment = taCenter
      FieldName = 'IN_COMISSAO'
      Size = 3
    end
    object ClientConsAbastecimentosRealizadosvnTotalRodadoGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalRodadoGeral'
      Active = True
      DisplayFormat = '###,###,##0'
      Expression = 'SUM(vnTotalRodado)'
    end
    object ClientConsAbastecimentosRealizadosvnTotalCombusivel: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCombusivel'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTD_COMB)'
    end
    object ClientConsAbastecimentosRealizadosvnMediaGeral: TAggregateField
      Alignment = taCenter
      FieldName = 'vnMediaGeral'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(vnTotalRodado) / SUM(QTD_COMB)'
    end
    object ClientConsAbastecimentosRealizadosvnTotalCombEmp: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCombEmp'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTD_COMBEMP)'
    end
    object ClientConsAbastecimentosRealizadosvnTotalCombPos: TAggregateField
      Alignment = taCenter
      FieldName = 'vnTotalCombPos'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(QTD_COMBPOS)'
    end
    object ClientConsAbastecimentosRealizadosvnVlrTotalCombEmp: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrTotalCombEmp'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_COMBEMP * QTD_COMBEMP)'
    end
    object ClientConsAbastecimentosRealizadosvnVlrTotalCombPos: TAggregateField
      Alignment = taCenter
      FieldName = 'vnVlrTotalCombPos'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLR_COMBPOS * QTD_COMBPOS)'
    end
  end
  object dsClientConsAbastecimentosRealizados: TDataSource
    DataSet = ClientConsAbastecimentosRealizados
    Left = 552
    Top = 320
  end
  object Motoristas: TIBQuery
    Database = DmFire.Banco
    Transaction = DmFire.ibtTransacao
    SQL.Strings = (
      'SELECT MOTORISTA.codmot, MOTORISTA.nommot'
      '     FROM MOTORISTA'
      '     WHERE'
      '       MOTORISTA.TIPMOT IN ('#39'TODOS'#39','#39'PESADOS'#39') AND'
      '       MOTORISTA.SITMOT = '#39'ATIVO'#39
      '       ORDER BY MOTORISTA.NOMMOT')
    Left = 816
    Top = 328
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
  end
  object dsMotoristas: TDataSource
    DataSet = Motoristas
    Left = 816
    Top = 280
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 640
    Top = 48
  end
end
