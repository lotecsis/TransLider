unit UAlteraOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Mask, rxToolEdit,
  rxCurrEdit, RXDBCtrl, Grids, DBGrids, Buttons, ExtCtrls, AppEvnts, DateUtils;

type
  TFAlteraOrdemServico = class(TForm)
    dsVeiculos: TDataSource;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsReserva: TDataSource;
    Fornecedor: TIBQuery;
    FornecedorCODFOR: TIntegerField;
    FornecedorDESFOR: TIBStringField;
    FornecedorCIDFOR: TIBStringField;
    FornecedorSIGUFS: TIBStringField;
    FornecedorCID_UF: TStringField;
    dsFornecedor: TDataSource;
    dsCadManut_Ger: TDataSource;
    dbg1: TDBGrid;
    dsClientManutencao_ServAlt: TDataSource;
    lblVlrTotal: TLabel;
    lblVlrDesconto1: TLabel;
    lblVlrTotal_Desc: TLabel;
    dbedtVLR_TOTAL: TDBEdit;
    dbedtTOTAL_DESC: TDBEdit;
    dbedtVLR_TOTAL_DESC: TDBEdit;
    pnl1: TPanel;
    lblPlaca: TLabel;
    lblFornecedor: TLabel;
    dbtxtCID_UF: TDBText;
    lbl1: TLabel;
    lblKmServico: TLabel;
    lblData: TLabel;
    dblkcbbCODFOR: TDBLookupComboBox;
    edtOrdemServico: TCurrencyEdit;
    edtDATMAN: TDBDateEdit;
    edtKmSer: TCurrencyEdit;
    btnAtualizar: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    btnConfirmarAtu: TBitBtn;
    edtPlaVei: TEdit;
    Manut_ServPeriodico: TIBQuery;
    Manut_ServPeriodicoCODMAN: TIntegerField;
    Manut_ServPeriodicoCODVEI: TIntegerField;
    Manut_ServPeriodicoSEQSER: TIntegerField;
    Manut_ServPeriodicoCODSER: TIntegerField;
    Manut_ServPeriodicoDESSER: TIBStringField;
    Manut_ServPeriodicoDATVCT: TDateField;
    Manut_ServPeriodicoKMVCT: TIntegerField;
    Manut_ServPeriodicoDATSER: TDateField;
    Manut_ServPeriodicoKMSER: TIntegerField;
    Manut_ServPeriodicoQTDSER: TFloatField;
    Manut_ServPeriodicoVLRUNI: TFloatField;
    Manut_ServPeriodicoVLRUNIDES: TFloatField;
    Manut_ServPeriodicoVLRDES: TFloatField;
    Manut_ServPeriodicoSITSER: TIBStringField;
    Manut_ServPeriodicoVLRTOT: TFloatField;
    Manut_ServPeriodicoTIPSER: TIBStringField;
    Manut_ServPeriodicoNUMORDEM: TIntegerField;
    Manut_ServPeriodicoLIMITE_KM: TIntegerField;
    Manut_ServPeriodicoLIMITE_DIAS: TIntegerField;
    btnCancelarAlt: TBitBtn;
    Label1: TLabel;
    dbedtNUMDOC: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbCODFORCloseUp(Sender: TObject);
    procedure dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FornecedorCalcFields(DataSet: TDataSet);
    procedure edtOrdemServicoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnConfirmarAtuClick(Sender: TObject);
    procedure btnCancelarAltClick(Sender: TObject);
  private
    { Private declarations }
    vdDatSer : TDate;
  public
    { Public declarations }
    vaPlaVei : string;
    vnCodVei : Integer;
  end;

var
  FAlteraOrdemServico: TFAlteraOrdemServico;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFAlteraOrdemServico.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  btnAtualizar.Enabled := (DmFire.CadManut_Ger.State in [dsEdit]) or (edtKmSer.Value <> 0);
  btnConfirmarAtu.Enabled := (not btnAtualizar.Enabled) and (not(DmFire.CadManut_Ger.IsEmpty));
  btnCancelarAlt.Enabled := (not btnAtualizar.Enabled) and (not(DmFire.CadManut_Ger.IsEmpty));
