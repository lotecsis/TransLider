unit UDespesasViagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DB, DBCtrls, ExtCtrls,
  Buttons, AppEvnts;

type
  TFDespesasViagem = class(TForm)
    lbl1: TLabel;
    edtNumCarga: TCurrencyEdit;
    dsCadEntradaSaida: TDataSource;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edtPlaVei: TEdit;
    lbl11: TLabel;
    edtNomMot: TEdit;
    lbl12: TLabel;
    dbedtDESTINO: TDBEdit;
    lbl13: TLabel;
    edtTotalKm: TCurrencyEdit;
    lbl14: TLabel;
    dbedtQTD_COMB: TDBEdit;
    Label1: TLabel;
    dbedtMEDIA_CONS: TDBEdit;
    lbl15: TLabel;
    dbedtQTD_COMBEMP: TDBEdit;
    lbl16: TLabel;
    dbedtQTD_COMBPOS: TDBEdit;
    lbl17: TLabel;
    dbedtVLR_COMBEMP: TDBEdit;
    lbl18: TLabel;
    dbedtVLR_COMBPOS: TDBEdit;
    lbl2: TLabel;
    dbedtDATSAIDA: TDBEdit;
    lbl3: TLabel;
    dbedtHORSAIDA: TDBEdit;
    lbl4: TLabel;
    dbedtKMSAIDA: TDBEdit;
    lbl5: TLabel;
    dbedtDATENT: TDBEdit;
    lbl6: TLabel;
    dbedtHORENT: TDBEdit;
    lbl7: TLabel;
    dbedtKMENT: TDBEdit;
    lbl19: TLabel;
    dbedtVLR_PEDAGIO: TDBEdit;
    lbl20: TLabel;
    dbedtVLR_DESCARGA: TDBEdit;
    lbl21: TLabel;
    dbedtVLR_REFEICOES: TDBEdit;
    lbl22: TLabel;
    dbedtVLR_OUTRAS_DESP: TDBEdit;
    lbl23: TLabel;
    dbedtQTD_CHEQUE_REC: TDBEdit;
    lbl24: TLabel;
    dbcbbRETORNO: TDBComboBox;
    pnl1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    dbcbbIN_COMISSAO: TDBComboBox;
    lbl25: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl26: TLabel;
    edtTotalGasto: TCurrencyEdit;
    ApplicationEvents1: TApplicationEvents;
    edtVlrTotComPos: TCurrencyEdit;
    lbl27: TLabel;
    edtVlrAdt: TCurrencyEdit;
    lbl28: TLabel;
    edtVlrDevolver: TCurrencyEdit;
    dsCadCargas: TDataSource;
    Label5: TLabel;
    edtVlrFreVol: TCurrencyEdit;
    cbbFreRetPag: TComboBox;
    Label6: TLabel;
    procedure edtNumCargaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadEntradaSaidaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbedtVLR_PEDAGIOExit(Sender: TObject);
    procedure dbedtVLR_DESCARGAExit(Sender: TObject);
    procedure dbedtVLR_REFEICOESExit(Sender: TObject);
    procedure dbedtVLR_OUTRAS_DESPExit(Sender: TObject);
    procedure dbedtQTD_COMBPOSExit(Sender: TObject);
    procedure dbedtVLR_COMBPOSExit(Sender: TObject);
    procedure edtVlrFreVolExit(Sender: TObject);
    procedure cbbFreRetPagExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure CalculaTotal();
  end;

var
  FDespesasViagem: TFDespesasViagem;

implementation

uses UDmFire;

{$R *.dfm}

