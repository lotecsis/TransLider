unit UCadVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ComCtrls, IBCustomDataSet, IBQuery,
  Buttons, rxToolEdit, rxCurrEdit, RXDBCtrl, ExtCtrls, AppEvnts, Grids, DBGrids, DateUtils,
  DBClient, Provider;

type
  TFCadVeiculo = class(TForm)
    dsCadVeiculo: TDataSource;
    PaginaControle: TPageControl;
    tsCadastro: TTabSheet;
    Modelos: TIBQuery;
    ModelosCODMOD: TIntegerField;
    ModelosCODUSU: TIntegerField;
    ModelosCODMAR: TIntegerField;
    ModelosDESMOD: TIBStringField;
    ModelosDESMAR: TIBStringField;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    dblkcbbModelo: TDBLookupComboBox;
    dsModelos: TDataSource;
    dbtxtDESMAR: TDBText;
    edtCodVei: TCurrencyEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dsReserva: TDataSource;
    dbedtDESVEI: TDBEdit;
    lbl3: TLabel;
    dbedtPLAVEI: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    dbcbbPLAVEIUF: TDBComboBox;
    dbedtANOFAB: TDBEdit;
    lbl6: TLabel;
    edtDATAQUI: TDBDateEdit;
    edtDATVEN: TDBDateEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtKMINI: TDBEdit;
    lbl9: TLabel;
    dbedtKMATU: TDBEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    dbcbbCATEGORIA: TDBComboBox;
    dbedtCHASSI: TDBEdit;
    dbedtRENAVAM: TDBEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    dbcbbTIPO: TDBComboBox;
    dbedtCODCAV: TDBEdit;
    lblCavalo: TLabel;
    lbl16: TLabel;
    dbedtALTURA: TDBEdit;
    dbedtLARGURA: TDBEdit;
    dbedtCOMPRIMENTO: TDBEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    dbedtCUBICO: TDBEdit;
    dbedtTARA: TDBEdit;
    lbl20: TLabel;
    lbl21: TLabel;
    dbedtMAXPESO: TDBEdit;
    dbedtCAPPESO: TDBEdit;
    lbl22: TLabel;
    lbl23: TLabel;
    dbedtCOR: TDBEdit;
    lbl24: TLabel;
    dbmmoOBSVEI: TDBMemo;
    lbl25: TLabel;
    dbcbbSITVEI: TDBComboBox;
    lbl26: TLabel;
    Usuarios: TIBQuery;
    UsuariosCODUSU: TIntegerField;
    UsuariosNOMUSU: TIBStringField;
    UsuariosDESUSU: TIBStringField;
    UsuariosLOGUSU: TIBStringField;
    UsuariosSENUSU: TIBStringField;
    UsuariosDATCAD: TDateField;
    UsuariosSITUSU: TIBStringField;
    dsUsuarios: TDataSource;
    lbl27: TLabel;
    dblkcbbCODUSU: TDBLookupComboBox;
    lbl28: TLabel;
    UsuariosAlt: TIBQuery;
    UsuariosAltCODUSU: TIntegerField;
    UsuariosAltNOMUSU: TIBStringField;
    UsuariosAltDESUSU: TIBStringField;
    UsuariosAltLOGUSU: TIBStringField;
    UsuariosAltSENUSU: TIBStringField;
    UsuariosAltDATCAD: TDateField;
    UsuariosAltSITUSU: TIBStringField;
    dsUsuariosAlt: TDataSource;
    dblkcbbUsuariosAlt: TDBLookupComboBox;
    edtDATALT: TDBDateEdit;
    ApplicationEvents1: TApplicationEvents;
    btnConsCavalo: TBitBtn;
    lblDesCavalo: TLabel;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    dsMotoristas: TDataSource;
    dblkcbbMotorista: TDBLookupComboBox;
    ImgAlu: TImage;
    tsManutPeriodica: TTabSheet;
    tsHistoricoManut: TTabSheet;
    ts3: TTabSheet;
    ts4: TTabSheet;
    dbg1: TDBGrid;
    dsRelacaoManutPeriodicas: TDataSource;
    lblFornecedor: TLabel;
    dbtxtCID_UF: TDBText;
    lblServico: TLabel;
    lblDesSer: TLabel;
    lblTipo: TLabel;
    lblSituacao: TLabel;
    lblPeriodo: TLabel;
    lblDescServico: TLabel;
    lblOrdemServico: TLabel;
    lbla: TLabel;
    lbl15: TLabel;
    dblkcbbCODFOR: TDBLookupComboBox;
    edtCodSer: TCurrencyEdit;
    btnConsServico: TBitBtn;
    btnMostrarManutencoes: TBitBtn;
    cbbTipo: TComboBox;
    cbbSituacao: TComboBox;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    edtDescServico: TEdit;
    edtOrdemServico: TCurrencyEdit;
    chkFornecedor: TCheckBox;
    chkCodSer: TCheckBox;
    chkDesSer: TCheckBox;
    chkTipo: TCheckBox;
    chkSituacao: TCheckBox;
    chkOrdemServ: TCheckBox;
    chkPeriodo: TCheckBox;
    cbbOrdemSql: TComboBox;
    dbg2: TDBGrid;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    dbedtTOTAL_GERAL: TDBEdit;
    dbedtTOTAL_DESC: TDBEdit;
    dbedtTOTAL_GERAL_DESC: TDBEdit;
    btnAlterarOS: TBitBtn;
    Fornecedor: TIBQuery;
    FornecedorCODFOR: TIntegerField;
    FornecedorDESFOR: TIBStringField;
    FornecedorCIDFOR: TIBStringField;
    FornecedorSIGUFS: TIBStringField;
    FornecedorCID_UF: TStringField;
    dsFornecedor: TDataSource;
    dsClientRelacaoManutencoes: TDataSource;
    btnExcluirHistManut: TBitBtn;
    ConsAbastecimentosRealizados: TIBQuery;
    ConsAbastecimentosRealizadosSEQENTSAI: TIntegerField;
    ConsAbastecimentosRealizadosCODVEI: TIntegerField;
    ConsAbastecimentosRealizadosUSUENT: TIntegerField;
    ConsAbastecimentosRealizadosUSUSAIDA: TIntegerField;
    ConsAbastecimentosRealizadosCODMOT: TIntegerField;
    ConsAbastecimentosRealizadosDATSAIDA: TDateField;
    ConsAbastecimentosRealizadosHORSAIDA: TTimeField;
    ConsAbastecimentosRealizadosKMSAIDA: TIntegerField;
    ConsAbastecimentosRealizadosDATENT: TDateField;
    ConsAbastecimentosRealizadosHORENT: TTimeField;
    ConsAbastecimentosRealizadosKMENT: TIntegerField;
    ConsAbastecimentosRealizadosDESTINO: TIBStringField;
    ConsAbastecimentosRealizadosCARGA: TIntegerField;
    ConsAbastecimentosRealizadosCODCARRETA: TIntegerField;
    ConsAbastecimentosRealizadosIN_ENGATADO: TIBStringField;
    ConsAbastecimentosRealizadosQTD_COMB: TFloatField;
    ConsAbastecimentosRealizadosDAT_ABASTEC: TDateField;
    ConsAbastecimentosRealizadosMEDIA_CONS: TFloatField;
    ConsAbastecimentosRealizadosITESEL: TIBStringField;
    ConsAbastecimentosRealizadosPLAVEI: TIBStringField;
    ConsAbastecimentosRealizadosDESVEI: TIBStringField;
    ConsAbastecimentosRealizadosKMATU: TIntegerField;
    ConsAbastecimentosRealizadosNOMMOT: TIBStringField;
    ConsAbastecimentosRealizadosAPEMOT: TIBStringField;
    ConsAbastecimentosRealizadosFOTO: TIBStringField;
    ConsAbastecimentosRealizadosUSUARIO_SAIDA: TIBStringField;
    ConsAbastecimentosRealizadosPLAVEI_CARRETA: TIBStringField;
    ProviderConsAbastecimentosRealizados: TDataSetProvider;
    ClientConsAbastecimentosRealizados: TClientDataSet;
    ClientConsAbastecimentosRealizadosSEQENTSAI: TIntegerField;
    ClientConsAbastecimentosRealizadosCODVEI: TIntegerField;
    ClientConsAbastecimentosRealizadosUSUENT: TIntegerField;
    ClientConsAbastecimentosRealizadosUSUSAIDA: TIntegerField;
    ClientConsAbastecimentosRealizadosCODMOT: TIntegerField;
    ClientConsAbastecimentosRealizadosDATSAIDA: TDateField;
    ClientConsAbastecimentosRealizadosHORSAIDA: TTimeField;
    ClientConsAbastecimentosRealizadosKMSAIDA: TIntegerField;
    ClientConsAbastecimentosRealizadosDATENT: TDateField;
    ClientConsAbastecimentosRealizadosHORENT: TTimeField;
    ClientConsAbastecimentosRealizadosKMENT: TIntegerField;
    ClientConsAbastecimentosRealizadosDESTINO: TWideStringField;
    ClientConsAbastecimentosRealizadosCARGA: TIntegerField;
    ClientConsAbastecimentosRealizadosCODCARRETA: TIntegerField;
    ClientConsAbastecimentosRealizadosIN_ENGATADO: TWideStringField;
    ClientConsAbastecimentosRealizadosQTD_COMB: TFloatField;
    ClientConsAbastecimentosRealizadosDAT_ABASTEC: TDateField;
    ClientConsAbastecimentosRealizadosMEDIA_CONS: TFloatField;
    ClientConsAbastecimentosRealizadosITESEL: TWideStringField;
    ClientConsAbastecimentosRealizadosPLAVEI: TWideStringField;
    ClientConsAbastecimentosRealizadosDESVEI: TWideStringField;
    ClientConsAbastecimentosRealizadosKMATU: TIntegerField;
    ClientConsAbastecimentosRealizadosNOMMOT: TWideStringField;
    ClientConsAbastecimentosRealizadosAPEMOT: TWideStringField;
    ClientConsAbastecimentosRealizadosFOTO: TWideStringField;
    ClientConsAbastecimentosRealizadosUSUARIO_SAIDA: TWideStringField;
    ClientConsAbastecimentosRealizadosPLAVEI_CARRETA: TWideStringField;
    ClientConsAbastecimentosRealizadosvnTotalRodado: TIntegerField;
    ClientConsAbastecimentosRealizadosvnTotalRodadoGeral: TAggregateField;
    ClientConsAbastecimentosRealizadosvnTotalCombusivel: TAggregateField;
    ClientConsAbastecimentosRealizadosvnMediaGeral: TAggregateField;
    dsClientConsAbastecimentosRealizados: TDataSource;
    dbg3: TDBGrid;
    lblDataAbastec: TLabel;
    lblADatAbastec: TLabel;
    lblDataSaida: TLabel;
    lblADatSaida: TLabel;
    edtDatAbastecimentoIni: TDateEdit;
    edtDatAbastecimentoFim: TDateEdit;
    chkDataAbastec: TCheckBox;
    chkDataSaida: TCheckBox;
    edtDatSaidaIni: TDateEdit;
    edtDatSaidaFim: TDateEdit;
    btnMostrarEntradaSaida: TBitBtn;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    dbedtvnTotalRodadoGeral: TDBEdit;
    dbedtvnTotalCombusivel: TDBEdit;
    dbedtvnMediaGeral: TDBEdit;
    dbg4: TDBGrid;
    lblAutoInfra: TLabel;
    dbtxtCODINFRA: TDBText;
    lblInfracao: TLabel;
    lblCondutor: TLabel;
    lblGravidade: TLabel;
    lblDataInfra: TLabel;
    lblADatInfra: TLabel;
    edtAutoInfra: TEdit;
    dblkcbbCODINFRA: TDBLookupComboBox;
    dblkcbbCODMOT: TDBLookupComboBox;
    edtDatIniInfra: TDateEdit;
    edtDatFimInfra: TDateEdit;
    cbbGravidade: TComboBox;
    chkAutoInfra: TCheckBox;
    chkInfracao: TCheckBox;
    chkCondutor: TCheckBox;
    chkDataInfra: TCheckBox;
    chkGravidade: TCheckBox;
    btnMostrarInfra: TBitBtn;
    Infracoes: TIBQuery;
    InfracoesCODINFRA: TIBStringField;
    InfracoesDESINFRA: TIBStringField;
    InfracoesQTD_PONTOS: TIntegerField;
    dsInfracoes: TDataSource;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    dbedtvnQtdPontos: TDBEdit;
    dbedtvnQtdInfra: TDBEdit;
    dbedtvnVlrTotal: TDBEdit;
    dsClientConsInfracoesMov: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbedtMEDMAXVAZ: TDBEdit;
    dbedtMEDMAXCAR: TDBEdit;
    dbedtMEDMINVAZ: TDBEdit;
    dbedtMEDMINCAR: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbModeloCloseUp(Sender: TObject);
    procedure dblkcbbModeloKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadVeiculoStateChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbmmoOBSVEIKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtCodVeiExit(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnConsCavaloClick(Sender: TObject);
    procedure dbedtCODCAVExit(Sender: TObject);
    procedure dblkcbbMotoristaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblkcbbMotoristaCloseUp(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dblkcbbCODFORCloseUp(Sender: TObject);
    procedure dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMostrarManutencoesClick(Sender: TObject);
    procedure tsHistoricoManutShow(Sender: TObject);
    procedure btnAlterarOSClick(Sender: TObject);
    procedure btnExcluirHistManutClick(Sender: TObject);
    procedure btnMostrarEntradaSaidaClick(Sender: TObject);
    procedure ClientConsAbastecimentosRealizadosCalcFields(DataSet: TDataSet);
    procedure ts3Show(Sender: TObject);
    procedure dblkcbbCODINFRACloseUp(Sender: TObject);
    procedure dblkcbbCODINFRAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMostrarInfraClick(Sender: TObject);
    procedure ts4Show(Sender: TObject);
  private
    { Private declarations }
    vaStatusCadVei : TDataSetState;
  public
    { Public declarations }
    vaOperacao : string;
  end;

var
  FCadVeiculo: TFCadVeiculo;

implementation

uses UDmFire, UPrincipal, UConsCavalo, UAlteraOrdemServico;

{$R *.dfm}

procedure TFCadVeiculo.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblCavalo.Visible := dbcbbTIPO.Text = 'CARRETA';
  dbedtCODCAV.Visible := dbcbbTIPO.Text = 'CARRETA';
  btnConsCavalo.Visible := dbcbbTIPO.Text = 'CARRETA';
  lblDesCavalo.Visible := dbcbbTIPO.Text = 'CARRETA';

  //dblkcbbMotorista.ReadOnly := dbcbbTIPO.Text = 'CARRETA';


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

  btnAlterarOS.Enabled := not (DmFire.ClientRelacaoManutencoes.IsEmpty);
  btnExcluirHistManut.Enabled := not (DmFire.ClientRelacaoManutencoes.IsEmpty);

  lblDataAbastec.Enabled := chkDataAbastec.Checked;
  edtDatAbastecimentoIni.Enabled := chkDataAbastec.Checked;
  edtDatAbastecimentoFim.Enabled := chkDataAbastec.Checked;
  lblADatAbastec.Enabled := chkDataAbastec.Checked;

  lblDataSaida.Enabled := chkDataSaida.Checked;
  lblADatSaida.Enabled := chkDataSaida.Checked;
  edtDatSaidaIni.Enabled := chkDataSaida.Checked;
  edtDatSaidaFim.Enabled := chkDataSaida.Checked;



  lblAutoInfra.Enabled := chkAutoInfra.Checked;
  edtAutoInfra.Enabled := chkAutoInfra.Checked;

  lblInfracao.Enabled := chkInfracao.Checked;
  dblkcbbCODINFRA.Enabled := chkInfracao.Checked;
  dbtxtCODINFRA.Enabled := chkInfracao.Checked;

  lblCondutor.Enabled := chkCondutor.Checked;
  dblkcbbCODMOT.Enabled := chkCondutor.Checked;

  lblGravidade.Enabled := chkGravidade.Checked;
  cbbGravidade.Enabled := chkGravidade.Checked;

  lblDataInfra.Enabled := chkDataInfra.Checked;
  lblADatInfra.Enabled := chkDataInfra.Checked;
  edtDatIniInfra.Enabled := chkDataInfra.Checked;
  edtDatFimInfra.Enabled := chkDataInfra.Checked;

end;

procedure TFCadVeiculo.btnAlterarClick(Sender: TObject);
begin
if not DmFire.CadVeiculo.IsEmpty then
   begin
     DmFire.CadVeiculo.Edit;
   end;
end;

procedure TFCadVeiculo.btnAlterarOSClick(Sender: TObject);
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
  btnMostrarManutencoes.Click;
end;

procedure TFCadVeiculo.btnCancelarClick(Sender: TObject);
begin

if DmFire.CadVeiculo.State in [dsInsert] then
   begin
      DmFire.CadVeiculo.Cancel;
      Close;
   end
else
if DmFire.CadVeiculo.State in [dsEdit] then
   begin
      DmFire.CadVeiculo.Cancel;

      if DmFire.CadVeiculo.IsEmpty then
         begin
           ImgAlu.Picture := nil;
           edtCodVei.Value := 0;
         end;

      dblkcbbModeloCloseUp(Sender);
   end;


{DmFire.CadVeiculo.Cancel;
DmFire.ibtTransacao.Rollback;
if DmFire.CadVeiculo.IsEmpty then
   begin
     ImgAlu.Picture := nil;
     edtCodVei.Value := 0;
   end;

dblkcbbModeloCloseUp(Sender); }
end;

procedure TFCadVeiculo.btnConfirmarClick(Sender: TObject);
begin
     if Trim(dblkcbbModelo.Text) = '' then
        begin
          Application.MessageBox('Informe o modelo','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dblkcbbModelo;
          Abort;
        end;
     if Trim(dbedtDESVEI.Text) = '' then
        begin
          Application.MessageBox('Informe a descrição','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtDESVEI;
          Abort;
        end;
     if Trim(dbedtPLAVEI.Text) = '' then
        begin
          Application.MessageBox('Informe a placa','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtPLAVEI;
          Abort;
        end;
     if Trim(dbcbbPLAVEIUF.Text) = '' then
        begin
          Application.MessageBox('Informe a UF da placa','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbcbbPLAVEIUF;
          Abort;
        end;
     if Trim(dbedtCHASSI.Text) = '' then
        begin
          Application.MessageBox('Informe o chassi','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtCHASSI;
          Abort;
        end;
     if Trim(dbedtRENAVAM.Text) = '' then
        begin
          Application.MessageBox('Informe o renavam','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtRENAVAM;
          Abort;
        end;
     if Trim(dbedtANOFAB.Text) = '' then
        begin
          Application.MessageBox('Informe o ano/modelo de fabricação','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtANOFAB;
          Abort;
        end;
     if Trim(dbedtCOR.Text) = '' then
        begin
          Application.MessageBox('Informe a cor','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtCOR;
          Abort;
        end;
     if Trim(dbedtKMINI.Text) = '' then
        begin
          Application.MessageBox('Informe o Km Inicial','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbedtKMINI;
          Abort;
        end;
     if Trim(dbcbbCATEGORIA.Text) = '' then
        begin
          Application.MessageBox('Informe a categoria','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbcbbCATEGORIA;
          Abort;
        end;
     if Trim(dbcbbCATEGORIA.Text) = '' then
        begin
          Application.MessageBox('Informe o tipo','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dbcbbTIPO;
          Abort;
        end;
     if Trim(dblkcbbMotorista.Text) = '' then
        begin
          Application.MessageBox('Informe o motorista','Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := dblkcbbMotorista;
          Abort;
        end;

    //valida se ja nao existe veiculo com a mesma placa
    DmFire.ConsSql.Close;
    DmFire.ConsSql.SQL.Clear;
    DmFire.ConsSql.SQL.Add('SELECT veiculo.codvei, veiculo.plavei');
    DmFire.ConsSql.SQL.Add(' FROM VEICULO');
    DmFire.ConsSql.SQL.Add(' where');
    DmFire.ConsSql.SQL.Add(' veiculo.plavei = :PLAVEI AND');
    DmFire.ConsSql.SQL.Add(' VEICULO.CODVEI <> :CODVEI');
    DmFire.ConsSql.ParamByName('PLAVEI').Value := DmFire.CadVeiculoPLAVEI.Value;
    DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadVeiculoCODVEI.Value;
    DmFire.ConsSql.Open;
    if not DmFire.ConsSql.IsEmpty then
       begin
         Application.MessageBox('Já existe um veículo cadastrado com esta placa','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := dbedtPLAVEI;
         Abort;
       end;

    if vaStatusCadVei in [dsEdit] then
       begin
          DmFire.CadVeiculoDATALT.Value := Date;
          DmFire.CadVeiculoUSUALT.Value := FPrincipal.vnCodUsu;
       end;

    if DmFire.CadVeiculoMEDMAXVAZ.AsFloat = 0 then
       DmFire.CadVeiculoMEDMAXVAZ.AsFloat := 0;

    if DmFire.CadVeiculoMEDMINVAZ.AsFloat = 0 then
       DmFire.CadVeiculoMEDMINVAZ.AsFloat := 0;

    if DmFire.CadVeiculoMEDMAXCAR.AsFloat = 0 then
       DmFire.CadVeiculoMEDMAXCAR.AsFloat := 0;

    if DmFire.CadVeiculoMEDMINCAR.AsFloat = 0 then
       DmFire.CadVeiculoMEDMINCAR.AsFloat := 0;

    DmFire.CadVeiculo.Post;

    DmFire.ibtTransacao.CommitRetaining;
end;

procedure TFCadVeiculo.btnConsCavaloClick(Sender: TObject);
begin
    FConsCavalo := TFConsCavalo.Create(Self);
    if FConsCavalo.ShowModal = mrOk then
       begin
         if not DmFire.ConsCavalos.IsEmpty then
            begin
             // dbedtCODCAV.Text := IntToStr(DmFire.ConsCavalosCODVEI.Value);
              DmFire.CadVeiculoCODCAV.Value := DmFire.ConsCavalosCODVEI.Value;
              dbedtCODCAVExit(Sender);
              ActiveControl := dbedtCODCAV;
            end
         else
            begin
               DmFire.CadVeiculoCODCAV.Value := 0;
               //dbedtCODCAV.Text := '';
            end;
       end;
    FreeAndNil(FConsCavalo);
end;

procedure TFCadVeiculo.btnExcluirClick(Sender: TObject);
begin
   DmFire.CadVeiculo.Close;
   DmFire.CadVeiculo.ParamByName('CODVEI').AsInteger := edtCodVei.AsInteger;
   DmFire.CadVeiculo.Open;
   if not DmFire.CadVeiculo.IsEmpty then
      begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
               DmFire.CadVeiculo.Delete;
               DmFire.ibtTransacao.CommitRetaining;
               Close;
            End;
      end;
end;

procedure TFCadVeiculo.btnExcluirHistManutClick(Sender: TObject);
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
              btnMostrarManutencoes.Click;
            End;
     end;
end;

procedure TFCadVeiculo.btnMostrarEntradaSaidaClick(Sender: TObject);
begin
  ClientConsAbastecimentosRealizados.Close;
  ConsAbastecimentosRealizados.Close;
  ConsAbastecimentosRealizados.SQL.Clear;
  ConsAbastecimentosRealizados.SQL.Add('SELECT ENTRADA_SAIDA.*,');
  ConsAbastecimentosRealizados.SQL.Add('        VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,');
  ConsAbastecimentosRealizados.SQL.Add('       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,');
  ConsAbastecimentosRealizados.SQL.Add('       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,');
  ConsAbastecimentosRealizados.SQL.Add('       CARRETA.PLAVEI AS PLAVEI_CARRETA');
  ConsAbastecimentosRealizados.SQL.Add(' FROM ENTRADA_SAIDA');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_SAIDA.USUSAIDA');
  ConsAbastecimentosRealizados.SQL.Add(' LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODCARRETA');
  ConsAbastecimentosRealizados.SQL.Add(' WHERE');
  ConsAbastecimentosRealizados.SQL.Add(' ((ENTRADA_SAIDA.KMSAIDA > 0) and (ENTRADA_SAIDA.KMENT > 0)) ');
  //ConsAbastecimentosRealizados.SQL.Add(' ENTRADA_SAIDA.QTD_COMB > 0');

  if chkDataAbastec.Checked then
     begin
        ConsAbastecimentosRealizados.SQL.Add(' AND ENTRADA_SAIDA.DAT_ABASTEC BETWEEN :DATINI AND :DATFIM');
        ConsAbastecimentosRealizados.ParamByName('DATINI').Value := edtDatAbastecimentoIni.Date;
        ConsAbastecimentosRealizados.ParamByName('DATFIM').Value := edtDatAbastecimentoFim.Date;
     end;

  if chkDataSaida.Checked then
     begin
        ConsAbastecimentosRealizados.SQL.Add(' AND ENTRADA_SAIDA.DATSAIDA BETWEEN :DATINISAI AND :DATFIMSAI');
        ConsAbastecimentosRealizados.ParamByName('DATINISAI').Value := edtDatSaidaIni.Date;
        ConsAbastecimentosRealizados.ParamByName('DATFIMSAI').Value := edtDatSaidaFim.Date;
     end;

  ConsAbastecimentosRealizados.SQL.Add(' AND VEICULO.CODVEI = :CODVEI');
  ConsAbastecimentosRealizados.ParamByName('CODVEI').Value := DmFire.CadVeiculoCODVEI.Value;

  ConsAbastecimentosRealizados.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HORENT');

  ConsAbastecimentosRealizados.Open;
  ClientConsAbastecimentosRealizados.Open;
end;

procedure TFCadVeiculo.btnMostrarInfraClick(Sender: TObject);
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
    DmFire.ConsInfracoesMov.SQL.Add(' and infracoes_mov.codvei = :codvei');
    DmFire.ConsInfracoesMov.ParamByName('codvei').Value := DmFire.CadVeiculoCODVEI.Value;


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
         DmFire.ConsInfracoesMov.ParamByName('datini').Value := edtDatIniInfra.Date;
         DmFire.ConsInfracoesMov.ParamByName('datfim').Value := edtDatFimInfra.Date;
       end;

    DmFire.ConsInfracoesMov.Open;
    DmFire.ClientConsInfracoesMov.Open;
end;

procedure TFCadVeiculo.btnMostrarManutencoesClick(Sender: TObject);
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
  DmFire.RelacaoManutencoes.SQL.Add(' AND MANUT_GER.CODVEI = :CODVEI');
  DmFire.RelacaoManutencoes.ParamByName('CODVEI').AsInteger := DmFire.CadVeiculoCODVEI.Value;


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

procedure TFCadVeiculo.btnNovoClick(Sender: TObject);
begin
   DmFire.CadVeiculo.Open;
   DmFire.CadVeiculo.Insert;
   DmFire.CadVeiculoSITVEI.Value := 'ATIVO';
   DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
   DmFire.CadVeiculoIN_MONITORAR.Value := 'NAO';
   DmFire.CadVeiculoCODUSU.Value := FPrincipal.vnCodUsu;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODVEI) AS CODVEI FROM VEICULO');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadVeiculoCODVEI.AsInteger := 1
   else
      DmFire.CadVeiculoCODVEI.AsInteger := DmFire.ConsSql.FieldByName('CODVEI').AsInteger + 1;

   ActiveControl := dblkcbbModelo;

   edtCodVei.Value := DmFire.CadVeiculoCODVEI.AsInteger;
   DmFire.ConsCavalos.Close;
   ImgAlu.Picture := nil;
   dblkcbbModeloCloseUp(Sender);
end;

procedure TFCadVeiculo.ClientConsAbastecimentosRealizadosCalcFields(
  DataSet: TDataSet);
begin
  ClientConsAbastecimentosRealizadosvnTotalRodado.Value := ClientConsAbastecimentosRealizadosKMENT.Value - ClientConsAbastecimentosRealizadosKMSAIDA.Value;
end;

procedure TFCadVeiculo.dbedtCODCAVExit(Sender: TObject);
begin
  if vaStatusCadVei in [dsInsert,dsEdit] then
     begin
        if Trim(dbedtCODCAV.Text) <> '' then
           begin
              DmFire.ConsCavalos.Close;
              DmFire.ConsCavalos.SQL.Clear;
              DmFire.ConsCavalos.SQL.Add('SELECT CODVEI,DESVEI,PLAVEI,CODMOT FROM VEICULO');
              DmFire.ConsCavalos.SQL.Add(' WHERE');
              DmFire.ConsCavalos.SQL.Add(' TIPO = ''CAVALO'' AND');
              DmFire.ConsCavalos.SQL.Add(' SITVEI = ''ATIVO''');
              DmFire.ConsCavalos.SQL.Add(' AND CODVEI = :CODVEI');
              DmFire.ConsCavalos.SQL.Add(' ORDER BY DESVEI');
              DmFire.ConsCavalos.ParamByName('CODVEI').Value := DmFire.CadVeiculoCODCAV.AsInteger;
              DmFire.ConsCavalos.Open;
              if DmFire.ConsCavalos.IsEmpty then
                 begin
                   Application.MessageBox('Veículo não encontrado','Atenção', MB_ICONWARNING+MB_OK);
                   DmFire.CadVeiculoCODCAV.AsInteger := 0;
                   DmFire.CadVeiculoCODMOT.AsInteger := 0;
                   lblDesCavalo.Caption := '';
                   ActiveControl := dbedtCODCAV;
                   Abort;
                 end
              else
                 begin
                   DmFire.CadVeiculoCODCAV.AsInteger := DmFire.ConsCavalosCODVEI.AsInteger;
                   lblDesCavalo.Caption := DmFire.ConsCavalosvaDesPla.AsString;
                   DmFire.CadVeiculoCODMOT.AsInteger := DmFire.ConsCavalosCODMOT.AsInteger;
                 end;
           end
        else
           begin
             lblDesCavalo.Caption := '';
             DmFire.CadVeiculoCODMOT.AsInteger := 0;
           end;
     end;
end;

procedure TFCadVeiculo.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFCadVeiculo.dblkcbbCODFORCloseUp(Sender: TObject);
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

procedure TFCadVeiculo.dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFCadVeiculo.dblkcbbCODINFRACloseUp(Sender: TObject);
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

procedure TFCadVeiculo.dblkcbbCODINFRAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFCadVeiculo.dblkcbbModeloCloseUp(Sender: TObject);
begin
  if Trim(dblkcbbModelo.Text) <> '' then
     begin
        dbtxtDESMAR.DataSource := dsModelos;
        if vaStatusCadVei in [dsInsert,dsEdit] then
           begin
             DmFire.CadVeiculoDESVEI.Value := ModelosDESMAR.AsString + '  -  '+ModelosDESMOD.AsString;
           end;
     end
  else
    begin
      dbtxtDESMAR.DataSource := dsReserva;
      if vaStatusCadVei in [dsInsert,dsEdit] then
           begin
             DmFire.CadVeiculoDESVEI.Value := '';
           end;
    end;

end;

procedure TFCadVeiculo.dblkcbbModeloKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Trim(dblkcbbModelo.Text) <> '' then
     begin
        dbtxtDESMAR.DataSource := dsModelos;
        if vaStatusCadVei in [dsInsert,dsEdit] then
           begin
             DmFire.CadVeiculoDESVEI.Value := ModelosDESMAR.AsString + '  -  '+ModelosDESMOD.AsString;
           end;
     end
  else
    begin
      dbtxtDESMAR.DataSource := dsReserva;
      if vaStatusCadVei in [dsInsert,dsEdit] then
           begin
             DmFire.CadVeiculoDESVEI.Value := '';
           end;
    end;
end;

procedure TFCadVeiculo.dblkcbbMotoristaCloseUp(Sender: TObject);
begin
if Trim(dblkcbbMotorista.Text) <> '' then
   begin
     if trim(MotoristasFOTO.AsString) <> '' then
         begin
           if FileExists(MotoristasFOTO.AsString) then
              begin
                ImgAlu.Picture.LoadFromFile(MotoristasFOTO.AsString);
              end
           else
              begin
                ImgAlu.Picture := nil;
              end;
         end
     else
         begin
           ImgAlu.Picture := nil;
         end;
   end
else
   begin
     ImgAlu.Picture := nil;
   end;
end;

procedure TFCadVeiculo.dblkcbbMotoristaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Trim(dblkcbbMotorista.Text) <> '' then
   begin
      if trim(MotoristasFOTO.AsString) <> '' then
         begin
           if FileExists(MotoristasFOTO.AsString) then
              begin
                ImgAlu.Picture.LoadFromFile(MotoristasFOTO.AsString);
              end
           else
              begin
                ImgAlu.Picture := nil;
              end;
         end
      else
         begin
           ImgAlu.Picture := nil;
         end;
   end
else
   begin
      ImgAlu.Picture := nil;
   end;
end;


procedure TFCadVeiculo.dbmmoOBSVEIKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFCadVeiculo.dsCadVeiculoStateChange(Sender: TObject);
begin
if DmFire.CadVeiculo.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       edtCodVei.Enabled := False;
       btnConsCavalo.Enabled := True;

       tsManutPeriodica.TabVisible := false;
       tsHistoricoManut.TabVisible := false;
       ts3.TabVisible := False;
       ts4.TabVisible := False;
     end
 else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       btnConsCavalo.Enabled := false;
       edtCodVei.Enabled := True;

       tsManutPeriodica.TabVisible := true;
       tsHistoricoManut.TabVisible := true;
       ts3.TabVisible := True;
       ts4.TabVisible := True;
     end;

 vaStatusCadVei := DmFire.CadVeiculo.State;
end;

procedure TFCadVeiculo.edtCodVeiExit(Sender: TObject);
begin
if edtCodVei.Value <> 0 then
   begin
      DmFire.CadVeiculo.Close;
      DmFire.CadVeiculo.ParamByName('CODVEI').Value := edtCodVei.AsInteger;
      DmFire.CadVeiculo.Open;
      if DmFire.CadVeiculo.IsEmpty then
         begin
           Application.MessageBox('Veículo não encontrado','Atenção', MB_ICONWARNING+MB_OK);
           ActiveControl := edtCodVei;
           edtCodVei.Value := 0;
         end
      else
         begin
           //consulta o cavalo no caso de carreta
           if Trim(dbedtCODCAV.Text) <> '' then
               begin
                  DmFire.ConsCavalos.Close;
                  DmFire.ConsCavalos.SQL.Clear;
                  DmFire.ConsCavalos.SQL.Add('SELECT CODVEI,DESVEI,PLAVEI,CODMOT FROM VEICULO');
                  DmFire.ConsCavalos.SQL.Add(' WHERE');
                  DmFire.ConsCavalos.SQL.Add(' TIPO = ''CAVALO'' AND');
                  DmFire.ConsCavalos.SQL.Add(' SITVEI = ''ATIVO''');
                  DmFire.ConsCavalos.SQL.Add(' AND CODVEI = :CODVEI');
                  DmFire.ConsCavalos.SQL.Add(' ORDER BY DESVEI');
                  DmFire.ConsCavalos.ParamByName('CODVEI').Value := DmFire.CadVeiculoCODCAV.AsInteger;
                  DmFire.ConsCavalos.Open;
                  if DmFire.ConsCavalos.IsEmpty then
                     begin
                       lblDesCavalo.Caption := 'CAVALO NÃO ENCONTRADO';
                     end
                  else
                     begin
                       lblDesCavalo.Caption := DmFire.ConsCavalosvaDesPla.AsString;
                     end;
               end
           else
               begin
                 lblDesCavalo.Caption := '';
               end;

           //carrega a imagem
           if trim(MotoristasFOTO.AsString) <> '' then
               begin
                 if FileExists(MotoristasFOTO.AsString) then
                    begin
                      ImgAlu.Picture.LoadFromFile(MotoristasFOTO.AsString);
                    end
                 else
                    begin
                      ImgAlu.Picture := nil;
                    end;
               end
           else
               begin
                 ImgAlu.Picture := nil;
               end;

            {******************************************************
             CONSULTA AS MANUTENCOES PERIODICAS
            *******************************************************}
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
            DmFire.RelacaoManutPeriodicas.SQL.Add(' AND MANUT_SERV.CODVEI = :CODVEI');
            DmFire.RelacaoManutPeriodicas.ParamByName('CODVEI').Value := DmFire.CadVeiculoCODVEI.Value;

            DmFire.RelacaoManutPeriodicas.Open;
            DmFire.ClientRelacaoManutPeriodicas.Open;
            DmFire.ClientRelacaoManutPeriodicas.IndexFieldNames := 'PLAVEI;vnKmRestante';

           


         end;
   end;
end;

procedure TFCadVeiculo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadVeiculo.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadVeiculo.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadVeiculo.FormShow(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.Open;
  Usuarios.Last;
  Usuarios.First;

  UsuariosAlt.Close;
  UsuariosAlt.Open;
  UsuariosAlt.Last;
  UsuariosAlt.First;

  Modelos.Close;
  Modelos.Open;
  Modelos.Last;
  Modelos.First;
  dbtxtDESMAR.DataSource := dsReserva;

  Fornecedor.Close;
  Fornecedor.Open;
  Fornecedor.Last;
  Fornecedor.First;
  dbtxtCID_UF.DataSource := dsReserva;

  Motoristas.Close;
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

  Infracoes.Close;
  Infracoes.Open;
  Infracoes.Last;
  Infracoes.First;
  dbtxtCODINFRA.DataSource := dsReserva;

  DmFire.CadVeiculo.Close;
  DmFire.CadVeiculo.Open;
  DmFire.CadVeiculo.Close;

  if vaOperacao = 'INSERIR' then
     begin
       btnNovo.Click;
     end
  else
  if vaOperacao = 'CONSULTA' then
     begin
       edtCodVeiExit(Sender);
       dblkcbbModeloCloseUp(Sender);
     end;

  chkPeriodo.Checked := True;
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);

  edtDatAbastecimentoIni.Date := StartOfTheMonth(Date);
  edtDatAbastecimentoFim.Date := EndOfTheMonth(Date);
  chkDataInfra.Checked := True;

  edtDatIniInfra.Date := StartOfTheMonth(Date);
  edtDatFimInfra.Date := EndOfTheMonth(Date);

  edtDatSaidaIni.Date := StartOfTheMonth(Date);
  edtDatSaidaFim.Date := EndOfTheMonth(Date);
  chkDataSaida.Checked := True;

  PaginaControle.ActivePageIndex := 0;


end;

procedure TFCadVeiculo.ts3Show(Sender: TObject);
begin
  btnMostrarEntradaSaida.Click;
end;

procedure TFCadVeiculo.ts4Show(Sender: TObject);
begin
  btnMostrarInfra.Click;
end;

procedure TFCadVeiculo.tsHistoricoManutShow(Sender: TObject);
begin
  btnMostrarManutencoes.Click;
end;

end.
