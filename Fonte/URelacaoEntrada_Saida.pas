unit URelacaoEntrada_Saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, Provider, StdCtrls, Buttons, Mask,
  rxToolEdit, rxCurrEdit, DBCtrls, IBCustomDataSet, IBQuery, AppEvnts, DateUtils;

type
  TFRelacaoEntrada_Saida = class(TForm)
    dbg1: TDBGrid;
    ProviderRelacaoEntradaSaida: TDataSetProvider;
    ClientRelacaoEntradaSaida: TClientDataSet;
    dsClientRelacaoEntradaSaida: TDataSource;
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
    btnMostrar: TBitBtn;
    lblPlaca: TLabel;
    lblCarga: TLabel;
    lblDataChegada: TLabel;
    chkPlaca: TCheckBox;
    dblkcbbPlaca: TDBLookupComboBox;
    chkCarga: TCheckBox;
    edtCarga: TCurrencyEdit;
    chkDataChegada: TCheckBox;
    edtDatChegadaIni: TDateEdit;
    edtDatChegadaFim: TDateEdit;
    lblDataSaida: TLabel;
    edtDatSaidaIni: TDateEdit;
    edtDatSaidaFim: TDateEdit;
    chkDataSaida: TCheckBox;
    lblMotorista: TLabel;
    chkMotorista: TCheckBox;
    dblkcbbCODMOT: TDBLookupComboBox;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    dsMotoristas: TDataSource;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    VeiculosSITVEI: TIBStringField;
    dsVeiculos: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    lblADatSaida: TLabel;
    lblADatChegada: TLabel;
    ClientRelacaoEntradaSaidavnTotalRodado: TIntegerField;
    ClientRelacaoEntradaSaidavnTotalRodadoGeral: TAggregateField;
    lbl1: TLabel;
    dbedtvnTotalRodadoGeral: TDBEdit;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ClientRelacaoEntradaSaidaCalcFields(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelacaoEntrada_Saida: TFRelacaoEntrada_Saida;

implementation

uses UDmFire, UAlteraEntrada_Saida, UPrincipal;

{$R *.dfm}

procedure TFRelacaoEntrada_Saida.ApplicationEvents1Idle(Sender: TObject;
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

  btnExcluir.Enabled := (not(ClientRelacaoEntradaSaida.IsEmpty) and (ClientRelacaoEntradaSaidaKMENT.AsInteger = 0));
  btnAlterar.Enabled := (not(ClientRelacaoEntradaSaida.IsEmpty) and (ClientRelacaoEntradaSaidaKMENT.AsInteger > 0) and (ClientRelacaoEntradaSaidaQTD_COMB.AsInteger = 0));

end;

procedure TFRelacaoEntrada_Saida.btnAlterarClick(Sender: TObject);
begin

    if ClientRelacaoEntradaSaidaQTD_COMB.Value > 0 then
        begin
          Application.MessageBox('É necessário estornar o abastecimento realizado para realizar alterações neste item','Aviso',MB_OK+MB_ICONWARNING);
          Abort;
        end;

  FAlteraEntrada_Saida := TFAlteraEntrada_Saida.Create(Self);

    FAlteraEntrada_Saida.ClientEntrada.Open;
    FAlteraEntrada_Saida.ClientEntrada.Insert;
    FAlteraEntrada_Saida.ClientEntradaSEQENTSAI.Value := ClientRelacaoEntradaSaidaSEQENTSAI.Value;
    FAlteraEntrada_Saida.ClientEntradaPLAVEI.Value := ClientRelacaoEntradaSaidaPLAVEI.Value;
    FAlteraEntrada_Saida.ClientEntradaCODVEI.Value := ClientRelacaoEntradaSaidaCODVEI.Value;
    FAlteraEntrada_Saida.ClientEntradaCODMOT.Value := ClientRelacaoEntradaSaidaCODMOT.Value;
    FAlteraEntrada_Saida.ClientEntradaDATSAI.Value := ClientRelacaoEntradaSaidaDATSAIDA.Value;
    FAlteraEntrada_Saida.ClientEntradaHORSAI.Value := ClientRelacaoEntradaSaidaHORSAIDA.Value;
    FAlteraEntrada_Saida.ClientEntradaKMSAI.Value := ClientRelacaoEntradaSaidaKMSAIDA.Value;
    FAlteraEntrada_Saida.ClientEntradaDESTINO.Value := ClientRelacaoEntradaSaidaDESTINO.Value;
    FAlteraEntrada_Saida.ClientEntradaCODCARRETA.Value := ClientRelacaoEntradaSaidaCODCARRETA.Value;
    FAlteraEntrada_Saida.ClientEntradaPLACA_CARRETA.AsString := ClientRelacaoEntradaSaidaPLAVEI_CARRETA.AsString;
    FAlteraEntrada_Saida.ClientEntradaIN_ENGATADO.Value := ClientRelacaoEntradaSaidaIN_ENGATADO.Value;
    FAlteraEntrada_Saida.ClientEntradaCARGA.Value := ClientRelacaoEntradaSaidaCARGA.Value;
    FAlteraEntrada_Saida.ClientEntradaNOMMOT.Value := ClientRelacaoEntradaSaidaNOMMOT.Value;
    FAlteraEntrada_Saida.ClientEntradaDATENT.Value := ClientRelacaoEntradaSaidaDATENT.Value;
    FAlteraEntrada_Saida.ClientEntradaHORENT.Value := ClientRelacaoEntradaSaidaHORENT.Value;
    FAlteraEntrada_Saida.ClientEntradaKMENT.Value := ClientRelacaoEntradaSaidaKMENT.Value;
    FAlteraEntrada_Saida.ClientEntradaFOTO.Value := ClientRelacaoEntradaSaidaFOTO.Value;

    //CONSULTA SE ESTE É O ULTIMO LANÇAMENTO
    DmFire.ConsSql.Close;
    DmFire.ConsSql.SQL.Clear;
    DmFire.ConsSql.SQL.Add('SELECT MAX(ENTRADA_SAIDA.seqentsai) AS SEQENTSAI');
    DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
    DmFire.ConsSql.SQL.Add(' WHERE');
    DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODVEI = :CODVEI');
    DmFire.ConsSql.ParamByName('CODVEI').Value := ClientRelacaoEntradaSaidaCODVEI.Value;
    DmFire.ConsSql.Open;
    if not DmFire.ConsSql.IsEmpty then
       begin
         if DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger = ClientRelacaoEntradaSaidaSEQENTSAI.AsInteger then
            begin
              FAlteraEntrada_Saida.vaUltimoLancamento := 'S';
            end
         else
            begin
              FAlteraEntrada_Saida.vaUltimoLancamento := 'N';
            end;
       end
    else
       begin
         FAlteraEntrada_Saida.ClientEntrada.Cancel;
         Abort;
       end;


  FAlteraEntrada_Saida.ShowModal;
  FreeAndNil(FAlteraEntrada_Saida);
  btnMostrar.Click;
end;

procedure TFRelacaoEntrada_Saida.btnExcluirClick(Sender: TObject);
VAR vnCodVei, vnCodCarreta,vnCodMot, vnSeqEntSai, vnCarga : Integer;
begin
if Application.MessageBox('Deseja realmente excluir lançamento?', 'Excluir Lançamento', MB_ICONQUESTION+MB_YESNO) = idyes then
   Begin
      DmFire.CadEntradaSaida.Close;
      DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := ClientRelacaoEntradaSaidaSEQENTSAI.Value;
      DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := ClientRelacaoEntradaSaidaCODVEI.Value;
      DmFire.CadEntradaSaida.Open;
      if not DmFire.CadEntradaSaida.IsEmpty then
         begin
            vnCarga := DmFire.CadEntradaSaidaCARGA.AsInteger;
            vnCodVei := DmFire.CadEntradaSaidaCODVEI.Value;
            vnCodCarreta := DmFire.CadEntradaSaidaCODCARRETA.Value;
            vnCodMot := DmFire.CadEntradaSaidaCODMOT.Value;

            DmFire.CadEntradaSaida.Delete;
            DmFire.ibtTransacao.CommitRetaining;

            DmFire.CadVeiculo.Close;
            DmFire.CadVeiculo.ParamByName('CODVEI').AsInteger := vnCodVei;
            DmFire.CadVeiculo.Open;
            if not DmFire.CadVeiculo.IsEmpty then
               begin
                  DmFire.CadVeiculo.Edit;

                  //BUSCA A ULTIMA SAIDA DO VEICULO PARA ATUALIZAR O KM ATUAL
                  DmFire.ConsSql.Close;
                  DmFire.ConsSql.SQL.Clear;
                  DmFire.ConsSql.SQL.Add('SELECT MAX(ENTRADA_SAIDA.seqentsai) AS SEQENTSAI');
                  DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
                  DmFire.ConsSql.SQL.Add(' WHERE');
                  DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODVEI = :CODVEI');
                  DmFire.ConsSql.ParamByName('CODVEI').Value := vnCodVei;
                  DmFire.ConsSql.Open;
                  if not DmFire.ConsSql.IsEmpty then
                     begin
                        vnSeqEntSai := DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger;

                        DmFire.ConsSql.Close;
                        DmFire.ConsSql.SQL.Clear;
                        DmFire.ConsSql.SQL.Add('SELECT ENTRADA_SAIDA.*');
                        DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
                        DmFire.ConsSql.SQL.Add(' WHERE');
                        DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODVEI = :CODVEI');
                        DmFire.ConsSql.SQL.Add('  AND ENTRADA_SAIDA.SEQENTSAI = :SEQENTSAI');
                        DmFire.ConsSql.ParamByName('CODVEI').Value := vnCodVei;
                        DmFire.ConsSql.ParamByName('SEQENTSAI').Value := vnSeqEntSai;
                        DmFire.ConsSql.Open;
                        if not DmFire.ConsSql.IsEmpty then
                           begin
                              if DmFire.ConsSql.FieldByName('KMENT').AsInteger = 0 then
                                 begin
                                   DmFire.CadVeiculoKMATU.Value := DmFire.ConsSql.FieldByName('KMSAIDA').AsInteger;
                                   DmFire.CadVeiculoLOCALVEI.Value := 'VIAGEM';
                                 end
                              else
                                 begin
                                    DmFire.CadVeiculoKMATU.Value := DmFire.ConsSql.FieldByName('KMENT').AsInteger;
                                    DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                                 end;
                           end
                        else
                           begin
                             DmFire.CadVeiculoKMATU.Value := DmFire.CadVeiculoKMINI.Value;
                             DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                           end;
                     end
                  else
                     begin
                       DmFire.CadVeiculoKMATU.Value := DmFire.CadVeiculoKMINI.Value;
                       DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                     end;

                  DmFire.CadVeiculo.Post;
                  DmFire.ibtTransacao.CommitRetaining;
               end;

               //SE FOR CAVALO E A CARRETA TIVER ENGATADA
               if vnCodCarreta <> 0 then
                  begin
                      DmFire.CadVeiculo.Close;
                      DmFire.CadVeiculo.ParamByName('CODVEI').AsInteger := vnCodCarreta;
                      DmFire.CadVeiculo.Open;
                      if not DmFire.CadVeiculo.IsEmpty then
                         begin
                            DmFire.CadVeiculo.Edit;

                            //BUSCA A ULTIMA SAIDA DO VEICULO PARA ATUALIZAR O KM ATUAL
                            DmFire.ConsSql.Close;
                            DmFire.ConsSql.SQL.Clear;
                            DmFire.ConsSql.SQL.Add('SELECT MAX(ENTRADA_SAIDA.seqentsai) AS SEQENTSAI');
                            DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
                            DmFire.ConsSql.SQL.Add(' WHERE');
                            DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODCARRETA = :CODCARRETA');
                            DmFire.ConsSql.ParamByName('CODCARRETA').Value := vnCodCarreta;
                            DmFire.ConsSql.Open;
                            if not DmFire.ConsSql.IsEmpty then
                               begin
                                  vnSeqEntSai := DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger;

                                  DmFire.ConsSql.Close;
                                  DmFire.ConsSql.SQL.Clear;
                                  DmFire.ConsSql.SQL.Add('SELECT ENTRADA_SAIDA.*');
                                  DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
                                  DmFire.ConsSql.SQL.Add(' WHERE');
                                  DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODCARRETA = :CODCARRETA');
                                  DmFire.ConsSql.SQL.Add('  AND ENTRADA_SAIDA.SEQENTSAI = :SEQENTSAI');
                                  DmFire.ConsSql.ParamByName('CODCARRETA').Value := vnCodCarreta;
                                  DmFire.ConsSql.ParamByName('SEQENTSAI').Value := vnSeqEntSai;
                                  DmFire.ConsSql.Open;
                                  if not DmFire.ConsSql.IsEmpty then
                                     begin
                                        if DmFire.ConsSql.FieldByName('KMENT').AsInteger = 0 then
                                           begin
                                             DmFire.CadVeiculoKMATU.Value := DmFire.ConsSql.FieldByName('KMSAIDA').AsInteger;
                                             DmFire.CadVeiculoLOCALVEI.Value := 'VIAGEM';
                                           end
                                        else
                                           begin
                                              DmFire.CadVeiculoKMATU.Value := DmFire.ConsSql.FieldByName('KMENT').AsInteger;
                                              DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                                           end;
                                     end
                                  else
                                     begin
                                       DmFire.CadVeiculoKMATU.Value := DmFire.CadVeiculoKMINI.Value;
                                       DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                                     end;
                               end
                            else
                               begin
                                 DmFire.CadVeiculoKMATU.Value := DmFire.CadVeiculoKMINI.Value;
                                 DmFire.CadVeiculoLOCALVEI.Value := 'PATIO';
                               end;


                            DmFire.CadVeiculo.Post;
                         end;

                  end;

            //ATUALIZA O LOCAL DO MOTORISTA
            DmFire.CadMotoristas.Close;
            DmFire.CadMotoristas.ParamByName('CODMOT').AsInteger := vnCodMot;
            DmFire.CadMotoristas.Open;
            DmFire.CadMotoristas.Edit;

            //CONSULTA SE EXISTE ALGUMA SAIDA EM ABERTO AINDA
            DmFire.ConsSql.Close;
            DmFire.ConsSql.SQL.Clear;
            DmFire.ConsSql.SQL.Add(' SELECT ENTRADA_SAIDA.SEQENTSAI');
            DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA');
            DmFire.ConsSql.SQL.Add(' WHERE');
            DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.CODMOT = :CODMOT AND');
            DmFire.ConsSql.SQL.Add(' ENTRADA_SAIDA.KMENT = 0');
            DmFire.ConsSql.ParamByName('CODMOT').AsInteger := vnCodMot;
            DmFire.ConsSql.Open;
            if DmFire.ConsSql.IsEmpty then//SE NAO ENCONTROU ESTA NA EMPRESA
               begin
                  DmFire.CadMotoristasLOCALMOT.Value := 'EMPRESA';
               end
            else
               begin
                 DmFire.CadMotoristasLOCALMOT.Value := 'VIAGEM';
               end;

            DmFire.CadMotoristas.Post;

             //ATUALIZA A CARGA
            DmFire.CadCargas.Close;
            DmFire.CadCargas.ParamByName('IDCARGA').AsInteger := vnCarga;
            DmFire.CadCargas.Open;
           if not DmFire.CadCargas.IsEmpty then
              begin
                DmFire.CadCargas.Edit;
                DmFire.CadCargasCODMOT.AsInteger := 0;
                DmFire.CadCargasDATSAI.AsDateTime := 0;
                DmFire.CadCargasDATCHE.AsDateTime := 0;
                DmFire.CadCargasCODVEI.AsInteger := 0;
                DmFire.CadCargasSITCAR.AsString := 'ABERTO';
                DmFire.CadCargasDESTINO.AsString := '';
                DmFire.CadCargas.Post;
              end;


            DmFire.ibtTransacao.CommitRetaining;

            btnMostrar.Click;
         end;
   End;
end;

procedure TFRelacaoEntrada_Saida.btnMostrarClick(Sender: TObject);
begin
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
            DmFire.RelacaoEntradaSaida.SQL.Add(' AND VEICULO.CODVEI = :CODVEI');
            DmFire.RelacaoEntradaSaida.ParamByName('CODVEI').AsInteger := VeiculosCODVEI.Value;
          end;
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
            DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.CODMOT = :CODMOT');
            DmFire.RelacaoEntradaSaida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.Value;
          end;
     end;

  if chkCarga.Checked then
     begin
       DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.CARGA = :CARGA');
       DmFire.RelacaoEntradaSaida.ParamByName('CARGA').AsInteger := edtCarga.AsInteger;
     end;

  if chkDataSaida.Checked then
     begin
       DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.DATSAIDA BETWEEN :DATINISAI AND :DATFIMSAI');
       DmFire.RelacaoEntradaSaida.ParamByName('DATINISAI').Value := edtDatSaidaIni.Date;
       DmFire.RelacaoEntradaSaida.ParamByName('DATFIMSAI').Value := edtDatSaidaFim.Date;
     end;

  if chkDataChegada.Checked then
     begin
       DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.DATENT BETWEEN :DATINIENT AND :DATFIMENT');
       DmFire.RelacaoEntradaSaida.ParamByName('DATINIENT').Value := edtDatChegadaIni.Date;
       DmFire.RelacaoEntradaSaida.ParamByName('DATFIMENT').Value := edtDatChegadaFim.Date;
     end;

  DmFire.RelacaoEntradaSaida.SQL.Add('');
  DmFire.RelacaoEntradaSaida.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATSAIDA DESC,ENTRADA_SAIDA.HORSAIDA DESC');
  DmFire.RelacaoEntradaSaida.Open;
  ClientRelacaoEntradaSaida.Open;

end;

procedure TFRelacaoEntrada_Saida.ClientRelacaoEntradaSaidaCalcFields(
  DataSet: TDataSet);
begin

   if ClientRelacaoEntradaSaidaKMENT.AsInteger > 0 then
      ClientRelacaoEntradaSaidavnTotalRodado.Value := ClientRelacaoEntradaSaidaKMENT.AsInteger - ClientRelacaoEntradaSaidaKMSAIDA.AsInteger
   else
      ClientRelacaoEntradaSaidavnTotalRodado.Value := 0;
end;

procedure TFRelacaoEntrada_Saida.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFRelacaoEntrada_Saida.FormShow(Sender: TObject);
begin

    Motoristas.Close;
    Motoristas.Open;
    Motoristas.Last;
    Motoristas.First;

    Veiculos.Close;
    Veiculos.Open;
    Veiculos.Last;
    Veiculos.First;

    edtDatSaidaIni.Date := Date;
    edtDatSaidaFim.Date := Date;
    chkDataSaida.Checked := True;

    btnMostrar.Click;

end;

end.