//procedimento para calcular total gasto
procedure TFDespesasViagem.CalculaTotal;
begin
  if not DmFire.CadEntradaSaida.IsEmpty then
     begin
       if not (DmFire.CadEntradaSaida.State in [dsInsert,dsEdit]) then
          begin
            DmFire.CadEntradaSaida.Edit;
          end;

       edtVlrTotComPos.Value := DmFire.CadEntradaSaidaQTD_COMBPOS.AsFloat * DmFire.CadEntradaSaidaVLR_COMBPOS.AsFloat;
       edtTotalGasto.Value := (DmFire.CadEntradaSaidaQTD_COMBPOS.AsFloat * DmFire.CadEntradaSaidaVLR_COMBPOS.AsFloat) +
                              DmFire.CadEntradaSaidaVLR_PEDAGIO.AsFloat +
                              DmFire.CadEntradaSaidaVLR_DESCARGA.AsFloat +
                              DmFire.CadEntradaSaidaVLR_REFEICOES.AsFloat +
                              DmFire.CadEntradaSaidaVLR_OUTRAS_DESP.AsFloat;

       edtVlrDevolver.Value := edtVlrAdt.Value - edtTotalGasto.Value;

       if cbbFreRetPag.Text = 'SIM' then
          begin
            edtVlrDevolver.Value := edtVlrDevolver.Value + edtVlrFreVol.Value;
          end;
     end
  else
     begin
       edtTotalGasto.Value := 0;
       edtVlrTotComPos.Value := 0;
       edtVlrDevolver.Value := 0;
       edtVlrFreVol.Value := 0;
       cbbFreRetPag.ItemIndex := -1;
     end;
end;


procedure TFDespesasViagem.cbbFreRetPagExit(Sender: TObject);
begin
 CalculaTotal;
end;

procedure TFDespesasViagem.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadEntradaSaida.Cancel;
  DmFire.ibtTransacao.RollbackRetaining;
end;

