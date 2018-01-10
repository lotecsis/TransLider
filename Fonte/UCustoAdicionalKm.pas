unit UCustoAdicionalKm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, DB,
  DBClient, Provider, DateUtils, DBCtrls, Math;

type
  TFCustoAdicionalKm = class(TForm)
    dbg1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtViaFacil: TCurrencyEdit;
    edtComissoes: TCurrencyEdit;
    edtSalarios: TCurrencyEdit;
    btnMostrar: TBitBtn;
    btnProcessar: TBitBtn;
    lbl4: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    ProviderRelacaoEntradaSaida: TDataSetProvider;
    ClientRelacaoEntradaSaida: TClientDataSet;
    ClientRelacaoEntradaSaidaSEQENTSAI: TIntegerField;
    ClientRelacaoEntradaSaidaCODVEI: TIntegerField;
    ClientRelacaoEntradaSaidaUSUENT: TIntegerField;
    ClientRelacaoEntradaSaidaUSUSAIDA: TIntegerField;
    ClientRelacaoEntradaSaidaCODMOT: TIntegerField;
    ClientRelacaoEntradaSaidaDATSAIDA: TDateField;
    ClientRelacaoEntradaSaidaHORSAIDA: TTimeField;
    ClientRelacaoEntradaSaidaKMSAIDA: TIntegerField;
    ClientRelacaoEntradaSaidaDATENT: TDateField;
    ClientRelacaoEntradaSaidaHORENT: TTimeField;
    ClientRelacaoEntradaSaidaKMENT: TIntegerField;
    ClientRelacaoEntradaSaidaDESTINO: TWideStringField;
    ClientRelacaoEntradaSaidaCARGA: TIntegerField;
    ClientRelacaoEntradaSaidaCODCARRETA: TIntegerField;
    ClientRelacaoEntradaSaidaIN_ENGATADO: TWideStringField;
    ClientRelacaoEntradaSaidaQTD_COMB: TFloatField;
    ClientRelacaoEntradaSaidaDAT_ABASTEC: TDateField;
    ClientRelacaoEntradaSaidaMEDIA_CONS: TFloatField;
    ClientRelacaoEntradaSaidaITESEL: TWideStringField;
    ClientRelacaoEntradaSaidaPLAVEI: TWideStringField;
    ClientRelacaoEntradaSaidaDESVEI: TWideStringField;
    ClientRelacaoEntradaSaidaKMATU: TIntegerField;
    ClientRelacaoEntradaSaidaNOMMOT: TWideStringField;
    ClientRelacaoEntradaSaidaAPEMOT: TWideStringField;
    ClientRelacaoEntradaSaidaFOTO: TWideStringField;
    ClientRelacaoEntradaSaidaUSUARIO_SAIDA: TWideStringField;
    ClientRelacaoEntradaSaidaUSUARIO_ENT: TWideStringField;
    ClientRelacaoEntradaSaidaPLAVEI_CARRETA: TWideStringField;
    ClientRelacaoEntradaSaidavnTotalRodado: TIntegerField;
    ClientRelacaoEntradaSaidavnTotalRodadoGeral: TAggregateField;
    dsClientRelacaoEntradaSaida: TDataSource;
    ClientRelacaoEntradaSaidaQTD_COMBEMP: TFloatField;
    ClientRelacaoEntradaSaidaQTD_COMBPOS: TFloatField;
    ClientRelacaoEntradaSaidaOBS_MOTORISTA: TWideStringField;
    ClientRelacaoEntradaSaidaIN_VISUALIZADO: TWideStringField;
    ClientRelacaoEntradaSaidaVLR_COMBEMP: TFloatField;
    ClientRelacaoEntradaSaidaVLR_COMBPOS: TFloatField;
    ClientRelacaoEntradaSaidaVLR_PEDAGIO: TFloatField;
    ClientRelacaoEntradaSaidaVLR_DESCARGA: TFloatField;
    ClientRelacaoEntradaSaidaVLR_REFEICOES: TFloatField;
    ClientRelacaoEntradaSaidaVLR_OUTRAS_DESP: TFloatField;
    ClientRelacaoEntradaSaidaQTD_CHEQUE_REC: TIntegerField;
    ClientRelacaoEntradaSaidaRETORNO: TWideStringField;
    ClientRelacaoEntradaSaidaVLR_VIAFACIL: TFloatField;
    ClientRelacaoEntradaSaidaVLR_COMISSAO: TFloatField;
    ClientRelacaoEntradaSaidaVLR_SALARIO: TFloatField;
    dbedtvnTotalRodadoGeral: TDBEdit;
    lbl5: TLabel;
    btnGravar: TBitBtn;
    lbl6: TLabel;
    wdstrngfldClientRelacaoEntradaSaidaIN_COMISSAO: TWideStringField;
    ClientRelacaoEntradaSaidaVLR_DEPRECIASSAO: TFloatField;
    ClientRelacaoEntradaSaidaVLR_FINANCIAMENTOS: TFloatField;
    ClientRelacaoEntradaSaidaVLR_PNEUS: TFloatField;
    Label1: TLabel;
    edtDepreciacao: TCurrencyEdit;
    Label2: TLabel;
    edtFinanciamento: TCurrencyEdit;
    edtPneus: TCurrencyEdit;
    Label3: TLabel;
    procedure ClientRelacaoEntradaSaidaCalcFields(DataSet: TDataSet);
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCustoAdicionalKm: TFCustoAdicionalKm;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFCustoAdicionalKm.btnGravarClick(Sender: TObject);
begin

  if not ClientRelacaoEntradaSaida.IsEmpty then
     begin
        ClientRelacaoEntradaSaida.First;
        while not ClientRelacaoEntradaSaida.Eof do
          begin
            DmFire.CadEntradaSaida.Close;
            DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := ClientRelacaoEntradaSaidaCODVEI.AsInteger;
            DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := ClientRelacaoEntradaSaidaSEQENTSAI.AsInteger;
            DmFire.CadEntradaSaida.Open;
            if not DmFire.CadEntradaSaida.IsEmpty then
               begin
                 DmFire.CadEntradaSaida.Edit;
                 DmFire.CadEntradaSaidaVLR_VIAFACIL.Value := ClientRelacaoEntradaSaidaVLR_VIAFACIL.Value;
                 DmFire.CadEntradaSaidaVLR_COMISSAO.Value := ClientRelacaoEntradaSaidaVLR_COMISSAO.Value;
                 DmFire.CadEntradaSaidaVLR_SALARIO.Value := ClientRelacaoEntradaSaidaVLR_SALARIO.Value;

                 DmFire.CadEntradaSaidaVLR_DEPRECIASSAO.Value := ClientRelacaoEntradaSaidaVLR_DEPRECIASSAO.Value;
                 DmFire.CadEntradaSaidaVLR_FINANCIAMENTOS.Value := ClientRelacaoEntradaSaidaVLR_FINANCIAMENTOS.Value;
                 DmFire.CadEntradaSaidaVLR_PNEUS.Value := ClientRelacaoEntradaSaidaVLR_PNEUS.Value;
                 DmFire.CadEntradaSaida.Post;

               end;

            ClientRelacaoEntradaSaida.Next;
          end;
          DmFire.ibtTransacao.CommitRetaining;
          Application.MessageBox('Atualizaão efetuada com sucesso!!','Confirmação',MB_ICONINFORMATION+MB_OK);
     end;
