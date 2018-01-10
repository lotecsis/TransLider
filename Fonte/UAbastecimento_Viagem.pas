unit UAbastecimento_Viagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  Provider, DBClient, StdCtrls, DBCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons,
  AppEvnts, DateUtils, Math, TeEngine, TeeProcs, Chart, DBChart, TeeData, Series,
  GanttCh;

type
  TFAbastecimento_Viagem = class(TForm)
    PaginaControle: TPageControl;
    tsEmAberto: TTabSheet;
    tsRealizado: TTabSheet;
    dbgAbastecimentosAberto: TDBGrid;
    pnl1: TPanel;
    ConsAbastecimentosAberto: TIBQuery;
    ConsAbastecimentosAbertoSEQENTSAI: TIntegerField;
    ConsAbastecimentosAbertoCODVEI: TIntegerField;
    ConsAbastecimentosAbertoUSUENT: TIntegerField;
    ConsAbastecimentosAbertoUSUSAIDA: TIntegerField;
    ConsAbastecimentosAbertoCODMOT: TIntegerField;
    ConsAbastecimentosAbertoDATSAIDA: TDateField;
    ConsAbastecimentosAbertoHORSAIDA: TTimeField;
    ConsAbastecimentosAbertoKMSAIDA: TIntegerField;
    ConsAbastecimentosAbertoDATENT: TDateField;
    ConsAbastecimentosAbertoHORENT: TTimeField;
    ConsAbastecimentosAbertoKMENT: TIntegerField;
    ConsAbastecimentosAbertoDESTINO: TIBStringField;
    ConsAbastecimentosAbertoCARGA: TIntegerField;
    ConsAbastecimentosAbertoCODCARRETA: TIntegerField;
    ConsAbastecimentosAbertoIN_ENGATADO: TIBStringField;
    ConsAbastecimentosAbertoQTD_COMB: TFloatField;
    ConsAbastecimentosAbertoDAT_ABASTEC: TDateField;
    ConsAbastecimentosAbertoMEDIA_CONS: TFloatField;
    ConsAbastecimentosAbertoITESEL: TIBStringField;
    ConsAbastecimentosAbertoPLAVEI: TIBStringField;
    ConsAbastecimentosAbertoDESVEI: TIBStringField;
    ConsAbastecimentosAbertoKMATU: TIntegerField;
    ConsAbastecimentosAbertoNOMMOT: TIBStringField;
    ConsAbastecimentosAbertoAPEMOT: TIBStringField;
    ConsAbastecimentosAbertoFOTO: TIBStringField;
    ConsAbastecimentosAbertoUSUARIO_SAIDA: TIBStringField;
    ConsAbastecimentosAbertoPLAVEI_CARRETA: TIBStringField;
    ClientConsAbastecimentosAberto: TClientDataSet;
    ProviderConsAbastecimentosAberto: TDataSetProvider;
    ClientConsAbastecimentosAbertoSEQENTSAI: TIntegerField;
    ClientConsAbastecimentosAbertoCODVEI: TIntegerField;
    ClientConsAbastecimentosAbertoUSUENT: TIntegerField;
    ClientConsAbastecimentosAbertoUSUSAIDA: TIntegerField;
    ClientConsAbastecimentosAbertoCODMOT: TIntegerField;
    ClientConsAbastecimentosAbertoDATSAIDA: TDateField;
    ClientConsAbastecimentosAbertoHORSAIDA: TTimeField;
    ClientConsAbastecimentosAbertoKMSAIDA: TIntegerField;
    ClientConsAbastecimentosAbertoDATENT: TDateField;
    ClientConsAbastecimentosAbertoHORENT: TTimeField;
    ClientConsAbastecimentosAbertoKMENT: TIntegerField;
    ClientConsAbastecimentosAbertoDESTINO: TWideStringField;
    ClientConsAbastecimentosAbertoCARGA: TIntegerField;
    ClientConsAbastecimentosAbertoCODCARRETA: TIntegerField;
    ClientConsAbastecimentosAbertoIN_ENGATADO: TWideStringField;
    ClientConsAbastecimentosAbertoQTD_COMB: TFloatField;
    ClientConsAbastecimentosAbertoDAT_ABASTEC: TDateField;
    ClientConsAbastecimentosAbertoMEDIA_CONS: TFloatField;
    ClientConsAbastecimentosAbertoITESEL: TWideStringField;
    ClientConsAbastecimentosAbertoPLAVEI: TWideStringField;
    ClientConsAbastecimentosAbertoDESVEI: TWideStringField;
    ClientConsAbastecimentosAbertoKMATU: TIntegerField;
    ClientConsAbastecimentosAbertoNOMMOT: TWideStringField;
    ClientConsAbastecimentosAbertoAPEMOT: TWideStringField;
    ClientConsAbastecimentosAbertoFOTO: TWideStringField;
    ClientConsAbastecimentosAbertoUSUARIO_SAIDA: TWideStringField;
    ClientConsAbastecimentosAbertoPLAVEI_CARRETA: TWideStringField;
    dsClientConsAbastecimentosAberto: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsVeiculos: TDataSource;
    ClientConsAbastecimentosAbertovnTotalRodado: TIntegerField;
    ClientConsAbastecimentosAbertovaIteSel: TStringField;
    ClientConsAbastecimentosAbertovnKmSelecionado: TIntegerField;
    ClientConsAbastecimentosAbertoTotalKmSel: TAggregateField;
    dbedtTotalKmSel: TDBEdit;
    lblTotalKmSel: TLabel;
    lblQtdComb: TLabel;
    edtQtdComb: TCurrencyEdit;
    lblMediaKmLitro: TLabel;
    edtMediaKmLitro: TCurrencyEdit;
    btnConfirmar: TBitBtn;
    chkTrucks_Cavalos: TCheckBox;
    lblTrucks_Cavalos: TLabel;
    chkLeves: TCheckBox;
    lblLeves: TLabel;
    chkPlaca: TCheckBox;
    lblPlaca: TLabel;
    dblkcbbPlaca: TDBLookupComboBox;
    chkCarga: TCheckBox;
    lblCarga: TLabel;
    edtCarga: TCurrencyEdit;
    chkData: TCheckBox;
    lblData: TLabel;
    btnMostrar: TBitBtn;
    edtData: TDateEdit;
    pnl2: TPanel;
    dbg1: TDBGrid;
    lblDataAbastec: TLabel;
    edtDatAbastecimentoIni: TDateEdit;
    lblADatAbastec: TLabel;
    edtDatAbastecimentoFim: TDateEdit;
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
    dsClientConsAbastecimentosRealizados: TDataSource;
    ClientConsAbastecimentosRealizadosvnTotalRodado: TIntegerField;
    ClientConsAbastecimentosRealizadosvnTotalRodadoGeral: TAggregateField;
    ClientConsAbastecimentosRealizadosvnTotalCombusivel: TAggregateField;
    ClientConsAbastecimentosRealizadosvnMediaGeral: TAggregateField;
    dbedtvnTotalRodadoGeral: TDBEdit;
    dbedtvnTotalCombusivel: TDBEdit;
    dbedtvnMediaGeral: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnl3: TPanel;
    btnEstornar: TBitBtn;
    chkDataAbastec: TCheckBox;
    lblDataSaida: TLabel;
    chkDataSaida: TCheckBox;
    edtDatSaidaIni: TDateEdit;
    edtDatSaidaFim: TDateEdit;
    lblADatSaida: TLabel;
    lblQtdCombEmp: TLabel;
    lblQtdCombPost: TLabel;
    edtQtdCombEmp: TCurrencyEdit;
    edtQtdCombPost: TCurrencyEdit;
    ConsAbastecimentosRealizadosQTD_COMBEMP: TFloatField;
    ConsAbastecimentosRealizadosQTD_COMBPOS: TFloatField;
    ClientConsAbastecimentosRealizadosQTD_COMBEMP: TFloatField;
    ClientConsAbastecimentosRealizadosQTD_COMBPOS: TFloatField;
    lbl1: TLabel;
    lbl2: TLabel;
    ClientConsAbastecimentosRealizadosvnTotalCombEmp: TAggregateField;
    ClientConsAbastecimentosRealizadosvnTotalCombPos: TAggregateField;
    dbedtvnTotalCombEmp: TDBEdit;
    dbedtvnTotalCombPos: TDBEdit;
    ConsAbastecimentosRealizadosOBS_MOTORISTA: TIBStringField;
    ConsAbastecimentosRealizadosIN_VISUALIZADO: TIBStringField;
    ConsAbastecimentosRealizadosVLR_COMBEMP: TFloatField;
    ConsAbastecimentosRealizadosVLR_COMBPOS: TFloatField;
    ClientConsAbastecimentosRealizadosOBS_MOTORISTA: TWideStringField;
    ClientConsAbastecimentosRealizadosIN_VISUALIZADO: TWideStringField;
    ClientConsAbastecimentosRealizadosVLR_COMBEMP: TFloatField;
    ClientConsAbastecimentosRealizadosVLR_COMBPOS: TFloatField;
    ConsAbastecimentosAbertoQTD_COMBEMP: TFloatField;
    ConsAbastecimentosAbertoQTD_COMBPOS: TFloatField;
    ConsAbastecimentosAbertoOBS_MOTORISTA: TIBStringField;
    ConsAbastecimentosAbertoIN_VISUALIZADO: TIBStringField;
    ConsAbastecimentosAbertoVLR_COMBEMP: TFloatField;
    ConsAbastecimentosAbertoVLR_COMBPOS: TFloatField;
    ClientConsAbastecimentosAbertoQTD_COMBEMP: TFloatField;
    ClientConsAbastecimentosAbertoQTD_COMBPOS: TFloatField;
    ClientConsAbastecimentosAbertoOBS_MOTORISTA: TWideStringField;
    ClientConsAbastecimentosAbertoIN_VISUALIZADO: TWideStringField;
    ClientConsAbastecimentosAbertoVLR_COMBEMP: TFloatField;
    ClientConsAbastecimentosAbertoVLR_COMBPOS: TFloatField;
    lbl6: TLabel;
    dbedtvnVlrTotalCombEmp: TDBEdit;
    lbl7: TLabel;
    dbedtvnVlrTotalCombPos: TDBEdit;
    edtVlrCombEmp: TCurrencyEdit;
    edtVlrCombPost: TCurrencyEdit;
    lblVlrCombEmp: TLabel;
    lblVlrCombPost: TLabel;
    ClientConsAbastecimentosRealizadosvnVlrTotalCombEmp: TAggregateField;
    ClientConsAbastecimentosRealizadosvnVlrTotalCombPos: TAggregateField;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    dsMotoristas: TDataSource;
    lblMotorista: TLabel;
    chkMotorista: TCheckBox;
    dblkcbbMotorista: TDBLookupComboBox;
    tsGraficoPorMotorista: TTabSheet;
    ChartMotoristas: TChart;
    btnGraficoPorMotorista: TBitBtn;
    btnImprimirGraficoMotoristas: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    MotoristaSeries1: TFastLineSeries;
    tsGraficoPorPlaca: TTabSheet;
    ChartPlaca: TChart;
    MotoristaSeries2: TFastLineSeries;
    btnGraficoPorPlacas: TBitBtn;
    btnImprimirGraficoPlaca: TBitBtn;
    ConsAbastecimentosRealizadosMEDMAXVAZ: TFloatField;
    ConsAbastecimentosRealizadosMEDMAXCAR: TFloatField;
    ConsAbastecimentosRealizadosMEDMINVAZ: TFloatField;
    ConsAbastecimentosRealizadosMEDMINCAR: TFloatField;
    ClientConsAbastecimentosRealizadosMEDMAXVAZ: TFloatField;
    ClientConsAbastecimentosRealizadosMEDMAXCAR: TFloatField;
    ClientConsAbastecimentosRealizadosMEDMINVAZ: TFloatField;
    ClientConsAbastecimentosRealizadosMEDMINCAR: TFloatField;
    ConsAbastecimentosRealizadosRETORNO: TIBStringField;
    ClientConsAbastecimentosRealizadosRETORNO: TWideStringField;
    ConsAbastecimentosRealizadosIN_COMISSAO: TIBStringField;
    ClientConsAbastecimentosRealizadosIN_COMISSAO: TWideStringField;
    procedure btnMostrarClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ClientConsAbastecimentosAbertoCalcFields(DataSet: TDataSet);
    procedure dbgAbastecimentosAbertoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgAbastecimentosAbertoCellClick(Column: TColumn);
    procedure edtQtdCombChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ClientConsAbastecimentosRealizadosCalcFields(DataSet: TDataSet);
    procedure btnEstornarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGraficoPorMotoristaClick(Sender: TObject);
    procedure btnImprimirGraficoMotoristasClick(Sender: TObject);
    procedure btnGraficoPorPlacasClick(Sender: TObject);
    procedure btnImprimirGraficoPlacaClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbastecimento_Viagem: TFAbastecimento_Viagem;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFAbastecimento_Viagem.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblTrucks_Cavalos.Enabled := chkTrucks_Cavalos.Checked;
  lblLeves.Enabled := chkLeves.Checked;

  lblPlaca.Enabled := chkPlaca.Checked;
  dblkcbbPlaca.Enabled := chkPlaca.Checked;

  lblCarga.Enabled := chkCarga.Checked;
  edtCarga.Enabled := chkCarga.Checked;

  lblData.Enabled := chkData.Checked;
  edtData.Enabled := chkData.Checked;

  lblTotalKmSel.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  dbedtTotalKmSel.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);

  lblQtdComb.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtQtdComb.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  lblQtdCombEmp.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtQtdCombEmp.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  lblQtdCombPost.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtQtdCombPost.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);

  lblVlrCombEmp.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtVlrCombEmp.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  lblVlrCombPost.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtVlrCombPost.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);

  lblMediaKmLitro.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);
  edtMediaKmLitro.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0);

  btnConfirmar.Enabled := (not(ClientConsAbastecimentosAberto.IsEmpty)) and (ClientConsAbastecimentosAbertoTotalKmSel.Value > 0) and (edtMediaKmLitro.Value > 0);

  btnEstornar.Enabled := not(ClientConsAbastecimentosRealizados.IsEmpty);

  lblDataAbastec.Enabled := chkDataAbastec.Checked;
  edtDatAbastecimentoIni.Enabled := chkDataAbastec.Checked;
  edtDatAbastecimentoFim.Enabled := chkDataAbastec.Checked;
  lblADatAbastec.Enabled := chkDataAbastec.Checked;

  lblDataSaida.Enabled := chkDataSaida.Checked;
  lblADatSaida.Enabled := chkDataSaida.Checked;
  edtDatSaidaIni.Enabled := chkDataSaida.Checked;
  edtDatSaidaFim.Enabled := chkDataSaida.Checked;

  lblMotorista.Enabled := chkMotorista.Checked;
  dblkcbbMotorista.Enabled := chkMotorista.Checked;

