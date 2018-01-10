unit URelacaoManutencoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, Mask, rxToolEdit,
  rxCurrEdit, DB, IBCustomDataSet, IBQuery, AppEvnts, DateUtils;

type
  TFRelacaoManutencoes = class(TForm)
    dbg1: TDBGrid;
    lblPlaca: TLabel;
    dbtxtDESVEI: TDBText;
    dblkcbbCODVEI: TDBLookupComboBox;
    lblFornecedor: TLabel;
    dbtxtCID_UF: TDBText;
    dblkcbbCODFOR: TDBLookupComboBox;
    lblServico: TLabel;
    edtCodSer: TCurrencyEdit;
    btnConsServico: TBitBtn;
    lblDesSer: TLabel;
    lblTipo: TLabel;
    lblSituacao: TLabel;
    btnMostrar: TBitBtn;
    lblPeriodo: TLabel;
    cbbTipo: TComboBox;
    cbbSituacao: TComboBox;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    edtDescServico: TEdit;
    lblDescServico: TLabel;
    lblOrdemServico: TLabel;
    edtOrdemServico: TCurrencyEdit;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsVeiculos: TDataSource;
    dsReserva: TDataSource;
    Fornecedor: TIBQuery;
    FornecedorCODFOR: TIntegerField;
    FornecedorDESFOR: TIBStringField;
    FornecedorCIDFOR: TIBStringField;
    FornecedorSIGUFS: TIBStringField;
    FornecedorCID_UF: TStringField;
    dsFornecedor: TDataSource;
    chkPlaca: TCheckBox;
    chkFornecedor: TCheckBox;
    chkCodSer: TCheckBox;
    chkDesSer: TCheckBox;
    chkTipo: TCheckBox;
    chkSituacao: TCheckBox;
    chkOrdemServ: TCheckBox;
    chkPeriodo: TCheckBox;
    ApplicationEvents1: TApplicationEvents;
    lbla: TLabel;
    dsClientRelacaoManutencoes: TDataSource;
    lbl1: TLabel;
    cbbOrdemSql: TComboBox;
    dbedtTOTAL_GERAL: TDBEdit;
    dbedtTOTAL_DESC: TDBEdit;
    dbedtTOTAL_GERAL_DESC: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btnAlterarOS: TBitBtn;
    btnExcluir: TBitBtn;
    lblNumDoc: TLabel;
    edtNumDoc: TEdit;
    chkNumDoc: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbCODVEICloseUp(Sender: TObject);
    procedure dblkcbbCODVEIKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblkcbbCODFORCloseUp(Sender: TObject);
    procedure dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FornecedorCalcFields(DataSet: TDataSet);
    procedure btnConsServicoClick(Sender: TObject);
    procedure edtCodSerExit(Sender: TObject);
    procedure edtCodSerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnAlterarOSClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelacaoManutencoes: TFRelacaoManutencoes;

implementation

uses UDmFire, UConsServicoLancaManut, UAlteraOrdemServico;

{$R *.dfm}

procedure TFRelacaoManutencoes.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblPlaca.Enabled := chkPlaca.Checked;
  dblkcbbCODVEI.Enabled := chkPlaca.Checked;
  dbtxtDESVEI.Enabled := chkPlaca.Checked;

  lblFornecedor.Enabled := chkFornecedor.Checked;
  dblkcbbCODFOR.Enabled := chkFornecedor.Checked;
  dbtxtCID_UF.Enabled := chkFornecedor.Checked;

  lblServico.Enabled := chkCodSer.Checked;
  edtCodSer.Enabled := chkCodSer.Checked;
  btnConsServico.Enabled := chkCodSer.Checked;

  lblDescServico.Enabled := chkDesSer.Checked;
  edtDescServico.Enabled := chkDesSer.Checked;

  lblTipo.Enabled := chkTipo.Checked;
  cbbTipo.Enabled := chkTipo.Checked;

  lblSituacao.Enabled := chkSituacao.Checked;
  cbbSituacao.Enabled := chkSituacao.Checked;

  lblOrdemServico.Enabled := chkOrdemServ.Checked;
  edtOrdemServico.Enabled := chkOrdemServ.Checked;

  lblPeriodo.Enabled := chkPeriodo.Checked;
  lbla.Enabled := chkPeriodo.Checked;
  edtDatIni.Enabled := chkPeriodo.Checked;
  edtDatFim.Enabled := chkPeriodo.Checked;

  edtNumDoc.Enabled := chkNumDoc.Checked;
  lblNumDoc.Enabled := chkNumDoc.Checked;

  btnAlterarOS.Enabled := not (DmFire.ClientRelacaoManutencoes.IsEmpty);
  btnExcluir.Enabled := not (DmFire.ClientRelacaoManutencoes.IsEmpty);