end;

procedure TFAlteraOrdemServico.btnAtualizarClick(Sender: TObject);
begin
  if  DmFire.CadManut_Ger.State in [dsEdit] then
      DmFire.CadManut_Ger.Post;


       DmFire.ClientManutencao_ServAlt.First;
       while not DmFire.ClientManutencao_ServAlt.Eof do
          begin
            DmFire.ClientManutencao_ServAlt.Edit;
            if DmFire.CadManut_GerDATMAN.Value <> vdDatSer then
               begin
                  DmFire.ClientManutencao_ServAltDATSER.Value := DmFire.CadManut_GerDATMAN.Value;
                  if DmFire.ClientManutencao_ServAltTIPSER.Value = 'PERIODICO' then
                     begin
                        //DmFire.ClientManutencao_ServAltDATVCT.Value := IncDay(DmFire.ClientManutencao_ServAltDATSER.AsDateTime,DmFire.ClientManutencao_ServAltLIMITE_DIAS.AsInteger);
                     end;
               end;

               if edtKmSer.Value > 0 then
                   begin
                     DmFire.ClientManutencao_ServAltKMSER.AsInteger := edtKmSer.AsInteger;

                     if DmFire.ClientManutencao_ServAltTIPSER.Value = 'PERIODICO' then
                        begin
                         { if DmFire.ClientManutencao_ServAltLIMITE_KM.AsInteger > 0 then
                             DmFire.ClientManutencao_ServAltKMVCT.Value := edtKmSer.AsInteger + DmFire.ClientManutencao_ServAltLIMITE_KM.AsInteger
                          else
                             DmFire.ClientManutencao_ServAltKMVCT.Value := 0; }
                        end;
                   end;

            DmFire.ClientManutencao_ServAlt.Post;

            DmFire.ClientManutencao_ServAlt.Next;
          end;
       DmFire.ClientManutencao_ServAlt.First;
       edtKmSer.Value := 0;
end;

procedure TFAlteraOrdemServico.btnCancelarAltClick(Sender: TObject);
begin
  DmFire.ibtTransacao.Rollback;
  Close;
end;

