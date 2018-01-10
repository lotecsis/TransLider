object FVencimentoCNH: TFVencimentoCNH
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vencimento de CNH'
  ClientHeight = 532
  ClientWidth = 923
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
    Top = 5
    Width = 278
    Height = 23
    Caption = 'Controle de Vencimentos de CNH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbg1: TDBGrid
    Left = -1
    Top = 34
    Width = 925
    Height = 497
    DataSource = dsConsVencimentoCNH
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Motorista'
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CNH'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Registro'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CATCNH'
        Title.Alignment = taCenter
        Title.Caption = 'Categ.'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATVENCNH'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vnQtdDias'
        Title.Alignment = taCenter
        Title.Caption = 'Dias'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPF'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LOCALMOT'
        Title.Alignment = taCenter
        Title.Caption = 'Local Mot.'
        Width = 120
        Visible = True
      end>
  end
  object dsConsVencimentoCNH: TDataSource
    DataSet = DmFire.ConsVencimentoCNH
    Left = 656
    Top = 136
  end
end
