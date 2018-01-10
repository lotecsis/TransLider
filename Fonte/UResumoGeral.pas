unit UResumoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, ExtCtrls, DB, DBClient, Provider, IBCustomDataSet,
  IBQuery;

type
  TFResumoGeral = class(TForm)
    pnl1: TPanel;
    lblDQtdManut: TLabel;
    pnl3: TPanel;
    lblDQtdAbastcAbe: TLabel;
    pnl5: TPanel;
    lblDQtdIndentCondut: TLabel;
    pnl7: TPanel;
    lblDQtdCnhVenc: TLabel;
    pnlLogMonitoramento: TPanel;
    lblDQtdLogMonit: TLabel;
    lblQtdManut: TLabel;
    lblQtdAbastcAbe: TLabel;
    lblQtdIndentCondut: TLabel;
    lblQtdCnhVenc: TLabel;
    lblQtdLogMonit: TLabel;
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
    ProviderConsAbastecimentosAberto: TDataSetProvider;
    ClientConsAbastecimentosAberto: TClientDataSet;
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
    ClientConsAbastecimentosAbertovnTotalRodado: TIntegerField;
    ClientConsAbastecimentosAbertovaIteSel: TStringField;
    ClientConsAbastecimentosAbertovnKmSelecionado: TIntegerField;
    ClientConsAbastecimentosAbertoTotalKmSel: TAggregateField;
    pnl2: TPanel;
    lblDNivelComb: TLabel;
    Tanque: TGauge;
    pnlEntradasObservacoes: TPanel;
    lblDQtdEntradaObsMot: TLabel;
    lblQtdEntradaObsMot: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure lblDQtdCnhVencClick(Sender: TObject);
    procedure lblDQtdAbastcAbeClick(Sender: TObject);
    procedure lblDQtdManutClick(Sender: TObject);
    procedure lblDQtdIndentCondutClick(Sender: TObject);
    procedure lblDQtdLogMonitClick(Sender: TObject);
    procedure lblDNivelCombClick(Sender: TObject);
    procedure lblDQtdEntradaObsMotClick(Sender: TObject);

  private
    { Private declarations }
    vnQtdManut : Integer;
    vnQtdAbastcAbe : Integer;
    vnQtdIndentCondut : Integer;
    vnQtdCnhVenc : Integer;
    vnQtdLogMonit : Integer;
    vnNivelComb : Double;
    vnQtdEntradaObsMot : Integer;
  public
    { Public declarations }
  end;

var
  FResumoGeral: TFResumoGeral;

implementation

uses UDmFire, UVencimentoCNH, UAbastecimento_Viagem,
  URelacaoManutencoesPeriodicas, UInfracoesIdentificar,
  ULogMonitoramentoVeiculos, UTanqueCombustivel, UEntradaVeicObsMot;

{$R *.dfm}