procedure TFAlteraOrdemServico.btnConfirmarAtuClick(Sender: TObject);
begin
  DmFire.ClientManutencao_ServAlt.First;
  while not DmFire.ClientManutencao_ServAlt.Eof do
    begin
      DmFire.CadManut_Serv.Close;
      DmFire.CadManut_Serv.ParamByName('CODMAN').Value := DmFire.ClientManutencao_ServAltCODMAN.Value;
      DmFire.CadManut_Serv.ParamByName('CODVEI').Value := DmFire.ClientManutencao_ServAltCODVEI.Value;
      DmFire.CadManut_Serv.ParamByName('SEQSER').Value := DmFire.ClientManutencao_ServAltSEQSER.Value;
      DmFire.CadManut_Serv.Open;
      if not DmFire.CadManut_Serv.IsEmpty then
         begin
           DmFire.CadManut_Serv.Edit;
           DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServAltDESSER.Value;
           DmFire.CadManut_ServDATVCT.Value := DmFire.ClientManutencao_ServAltDATVCT.Value;
           DmFire.CadManut_ServKMVCT.Value := DmFire.ClientManutencao_ServAltKMVCT.Value;
           DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServAltDATSER.Value;
           DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServAltKMSER.Value;
           DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServAltQTDSER.Value;
           DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServAltVLRUNI.Value;
           DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServAltVLRUNIDES.Value;
           DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServAltVLRDES.Value;
           DmFire.CadManut_Serv.Post;
           if DmFire.CadManut_ServTIPSER.Value = 'PERIODICO' then//atualiza o servico que esta em aberto
              begin
                 Manut_ServPeriodico.Close;
                 Manut_ServPeriodico.ParamByName('CODVEI').AsInteger := DmFire.CadManut_ServCODVEI.Value;
                 Manut_ServPeriodico.ParamByName('CODMAN').AsInteger := DmFire.CadManut_ServNUMORDEM.Value;
                 Manut_ServPeriodico.ParamByName('CODSER').AsInteger := DmFire.CadManut_ServCODSER.Value;
                 Manut_ServPeriodico.Open;
                 if not Manut_ServPeriodico.IsEmpty then
                    begin
                      //atualiza o km e o vencimento da manutenção que esta em aberto
                      DmFire.ConsSql.Close;
                      DmFire.ConsSql.SQL.Clear;
                      DmFire.ConsSql.SQL.Add('UPDATE MANUT_SERV');
                      DmFire.ConsSql.SQL.Add(' SET KMVCT = :KMVCT,');
                      DmFire.ConsSql.SQL.Add('     DATVCT = :DATVCT');
                      DmFire.ConsSql.SQL.Add(' WHERE');
                      DmFire.ConsSql.SQL.Add(' CODMAN = :CODMAN AND');
                      DmFire.ConsSql.SQL.Add(' CODVEI = :CODVEI AND');
                      DmFire.ConsSql.SQL.Add(' SEQSER = :SEQSER');
                      DmFire.ConsSql.ParamByName('CODMAN').Value := Manut_ServPeriodicoCODMAN.Value;
                      DmFire.ConsSql.ParamByName('CODVEI').Value := Manut_ServPeriodicoCODVEI.Value;
                      DmFire.ConsSql.ParamByName('SEQSER').Value := Manut_ServPeriodicoSEQSER.Value;
                      if Manut_ServPeriodicoLIMITE_KM.AsInteger = 0 then
                         DmFire.ConsSql.ParamByName('KMVCT').AsInteger := 0
                      else
                        DmFire.ConsSql.ParamByName('KMVCT').AsInteger := DmFire.CadManut_ServKMSER.AsInteger + Manut_ServPeriodicoLIMITE_KM.AsInteger;

                      if Manut_ServPeriodicoLIMITE_DIAS.AsInteger > 0 then
                         DmFire.ConsSql.ParamByName('DATVCT').AsDate := IncDay(DmFire.CadManut_ServDATSER.AsDateTime,Manut_ServPeriodicoLIMITE_DIAS.AsInteger)
                      else
                         DmFire.ConsSql.ParamByName('DATVCT').AsDate := 0;

                      DmFire.ConsSql.ExecSQL;
                    end;
              end;

         end;

      DmFire.ClientManutencao_ServAlt.Next;

    end;
    DmFire.ibtTransacao.CommitRetaining;
    Close;
end;

procedure TFAlteraOrdemServico.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFAlteraOrdemServico.dblkcbbCODFORCloseUp(Sender: TObject);
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

