unit URelacaoCargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, rxToolEdit, StdCtrls, Mask, rxCurrEdit, DBCtrls,
  Buttons, DB, IBCustomDataSet, IBQuery, AppEvnts, ImgList;

type
  TFRelacaoCargas = class(TForm)
    dbg1: TDBGrid;
    lblPlaca: TLabel;
    lblCarga: TLabel;
    lblDataChegada: TLabel;
    lblDataSaida: TLabel;
    lblMotorista: TLabel;
    lblADatSaida: TLabel;
    lblADatChegada: TLabel;
    btnMostrar: TBitBtn;
    chkPlaca: TCheckBox;
    dblkcbbPlaca: TDBLookupComboBox;
    chkCarga: TCheckBox;
    edtCarga: TCurrencyEdit;
    chkDataChegada: TCheckBox;
    edtDatChegadaIni: TDateEdit;
    edtDatChegadaFim: TDateEdit;
    edtDatSaidaIni: TDateEdit;
    edtDatSaidaFim: TDateEdit;
    chkDataSaida: TCheckBox;
    chkMotorista: TCheckBox;
    dblkcbbCODMOT: TDBLookupComboBox;
    btnNovo: TBitBtn;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    VeiculosSITVEI: TIBStringField;
    dsVeiculos: TDataSource;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    dsMotoristas: TDataSource;
    dsConsCargas: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    btnAbrir: TBitBtn;
    chkSituacao: TCheckBox;
    lblSituacao: TLabel;
    cbbSituacao: TComboBox;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnCodMot : Integer;
  end;

var
  FRelacaoCargas: TFRelacaoCargas;

implementation

uses UDmFire, UCadCargas, UDespesasViagem;

{$R *.dfm}

procedure TFRelacaoCargas.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblPlaca.Enabled := chkPlaca.Checked;
  dblkcbbPlaca.Enabled := chkPlaca.Checked;

  lblCarga.Enabled := chkCarga.Checked;
  edtCarga.Enabled := chkCarga.Checked;

  lblMotorista.Enabled := chkMotorista.Checked;
  dblkcbbCODMOT.Enabled := chkMotorista.Checked;

  lblDataSaida.Enabled := chkDataSaida.Checked;
  lblADatSaida.Enabled := chkDataSaida.Checked;
  edtDatSaidaIni.Enabled := chkDataSaida.Checked;
  edtDatSaidaFim.Enabled := chkDataSaida.Checked;

  lblDataChegada.Enabled := chkDataChegada.Checked;
  lblADatChegada.Enabled := chkDataChegada.Checked;
  edtDatChegadaIni.Enabled := chkDataChegada.Checked;
  edtDatChegadaFim.Enabled := chkDataChegada.Checked;

  lblSituacao.Enabled := chkSituacao.Checked;
  cbbSituacao.Enabled := chkSituacao.Checked;

 // btnExcluir.Enabled := (not(ClientRelacaoEntradaSaida.IsEmpty) and (ClientRelacaoEntradaSaidaKMENT.AsInteger = 0));
 // btnAlterar.Enabled := (not(ClientRelacaoEntradaSaida.IsEmpty) and (ClientRelacaoEntradaSaidaKMENT.AsInteger > 0) and (ClientRelacaoEntradaSaidaQTD_COMB.AsInteger = 0));

end;

procedure TFRelacaoCargas.btnAbrirClick(Sender: TObject);
begin
  if not DmFire.ConsCargas.IsEmpty then
     begin
       DmFire.CadCargas.Close;
       DmFire.CadCargas.ParamByName('IDCARGA').AsInteger := DmFire.ConsCargasIDCARGA.AsInteger;
       DmFire.CadCargas.Open;
       if not DmFire.CadCargas.IsEmpty then
          begin
            FRelacaoCargas.Visible := false;
            FCadCargas := TFCadCargas.Create(Self);
            FCadCargas.ShowModal;
            FreeAndNil(FCadCargas);
            FRelacaoCargas.Visible := True;
          end;
     end;
end;

