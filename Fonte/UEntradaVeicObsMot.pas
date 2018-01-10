unit UEntradaVeicObsMot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, IBCustomDataSet, DB, IBQuery, DBClient, Provider, DBCtrls,
  rxToolEdit, StdCtrls, Mask, rxCurrEdit, Buttons, Grids, DBGrids, ImgList;

type
  TFEntradaVeicObsMot = class(TForm)
    lblPlaca: TLabel;
    lblCarga: TLabel;
    lblDataChegada: TLabel;
    lblDataSaida: TLabel;
    lblMotorista: TLabel;
    lblADatSaida: TLabel;
    lblADatChegada: TLabel;
    dbg1: TDBGrid;
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
    ClientRelacaoEntradaSaidaQTD_COMBEMP: TFloatField;
    ClientRelacaoEntradaSaidaQTD_COMBPOS: TFloatField;
    ClientRelacaoEntradaSaidaOBS_MOTORISTA: TWideStringField;
    ClientRelacaoEntradaSaidaIN_VISUALIZADO: TWideStringField;
    lblVisualizado: TLabel;
    chkVisualizado: TCheckBox;
    cbbVisualizado: TComboBox;
    ClientRelacaoEntradaSaidaImagem: TStringField;
    ImageList1: TImageList;
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnMostrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaVeicObsMot: TFEntradaVeicObsMot;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFEntradaVeicObsMot.ApplicationEvents1Idle(Sender: TObject;
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

  lblVisualizado.Enabled := chkVisualizado.Checked;
  cbbVisualizado.Enabled := chkVisualizado.Checked;


end;

procedure TFEntradaVeicObsMot.btnMostrarClick(Sender: TObject);
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
  DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.OBS_MOTORISTA <> '' ''');

  if chkVisualizado.Checked then
     begin
       DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.IN_VISUALIZADO = '+QuotedStr(cbbVisualizado.Text));
     end;


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

procedure TFEntradaVeicObsMot.dbg1CellClick(Column: TColumn);
begin
if not ClientRelacaoEntradaSaida.IsEmpty then
   begin
      if dbg1.SelectedField.FieldName = 'Imagem' then
         begin
           if ClientRelacaoEntradaSaidaIN_VISUALIZADO.Value = 'SIM' then
              begin
                Application.MessageBox(PChar(ClientRelacaoEntradaSaidaOBS_MOTORISTA.AsString),'Visualização',MB_OK+MB_ICONINFORMATION);
              end
           else
              begin
                 if Application.MessageBox(PChar(ClientRelacaoEntradaSaidaOBS_MOTORISTA.AsString + #13+#13+#13+ 'Deseja confirmar a visualização desta mensagem?'), 'Confirmar Visualização', MB_ICONINFORMATION+MB_YESNO+MB_DEFBUTTON2) = idyes then
                    Begin
                      DmFire.CadEntradaSaida.Close;
                      DmFire.CadEntradaSaida.ParamByName('CODVEI').Value  := ClientRelacaoEntradaSaidaCODVEI.Value;
                      DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value  := ClientRelacaoEntradaSaidaSEQENTSAI.Value;
                      DmFire.CadEntradaSaida.Open;
                      if not DmFire.CadEntradaSaida.IsEmpty then
                         begin
                           DmFire.CadEntradaSaida.Edit;
                           DmFire.CadEntradaSaidaIN_VISUALIZADO.Value := 'SIM';
                           DmFire.CadEntradaSaida.Post;
                           DmFire.ibtTransacao.CommitRetaining;
                           btnMostrar.Click;
                         end;
                    End;
              end;
         end;
   end;
end;

procedure TFEntradaVeicObsMot.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName = 'Imagem' then
      begin
          dbg1.Canvas.FillRect(Rect);
          // Desenha o Quadrado
        //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

          // Desenha o check sobre o quadrado

          ImageList1.Draw(dbg1.Canvas,Rect.Left+10,Rect.Top+1,0);
      end;
  end;

procedure TFEntradaVeicObsMot.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEntradaVeicObsMot.FormShow(Sender: TObject);
begin
  chkVisualizado.Checked := True;
  btnMostrar.Click;
end;

end.
