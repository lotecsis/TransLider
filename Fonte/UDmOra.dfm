object DmOra: TDmOra
  OldCreateOrder = False
  Height = 512
  Width = 702
  object Banco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=saplider;User ID=saplider;Data Sourc' +
      'e=liderlar;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 32
    Top = 24
  end
  object ValorCarga: TADOQuery
    Connection = Banco
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'NUMANE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select sum(vlrfat) AS vlrfat from e135pfa where numane = :NUMANE')
    Left = 104
    Top = 64
    object ValorCargaVLRFAT: TFMTBCDField
      FieldName = 'VLRFAT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
end