end;

procedure TFAbastecimento_Viagem.btnGraficoPorMotoristaClick(Sender: TObject);
begin
   if ClientConsAbastecimentosRealizados.IsEmpty then
      begin
        Application.MessageBox('Consulte as viagens antes de gerar o gráfico','Aviso',MB_OK+MB_ICONWARNING);
        Abort;
      end;

   if trim(dblkcbbMotorista.Text) = '' then
      begin
        Application.MessageBox('Informe o Motorista','Aviso',MB_OK+MB_ICONWARNING);
        chkMotorista.Checked := True;
        dblkcbbMotorista.Enabled := True;
        ActiveControl := dblkcbbMotorista;
        Abort;
      end;

   if chkDataAbastec.Checked then
      begin
        Application.MessageBox('Deve ser filtrado pela data de saída e não pela data de abastecimento','Aviso',MB_OK+MB_ICONWARNING);
        Abort;
      end;

   btnMostrar.Click;

  ChartMotoristas.Title.Text.Clear;

  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));

  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;

  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;

  {edtDatSaidaIni.Date := StrToDate('01/01/2016');
  edtDatSaidaFim.Date := StrToDate('31/01/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;

  edtDatSaidaIni.Date := StrToDate('01/02/2016');
  edtDatSaidaFim.Date := StrToDate('29/02/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;

  edtDatSaidaIni.Date := StrToDate('01/03/2016');
  edtDatSaidaFim.Date := StrToDate('31/03/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;

  edtDatSaidaIni.Date := StrToDate('01/04/2016');
  edtDatSaidaFim.Date := StrToDate('30/04/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;


  edtDatSaidaIni.Date := StrToDate('01/05/2016');
  edtDatSaidaFim.Date := StrToDate('31/05/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;


  edtDatSaidaIni.Date := StrToDate('01/06/2016');
  edtDatSaidaFim.Date := StrToDate('30/06/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;

  edtDatSaidaIni.Date := StrToDate('01/07/2016');
  edtDatSaidaFim.Date := StrToDate('31/07/2016');
  btnMostrar.Click;
  ChartMotoristas.Title.Text.Clear;
  ChartMotoristas.Title.Text.Add('Motorista: '+dblkcbbMotorista.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries1.Clear;
  MotoristaSeries1.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries1.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat,ClientConsAbastecimentosRealizadosDESTINO.AsString+' '+ClientConsAbastecimentosRealizadosPLAVEI.AsString);

       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoMotoristas.Click;}

end;

procedure TFAbastecimento_Viagem.btnImprimirGraficoMotoristasClick(
  Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
     ChartMotoristas.PrintLandscape;
 { case RadioGroup1.ItemIndex of
    0: Chart1.PrintLandscape;
    1: Chart1.PrintPortrait;
  end; }
end;

procedure TFAbastecimento_Viagem.btnImprimirGraficoPlacaClick(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
     ChartPlaca.PrintLandscape;
end;

procedure TFAbastecimento_Viagem.btnGraficoPorPlacasClick(Sender: TObject);
begin
   if ClientConsAbastecimentosRealizados.IsEmpty then
      begin
        Application.MessageBox('Consulte as viagens antes de gerar o gráfico','Aviso',MB_OK+MB_ICONWARNING);
        Abort;
      end;

   if trim(dblkcbbPlaca.Text) = '' then
      begin
        Application.MessageBox('Informe a Placa','Aviso',MB_OK+MB_ICONWARNING);
        chkPlaca.Checked := True;
        dblkcbbPlaca.Enabled := True;
        ActiveControl := dblkcbbPlaca;
        Abort;
      end;

   if chkDataAbastec.Checked then
      begin
        Application.MessageBox('Deve ser filtrado pela data de saída e não pela data de abastecimento','Aviso',MB_OK+MB_ICONWARNING);
        Abort;
      end;

  btnMostrar.Click;

  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));

  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;

  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));

       ClientConsAbastecimentosRealizados.Next;
     end;

  {edtDatSaidaIni.Date := StrToDate('01/01/2016');
  edtDatSaidaFim.Date := StrToDate('31/01/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click;

  edtDatSaidaIni.Date := StrToDate('01/02/2016');
  edtDatSaidaFim.Date := StrToDate('29/02/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click;

   edtDatSaidaIni.Date := StrToDate('01/03/2016');
  edtDatSaidaFim.Date := StrToDate('31/03/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click;

    edtDatSaidaIni.Date := StrToDate('01/04/2016');
  edtDatSaidaFim.Date := StrToDate('30/04/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click;

   edtDatSaidaIni.Date := StrToDate('01/05/2016');
  edtDatSaidaFim.Date := StrToDate('31/05/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click;

  edtDatSaidaIni.Date := StrToDate('01/06/2016');
  edtDatSaidaFim.Date := StrToDate('30/06/2016');
  btnMostrar.Click;
  ChartPlaca.Title.Text.Clear;
  ChartPlaca.Title.Text.Add('Placa: '+dblkcbbPlaca.Text+' SAÍDA ENTRE: '+DateToStr(edtDatSaidaIni.Date)+' à '+DateToStr(edtDatSaidaFim.Date));
  MotoristaSeries2.Clear;
  MotoristaSeries2.Marks.Style := smsLabelValue;
  ClientConsAbastecimentosRealizados.First;
  while not ClientConsAbastecimentosRealizados.Eof do
     begin
       MotoristaSeries2.AddY(ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat, ClientConsAbastecimentosRealizadosAPEMOT.AsString+'  '+Copy(ClientConsAbastecimentosRealizadosDESTINO.AsString,0,15));
       ClientConsAbastecimentosRealizados.Next;
     end;
  btnImprimirGraficoPlaca.Click; }
end;

procedure TFAbastecimento_Viagem.btnConfirmarClick(Sender: TObject);
begin
    if edtQtdCombEmp.Value + edtQtdCombPost.Value <> edtQtdComb.Value then
       begin
         Application.MessageBox('A soma da quantidade de combustível Empresa+Postos não poder ser diferente do total gasto','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtQtdComb;
         Abort;
       end;

   if edtMediaKmLitro.Value < 1 then
      begin
         Application.MessageBox('Não é possível uma média de consumo como esta','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtMediaKmLitro;
         Abort;
      end;

   if (edtQtdCombEmp.Value > 0) and (edtVlrCombEmp.Value = 0) then
       begin
         Application.MessageBox('Informe o valor do combustível na empresa','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtVlrCombEmp;
         Abort;
       end;

   if (edtQtdCombPost.Value > 0) and (edtVlrCombPost.Value = 0) then
       begin
         Application.MessageBox('Informe o valor do combustível no posto','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtVlrCombPost;
         Abort;
       end;


    ClientConsAbastecimentosAberto.First;
    while not ClientConsAbastecimentosAberto.Eof do
          begin
              if ClientConsAbastecimentosAbertoITESEL.Value = 'S' then
                 begin
                    DmFire.CadEntradaSaida.Close;
                    DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := ClientConsAbastecimentosAbertoSEQENTSAI.Value;
                    DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := ClientConsAbastecimentosAbertoCODVEI.Value;
                    DmFire.CadEntradaSaida.Open;
                    if not DmFire.CadEntradaSaida.IsEmpty then
                       begin
                         DmFire.CadEntradaSaida.Edit;
                         DmFire.CadEntradaSaidaQTD_COMB.Value := RoundTo(ClientConsAbastecimentosAbertovnTotalRodado.Value / RoundTo(edtMediaKmLitro.Value,-3),-3);
                         DmFire.CadEntradaSaidaDAT_ABASTEC.Value := Date;
                         DmFire.CadEntradaSaidaMEDIA_CONS.Value := RoundTo(edtMediaKmLitro.Value,-3);

                         DmFire.CadEntradaSaidaQTD_COMBEMP.Value := RoundTo(edtQtdCombEmp.Value * (((DmFire.CadEntradaSaidaQTD_COMB.Value * 100) / edtQtdComb.Value) /100),-3);
                         DmFire.CadEntradaSaidaQTD_COMBPOS.Value := RoundTo(edtQtdCombPost.Value * (((DmFire.CadEntradaSaidaQTD_COMB.Value * 100) / edtQtdComb.Value) /100),-3);
                         DmFire.CadEntradaSaidaVLR_COMBEMP.Value := edtVlrCombEmp.Value;
                         DmFire.CadEntradaSaidaVLR_COMBPOS.Value := edtVlrCombPost.Value;
                         DmFire.CadEntradaSaida.Post;
                         DmFire.ibtTransacao.CommitRetaining;
                       end;
                 end;
              ClientConsAbastecimentosAberto.Next;
          end;

    if edtQtdCombEmp.Value > 0 then
       begin
         DmFire.CadTanque_Comb.Close;
         DmFire.CadTanque_Comb.ParamByName('CODTAN').Value := 1;
         DmFire.CadTanque_Comb.Open;
         if not DmFire.CadTanque_Comb.IsEmpty then
            begin
              DmFire.CadTanque_Comb.Edit;
              DmFire.CadTanque_CombNIVEL.Value := DmFire.CadTanque_CombNIVEL.Value - edtQtdCombEmp.Value;
              DmFire.CadTanque_Comb.Post;
              DmFire.ibtTransacao.CommitRetaining;
            end;
       end;

    btnMostrar.Click;
end;

procedure TFAbastecimento_Viagem.btnEstornarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente estornar o lançamento?', 'Estorno de Lançamento', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
   Begin
      DmFire.CadEntradaSaida.Close;
      DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := ClientConsAbastecimentosRealizadosSEQENTSAI.Value;
      DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := ClientConsAbastecimentosRealizadosCODVEI.Value;
      DmFire.CadEntradaSaida.Open;
      if not DmFire.CadEntradaSaida.IsEmpty then
         begin
            DmFire.CadEntradaSaida.Edit;
            DmFire.CadEntradaSaidaQTD_COMB.AsInteger := 0;
            DmFire.CadEntradaSaidaQTD_COMBEMP.AsInteger := 0;
            DmFire.CadEntradaSaidaQTD_COMBPOS.AsInteger := 0;
            DmFire.CadEntradaSaidaMEDIA_CONS.Value := 0;
            DmFire.CadEntradaSaidaDAT_ABASTEC.Value := 0;
            DmFire.CadEntradaSaida.Post;
            DmFire.ibtTransacao.CommitRetaining;

            //ATUALIZA O SALDO DO TANQUE DE COMBUSTIVEL
            if ClientConsAbastecimentosRealizadosQTD_COMBEMP.Value > 0 then
               begin
                 DmFire.CadTanque_Comb.Close;
                 DmFire.CadTanque_Comb.ParamByName('CODTAN').Value := 1;
                 DmFire.CadTanque_Comb.Open;
                 if not DmFire.CadTanque_Comb.IsEmpty then
                    begin
                      DmFire.CadTanque_Comb.Edit;
                      DmFire.CadTanque_CombNIVEL.Value := DmFire.CadTanque_CombNIVEL.Value + ClientConsAbastecimentosRealizadosQTD_COMBEMP.Value;
                      DmFire.CadTanque_Comb.Post;
                      DmFire.ibtTransacao.CommitRetaining;
                    end;
               end;

            btnMostrar.Click;
         end;
   End;
end;

procedure TFAbastecimento_Viagem.btnMostrarClick(Sender: TObject);
begin
  //dbcht1.Series[1].Title := 'lalal';

  ClientConsAbastecimentosAberto.Close;
  ConsAbastecimentosAberto.Close;
  ConsAbastecimentosAberto.SQL.Clear;
  ConsAbastecimentosAberto.SQL.Add('SELECT ENTRADA_SAIDA.*,');
  ConsAbastecimentosAberto.SQL.Add('        VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,');
  ConsAbastecimentosAberto.SQL.Add('       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,');
  ConsAbastecimentosAberto.SQL.Add('       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,');
  ConsAbastecimentosAberto.SQL.Add('       CARRETA.PLAVEI AS PLAVEI_CARRETA');
  ConsAbastecimentosAberto.SQL.Add(' FROM ENTRADA_SAIDA');
  ConsAbastecimentosAberto.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI');
  ConsAbastecimentosAberto.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT');
  ConsAbastecimentosAberto.SQL.Add(' INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_SAIDA.USUSAIDA');
  ConsAbastecimentosAberto.SQL.Add(' LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODCARRETA');
  ConsAbastecimentosAberto.SQL.Add(' WHERE');
  ConsAbastecimentosAberto.SQL.Add(' ((ENTRADA_SAIDA.KMSAIDA > 0) and (ENTRADA_SAIDA.KMENT > 0)) and');
  ConsAbastecimentosAberto.SQL.Add(' ENTRADA_SAIDA.QTD_COMB = 0');

  ClientConsAbastecimentosRealizados.Close;
  ConsAbastecimentosRealizados.Close;
  ConsAbastecimentosRealizados.SQL.Clear;
  ConsAbastecimentosRealizados.SQL.Add('SELECT ENTRADA_SAIDA.*,');
  ConsAbastecimentosRealizados.SQL.Add('        VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,');
  ConsAbastecimentosRealizados.SQL.Add('       VEICULO.MEDMAXVAZ,VEICULO.MEDMAXCAR,VEICULO.MEDMINVAZ,VEICULO.MEDMINCAR,');
  ConsAbastecimentosRealizados.SQL.Add('       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,');
  ConsAbastecimentosRealizados.SQL.Add('       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,');
  ConsAbastecimentosRealizados.SQL.Add('       CARRETA.PLAVEI AS PLAVEI_CARRETA');
  ConsAbastecimentosRealizados.SQL.Add(' FROM ENTRADA_SAIDA');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT');
  ConsAbastecimentosRealizados.SQL.Add(' INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_SAIDA.USUSAIDA');
  ConsAbastecimentosRealizados.SQL.Add(' LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODCARRETA');
  ConsAbastecimentosRealizados.SQL.Add(' WHERE');
  ConsAbastecimentosRealizados.SQL.Add(' ((ENTRADA_SAIDA.KMSAIDA > 0) and (ENTRADA_SAIDA.KMENT > 0)) and');
  ConsAbastecimentosRealizados.SQL.Add(' ENTRADA_SAIDA.QTD_COMB > 0');

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

  if (chkTrucks_Cavalos.Checked)  and  (chkLeves.Checked) then
     begin
       ConsAbastecimentosAberto.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'',''VEICULO LEVE'')');
       ConsAbastecimentosRealizados.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'',''VEICULO LEVE'')');
     end
  else
    if (chkTrucks_Cavalos.Checked)  and  (chkLeves.Checked = false) then
        begin
          ConsAbastecimentosAberto.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'')');
          ConsAbastecimentosRealizados.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'')');
        end
    else
    if (chkTrucks_Cavalos.Checked = false)  and  (chkLeves.Checked) then
        begin
          ConsAbastecimentosAberto.SQL.Add(' AND VEICULO.TIPO IN (''VEICULO LEVE'')');
          ConsAbastecimentosRealizados.SQL.Add(' AND VEICULO.TIPO IN (''VEICULO LEVE'')');
        end;

    if chkPlaca.Checked then
       begin
         if Trim(dblkcbbPlaca.Text) = '' then
            begin
              Application.MessageBox('Informe a Placa do Veículo','Aviso',MB_OK+MB_ICONWARNING);
              ActiveControl := dblkcbbPlaca;
              Abort;
            end
         else
            begin
              ConsAbastecimentosAberto.SQL.Add(' AND VEICULO.CODVEI = :CODVEI');
              ConsAbastecimentosRealizados.SQL.Add(' AND VEICULO.CODVEI = :CODVEI');
              ConsAbastecimentosAberto.ParamByName('CODVEI').Value := VeiculosCODVEI.AsInteger;
              ConsAbastecimentosRealizados.ParamByName('CODVEI').Value := VeiculosCODVEI.AsInteger;
            end;
       end;

    if chkCarga.Checked then
       begin
         if edtCarga.Value = 0 then
            begin
               Application.MessageBox('Informe a Carga','Aviso',MB_OK+MB_ICONWARNING);
               ActiveControl := edtCarga;
               Abort;
            end
         else
            begin
              ConsAbastecimentosAberto.SQL.Add(' and ENTRADA_SAIDA.CARGA = :CARGA');
              ConsAbastecimentosRealizados.SQL.Add(' and ENTRADA_SAIDA.CARGA = :CARGA');
              ConsAbastecimentosAberto.ParamByName('CARGA').Value := edtCarga.AsInteger;
              ConsAbastecimentosRealizados.ParamByName('CARGA').Value := edtCarga.AsInteger;
            end;
       end;

    if chkData.Checked then
       begin
         if edtData.Date = 0 then
            begin
               Application.MessageBox('Informe a Data de Entrada','Aviso',MB_OK+MB_ICONWARNING);
               ActiveControl := edtData;
               Abort;
            end
         else
            begin
              ConsAbastecimentosAberto.SQL.Add(' and ENTRADA_SAIDA.DATENT = :DATENT');
              ConsAbastecimentosRealizados.SQL.Add(' and ENTRADA_SAIDA.DATENT = :DATENT');
              ConsAbastecimentosAberto.ParamByName('DATENT').Value := edtData.Date;
              ConsAbastecimentosRealizados.ParamByName('DATENT').Value := edtData.Date;
            end;
       end;

    if chkMotorista.Checked then
       begin
         if trim(dblkcbbMotorista.Text) = '' then
            begin
              Application.MessageBox('Informe o Motorista','Aviso',MB_OK+MB_ICONWARNING);
              ActiveControl := dblkcbbMotorista;
              Abort;
            end
         else
            begin
              ConsAbastecimentosAberto.SQL.Add(' and MOTORISTA.CODMOT = :CODMOT');
              ConsAbastecimentosRealizados.SQL.Add(' and MOTORISTA.CODMOT = :CODMOT');
              ConsAbastecimentosAberto.ParamByName('CODMOT').Value := MotoristasCODMOT.AsInteger;
              ConsAbastecimentosRealizados.ParamByName('CODMOT').Value := MotoristasCODMOT.AsInteger;
            end;
       end;

  ConsAbastecimentosAberto.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HORENT');
  ConsAbastecimentosRealizados.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HORENT');


  ConsAbastecimentosAberto.Open;
  ClientConsAbastecimentosAberto.Open;

  ConsAbastecimentosRealizados.Open;
  ClientConsAbastecimentosRealizados.Open;

  edtQtdComb.Value := 0;
  edtQtdCombEmp.Value := 0;
  edtQtdCombPost.Value := 0;
  edtVlrCombEmp.Value := 0;
  edtVlrCombPost.Value := 0;

end;

procedure TFAbastecimento_Viagem.ClientConsAbastecimentosAbertoCalcFields(
  DataSet: TDataSet);
begin
  ClientConsAbastecimentosAbertovnTotalRodado.AsInteger := ClientConsAbastecimentosAbertoKMENT.Value - ClientConsAbastecimentosAbertoKMSAIDA.Value;

  if ClientConsAbastecimentosAbertoITESEL.Value = 'S' then
     begin
       ClientConsAbastecimentosAbertovnKmSelecionado.AsInteger := ClientConsAbastecimentosAbertovnTotalRodado.AsInteger;
     end
  else
     begin
       ClientConsAbastecimentosAbertovnKmSelecionado.AsInteger := 0;
     end;
end;

procedure TFAbastecimento_Viagem.ClientConsAbastecimentosRealizadosCalcFields(
  DataSet: TDataSet);
begin
  ClientConsAbastecimentosRealizadosvnTotalRodado.Value := ClientConsAbastecimentosRealizadosKMENT.Value - ClientConsAbastecimentosRealizadosKMSAIDA.Value;
end;

procedure TFAbastecimento_Viagem.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field.FieldName = 'MEDIA_CONS' then
     begin
       //MUDA A COR DA LINHA
       if ClientConsAbastecimentosRealizadosRETORNO.AsString = 'VAZIO' then
          begin
             if ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat < ClientConsAbastecimentosRealizadosMEDMINVAZ.AsFloat then
                begin
                  with (Sender as TDBGrid).Canvas do
                    begin
                      FillRect(Rect);
                      Brush.Color := clRed;
                      Font.Color := clWhite;
                      //Font.Style := [fsBold];
                      Column.Field.Alignment := taCenter;


                      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
                    end;
                end
             else
             if ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat >= ClientConsAbastecimentosRealizadosMEDMAXVAZ.AsFloat then
                begin
                  with (Sender as TDBGrid).Canvas do
                    begin
                      FillRect(Rect);
                      Brush.Color := clGreen;
                      Font.Color := clWhite;
                      //Font.Style := [fsBold];
                      Column.Field.Alignment := taCenter;


                      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
                    end;
                end;
          end
       else
       if ClientConsAbastecimentosRealizadosRETORNO.AsString = 'CARREGADO' then
          begin
            if ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat < ClientConsAbastecimentosRealizadosMEDMINCAR.AsFloat then
                  begin
                    with (Sender as TDBGrid).Canvas do
                      begin
                        FillRect(Rect);
                        Brush.Color := clRed;
                        Font.Color := clWhite;
                        //Font.Style := [fsBold];
                        Column.Field.Alignment := taCenter;


                        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
                      end;
                  end
            else
               if ClientConsAbastecimentosRealizadosMEDIA_CONS.AsFloat >= ClientConsAbastecimentosRealizadosMEDMAXCAR.AsFloat then
                  begin
                    with (Sender as TDBGrid).Canvas do
                      begin
                        FillRect(Rect);
                        Brush.Color := clGreen;
                        Font.Color := clWhite;
                        //Font.Style := [fsBold];
                        Column.Field.Alignment := taCenter;


                        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
                      end;
                  end;
          end
       else
         begin
            with (Sender as TDBGrid).Canvas do
              begin
                FillRect(Rect);
                Brush.Color := clWhite;
                Font.Color := clBlack;
                //Font.Style := [fsBold];
                Column.Field.Alignment := taCenter;


                TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
              end;
         end;

     end;
end;

procedure TFAbastecimento_Viagem.dbgAbastecimentosAbertoCellClick(
  Column: TColumn);
begin
if not ClientConsAbastecimentosAberto.IsEmpty then
   begin
      if Column.FieldName = 'vaIteSel' then
         begin
           ClientConsAbastecimentosAberto.Edit;
           if ClientConsAbastecimentosAbertoITESEL.Value = 'S' then
               begin
                 ClientConsAbastecimentosAbertoITESEL.Value := 'N';
               end
           else
              begin
                 ClientConsAbastecimentosAbertoITESEL.Value := 'S';
              end;
            ClientConsAbastecimentosAberto.Post;

            edtQtdComb.Value := 0;
         end;
   end;

end;

procedure TFAbastecimento_Viagem.dbgAbastecimentosAbertoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  Check: Integer;
  R: TRect;
begin
     if Column.FieldName = 'PLAVEI' then
         begin
           //MUDA A COR DA LINHA
           if ClientConsAbastecimentosAbertoITESEL.Value = 'S'  then
              with (Sender as TDBGrid).Canvas do
              begin
                 Brush.Color := clRed; //clSkyBlue;
                  FillRect(Rect);
                  Font.Style := [fsbold];
                  Font.Color := clWhite;
                  Column.Field.Alignment := taCenter;


                  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
              end;
         end;

   {if (Column.FieldName <> 'DESTINO') and (Column.FieldName <> 'NOMMOT') then
      Column.Field.Alignment := taCenter; }


    //DESENHA O CHECK NA GRID
      if Column.FieldName = 'vaIteSel' then
         begin//1
           dbgAbastecimentosAberto.Canvas.FillRect(Rect);
           Check := 0;

           if ClientConsAbastecimentosAbertoITESEL.Value = 'S' then
              Check := DFCS_CHECKED
           else Check := 0;
              R:=Rect;
              InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
              DrawFrameControl(dbgAbastecimentosAberto.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
         end;//1

end;

procedure TFAbastecimento_Viagem.edtQtdCombChange(Sender: TObject);
begin
  if edtQtdComb.Value > 0 then
     edtMediaKmLitro.Value := ClientConsAbastecimentosAbertoTotalKmSel.Value / edtQtdComb.Value
  else
     edtMediaKmLitro.Value := 0;

end;

procedure TFAbastecimento_Viagem.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAbastecimento_Viagem.FormShow(Sender: TObject);
begin
  edtDatAbastecimentoIni.Date := StartOfTheMonth(Date);
  edtDatAbastecimentoFim.Date := EndOfTheMonth(Date);

  edtDatSaidaIni.Date := StartOfTheMonth(Date);
  edtDatSaidaFim.Date := EndOfTheMonth(Date);

  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;

  Motoristas.Close;
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

  chkTrucks_Cavalos.Checked := True;
  chkDataAbastec.Checked := True;

  PaginaControle.ActivePageIndex := 0;

  btnMostrar.Click;
end;

end.
