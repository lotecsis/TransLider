unit UConsInfracoesMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  DBCtrls, Mask, rxToolEdit, AppEvnts, DateUtils, ExtCtrls;

type
  TFConsInfracoesMov = class(TForm)
    dbg1: TDBGrid;
    lblAutoInfra: TLabel;
    edtAutoInfra: TEdit;
    chkPlaca: TCheckBox;
    dblkcbbCODVEI: TDBLookupComboBox;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsVeiculos: TDataSource;
    dblkcbbCODINFRA: TDBLookupComboBox;
    dbtxtCODINFRA: TDBText;
    Infracoes: TIBQuery;
    InfracoesCODINFRA: TIBStringField;
    InfracoesDESINFRA: TIBStringField;
    InfracoesQTD_PONTOS: TIntegerField;
    dsInfracoes: TDataSource;
    lblPlaca: TLabel;
    lblInfracao: TLabel;
    lblCondutor: TLabel;
    dblkcbbCODMOT: TDBLookupComboBox;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    dsMotoristas: TDataSource;
    lblGravidade: TLabel;
    lblDataInfra: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    lbla: TLabel;
    cbbGravidade: TComboBox;
    chkAutoInfra: TCheckBox;
    chkInfracao: TCheckBox;
    chkCondutor: TCheckBox;
    chkDataInfra: TCheckBox;
    chkGravidade: TCheckBox;
    btnMostrar: TBitBtn;
    dsReserva: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    dsClientConsInfracoesMov: TDataSource;
    dbedtvnQtdPontos: TDBEdit;
    dbedtvnQtdInfra: TDBEdit;
    dbedtvnVlrTotal: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    pnl1: TPanel;
    btnAbrir: TBitBtn;
    btnNovo: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbCODINFRACloseUp(Sender: TObject);
    procedure dblkcbbCODINFRAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsInfracoesMov: TFConsInfracoesMov;

implementation

uses UDmFire, UInfracoesMov, UPrincipal;

{$R *.dfm}

procedure TFConsInfracoesMov.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblAutoInfra.Enabled := chkAutoInfra.Checked;
  edtAutoInfra.Enabled := chkAutoInfra.Checked;

  lblPlaca.Enabled := chkPlaca.Checked;
  dblkcbbCODVEI.Enabled := chkPlaca.Checked;

  lblInfracao.Enabled := chkInfracao.Checked;
  dblkcbbCODINFRA.Enabled := chkInfracao.Checked;
  dbtxtCODINFRA.Enabled := chkInfracao.Checked;

  lblCondutor.Enabled := chkCondutor.Checked;
  dblkcbbCODMOT.Enabled := chkCondutor.Checked;

  lblGravidade.Enabled := chkGravidade.Checked;
  cbbGravidade.Enabled := chkGravidade.Checked;

  lblDataInfra.Enabled := chkDataInfra.Checked;
  lbla.Enabled := chkDataInfra.Checked;
  edtDatIni.Enabled := chkDataInfra.Checked;
  edtDatFim.Enabled := chkDataInfra.Checked;

  btnAbrir.Enabled := not DmFire.ClientConsInfracoesMov.IsEmpty;
end;

procedure TFConsInfracoesMov.btnAbrirClick(Sender: TObject);
begin
    DmFire.CadInfracoesMov.Close;
    DmFire.CadInfracoesMov.ParamByName('SEQINFRA').Value := DmFire.ClientConsInfracoesMovSEQINFRA.Value;
    DmFire.CadInfracoesMov.Open;
    if not DmFire.CadInfracoesMov.IsEmpty then
       begin
          FInfracoesMov := TFInfracoesMov.Create(Self);
          FConsInfracoesMov.Visible := false;
          FInfracoesMov.vaOperacao := 'VISUALIZAR';
          FInfracoesMov.ShowModal;
          FreeAndNil(FInfracoesMov);
          FConsInfracoesMov.Visible := True;
       end;
end;