end;

procedure TFCustoAdicionalKm.btnMostrarClick(Sender: TObject);
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

  ClientRelacaoEntradaSaida.Close;
  DmFire.RelacaoEntradaSaida.Close;
  DmFire.RelacaoEntradaSaida.SQL.Clear;
  DmFire.RelacaoEntradaSaida.SQL.Add('SELECT ENTRADA_SAIDA.*,');
  DmFire.RelacaoEntradaSaida.SQL.Add('       VEICULO.PLAVEI,VEICULO.DESVEI,VEICULO.KMATU,');
  DmFire.RelacaoEntradaSaida.SQL.Add('       MOTORISTA.NOMMOT,MOTORISTA.APEMOT,MOTORISTA.FOTO,');
  DmFire.RelacaoEntradaSaida.SQL.Add('       USUARIO_SAI.NOMUSU AS USUARIO_SAIDA,');
  DmFire.RelacaoEntradaSaida.SQL.Add('       USUARIO_ENT.NOMUSU AS USUARIO_ENT,');
  DmFire.RelacaoEntradaSaida.SQL.Add('       CARRETA.PLAVEI AS PLAVEI_CARRETA');
  DmFire.RelacaoEntradaSaida.SQL.Add(' FROM ENTRADA_SAIDA');
  DmFire.RelacaoEntradaSaida.SQL.Add(' INNER JOIN VEICULO ON VEICULO.CODVEI = ENTRADA_SAIDA.CODVEI');
  DmFire.RelacaoEntradaSaida.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = ENTRADA_SAIDA.CODMOT');
  DmFire.RelacaoEntradaSaida.SQL.Add(' INNER JOIN USUARIO USUARIO_SAI ON USUARIO_SAI.CODUSU = ENTRADA_SAIDA.USUSAIDA');
  DmFire.RelacaoEntradaSaida.SQL.Add(' LEFT JOIN USUARIO USUARIO_ENT ON USUARIO_ENT.CODUSU = ENTRADA_SAIDA.USUENT');
  DmFire.RelacaoEntradaSaida.SQL.Add(' LEFT JOIN VEICULO CARRETA ON CARRETA.CODVEI = ENTRaDA_SAIDA.CODCARRETA');
  DmFire.RelacaoEntradaSaida.SQL.Add(' WHERE VEICULO.CODVEI <> 999999');

  DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.DATSAIDA BETWEEN :DATINISAI AND :DATFIMSAI');
  DmFire.RelacaoEntradaSaida.ParamByName('DATINISAI').Value := edtDatIni.Date;
  DmFire.RelacaoEntradaSaida.ParamByName('DATFIMSAI').Value := edtDatFim.Date;

  DmFire.RelacaoEntradaSaida.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'')');

  DmFire.RelacaoEntradaSaida.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATSAIDA DESC,ENTRADA_SAIDA.HORSAIDA DESC');
  ClientRelacaoEntradaSaida.Open;
  DmFire.RelacaoEntradaSaida.Open;

