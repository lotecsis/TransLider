unit UInfracoesIdentificar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFInfracoesIdentificar = class(TForm)
    dbg1: TDBGrid;
    dsClientConsInfracoesMov: TDataSource;
    lbl1: TLabel;
    dbedtvnQtdPontos: TDBEdit;
    dbedtvnQtdInfra: TDBEdit;
    dbedtvnVlrTotal: TDBEdit;
    lbl4: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    pnl1: TPanel;
    btnAbrir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInfracoesIdentificar: TFInfracoesIdentificar;

implementation

uses UDmFire, UConsInfracoesMov, UInfracoesMov;

{$R *.dfm}

procedure TFInfracoesIdentificar.btnAbrirClick(Sender: TObject);
begin
    DmFire.CadInfracoesMov.Close;
    DmFire.CadInfracoesMov.ParamByName('SEQINFRA').Value := DmFire.ClientConsInfracoesMovSEQINFRA.Value;
    DmFire.CadInfracoesMov.Open;
    if not DmFire.CadInfracoesMov.IsEmpty then
       begin
          FInfracoesMov := TFInfracoesMov.Create(Self);
          FInfracoesIdentificar.Visible := false;
          FInfracoesMov.vaOperacao := 'VISUALIZAR';
          FInfracoesMov.ShowModal;
          FreeAndNil(FInfracoesMov);
          FInfracoesIdentificar.Visible := True;
       end;
end;

procedure TFInfracoesIdentificar.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field.FieldName = 'vnQtdDiasIdentCondut' then
     begin
       //MUDA A COR DA LINHA
       if DmFire.ClientConsInfracoesMovvnQtdDiasIdentCondut.AsInteger < 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clRed;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;

       if DmFire.ClientConsInfracoesMovvnQtdDiasIdentCondut.AsInteger < 0 then
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
       if DmFire.ClientConsInfracoesMovvnQtdDiasIdentCondut.AsInteger > 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clGreen;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;


       if (DmFire.ClientConsInfracoesMovvnQtdDiasIdentCondut.AsInteger > 0) and (DmFire.ClientConsInfracoesMovvnQtdDiasIdentCondut.AsInteger < 10) then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clYellow;
            Font.Color := clBlue;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
     end;
end;

procedure TFInfracoesIdentificar.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFInfracoesIdentificar.FormShow(Sender: TObject);
begin
    DmFire.ClientConsInfracoesMov.Close;
    DmFire.ConsInfracoesMov.Close;
    DmFire.ConsInfracoesMov.SQL.Clear;
    DmFire.ConsInfracoesMov.SQL.Add('SELECT infracoes_mov.*,infracoes_cad.*,');
    DmFire.ConsInfracoesMov.SQL.Add('       motorista.nommot,motorista.foto,motorista.localmot,');
    DmFire.ConsInfracoesMov.SQL.Add('       veiculo.desvei,veiculo.plavei,veiculo.kmatu,veiculo.localvei,');
    DmFire.ConsInfracoesMov.SQL.Add('       usuario.nomusu');
    DmFire.ConsInfracoesMov.SQL.Add(' FROM infracoes_mov');
    DmFire.ConsInfracoesMov.SQL.Add(' INNER JOIN infracoes_cad ON infracoes_cad.codinfra = infracoes_mov.codinfra');
    DmFire.ConsInfracoesMov.SQL.Add(' INNER JOIN motorista ON motorista.codmot = infracoes_mov.codmot');
    DmFire.ConsInfracoesMov.SQL.Add(' INNER JOIN veiculo ON veiculo.codvei = infracoes_mov.codvei');
    DmFire.ConsInfracoesMov.SQL.Add(' INNER JOIN usuario ON usuario.codusu = infracoes_mov.codusu');
    DmFire.ConsInfracoesMov.SQL.Add(' WHERE');
    DmFire.ConsInfracoesMov.SQL.Add(' veiculo.codvei <> 999999'); //so para deixar adicionado o WHERE
    DmFire.ConsInfracoesMov.SQL.Add(' AND infracoes_mov.in_condutor = ''NAO'' ');
    DmFire.ConsInfracoesMov.SQL.Add(' AND ((infracoes_mov.condutor_conf = ''NAO'') or (infracoes_mov.envio_conf = ''NAO''))');
    DmFire.ConsInfracoesMov.SQL.Add(' ');
    DmFire.ConsInfracoesMov.Open;
    DmFire.ClientConsInfracoesMov.Open;
    DmFire.ClientConsInfracoesMov.IndexFieldNames := 'vnQtdDiasIdentCondut';
end;

end.