end;

procedure TFRelacaoManutencoes.btnMostrarClick(Sender: TObject);
begin
  DmFire.RelacaoManutencoes.Close;
  DmFire.ClientRelacaoManutencoes.Close;
  DmFire.RelacaoManutencoes.SQL.Clear;
  DmFire.RelacaoManutencoes.SQL.Add('SELECT MANUT_SERV.*,MANUT_GER.*,');
  DmFire.RelacaoManutencoes.SQL.Add('       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,VEICULO.TIPO,');
  DmFire.RelacaoManutencoes.SQL.Add('       USUARIO.NOMUSU,');
  DmFire.RelacaoManutencoes.SQL.Add('       FORNECEDOR.*,');
  DmFire.RelacaoManutencoes.SQL.Add('       SERVICO.*');
  DmFire.RelacaoManutencoes.SQL.Add(' FROM MANUT_SERV');
  DmFire.RelacaoManutencoes.SQL.Add(' INNER JOIN MANUT_GER ON MANUT_GER.CODMAN = MANUT_SERV.CODMAN AND');
  DmFire.RelacaoManutencoes.SQL.Add('                         MANUT_GER.CODVEI = MANUT_SERV.CODVEI');
  DmFire.RelacaoManutencoes.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = MANUT_GER.CODVEI');
  DmFire.RelacaoManutencoes.SQL.Add(' INNER JOIN USUARIO ON USUARIO.CODUSU = MANUT_GER.CODUSU');
  DmFire.RelacaoManutencoes.SQL.Add(' INNER JOIN FORNECEDOR ON FORNECEDOR.CODFOR = MANUT_GER.CODFOR');
  DmFire.RelacaoManutencoes.SQL.Add(' INNER JOIN SERVICO ON SERVICO.CODSER = MANUT_SERV.CODSER');
  DmFire.RelacaoManutencoes.SQL.Add(' WHERE');
  DmFire.RelacaoManutencoes.SQL.Add(' MANUT_SERV.codvei <> 999999');

  if chkPlaca.Checked then
     begin
       if Trim(dblkcbbCODVEI.Text) = '' then
          begin
            Application.MessageBox('Informe a Placa', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := dblkcbbCODVEI;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_GER.CODVEI = :CODVEI');
       DmFire.RelacaoManutencoes.ParamByName('CODVEI').AsInteger := VeiculosCODVEI.AsInteger;
     end;

  if chkFornecedor.Checked then
     begin
       if Trim(dblkcbbCODFOR.Text) = '' then
          begin
            Application.MessageBox('Informe o Fornecedor', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := dblkcbbCODFOR;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_GER.CODFOR = :CODFOR');
       DmFire.RelacaoManutencoes.ParamByName('CODFOR').AsInteger := FornecedorCODFOR.AsInteger;
     end;

  if chkCodSer.Checked then
     begin
       if edtCodSer.Value = 0 then
          begin
            Application.MessageBox('Informe o Serviço', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := edtCodSer;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.CODSER = :CODSER');
       DmFire.RelacaoManutencoes.ParamByName('CODSER').AsInteger := edtCodSer.AsInteger;
     end;

  if chkDesSer.Checked then
     begin
       DmFire.RelacaoManutencoes.SQL.Add(' AND SERVICO.DESSER LIKE '+QuotedStr('%'+edtDescServico.Text+'%'));
     end;

  if chkTipo.Checked then
     begin
       if Trim(cbbTipo.Text) = '' then
          begin
            Application.MessageBox('Informe o Tipo', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := cbbTipo;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.TIPSER = :TIPSER');
       DmFire.RelacaoManutencoes.ParamByName('TIPSER').Value := cbbTipo.Text;
     end;

  if chkSituacao.Checked then
     begin
       if Trim(cbbSituacao.Text) = '' then
          begin
            Application.MessageBox('Informe a Situação', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := cbbSituacao;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.SITSER = :SITSER');
       DmFire.RelacaoManutencoes.ParamByName('SITSER').Value := cbbSituacao.Text;
     end;

  if chkOrdemServ.Checked then
     begin
       if edtOrdemServico.Value = 0 then
          begin
            Application.MessageBox('Informe a Ordem de Serviço', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := edtOrdemServico;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.NUMORDEM = :NUMORDEM');
       DmFire.RelacaoManutencoes.ParamByName('NUMORDEM').Value := edtOrdemServico.AsInteger;
     end;

  if chkPeriodo.Checked then
     begin
       if edtDatIni.Date = 0 then
          begin
            Application.MessageBox('Informe a Data Inicial', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := edtDatIni;
            Abort;
          end;
       if edtDatFim.Date = 0 then
          begin
            Application.MessageBox('Informe a Data Final', 'Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := edtDatFim;
            Abort;
          end;

       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.DATSER BETWEEN :DATINI AND :DATFIM');
       DmFire.RelacaoManutencoes.ParamByName('DATINI').Value := edtDatIni.Date;
       DmFire.RelacaoManutencoes.ParamByName('DATFIM').Value := edtDatFim.Date;
     end;

  if chkNumDoc.Checked then
     begin
       DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_SERV.NUMDOC = '+QuotedStr(edtNumDoc.Text));
     end;

     //ORDEM DO SQL
     {
      }
     if cbbOrdemSql.Text = 'PLACA' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY VEICULO.PLAVEI');
        end
     else
     if cbbOrdemSql.Text = 'FORNECEDOR' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY FORNECEDOR.DESFOR');
        end
     else
     if cbbOrdemSql.Text = 'SERVIÇO' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY SERVICO.DESSER');
        end
     else
     if cbbOrdemSql.Text = 'TIPO' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY MANUT_SERV.TIPSER');
        end
     else
     if cbbOrdemSql.Text = 'SITUAÇÃO' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY MANUT_SERV.SITSER');
        end
     else
     if cbbOrdemSql.Text = 'ORDEM SERVIÇO' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY MANUT_SERV.NUMORDEM');
        end
     else
     if cbbOrdemSql.Text = 'DATA' then
        begin
          DmFire.RelacaoManutencoes.SQL.Add(' ORDER BY MANUT_SERV.DATSER');
        end;

  DmFire.RelacaoManutencoes.Open;
  DmFire.ClientRelacaoManutencoes.Open;
end;

procedure TFRelacaoManutencoes.btnAlterarOSClick(Sender: TObject);
begin
if (DmFire.ClientRelacaoManutencoesTIPSER.Value = 'PERIODICO') and (DmFire.ClientRelacaoManutencoesSITSER.Value = 'ABERTO') then
    begin
      Application.MessageBox('Serviço periódico em aberto não pode ser diretamente aditado, é necessário alterar o serviço anterior que gerou o mesmo','Atenção',MB_ICONWARNING+MB_OK);
      Abort;
    end;
  FAlteraOrdemServico := TFAlteraOrdemServico.Create(Self);
  FAlteraOrdemServico.edtOrdemServico.Value := DmFire.ClientRelacaoManutencoesNUMORDEM.Value;
  FAlteraOrdemServico.vaPlaVei := DmFire.ClientRelacaoManutencoesPLAVEI.Value;
  FAlteraOrdemServico.vnCodVei := DmFire.ClientRelacaoManutencoesCODVEI.Value;
  FAlteraOrdemServico.ShowModal;
  FreeAndNil(FAlteraOrdemServico);
  btnMostrar.Click;
end;

procedure TFRelacaoManutencoes.btnConsServicoClick(Sender: TObject);
begin
FConsServicoLancaManut := TFConsServicoLancaManut.Create(Self);
  if FConsServicoLancaManut.ShowModal = mrOk then
     begin
       edtCodSer.Value := DmFire.ConsServicoLancaManutCODSER.Value;
       lblDesSer.Caption := DmFire.ConsServicoLancaManutDESSER.Value;
       ActiveControl := edtCodSer;
     end;

  FreeAndNil(FConsServicoLancaManut);
end;

procedure TFRelacaoManutencoes.btnExcluirClick(Sender: TObject);
begin
  DmFire.CadManut_Serv.Close;
  DmFire.CadManut_Serv.ParamByName('CODMAN').Value := DmFire.ClientRelacaoManutencoesCODMAN.Value;
  DmFire.CadManut_Serv.ParamByName('CODVEI').Value := DmFire.ClientRelacaoManutencoesCODVEI.Value;
  DmFire.CadManut_Serv.ParamByName('SEQSER').Value := DmFire.ClientRelacaoManutencoesSEQSER.Value;
  DmFire.CadManut_Serv.Open;
  if not DmFire.CadManut_Serv.IsEmpty then
     begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
              DmFire.CadManut_Serv.Delete;
              DmFire.ibtTransacao.CommitRetaining;
              btnMostrar.Click;
            End;
     end;
end;

procedure TFRelacaoManutencoes.dblkcbbCODFORCloseUp(Sender: TObject);
begin
if Trim(dblkcbbCODFOR.Text) <> '' then
     begin
        dbtxtCID_UF.DataSource := dsFornecedor;
     end
  else
    begin
      dbtxtCID_UF.DataSource := dsReserva;
    end;
end;

procedure TFRelacaoManutencoes.dblkcbbCODFORKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Trim(dblkcbbCODFOR.Text) <> '' then
     begin
        dbtxtCID_UF.DataSource := dsFornecedor;
     end
  else
    begin
      dbtxtCID_UF.DataSource := dsReserva;
    end;
end;

procedure TFRelacaoManutencoes.dblkcbbCODVEICloseUp(Sender: TObject);
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

procedure TFRelacaoManutencoes.dblkcbbCODVEIKeyUp(Sender: TObject;
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

procedure TFRelacaoManutencoes.edtCodSerExit(Sender: TObject);
begin
  if edtCodSer.Value <> 0 then
     begin
        DmFire.ConsServicoLancaManut.Close;
        DmFire.ConsServicoLancaManut.SQL.Clear;
        DmFire.ConsServicoLancaManut.SQL.Add('SELECT SERVICO.*');
        DmFire.ConsServicoLancaManut.SQL.Add(' FROM SERVICO');
        DmFire.ConsServicoLancaManut.SQL.Add(' WHERE SERVICO.SITSER = ''ATIVO''');
        DmFire.ConsServicoLancaManut.SQL.Add(' AND SERVICO.CODSER = :CODSER');
        DmFire.ConsServicoLancaManut.ParamByName('CODSER').Value := edtCodSer.AsInteger;
        DmFire.ConsServicoLancaManut.Open;
        if DmFire.ConsServicoLancaManut.IsEmpty then
           begin
             Application.MessageBox('Serviço não encontrado', 'Atenção', MB_ICONWARNING+MB_OK);
             lblDesSer.Caption := '';
             ActiveControl := edtCodSer;
             Abort;
           end
        else
           begin
             lblDesSer.Caption := DmFire.ConsServicoLancaManutDESSER.Value;
           end;
     end
  else
     begin
       lblDesSer.Caption := '';
     end;
end;

procedure TFRelacaoManutencoes.edtCodSerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F3 then
     begin
       btnConsServico.Click;
     end;
end;

procedure TFRelacaoManutencoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFRelacaoManutencoes.FormShow(Sender: TObject);
begin
  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;
  dbtxtDESVEI.DataSource := dsReserva;

  Fornecedor.Close;
  Fornecedor.Open;
  Fornecedor.Last;
  Fornecedor.First;
  dbtxtCID_UF.DataSource := dsReserva;

  chkPeriodo.Checked := True;
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);

  btnMostrar.Click;
end;

procedure TFRelacaoManutencoes.FornecedorCalcFields(DataSet: TDataSet);
begin
FornecedorCID_UF.Value := FornecedorCIDFOR.Value;

  if Trim(FornecedorSIGUFS.Value) <> '' then
     begin
        if Trim(FornecedorCIDFOR.Value) <> '' then
           begin
             FornecedorCID_UF.Value := FornecedorCID_UF.Value + '  -  '+FornecedorSIGUFS.Value;
           end
        else
           begin
              FornecedorCID_UF.Value := FornecedorSIGUFS.Value
           end;
     end;
end;

end.
