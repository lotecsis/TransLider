unit UDmOra;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmOra = class(TDataModule)
    Banco: TADOConnection;
    ValorCarga: TADOQuery;
    ValorCargaVLRFAT: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmOra: TDmOra;

implementation

{$R *.dfm}

end.
