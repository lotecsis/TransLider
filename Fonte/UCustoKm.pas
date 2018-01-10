unit UCustoKm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, DateUtils, Grids, DBGrids, DB, Buttons,
  DBCtrls, rxCurrEdit;

type
  TFCustoKm = class(TForm)
    lbl4: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    lbl6: TLabel;
    dbg1: TDBGrid;
    dsCustoKm: TDataSource;
    btnMostrar: TBitBtn;
    dbedtvnTPedagio: TDBEdit;
    dbedtvnTCombustivel: TDBEdit;
    dbedtvnTDescarga: TDBEdit;
    dbedtvnTRefeicoes: TDBEdit;
    dbedtvnTOutrasDesp: TDBEdit;
    dbedtvnTComissao: TDBEdit;
    dbedtvnTGeral: TDBEdit;
    dbedtvnTManutencoes: TDBEdit;
    dbedtvnTSalario: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    dbedtvnTKm: TDBEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    edtCustoGeralKm: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbedtvnTDepreciacao: TDBEdit;
    dbedtvnTFinanciamentos: TDBEdit;
    dbedtvnTPneus: TDBEdit;
    btnImprimir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCustoKm: TFCustoKm;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFCustoKm.btnImprimirClick(Sender: TObject);
var vaPeriodo : string;
begin
if not DmFire.ClientCustoKm.IsEmpty then
     begin
        vaPeriodo := DateToStr(edtDatIni.Date)+'  à  '+DateToStr(edtDatFim.Date);
        DmFire.RvClientCustoKm.SetParam('vaPeriodo',vaPeriodo);
        DmFire.RvClientCustoKm.SetParam('vaPedagio',FormatFloat(',0.00', dbedtvnTPedagio.Field.Value));
         DmFire.RvClientCustoKm.SetParam('vaCombustivel',FormatFloat(',0.00', dbedtvnTCombustivel.Field.Value));
          DmFire.RvClientCustoKm.SetParam('vaDescarga',FormatFloat(',0.00', dbedtvnTDescarga.Field.Value));
           DmFire.RvClientCustoKm.SetParam('vaRefeicoes',FormatFloat(',0.00', dbedtvnTRefeicoes.Field.Value));
            DmFire.RvClientCustoKm.SetParam('vaComissao',FormatFloat(',0.00', dbedtvnTComissao.Field.Value));
             DmFire.RvClientCustoKm.SetParam('vaSalario',FormatFloat(',0.00', dbedtvnTSalario.Field.Value));
              DmFire.RvClientCustoKm.SetParam('vaDepreciacao',FormatFloat(',0.00', dbedtvnTDepreciacao.Field.Value));
               DmFire.RvClientCustoKm.SetParam('vaFinanciamento',FormatFloat(',0.00', dbedtvnTFinanciamentos.Field.Value));
                DmFire.RvClientCustoKm.SetParam('vaPneus',FormatFloat(',0.00', dbedtvnTPneus.Field.Value));
                 DmFire.RvClientCustoKm.SetParam('vaOutrasDesp',FormatFloat(',0.00', dbedtvnTOutrasDesp.Field.Value));
                  DmFire.RvClientCustoKm.SetParam('vaManutencao',FormatFloat(',0.00', dbedtvnTManutencoes.Field.Value));
                   DmFire.RvClientCustoKm.SetParam('vaTotalGasto',FormatFloat(',0.00', dbedtvnTGeral.Field.Value));
                    DmFire.RvClientCustoKm.SetParam('vaTotalKm',FormatFloat(',0.00', dbedtvnTKm.Field.Value));
                     DmFire.RvClientCustoKm.SetParam('vaCustoKm',FormatFloat(',0.00', edtCustoGeralKm.Value));
        DmFire.RvClientCustoKm.Execute;

       {







        }

     end;
end;

procedure TFCustoKm.btnMostrarClick(Sender: TObject);
var vnGastoGeral, vnKmGeral : Double;
begin

  if edtDatIni.Date = 0 then
     begin
       Application.MessageBox('Informe a Data Inicial','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatIni;
       Abort;
     end;
  if edtDatFim.Date = 0 then
     begin
       Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatFim;
       Abort;
     end;

  DmFire.ClientCustoKm.Close;
  DmFire.CustoKm.Close;
  DmFire.CustoKm.ParamByName('datini').Value := edtDatIni.Date;
  DmFire.CustoKm.ParamByName('datfim').Value := edtDatFim.Date;
  DmFire.CustoKm.Open;
  DmFire.ClientCustoKm.Open;

  DmFire.ClientCustoKm.First;
  while not DmFire.ClientCustoKm.Eof do
    begin
      DmFire.ClientCustoKm.Edit;

      DmFire.TotalManutencoes.Close;
      DmFire.TotalManutencoes.ParamByName('datini').Value := edtDatIni.Date;
      DmFire.TotalManutencoes.ParamByName('datfim').Value := edtDatFim.Date;
      DmFire.TotalManutencoes.ParamByName('codvei').Value := DmFire.ClientCustoKmCODVEI.Value;
      DmFire.TotalManutencoes.Open;
      if DmFire.TotalManutencoes.IsEmpty then
         begin
           DmFire.ClientCustoKmMANUTENCOES.AsFloat := 0;
         end
      else
         begin
           DmFire.ClientCustoKmMANUTENCOES.AsFloat := DmFire.TotalManutencoesTOTAL.Value;
         end;

      if DmFire.ClientCustoKmTIPO.Value = 'CAVALO' then//PROCURA A CARRETA
         begin
           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('select veiculo.codvei from veiculo where veiculo.codcav = :codcav');
           DmFire.ConsSql.ParamByName('codcav').AsInteger := DmFire.ClientCustoKmCODVEI.Value;
           DmFire.ConsSql.Open;
           if not DmFire.ConsSql.IsEmpty then
              begin
                  DmFire.TotalManutencoes.Close;
                  DmFire.TotalManutencoes.ParamByName('datini').Value := edtDatIni.Date;
                  DmFire.TotalManutencoes.ParamByName('datfim').Value := edtDatFim.Date;
                  DmFire.TotalManutencoes.ParamByName('codvei').Value := DmFire.ConsSql.FieldByName('codvei').AsInteger;
                  DmFire.TotalManutencoes.Open;
                  if not DmFire.TotalManutencoes.IsEmpty then
                     begin
                       DmFire.ClientCustoKmMANUTENCOES.AsFloat := DmFire.ClientCustoKmMANUTENCOES.AsFloat +  DmFire.TotalManutencoesTOTAL.Value;
                     end;
              end;

         end;


      DmFire.ClientCustoKm.Post;

      DmFire.ClientCustoKm.Next;
    end;

  DmFire.ClientCustoKm.First;
  DmFire.ClientCustoKm.IndexFieldNames := 'vnCustoKm';

  vnGastoGeral := DmFire.ClientCustoKmvnTGeral.Value;
  vnKmGeral := DmFire.ClientCustoKmvnTKm.Value;
  edtCustoGeralKm.Value := vnGastoGeral / vnKmGeral;
end;

procedure TFCustoKm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFCustoKm.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);

  DmFire.ClientCustoKm.Close;
  DmFire.CustoKm.Close;
end;

end.