procedure TFDespesasViagem.btnConfirmarClick(Sender: TObject);
begin
  if Trim(DmFire.CadEntradaSaidaIN_COMISSAO.Value) = '' then
     begin
       Application.MessageBox('Informe se deve gerar comissão','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbIN_COMISSAO;
       Abort;
     end;

  //ATUALIZA A CARGA
 if not DmFire.CadCargas.IsEmpty then
    begin
      DmFire.CadCargas.Edit;
      DmFire.CadCargasVLRGAS.AsFloat := edtTotalGasto.Value;
      DmFire.CadCargasVLRRET.AsFloat := edtVlrDevolver.Value;
      DmFire.CadCargasVLRFREVOL.AsFloat := edtVlrFreVol.Value;
      DmFire.CadCargasFRERETPAG.AsString := cbbFreRetPag.Text;
      DmFire.CadCargas.Post;
    end;


  DmFire.CadEntradaSaida.Post;
  DmFire.ibtTransacao.CommitRetaining;
end;

procedure TFDespesasViagem.dbedtQTD_COMBPOSExit(Sender: TObject);
begin
 CalculaTotal;
end;

procedure TFDespesasViagem.dbedtVLR_COMBPOSExit(Sender: TObject);
begin
 CalculaTotal;
end;

procedure TFDespesasViagem.dbedtVLR_DESCARGAExit(Sender: TObject);
begin
  CalculaTotal;
end;

procedure TFDespesasViagem.dbedtVLR_OUTRAS_DESPExit(Sender: TObject);
begin
  CalculaTotal;
end;

procedure TFDespesasViagem.dbedtVLR_PEDAGIOExit(Sender: TObject);
begin
  CalculaTotal;
end;

procedure TFDespesasViagem.dbedtVLR_REFEICOESExit(Sender: TObject);
begin
 CalculaTotal;
end;

procedure TFDespesasViagem.dsCadEntradaSaidaStateChange(Sender: TObject);
begin
  if DmFire.CadEntradaSaida.State in [dsInsert,dsEdit] then
     begin
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
     end
  else
     begin
       btnConfirmar.Enabled := False;
       btnCancelar.Enabled := False;
     end;
end;

procedure TFDespesasViagem.edtNumCargaExit(Sender: TObject);
begin
if edtNumCarga.Value <> 0 then
     begin
       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT entrada_saida.*, veiculo.plavei, motorista.nommot,motorista.apemot');
       DmFire.ConsSql.SQL.Add(' FROM entrada_saida');
       DmFire.ConsSql.SQL.Add(' INNER JOIN veiculo on veiculo.codvei = entrada_saida.codvei');
       DmFire.ConsSql.SQL.Add(' INNER JOIN motorista ON motorista.codmot = entrada_saida.codmot');
       DmFire.ConsSql.SQL.Add(' WHERE');
       DmFire.ConsSql.SQL.Add(' entrada_saida.carga = :carga');
       DmFire.ConsSql.ParamByName('carga').Value := edtNumCarga.AsInteger;
       DmFire.ConsSql.Open;
       if DmFire.ConsSql.IsEmpty then
          begin
            Application.MessageBox('Carga não encontrada','Aviso',MB_ICONWARNING+MB_OK);
            edtPlaVei.Clear;
            edtNomMot.Clear;
            edtTotalKm.Value := 0;
            DmFire.CadEntradaSaida.Close;
            ActiveControl := edtNumCarga;
            edtVlrTotComPos.Value := 0;
            edtTotalGasto.Value := 0;
            edtVlrAdt.Value := 0;
            Abort;
          end
       else
          begin
             DmFire.CadEntradaSaida.Close;
             DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger;
             DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := DmFire.ConsSql.FieldByName('CODVEI').AsInteger;
             DmFire.CadEntradaSaida.Open;

             edtPlaVei.Text := DmFire.ConsSql.FieldByName('PLAVEI').AsString;
             edtNomMot.Text := DmFire.ConsSql.FieldByName('NOMMOT').AsString;
             edtTotalKm.Value := DmFire.CadEntradaSaidaKMENT.Value - DmFire.CadEntradaSaidaKMSAIDA.Value;

             if DmFire.CadEntradaSaidaCARGA.AsInteger <> 0 then
                begin
                   DmFire.CadCargas.Close;
                   DmFire.CadCargas.ParamByName('IDCARGA').AsInteger := DmFire.CadEntradaSaidaCARGA.AsInteger;
                   DmFire.CadCargas.Open;
                   if not DmFire.CadCargas.IsEmpty then
                      begin
                         edtVlrAdt.Value := DmFire.CadCargasVLRADT.AsFloat;
                         edtVlrFreVol.Value := DmFire.CadCargasVLRFREVOL.AsFloat;

                         if DmFire.CadCargasFRERETPAG.AsString = 'SIM' then
                            cbbFreRetPag.ItemIndex := 0
                         else
                         if DmFire.CadCargasFRERETPAG.AsString = 'NAO' then
                            cbbFreRetPag.ItemIndex := 1;
                      end
                   else
                      begin
                         edtVlrAdt.Value := 0;
                         edtVlrFreVol.Value := 0;
                         cbbFreRetPag.ItemIndex := -1;
                      end;
                end
             else
                begin
                  edtVlrAdt.Value := 0;
                  edtVlrFreVol.Value := 0;
                  cbbFreRetPag.ItemIndex := -1;
                end;

             CalculaTotal;
             if (DmFire.CadEntradaSaida.State in [dsInsert,dsEdit]) then
                begin
                  DmFire.CadEntradaSaida.Post;
                end;
          end;
     end
else
     begin
        edtPlaVei.Clear;
        edtNomMot.Clear;
        edtTotalKm.Value := 0;
        DmFire.CadEntradaSaida.Close;
        ActiveControl := edtNumCarga;
        edtVlrTotComPos.Value := 0;
        edtTotalGasto.Value := 0;
        edtVlrAdt.Value := 0;
     end;
   edtNumCarga.TabStop := FALSE;
end;

procedure TFDespesasViagem.edtVlrFreVolExit(Sender: TObject);
begin
 CalculaTotal;
end;

procedure TFDespesasViagem.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//FreeAndNil(FDespesasViagem);
end;

procedure TFDespesasViagem.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFDespesasViagem.FormShow(Sender: TObject);
begin
  DmFire.CadEntradaSaida.Close;
  //DmFire.CadEntradaSaida.Open;
  ActiveControl := edtNumCarga;
end;

end.