end;

procedure TFCustoAdicionalKm.btnProcessarClick(Sender: TObject);
begin
  if edtViaFacil.Value = 0 then
     begin
       Application.MessageBox('Informe o valor do Via Fácil','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtViaFacil;
       Abort;
     end;

  if edtComissoes.Value = 0 then
     begin
       Application.MessageBox('Informe o valor da Comissão','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtComissoes;
       Abort;
     end;

  if edtSalarios.Value = 0 then
     begin
       Application.MessageBox('Informe o valor do Salário','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtSalarios;
       Abort;
     end;

  if edtDepreciacao.Value = 0 then
     begin
       Application.MessageBox('Informe o valor de Depreciação','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDepreciacao;
       Abort;
     end;

  if edtFinanciamento.Value = 0 then
     begin
       Application.MessageBox('Informe o valor de Financiamentos','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtFinanciamento;
       Abort;
     end;

  if edtPneus.Value = 0 then
     begin
       Application.MessageBox('Informe o valor do gasto de Pneus','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtPneus;
       Abort;
     end;

  ClientRelacaoEntradaSaida.First;
  while not ClientRelacaoEntradaSaida.Eof do
    begin
      ClientRelacaoEntradaSaida.Edit;
      ClientRelacaoEntradaSaidaVLR_VIAFACIL.Value := edtViaFacil.Value * (RoundTo((RoundTo((ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * 100),-3) / RoundTo(ClientRelacaoEntradaSaidavnTotalRodadoGeral.Value,-3)),-3))/100;
      ClientRelacaoEntradaSaidaVLR_COMISSAO.Value := edtComissoes.Value * (RoundTo((RoundTo((ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * 100),-3) / RoundTo(ClientRelacaoEntradaSaidavnTotalRodadoGeral.Value,-3)),-3))/100;
      ClientRelacaoEntradaSaidaVLR_SALARIO.Value := edtSalarios.Value * (RoundTo((RoundTo((ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * 100),-3) / RoundTo(ClientRelacaoEntradaSaidavnTotalRodadoGeral.Value,-3)),-3))/100;

      ClientRelacaoEntradaSaidaVLR_FINANCIAMENTOS.Value := edtFinanciamento.Value * (RoundTo((RoundTo((ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * 100),-3) / RoundTo(ClientRelacaoEntradaSaidavnTotalRodadoGeral.Value,-3)),-3))/100;
      ClientRelacaoEntradaSaidaVLR_DEPRECIASSAO.Value := edtDepreciacao.Value * (RoundTo((RoundTo((ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * 100),-3) / RoundTo(ClientRelacaoEntradaSaidavnTotalRodadoGeral.Value,-3)),-3))/100;
      ClientRelacaoEntradaSaidaVLR_PNEUS.Value :=  (ClientRelacaoEntradaSaidavnTotalRodado.AsFloat * edtPneus.Value);
      ClientRelacaoEntradaSaida.Next;
    end;
end;

procedure TFCustoAdicionalKm.ClientRelacaoEntradaSaidaCalcFields(
  DataSet: TDataSet);
begin
if ClientRelacaoEntradaSaidaKMENT.AsInteger > 0 then
      ClientRelacaoEntradaSaidavnTotalRodado.Value := ClientRelacaoEntradaSaidaKMENT.AsInteger - ClientRelacaoEntradaSaidaKMSAIDA.AsInteger
   else
      ClientRelacaoEntradaSaidavnTotalRodado.Value := 0;
end;

procedure TFCustoAdicionalKm.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);

  btnMostrar.Click;
end;

end.
