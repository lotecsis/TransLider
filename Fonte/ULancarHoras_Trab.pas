unit ULancarHoras_Trab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, rxToolEdit, rxCurrEdit, ExtCtrls, Grids,
  DBGrids, Buttons, DBClient, DateUtils, ImgList, IBCustomDataSet, IBQuery,
  Provider;

type
  TFLancarHoras_Trab = class(TForm)
    edtNumCarga: TCurrencyEdit;
    lbl1: TLabel;
    edtPlaVei: TEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    edtNomMot: TEdit;
    lbl12: TLabel;
    lbl8: TLabel;
    lbl2: TLabel;
    dbedtDATSAIDA: TDBEdit;
    lbl3: TLabel;
    dbedtHORSAIDA: TDBEdit;
    lbl9: TLabel;
    lbl5: TLabel;
    dbedtDATENT: TDBEdit;
    lbl6: TLabel;
    dbedtHORENT: TDBEdit;
    dbedtDESTINO: TDBEdit;
    dsCadEntradaSaida: TDataSource;
    dbg1: TDBGrid;
    pnl1: TPanel;
    edtHorIni: TMaskEdit;
    edtHorFim: TMaskEdit;
    btnAdicionar: TBitBtn;
    edtDatSaida: TDateEdit;
    dbg2: TDBGrid;
    Temporario: TClientDataSet;
    TemporarioData: TDateField;
    TemporarioHorIni: TTimeField;
    TemporarioHorFim: TTimeField;
    TemporarioQtdMin: TFloatField;
    dsTemporario: TDataSource;
    TemporarioImg: TStringField;
    edtQtdMin: TCurrencyEdit;
    TemporarioTQtdMin: TAggregateField;
    dbedtTQtdMin: TDBEdit;
    Label1: TLabel;
    il1: TImageList;
    btnConfirmar: TBitBtn;
    ConsHoras_Trab: TIBQuery;
    ConsHoras_TrabSEQENTSAI: TIntegerField;
    ConsHoras_TrabCODVEI: TIntegerField;
    ConsHoras_TrabSEQMOV: TIntegerField;
    ConsHoras_TrabDATA: TDateField;
    ConsHoras_TrabQTDMIN: TFloatField;
    dsConsHoras_Trab: TDataSource;
    pvdConsHoras_Trab: TDataSetProvider;
    ClientConsHoras_Trab: TClientDataSet;
    ClientConsHoras_TrabSEQENTSAI: TIntegerField;
    ClientConsHoras_TrabCODVEI: TIntegerField;
    ClientConsHoras_TrabSEQMOV: TIntegerField;
    ClientConsHoras_TrabDATA: TDateField;
    ClientConsHoras_TrabQTDMIN: TFloatField;
    ClientConsHoras_TrabvnExcedido: TFloatField;
    ClientConsHoras_TrabImg: TStringField;
    procedure edtNumCargaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtHorIniExit(Sender: TObject);
    procedure edtHorFimExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ClientConsHoras_TrabCalcFields(DataSet: TDataSet);
    procedure dbg2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg2CellClick(Column: TColumn);
    procedure edtDatSaidaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLancarHoras_Trab: TFLancarHoras_Trab;

implementation

uses URelacaoEntrada_Saida, UDmFire;

{$R *.dfm}