procedure TFRelacaoCargas.btnMostrarClick(Sender: TObject);
begin
  DmFire.ConsCargas.Close;
  DmFire.ConsCargas.SQL.Clear;
  DmFire.ConsCargas.SQL.Add('  SELECT CARGAS.*,');
  DmFire.ConsCargas.SQL.Add('       MOTORISTA.NOMMOT,');
  DmFire.ConsCargas.SQL.Add('       VEICULO.PLAVEI');
  DmFire.ConsCargas.SQL.Add('    FROM CARGAS');
  DmFire.ConsCargas.SQL.Add('    LEFT JOIN MOTORISTA ON MOTORISTA.CODMOT = CARGAS.CODMOT');
  DmFire.ConsCargas.SQL.Add('    LEFT JOIN VEICULO ON VEICULO.CODVEI = CARGAS.CODVEI');
  DmFire.ConsCargas.SQL.Add('   WHERE');
  DmFire.ConsCargas.SQL.Add('    CARGAS.IDCARGA <> 99999999');//SO PARA DIXAR FIXO
  DmFire.ConsCargas.SQL.Add('');
  if chkPlaca.Checked then
     begin
       if Trim(dblkcbbPlaca.Text) = '' then
          begin
            Application.MessageBox('Informe a Placa','Aviso',MB_OK+MB_ICONWARNING);
            ActiveControl := dblkcbbPlaca;
            Abort;
          end
       else
          begin
            DmFire.ConsCargas.SQL.Add(' AND VEICULO.CODVEI = :CODVEI');
            DmFire.ConsCargas.ParamByName('CODVEI').AsInteger := VeiculosCODVEI.Value;
          end;
     end;

  //se for diferente de zero é pq foi chamado por outra tela
  if vnCodMot <> 0 then
     begin
       DmFire.ConsCargas.SQL.Add(' AND CARGAS.CODMOT = :CODMOT');
       DmFire.ConsCargas.ParamByName('CODMOT').AsInteger := vnCodMot;
     end;

  if chkMotorista.Checked then
     begin
       if Trim(dblkcbbCODMOT.Text) = '' then
          begin
            Application.MessageBox('Informe o Motorista','Aviso',MB_OK+MB_ICONWARNING);
            ActiveControl := dblkcbbCODMOT;
            Abort;
          end
       else
          begin
            DmFire.ConsCargas.SQL.Add(' AND CARGAS.CODMOT = :CODMOT');
            DmFire.ConsCargas.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.Value;
          end;
     end;

  if chkCarga.Checked then
     begin
       DmFire.ConsCargas.SQL.Add(' AND CARGAS.IDCARGA = :CARGA');
       DmFire.ConsCargas.ParamByName('CARGA').AsInteger := edtCarga.AsInteger;
     end;

  if chkDataSaida.Checked then
     begin
       DmFire.ConsCargas.SQL.Add(' AND CARGAS.DATSAI BETWEEN :DATINISAI AND :DATFIMSAI');
       DmFire.ConsCargas.ParamByName('DATINISAI').Value := edtDatSaidaIni.Date;
       DmFire.ConsCargas.ParamByName('DATFIMSAI').Value := edtDatSaidaFim.Date;
     end;

  if chkDataChegada.Checked then
     begin
       DmFire.ConsCargas.SQL.Add(' AND CARGAS.DATCHE BETWEEN :DATINIENT AND :DATFIMENT');
       DmFire.ConsCargas.ParamByName('DATINIENT').Value := edtDatChegadaIni.Date;
       DmFire.ConsCargas.ParamByName('DATFIMENT').Value := edtDatChegadaFim.Date;
     end;

  if chkSituacao.Checked then
     begin
       DmFire.ConsCargas.SQL.Add(' AND CARGAS.SITCAR = '+QuotedStr(cbbSituacao.Text));
     end;

     DmFire.ConsCargas.SQL.Add(' ORDER BY CARGAS.IDCARGA DESC');
  DmFire.ConsCargas.Open;







end;

procedure TFRelacaoCargas.btnNovoClick(Sender: TObject);
begin
  DmFire.CadCargas.Open;
  DmFire.CadCargas.Insert;

  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('SELECT MAX(IDCARGA) as IDCARGA FROM CARGAS');
  DmFire.ConsSql.Open;
  if not DmFire.ConsSql.IsEmpty then
     DmFire.CadCargasIDCARGA.AsInteger := DmFire.ConsSql.FieldByName('IDCARGA').AsInteger + 1
  else
     DmFire.CadCargasIDCARGA.AsInteger := 1;

  FRelacaoCargas.Visible := false;
  FCadCargas := TFCadCargas.Create(Self);
  FCadCargas.ShowModal;
  FreeAndNil(FCadCargas);
  FRelacaoCargas.Visible := True;
end;

procedure TFRelacaoCargas.dbg1CellClick(Column: TColumn);
begin
if not DmFire.ConsCargas.IsEmpty then
   begin
      if dbg1.SelectedField.FieldName = 'Img' then
         begin
           FDespesasViagem := TFDespesasViagem.Create(Self);
           FDespesasViagem.Show;
           FDespesasViagem.edtNumCarga.Value := DmFire.ConsCargasIDCARGA.AsInteger;
           FDespesasViagem.edtNumCargaExit(Self);
         end;
   end;
end;

procedure TFRelacaoCargas.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not DmFire.ConsCargas.IsEmpty then
   begin
      if Column.FieldName = 'Img' then
            begin
              dbg1.Canvas.FillRect(Rect);
              ImageList1.Draw(dbg1.Canvas,Rect.Left+6,Rect.Top+1,0);
            end;
   end;
end;

procedure TFRelacaoCargas.FormCreate(Sender: TObject);
begin
  vnCodMot := 0;
end;

procedure TFRelacaoCargas.FormShow(Sender: TObject);
begin
    Motoristas.Close;
    Motoristas.Open;
    Motoristas.Last;
    Motoristas.First;

    Veiculos.Close;
    Veiculos.Open;
    Veiculos.Last;
    Veiculos.First;

    {edtDatSaidaIni.Date := Date;
    edtDatSaidaFim.Date := Date;
    chkDataSaida.Checked := True;}
    chkSituacao.Checked := True;

    btnMostrar.Click;
end;

end.
