unit URelacaoManutencoesPeriodicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls,
  AppEvnts, Buttons;

type
  TFRelacaoManutencoesPeriodicas = class(TForm)
    lblPlaca: TLabel;
    chkPlaca: TCheckBox;
    dblkcbbCODVEI: TDBLookupComboBox;
    dbtxtDESVEI: TDBText;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsVeiculos: TDataSource;
    dsReserva: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    btnMostrar: TBitBtn;
    dsRelacaoManutPeriodicas: TDataSource;
    dbg1: TDBGrid;
    lblLocalVei: TLabel;
    chkLocalVei: TCheckBox;
    cbbLocalVei: TComboBox;
    lblApenasVencidos: TLabel;
    chkApenasVencidos: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbCODVEICloseUp(Sender: TObject);
    procedure dblkcbbCODVEIKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnMostrarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelacaoManutencoesPeriodicas: TFRelacaoManutencoesPeriodicas;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFRelacaoManutencoesPeriodicas.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblPlaca.Enabled := chkPlaca.Checked;
  dblkcbbCODVEI.Enabled := chkPlaca.Checked;
  dbtxtDESVEI.Enabled := chkPlaca.Checked;

  lblLocalVei.Enabled := chkLocalVei.Checked;
  cbbLocalVei.Enabled := chkLocalVei.Checked;

  lblApenasVencidos.Enabled := chkApenasVencidos.Checked;

end;

procedure TFRelacaoManutencoesPeriodicas.btnMostrarClick(Sender: TObject);
begin

  DmFire.ClientRelacaoManutPeriodicas.Close;
  DmFire.RelacaoManutPeriodicas.Close;
  DmFire.RelacaoManutPeriodicas.SQL.Clear;
  DmFire.RelacaoManutPeriodicas.SQL.Add(' SELECT MANUT_SERV.*,MANUT_GER.*,');
  DmFire.RelacaoManutPeriodicas.SQL.Add('       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,VEICULO.TIPO,VEICULO.LOCALVEI,');
  DmFire.RelacaoManutPeriodicas.SQL.Add('       USUARIO.NOMUSU,');
  DmFire.RelacaoManutPeriodicas.SQL.Add('       FORNECEDOR.*,');
  DmFire.RelacaoManutPeriodicas.SQL.Add('       SERVICO.*');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' FROM MANUT_SERV');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' INNER JOIN MANUT_GER ON MANUT_GER.CODMAN = MANUT_SERV.CODMAN AND');
  DmFire.RelacaoManutPeriodicas.SQL.Add('                        MANUT_GER.CODVEI = MANUT_SERV.CODVEI');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = MANUT_GER.CODVEI');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' INNER JOIN USUARIO ON USUARIO.CODUSU = MANUT_GER.CODUSU');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' INNER JOIN FORNECEDOR ON FORNECEDOR.CODFOR = MANUT_GER.CODFOR');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' INNER JOIN SERVICO ON SERVICO.CODSER = MANUT_SERV.CODSER');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' WHERE');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' MANUT_SERV.codvei <> 999999');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' AND MANUT_SERV.TIPSER IN (''PERIODICO'',''REVISAO'')');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' AND MANUT_SERV.SITSER = ''ABERTO''');
  DmFire.RelacaoManutPeriodicas.SQL.Add(' AND VEICULO.SITVEI = ''ATIVO''');

  if chkPlaca.Checked then
     begin
       if Trim(dblkcbbCODVEI.Text) = '' then
          begin
            Application.MessageBox('Informe a Placa', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := dblkcbbCODVEI;
            Abort;
          end;

       DmFire.RelacaoManutPeriodicas.SQL.Add(' AND MANUT_SERV.CODVEI = :CODVEI');
       DmFire.RelacaoManutPeriodicas.ParamByName('CODVEI').Value := VeiculosCODVEI.AsInteger;
     end;

  if chkLocalVei.Checked then
     begin
       if Trim(cbbLocalVei.Text) = '' then
          begin
            Application.MessageBox('Informe o local', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := cbbLocalVei;
            Abort;
          end;

       DmFire.RelacaoManutPeriodicas.SQL.Add(' AND VEICULO.LOCALVEI = '+QuotedStr(cbbLocalVei.Text));
     end;

  DmFire.RelacaoManutPeriodicas.Open;
  DmFire.ClientRelacaoManutPeriodicas.Open;
  DmFire.ClientRelacaoManutPeriodicas.IndexFieldNames := 'PLAVEI;vnKmRestante';

  if chkApenasVencidos.Checked then
     begin
       DmFire.ClientRelacaoManutPeriodicas.First;
       while not DmFire.ClientRelacaoManutPeriodicas.Eof do
          begin
            if ((DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger > 2500) or (DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger = 0))
               and ((DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger > 10) or (DateToStr(DmFire.ClientRelacaoManutPeriodicasDATVCT.Value) = '30/12/1899')) then
               begin
                 DmFire.ClientRelacaoManutPeriodicas.Delete;
               end
            else
               begin
                 DmFire.ClientRelacaoManutPeriodicas.Next;
               end;
          end;
       DmFire.ClientRelacaoManutPeriodicas.First;
     end;

end;

procedure TFRelacaoManutencoesPeriodicas.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field.FieldName = 'vnKmRestante' then
     begin
       //MUDA A COR DA LINHA
       if DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger < 0 then
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
       if DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger > 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clGreen;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end
       else
       if DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger = 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            //Brush.Color := clGreen;
            Font.Color := clWindow;
            //Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;

       if (DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger > 0) and (DmFire.ClientRelacaoManutPeriodicasvnKmRestante.AsInteger < 2500) then
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

if Column.Field.FieldName = 'vnDiasRestante' then
     begin
       //MUDA A COR DA LINHA
       if DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger < 0 then
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
       if DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger > 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clGreen;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end
       else
       if DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger = 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            //Brush.Color := clGreen;
            Font.Color := clWhite;
            //Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;

       if (DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger > 0) and (DmFire.ClientRelacaoManutPeriodicasvnDiasRestante.AsInteger < 10) then
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

     if Column.Field.FieldName = 'DATVCT' then
     begin
       //MUDA A COR DA LINHA
       if DateToStr(DmFire.ClientRelacaoManutPeriodicasDATVCT.Value) = '30/12/1899' then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            //Brush.Color := clWhite;
            Font.Color := clWhite;
            //Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
     end;

     if Column.Field.FieldName = 'KMVCT' then
     begin
       //MUDA A COR DA LINHA
       if DmFire.ClientRelacaoManutPeriodicasKMVCT.Value = 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            //Brush.Color := clWhite;
            Font.Color := clWhite;
            //Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
     end;
end;

procedure TFRelacaoManutencoesPeriodicas.dblkcbbCODVEICloseUp(Sender: TObject);
begin
  if Trim(dblkcbbCODVEI.Text) <> '' then
     begin
        dbtxtDESVEI.DataSource := dsVeiculos;
     end
  else
    begin
      dbtxtDESVEI.DataSource := dsReserva;
    end;
end;

procedure TFRelacaoManutencoesPeriodicas.dblkcbbCODVEIKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Trim(dblkcbbCODVEI.Text) <> '' then
     begin
        dbtxtDESVEI.DataSource := dsVeiculos;
     end
  else
    begin
      dbtxtDESVEI.DataSource := dsReserva;
    end;
end;

procedure TFRelacaoManutencoesPeriodicas.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFRelacaoManutencoesPeriodicas.FormShow(Sender: TObject);
begin
  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;
  dbtxtDESVEI.DataSource := dsReserva;

  btnMostrar.Click;
end;

end.