procedure TFResumoGeral.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFResumoGeral.FormShow(Sender: TObject);
begin
    {*****************************************
               REALIZA AS CONSULTAS
    ******************************************}

    {*************************************************************
     manutenções periódicas À VENCER/VENCIDAS com Veículo no pátio
    **************************************************************}
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

    DmFire.RelacaoManutPeriodicas.SQL.Add(' AND VEICULO.LOCALVEI = ''PATIO''');
    DmFire.RelacaoManutPeriodicas.Open;
    DmFire.ClientRelacaoManutPeriodicas.Open;
    DmFire.ClientRelacaoManutPeriodicas.IndexFieldNames := 'PLAVEI;vnKmRestante';

    //PEGA APENAS OS VENCIDOS
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

     vnQtdManut := DmFire.ClientRelacaoManutPeriodicas.RecordCount;
     lblQtdManut.Caption := IntToStr(vnQtdManut);

     {********************************************
               ABASTECIMENTOS EM ABERTO
     *********************************************}
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

      ConsAbastecimentosAberto.SQL.Add(' AND VEICULO.TIPO IN (''TRUCK'',''CAVALO'')');
      ConsAbastecimentosAberto.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATENT,ENTRADA_SAIDA.HORENT');
      ConsAbastecimentosAberto.Open;
      ClientConsAbastecimentosAberto.Open;
      ClientConsAbastecimentosAberto.Last;
      ClientConsAbastecimentosAberto.First;
      vnQtdAbastcAbe := ClientConsAbastecimentosAberto.RecordCount;
      lblQtdAbastcAbe.Caption := IntToStr(vnQtdAbastcAbe);

      {**********************************************
           IDENTIFICAÇÃO DE CONDUTORES EM ABERTO
      ***********************************************}
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
      DmFire.ClientConsInfracoesMov.Last;
      DmFire.ClientConsInfracoesMov.First;

      vnQtdIndentCondut := DmFire.ClientConsInfracoesMov.RecordCount;
      lblQtdIndentCondut.Caption := IntToStr(vnQtdIndentCondut);

      {**************************************************
                      CNH VENCENDO/VENCIDA
      ***************************************************}
      DmFire.ConsVencimentoCNH.Close;
      DmFire.ConsVencimentoCNH.Open;
      DmFire.ConsVencimentoCNH.First;
      vnQtdCnhVenc := 0;
      while NOT DmFire.ConsVencimentoCNH.Eof do
         begin
           if DmFire.ConsVencimentoCNHvnQtdDias.AsInteger <= 30 then
              vnQtdCnhVenc := vnQtdCnhVenc + 1;

           DmFire.ConsVencimentoCNH.Next;
         end;
    lblQtdCnhVenc.Caption := IntToStr(vnQtdCnhVenc);

    {**********************************************
       CONSULTA O LOG DE MONITORAMENTO DE VEICULOS
    ***********************************************}
    DmFire.ConsLogMonitoramento.Close;
    DmFire.ConsLogMonitoramento.Open;
    if DmFire.ConsLogMonitoramento.IsEmpty then
       begin
         vnQtdLogMonit := 0;
       end
    else
       begin
         DmFire.ConsLogMonitoramento.Last;
         DmFire.ConsLogMonitoramento.First;
         vnQtdLogMonit := DmFire.ConsLogMonitoramento.RecordCount;
       end;
    lblQtdLogMonit.Caption := IntToStr(vnQtdLogMonit);

    {****************************************************
                     TANQUE DE COMBUSTIVEL
    *****************************************************}
     DmFire.CadTanque_Comb.Close;
     DmFire.CadTanque_Comb.ParamByName('CODTAN').Value := 1;
     DmFire.CadTanque_Comb.Open;
     vnNivelComb := DmFire.CadTanque_CombNIVEL.Value;

     Tanque.MaxValue := DmFire.CadTanque_CombNIVEL_MAX.AsInteger;
     Tanque.Progress := DmFire.CadTanque_CombNIVEL.AsInteger;
     if DmFire.CadTanque_CombNIVEL.Value > DmFire.CadTanque_CombNIVEL_MIN.Value then
        begin
          Tanque.ForeColor := clLime;
        end
     else
        begin
          Tanque.ForeColor := clRed;
        end;


    {******************************************************
       ENTRADA DE VEICULOS COM OBSERVACOES DOS MOTORISTAS
    *******************************************************}

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
    DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.OBS_MOTORISTA <> '' ''');
    DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.IN_VISUALIZADO = ''NAO''');
    DmFire.RelacaoEntradaSaida.Open;
    if DmFire.RelacaoEntradaSaida.IsEmpty then
       begin
         vnQtdEntradaObsMot := 0;
       end
    else
      begin
        DmFire.RelacaoEntradaSaida.Last;
        DmFire.RelacaoEntradaSaida.First;
        vnQtdEntradaObsMot := DmFire.RelacaoEntradaSaida.RecordCount;
      end;
     lblQtdEntradaObsMot.Caption := IntToStr(vnQtdEntradaObsMot);

    lblDQtdManut.Enabled := vnQtdManut > 0;
    lblQtdManut.Enabled := vnQtdManut > 0;
    lblDQtdAbastcAbe.Enabled := vnQtdAbastcAbe > 0;
    lblQtdAbastcAbe.Enabled := vnQtdAbastcAbe > 0;
    lblDQtdIndentCondut.Enabled := vnQtdIndentCondut > 0;
    lblQtdIndentCondut.Enabled := vnQtdIndentCondut > 0;
    lblDQtdCnhVenc.Enabled := vnQtdCnhVenc > 0;
    lblQtdCnhVenc.Enabled := vnQtdCnhVenc > 0;
    lblQtdLogMonit.Enabled := vnQtdLogMonit > 0;
    lblDQtdLogMonit.Enabled := vnQtdLogMonit > 0;
    lblDQtdEntradaObsMot.Enabled := vnQtdEntradaObsMot > 0;
    lblQtdEntradaObsMot.Enabled := vnQtdEntradaObsMot > 0;

    if vnQtdLogMonit = 0 then
       pnlLogMonitoramento.Color := clWhite;

    if vnQtdEntradaObsMot = 0 then
       pnlEntradasObservacoes.Color := clWhite;
    