procedure TFAlteraOrdemServico.dblkcbbCODFORKeyUp(Sender: TObject;
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

procedure TFAlteraOrdemServico.edtOrdemServicoExit(Sender: TObject);
begin
  DmFire.CadManut_Ger.Close;
  DmFire.CadManut_Ger.ParamByName('CODMAN').AsInteger := edtOrdemServico.AsInteger;
  DmFire.CadManut_Ger.ParamByName('CODVEI').AsInteger := vnCodVei;
  DmFire.CadManut_Ger.Open;
  if DmFire.CadManut_Ger.IsEmpty then
     begin
       Application.MessageBox('Ordem de Serviço não encontrada','Atenção',MB_ICONWARNING+MB_OK);
       ActiveControl := edtOrdemServico;

       //limpa o client
       DmFire.ClientManutencao_ServAlt.First;
       while not DmFire.ClientManutencao_ServAlt.Eof do
         begin
           DmFire.ClientManutencao_ServAlt.Delete;
         end;

       vdDatSer := 0;
     end
  else
     begin
       dblkcbbCODFORCloseUp(Sender);

       //limpa o client
       DmFire.ClientManutencao_ServAlt.First;
       while not DmFire.ClientManutencao_ServAlt.Eof do
         begin
           DmFire.ClientManutencao_ServAlt.Delete;
         end;

       vdDatSer := DmFire.CadManut_GerDATMAN.Value;

       DmFire.ConsManut_ServAlt.Close;
       DmFire.ConsManut_ServAlt.ParamByName('NUMORDEM').Value := edtOrdemServico.AsInteger;
       DmFire.ConsManut_ServAlt.ParamByName('CODVEI').Value := DmFire.CadManut_GerCODVEI.Value;
       DmFire.ConsManut_ServAlt.Open;
       DmFire.ConsManut_ServAlt.First;
       while not DmFire.ConsManut_ServAlt.Eof do
         begin

           DmFire.ClientManutencao_ServAlt.Insert;
           DmFire.ClientManutencao_ServAltSEQSER.Value := DmFire.ConsManut_ServAltSEQSER.Value;
           DmFire.ClientManutencao_ServAltCODMAN.Value := DmFire.ConsManut_ServAltCODMAN.Value;
           DmFire.ClientManutencao_ServAltCODVEI.Value := DmFire.ConsManut_ServAltCODVEI.Value;
           DmFire.ClientManutencao_ServAltCODSER.Value := DmFire.ConsManut_ServAltCODSER.Value;
           DmFire.ClientManutencao_ServAltNOMSER.Value := DmFire.ConsManut_ServAltDESSER1.Value;
           DmFire.ClientManutencao_ServAltDESSER.Text := DmFire.ConsManut_ServAltDESSER.Value;
           DmFire.ClientManutencao_ServAltDATSER.Value := DmFire.ConsManut_ServAltDATSER.Value;
           DmFire.ClientManutencao_ServAltKMSER.Value := DmFire.ConsManut_ServAltKMSER.Value;
           DmFire.ClientManutencao_ServAltQTDSER.Value := DmFire.ConsManut_ServAltQTDSER.AsInteger;
           DmFire.ClientManutencao_ServAltVLRUNI.Value := DmFire.ConsManut_ServAltVLRUNI.Value;
           DmFire.ClientManutencao_ServAltDATVCT.Value := DmFire.ConsManut_ServAltDATVCT.Value;
           DmFire.ClientManutencao_ServAltKMVCT.Value := DmFire.ConsManut_ServAltKMVCT.Value;
           DmFire.ClientManutencao_ServAltVLRUNIDES.Value := DmFire.ConsManut_ServAltVLRUNIDES.Value;
           DmFire.ClientManutencao_ServAltVLRDES.Value := DmFire.ConsManut_ServAltVLRDES.Value;
           DmFire.ClientManutencao_ServAltTIPSER.Value := DmFire.ConsManut_ServAltTIPSER.Value;
           DmFire.ClientManutencao_ServAltLIMITE_KM.Value := DmFire.ConsManut_ServAltLIMITE_KM.Value;
           DmFire.ClientManutencao_ServAltLIMITE_DIAS.Value := DmFire.ConsManut_ServAltLIMITE_DIAS.Value;
           DmFire.ClientManutencao_ServAlt.Post;

           DmFire.ConsManut_ServAlt.Next;
         end;
     end;
end;

procedure TFAlteraOrdemServico.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAlteraOrdemServico.FormShow(Sender: TObject);
begin
  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;

  Fornecedor.Close;
  Fornecedor.Open;
  Fornecedor.Last;
  Fornecedor.First;
  dbtxtCID_UF.DataSource := dsReserva;

  edtPlaVei.Text := vaPlaVei;
  edtOrdemServicoExit(Sender);

end;

procedure TFAlteraOrdemServico.FornecedorCalcFields(DataSet: TDataSet);
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