procedure TFLancarHoras_Trab.btnAdicionarClick(Sender: TObject);
var vnQtdMin : Double;
begin
   if edtNumCarga.Value = 0 then
      begin
        Application.MessageBox('Informe a Carga','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtNumCarga;
        Abort;
      end;

   if edtDatSaida.Date = 0 then
      begin
        Application.MessageBox('Informe a data','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtDatSaida;
        Abort;
      end;

   if DmFire.CadEntradaSaidaDATSAIDA.AsDateTime > edtDatSaida.Date then
      begin
        Application.MessageBox('A data não pode ser menor que a data de saída da carga','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := edtDatSaida;
        Abort;
      end;


   if (edtHorIni.Text <> '  :  ') and (edtHorFim.Text <> '  :  ') then
      begin
        vnQtdMin := MinutesBetween(StrToTime(edtHorIni.Text),StrToTime(edtHorFim.Text));

        Temporario.Open;
        Temporario.Insert;
        TemporarioData.AsDateTime := edtDatSaida.Date;
        TemporarioHorIni.Value := StrToTime(edtHorIni.Text);
        TemporarioHorFim.Value := StrToTime(edtHorFim.Text);
        TemporarioQtdMin.Value := vnQtdMin;
        Temporario.Post;

        edtHorIni.Clear;
        edtHorFim.Clear;
        edtQtdMin.Value := 0;

        ActiveControl := edtHorIni;
      end;


end;

procedure TFLancarHoras_Trab.btnConfirmarClick(Sender: TObject);
begin
  if not Temporario.IsEmpty then
     begin
       DmFire.CadHoras_Trab.Open;
       DmFire.CadHoras_Trab.Insert;
       DmFire.CadHoras_TrabSEQENTSAI.AsInteger :=  DmFire.CadEntradaSaidaSEQENTSAI.AsInteger;
       DmFire.CadHoras_TrabCODVEI.AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
       DmFire.CadHoras_TrabDATA.AsDateTime := edtDatSaida.Date;
       DmFire.CadHoras_TrabQTDMIN.AsFloat := TemporarioTQtdMin.Value;

       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT MAX(SEQMOV) AS SEQMOV');
       DmFire.ConsSql.SQL.Add('   FROM HORAS_TRAB');
       DmFire.ConsSql.SQL.Add('    WHERE');
       DmFire.ConsSql.SQL.Add('      SEQENTSAI = :SEQENTSAI AND');
       DmFire.ConsSql.SQL.Add('      CODVEI = :CODVEI');
       DmFire.ConsSql.ParamByName('SEQENTSAI').AsInteger := DmFire.CadEntradaSaidaSEQENTSAI.AsInteger;
       DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
       DmFire.ConsSql.Open;

       DmFire.CadHoras_TrabSEQMOV.AsInteger := DmFire.ConsSql.FieldByName('SEQMOV').AsInteger + 1;
       DmFire.CadHoras_Trab.Post;
       DmFire.ibtTransacao.CommitRetaining;
       Temporario.EmptyDataSet;

       if (IncDay(edtDatSaida.Date)) <= DmFire.CadEntradaSaidaDATENT.AsDateTime then
           begin
             edtDatSaida.Date := IncDay(edtDatSaida.Date);
             ActiveControl := edtHorIni;
           end;

       ClientConsHoras_Trab.Close;
       ConsHoras_Trab.Close;
       ConsHoras_Trab.ParamByName('SEQENTSAI').AsInteger := DmFire.CadEntradaSaidaSEQENTSAI.AsInteger;
       ConsHoras_Trab.ParamByName('CODVEI').AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
       ConsHoras_Trab.Open;
       ClientConsHoras_Trab.Open;
     end;
end;

procedure TFLancarHoras_Trab.ClientConsHoras_TrabCalcFields(DataSet: TDataSet);
begin
  if ClientConsHoras_TrabQTDMIN.AsInteger > 580 then
     begin
       ClientConsHoras_TrabvnExcedido.Value := ClientConsHoras_TrabQTDMIN.AsInteger - 580;
     end
  else
     begin
       ClientConsHoras_TrabvnExcedido.Value := 0;
     end;
end;

procedure TFLancarHoras_Trab.dbg1CellClick(Column: TColumn);
begin
if (Column.FieldName = 'Img') and (not Temporario.IsEmpty) then
   begin
   if Application.MessageBox('Deseja realmente excluir o lançamento?','Confirmação',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) = mrYes then
      begin
         Temporario.Delete;
      end;
   end;
end;

procedure TFLancarHoras_Trab.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (Column.FieldName = 'Img') and (not Temporario.IsEmpty) then
    begin
        dbg1.Canvas.FillRect(Rect);
        il1.Draw(dbg1.Canvas,Rect.Left+7,Rect.Top+1,9);
    end;
end;

procedure TFLancarHoras_Trab.dbg2CellClick(Column: TColumn);
begin
if (Column.FieldName = 'Img') and (not ClientConsHoras_Trab.IsEmpty) then
   begin
   if Application.MessageBox('Deseja realmente excluir o lançamento?','Confirmação',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) = mrYes then
      begin
        DmFire.CadHoras_Trab.Close;
        DmFire.CadHoras_Trab.ParamByName('SEQENTSAI').AsInteger := ClientConsHoras_TrabSEQENTSAI.AsInteger;
        DmFire.CadHoras_Trab.ParamByName('CODVEI').AsInteger := ClientConsHoras_TrabCODVEI.AsInteger;
        DmFire.CadHoras_Trab.ParamByName('SEQMOV').AsInteger := ClientConsHoras_TrabSEQMOV.AsInteger;
        DmFire.CadHoras_Trab.Open;
        if not DmFire.CadHoras_Trab.IsEmpty then
           begin
             DmFire.CadHoras_Trab.Delete;
             DmFire.ibtTransacao.CommitRetaining;

             ClientConsHoras_Trab.Close;
             ConsHoras_Trab.Close;
             ConsHoras_Trab.ParamByName('SEQENTSAI').AsInteger := DmFire.CadEntradaSaidaSEQENTSAI.AsInteger;
             ConsHoras_Trab.ParamByName('CODVEI').AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
             ConsHoras_Trab.Open;
             ClientConsHoras_Trab.Open;
           end;
      end;
   end;
end;

procedure TFLancarHoras_Trab.dbg2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if Column.Field.FieldName = 'vnExcedido' then
      begin
         with (Sender as TDBGrid).Canvas do
            begin
              if ClientConsHoras_TrabvnExcedido.Value > 0 then
                 begin
                   Brush.Color := $00B9B9FF;
                   FillRect(Rect);
                   Font.Style := [fsbold];
                 end;
            end;
      end;
      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

if (Column.FieldName = 'Img') and (not ClientConsHoras_Trab.IsEmpty) then
    begin
        dbg2.Canvas.FillRect(Rect);
        il1.Draw(dbg2.Canvas,Rect.Left+7,Rect.Top+1,9);
    end;
end;

procedure TFLancarHoras_Trab.edtDatSaidaExit(Sender: TObject);
begin
ActiveControl := edtHorIni;
end;

procedure TFLancarHoras_Trab.edtHorFimExit(Sender: TObject);
var Hora : TDateTime;
    QtdMin : Double;
begin
  if edtHorFim.Text <> '  :  ' then
     begin
        try
          Hora := StrToTime(edtHorFim.Text);
        except
          Application.MessageBox('Informe um horário correto','Aviso',MB_ICONWARNING+MB_OK);
          ActiveControl := edtHorFim;
          Abort;
        end;

        if edtHorIni.Text <> '  :  ' then
           begin
             QtdMin := MinutesBetween(StrToTime(edtHorIni.Text),StrToTime(edtHorFim.Text));
             edtQtdMin.Value := QtdMin;
           end
        else
           begin
             edtQtdMin.Value := 0;
           end;
     end;
end;

procedure TFLancarHoras_Trab.edtHorIniExit(Sender: TObject);
var Hora : TDateTime;
begin
  if edtHorIni.Text <> '  :  ' then
     begin
        try
          Hora := StrToTime(edtHorIni.Text);
        except
          Application.MessageBox('Informe um horário correto','Aviso',MB_ICONWARNING+MB_OK);
          ActiveControl := edtHorIni;
          Abort;
        end;
     end;
end;

procedure TFLancarHoras_Trab.edtNumCargaExit(Sender: TObject);
begin
if edtNumCarga.Value <> 0 then
     begin
       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT entrada_saida.*, veiculo.plavei, motorista.nommot,motorista.apemot');
       DmFire.ConsSql.SQL.Add(' FROM entrada_saida');
       DmFire.ConsSql.SQL.Add(' INNER JOIN veiculo on veiculo.codvei = entrada_saida.codvei');
       DmFire.ConsSql.SQL.Add(' INNER JOIN motorista ON motorista.codmot = entrada_saida.codmot');
       DmFire.ConsSql.SQL.Add(' WHERE');
       DmFire.ConsSql.SQL.Add(' entrada_saida.carga = :carga');
       DmFire.ConsSql.ParamByName('carga').Value := edtNumCarga.AsInteger;
       DmFire.ConsSql.Open;
       if DmFire.ConsSql.IsEmpty then
          begin
            Application.MessageBox('Carga não encontrada','Aviso',MB_ICONWARNING+MB_OK);
            edtPlaVei.Clear;
            edtNomMot.Clear;
            edtDatSaida.Date := 0;
            btnAdicionar.Enabled := false;
            DmFire.CadEntradaSaida.Close;
            ConsHoras_Trab.Close;
            ClientConsHoras_Trab.Close;
            Abort;
          end
       else
          begin
             DmFire.CadEntradaSaida.Close;
             DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger;
             DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := DmFire.ConsSql.FieldByName('CODVEI').AsInteger;
             DmFire.CadEntradaSaida.Open;

             ClientConsHoras_Trab.Close;
             ConsHoras_Trab.Close;
             ConsHoras_Trab.ParamByName('SEQENTSAI').AsInteger := DmFire.CadEntradaSaidaSEQENTSAI.AsInteger;
             ConsHoras_Trab.ParamByName('CODVEI').AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
             ConsHoras_Trab.Open;
             ClientConsHoras_Trab.Open;

             edtPlaVei.Text := DmFire.ConsSql.FieldByName('PLAVEI').AsString;
             edtNomMot.Text := DmFire.ConsSql.FieldByName('NOMMOT').AsString;
             edtDatSaida.Date := DmFire.CadEntradaSaidaDATSAIDA.AsDateTime;
             btnAdicionar.Enabled := DmFire.CadEntradaSaidaDATENT.AsDateTime <> 0;
          end;
     end
else
     begin
        edtPlaVei.Clear;
        edtNomMot.Clear;
        edtDatSaida.Date := 0;
        btnAdicionar.Enabled := false;
        DmFire.CadEntradaSaida.Close;
        ConsHoras_Trab.Close;
        ClientConsHoras_Trab.Close;
     end;

    Temporario.Open;
    Temporario.EmptyDataSet;

    ActiveControl := edtHorIni;
end;

procedure TFLancarHoras_Trab.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFLancarHoras_Trab.FormShow(Sender: TObject);
begin
edtPlaVei.Clear;
edtNomMot.Clear;
DmFire.CadEntradaSaida.Close;

Temporario.Open;
Temporario.EmptyDataSet;

end;

end.
