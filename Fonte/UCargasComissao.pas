unit UCargasComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, AppEvnts;

type
  TFCargasComissao = class(TForm)
    dbg1: TDBGrid;
    dsClientRelacaoEntradaSaida: TDataSource;
    btnSim: TBitBtn;
    btnNao: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCargasComissao: TFCargasComissao;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFCargasComissao.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  btnSim.Enabled := DmFire.ClientRelacaoEntradaSaidaIN_COMISSAO.Value = 'NAO';
  btnNao.Enabled := DmFire.ClientRelacaoEntradaSaidaIN_COMISSAO.Value = 'SIM';
end;

procedure TFCargasComissao.btnNaoClick(Sender: TObject);
begin
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('update entrada_saida set in_comissao = ''NAO'' WHERE seqentsai = :seqentsai and');
  DmFire.ConsSql.SQL.Add('                                                     codvei = :codvei');
  DmFire.ConsSql.ParamByName('seqentsai').Value := DmFire.ClientRelacaoEntradaSaidaSEQENTSAI.Value;
  DmFire.ConsSql.ParamByName('codvei').Value := DmFire.ClientRelacaoEntradaSaidaCODVEI.Value;
  DmFire.ConsSql.ExecSQL;
  DmFire.ibtTransacao.CommitRetaining;

  DmFire.ClientRelacaoEntradaSaida.Refresh;
end;

procedure TFCargasComissao.btnSimClick(Sender: TObject);
begin

  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('update entrada_saida set in_comissao = ''SIM'' WHERE seqentsai = :seqentsai and');
  DmFire.ConsSql.SQL.Add('                                                     codvei = :codvei');
  DmFire.ConsSql.ParamByName('seqentsai').Value := DmFire.ClientRelacaoEntradaSaidaSEQENTSAI.Value;
  DmFire.ConsSql.ParamByName('codvei').Value := DmFire.ClientRelacaoEntradaSaidaCODVEI.Value;
  DmFire.ConsSql.ExecSQL;
  DmFire.ibtTransacao.CommitRetaining;

  DmFire.ClientRelacaoEntradaSaida.Refresh;
end;

procedure TFCargasComissao.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field.FieldName = 'IN_COMISSAO' then
   begin
     if DmFire.ClientRelacaoEntradaSaidaIN_COMISSAO.Value = 'NAO' then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clRed;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end
     else
       if DmFire.ClientRelacaoEntradaSaidaIN_COMISSAO.Value = 'SIM' then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clGreen;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
   end;
end;

procedure TFCargasComissao.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