procedure TFConsInfracoesMov.btnMostrarClick(Sender: TObject);
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

    if chkAutoInfra.Checked then
       begin
         if Trim(edtAutoInfra.Text) = '' then
            begin
              Application.MessageBox('Informe o auto da infração','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := edtAutoInfra;
              Abort;
            end;
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.autoinfra = '+QuotedStr(edtAutoInfra.Text));
       end;

    if chkPlaca.Checked then
       begin
         if Trim(dblkcbbCODVEI.Text) = '' then
            begin
              Application.MessageBox('Informe o veículo','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := dblkcbbCODVEI;
              Abort;
            end;
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.codvei = :codvei');
         DmFire.ConsInfracoesMov.ParamByName('codvei').Value := VeiculosCODVEI.Value;
       end;

    if chkInfracao.Checked then
       begin
         if Trim(dblkcbbCODINFRA.Text) = '' then
            begin
              Application.MessageBox('Informe a infração','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := dblkcbbCODINFRA;
              Abort;
            end;
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.codinfra = :codinfra');
         DmFire.ConsInfracoesMov.ParamByName('codinfra').Value := InfracoesCODINFRA.Value;
       end;

    if chkCondutor.Checked then
       begin
         if Trim(dblkcbbCODMOT.Text) = '' then
            begin
              Application.MessageBox('Informe o condutor','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := dblkcbbCODMOT;
              Abort;
            end;
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.codmot = :codmot');
         DmFire.ConsInfracoesMov.ParamByName('codmot').Value := MotoristasCODMOT.Value;
       end;

    if chkGravidade.Checked then
       begin
         if Trim(cbbGravidade.Text) = '' then
            begin
              Application.MessageBox('Informe a gravidade','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := cbbGravidade;
              Abort;
            end;
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_cad.gravidade = '+QuotedStr(cbbGravidade.Text));
       end;

    if chkDataInfra.Checked then
       begin
         DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.datinfra between :datini and :datfim');
         DmFire.ConsInfracoesMov.ParamByName('datini').Value := edtDatIni.Date;
         DmFire.ConsInfracoesMov.ParamByName('datfim').Value := edtDatFim.Date;
       end;

    DmFire.ConsInfracoesMov.SQL.Add('');
    DmFire.ConsInfracoesMov.SQL.Add('');

    DmFire.ConsInfracoesMov.Open;
    DmFire.ClientConsInfracoesMov.Open;
end;

procedure TFConsInfracoesMov.btnNovoClick(Sender: TObject);
begin
  DmFire.CadInfracoesMov.Open;
  DmFire.CadInfracoesMov.Insert;
  DmFire.CadInfracoesMovCODUSU.Value := FPrincipal.vnCodUsu;

  FInfracoesMov := TFInfracoesMov.Create(Self);
  FConsInfracoesMov.Visible := false;
  FInfracoesMov.vaOperacao := 'NOVO';
  FInfracoesMov.ShowModal;
  FreeAndNil(FInfracoesMov);
  FConsInfracoesMov.Visible := True;

end;

procedure TFConsInfracoesMov.dblkcbbCODINFRACloseUp(Sender: TObject);
begin
  if Trim(dblkcbbCODINFRA.Text) <> '' then
     begin
        dbtxtCODINFRA.DataSource := dsInfracoes;
     end
  else
    begin
      dbtxtCODINFRA.DataSource := dsReserva;
    end;
end;

procedure TFConsInfracoesMov.dblkcbbCODINFRAKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Trim(dblkcbbCODINFRA.Text) <> '' then
     begin
        dbtxtCODINFRA.DataSource := dsInfracoes;
     end
  else
    begin
      dbtxtCODINFRA.DataSource := dsReserva;
    end;
end;

procedure TFConsInfracoesMov.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsInfracoesMov.FormShow(Sender: TObject);
begin
  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;

  Motoristas.Close;
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

  Infracoes.Close;
  Infracoes.Open;
  Infracoes.Last;
  Infracoes.First;

  dbtxtCODINFRA.DataSource := dsReserva;

  chkDataInfra.Checked := True;
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);
  btnMostrar.Click;


end;

end.