end;

procedure TFResumoGeral.lblDQtdManutClick(Sender: TObject);
begin
  if vnQtdManut > 0 then
     begin
        FRelacaoManutencoesPeriodicas := TFRelacaoManutencoesPeriodicas.Create(Self);
        FResumoGeral.Visible := False;
        FRelacaoManutencoesPeriodicas.chkLocalVei.Checked := True;
        FRelacaoManutencoesPeriodicas.cbbLocalVei.ItemIndex := 0;
        FRelacaoManutencoesPeriodicas.chkApenasVencidos.Checked := True;
        FRelacaoManutencoesPeriodicas.ShowModal;
        FreeAndNil(FRelacaoManutencoesPeriodicas);
        FResumoGeral.Visible := True;
     end;
end;

procedure TFResumoGeral.lblDNivelCombClick(Sender: TObject);
begin
    FTanqueCombustivel := TFTanqueCombustivel.Create(Self);
    FResumoGeral.Visible := False;
    FTanqueCombustivel.ShowModal;
    FreeAndNil(FTanqueCombustivel);
    FResumoGeral.Visible := True;
end;

procedure TFResumoGeral.lblDQtdAbastcAbeClick(Sender: TObject);
begin
 if vnQtdAbastcAbe > 0 then
    begin
      FAbastecimento_Viagem := TFAbastecimento_Viagem.Create(Self);
      FResumoGeral.Visible := False;
      FAbastecimento_Viagem.ShowModal;
      FreeAndNil(FAbastecimento_Viagem);
      FResumoGeral.Visible := True;
    end;
end;

procedure TFResumoGeral.lblDQtdIndentCondutClick(Sender: TObject);
begin
  if vnQtdIndentCondut > 0 then
     begin
       FInfracoesIdentificar := TFInfracoesIdentificar.Create(Self);
       FResumoGeral.Visible := False;
       FInfracoesIdentificar.ShowModal;
       FreeAndNil(FInfracoesIdentificar);
       FResumoGeral.Visible := True;
     end;
end;

procedure TFResumoGeral.lblDQtdLogMonitClick(Sender: TObject);
begin
  if vnQtdLogMonit > 0 then
     begin
       FLogMonitoramentoVeiculos := TFLogMonitoramentoVeiculos.Create(Self);
       FResumoGeral.Visible := false;
       FLogMonitoramentoVeiculos.ShowModal;
       FreeAndNil(FLogMonitoramentoVeiculos);
       FResumoGeral.Visible := True;
     end;
end;

procedure TFResumoGeral.lblDQtdCnhVencClick(Sender: TObject);
begin
  if vnQtdCnhVenc > 0 then
    begin
      FVencimentoCNH := TFVencimentoCNH.Create(Self);
      FResumoGeral.Visible := False;
      FVencimentoCNH.ShowModal;
      FreeAndNil(FVencimentoCNH);
      FResumoGeral.Visible := True;
    end;

end;





procedure TFResumoGeral.lblDQtdEntradaObsMotClick(Sender: TObject);
begin
  FEntradaVeicObsMot := TFEntradaVeicObsMot.Create(Self);
  FResumoGeral.Visible := false;
  FEntradaVeicObsMot.ShowModal;
  FreeAndNil(FEntradaVeicObsMot);
  FResumoGeral.Visible := True;

end;

end.
