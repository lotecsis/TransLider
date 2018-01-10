unit URelacaoComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, DB, Math,
  DBCtrls, ImgList;

type
  TFRelacaoComissoes = class(TForm)
    dbg1: TDBGrid;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtKmRodado: TCurrencyEdit;
    edtCheque: TCurrencyEdit;
    edtVlrCarga: TCurrencyEdit;
    btnMostrar: TBitBtn;
    dsClientRelacaoComissoes: TDataSource;
    dbedtvnTotalCheques: TDBEdit;
    dbedtvnTotalKm: TDBEdit;
    dbedtvnTotalCarga: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    dbedtvnTotalComGeral: TDBEdit;
    btnCargas: TBitBtn;
    ImageList1: TImageList;
    btnImprimir: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnCargasClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelacaoComissoes: TFRelacaoComissoes;

implementation

uses UDmFire, UDmOra, UCargasComissao;

{$R *.dfm}

procedure TFRelacaoComissoes.btnCargasClick(Sender: TObject);
begin

  DmFire.ClientRelacaoEntradaSaida.Close;
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

  DmFire.RelacaoEntradaSaida.SQL.Add(' AND ENTRADA_SAIDA.CODMOT = :CODMOT');
  DmFire.RelacaoEntradaSaida.ParamByName('CODMOT').AsInteger := DmFire.ClientRelacaoComissoesCODMOT.Value;

  DmFire.RelacaoEntradaSaida.SQL.Add(' and entrada_saida.datsaida between :datini and :datfim');
  DmFire.RelacaoEntradaSaida.ParamByName('datini').Value := edtDatIni.Date;
  DmFire.RelacaoEntradaSaida.ParamByName('datfim').Value := edtDatFim.Date;

  DmFire.RelacaoEntradaSaida.SQL.Add(' and veiculo.tipo in (''CAVALO'',''TRUCK'')');
  DmFire.RelacaoEntradaSaida.SQL.Add(' and entrada_saida.kment > 0');
  DmFire.RelacaoEntradaSaida.SQL.Add(' and entrada_saida.carga <> 0');

  DmFire.RelacaoEntradaSaida.SQL.Add(' ORDER BY ENTRADA_SAIDA.DATSAIDA DESC,ENTRADA_SAIDA.HORSAIDA DESC');
  DmFire.RelacaoEntradaSaida.Open;
  DmFire.ClientRelacaoEntradaSaida.Open;


  FCargasComissao := TFCargasComissao.Create(Self);
  FCargasComissao.ShowModal;
  FreeAndNil(FCargasComissao);

  btnMostrar.Click;

end;

procedure TFRelacaoComissoes.btnImprimirClick(Sender: TObject);
var vaPeriodo : string;
begin
  if not DmFire.ClientRelacaoComissoes.IsEmpty then
     begin
        vaPeriodo := DateToStr(edtDatIni.Date)+'  à  '+DateToStr(edtDatFim.Date);
        DmFire.RvRelacaoComissoes.SetParam('PERIODO',vaPeriodo);
        DmFire.RvRelacaoComissoes.SetParam('vnCheques',FormatFloat(',0.00', DmFire.ClientRelacaoComissoesvnTotalCheques.Value));
        DmFire.RvRelacaoComissoes.SetParam('vnKm',FormatFloat(',0.00', DmFire.ClientRelacaoComissoesvnTotalKm.Value));
        DmFire.RvRelacaoComissoes.SetParam('vnCargas',FormatFloat(',0.00', DmFire.ClientRelacaoComissoesvnTotalCarga.Value));
        DmFire.RvRelacaoComissoes.SetParam('vnTotal',FormatFloat(',0.00', DmFire.ClientRelacaoComissoesvnTotalComGeral.Value));
        DmFire.RvRelacaoComissoes.Execute;
     end;
end;

procedure TFRelacaoComissoes.btnMostrarClick(Sender: TObject);
begin
    DmFire.CadConfigComissoes.Close;
    DmFire.CadConfigComissoes.ParamByName('codconfig').Value := 1;
    DmFire.CadConfigComissoes.Open;
    if not DmFire.CadConfigComissoes.IsEmpty then
       begin
         DmFire.CadConfigComissoes.Edit;
         DmFire.CadConfigComissoesDATINI.Value := edtDatIni.Date;
         DmFire.CadConfigComissoesDATFIM.Value := edtDatFim.Date;
         DmFire.CadConfigComissoesVLRKM.Value := edtKmRodado.Value;
         DmFire.CadConfigComissoesVLRCHEQUE.Value := edtCheque.Value;
         DmFire.CadConfigComissoesPERCARGA.Value := edtVlrCarga.Value;
         DmFire.CadConfigComissoesDATEXEC.Value := Date;
         DmFire.CadConfigComissoes.Post;
         DmFire.ibtTransacao.CommitRetaining;
       end;

    DmFire.ClientRelacaoComissoes.Close;
    DmFire.RelacaoComissoes.Close;
    DmFire.RelacaoComissoes.ParamByName('DATINI').Value := edtDatIni.Date;
    DmFire.RelacaoComissoes.ParamByName('DATFIM').Value := edtDatFim.Date;
    DmFire.RelacaoComissoes.Open;
    DmFire.ClientRelacaoComissoes.Open;

    DmFire.ClientRelacaoComissoes.First;
    while not DmFire.ClientRelacaoComissoes.Eof do//percorre os motoristas
       begin
         DmFire.ClientRelacaoComissoes.Edit;
         DmFire.ClientRelacaoComissoesVALORCHEQUES.Value := RoundTo(DmFire.ClientRelacaoComissoesQTDCHEQUES.AsInteger * edtCheque.Value,-3);

         if DmFire.ClientRelacaoComissoesVLRCOMFIXA.Value = 0 then
            begin
               DmFire.ClientRelacaoComissoesVALORKM.Value := RoundTo(DmFire.ClientRelacaoComissoesTOTAL_KM.Value * edtKmRodado.Value,-3);

               DmFire.ClientRelacaoComissoesTOTALCARGA.Value := 0;
               DmFire.ClientRelacaoComissoesVALORCARGA.Value := 0;

               //CONSULTA AS CARGAS DO MOTORISTA
               DmFire.CargasMotorista.Close;
               DmFire.CargasMotorista.ParamByName('DATINI').Value := edtDatIni.Date;
               DmFire.CargasMotorista.ParamByName('DATFIM').Value := edtDatFim.Date;
               DmFire.CargasMotorista.ParamByName('CODMOT').Value := DmFire.ClientRelacaoComissoesCODMOT.Value;
               DmFire.CargasMotorista.Open;
               DmFire.CargasMotorista.First;
               while not DmFire.CargasMotorista.Eof do
                 begin
                   DmOra.ValorCarga.Close;
                   DmOra.ValorCarga.Parameters.ParamByName('NUMANE').Value := DmFire.CargasMotoristaCARGA.Value;
                   DmOra.ValorCarga.Open;
                   if not DmOra.ValorCarga.IsEmpty then
                      begin
                        DmFire.ClientRelacaoComissoesTOTALCARGA.Value := DmFire.ClientRelacaoComissoesTOTALCARGA.Value + RoundTo(DmOra.ValorCargaVLRFAT.AsFloat,-3);
                      end;

                   DmFire.CargasMotorista.Next;
                 end;
               DmFire.ClientRelacaoComissoesVALORCARGA.Value := DmFire.ClientRelacaoComissoesTOTALCARGA.Value * (edtVlrCarga.Value / 100);
            end
         else
            begin
               DmFire.ClientRelacaoComissoesVALORKM.Value := 0;
               DmFire.ClientRelacaoComissoesTOTALCARGA.Value := 0;
               DmFire.ClientRelacaoComissoesVALORCARGA.Value := 0;
            end;
         DmFire.ClientRelacaoComissoesVALORMANUAL.AsFloat := 0;
         DmFire.ClientRelacaoComissoes.Post;

         DmFire.ClientRelacaoComissoes.Next;
       end;

    DmFire.ClientRelacaoComissoes.First;
end;

procedure TFRelacaoComissoes.dbg1CellClick(Column: TColumn);
begin
  if dbg1.SelectedIndex = 0 then
     begin
       btnCargas.Click;
     end;

end;

procedure TFRelacaoComissoes.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'Img' then
    begin
        dbg1.Canvas.FillRect(Rect);
        // Desenha o Quadrado
      //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

        ImageList1.Draw(dbg1.Canvas,Rect.Left+10,Rect.Top+1,11);
    end;
end;

procedure TFRelacaoComissoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFRelacaoComissoes.FormShow(Sender: TObject);
begin
  DmFire.ConfigComissoes.Close;
  DmFire.ConfigComissoes.Open;
  if not DmFire.ConfigComissoes.IsEmpty then
     begin
       edtDatIni.Date := DmFire.ConfigComissoesDATINI.AsDateTime;
       edtDatFim.Date := DmFire.ConfigComissoesDATFIM.AsDateTime;
       edtKmRodado.Value := DmFire.ConfigComissoesVLRKM.Value;
       edtCheque.Value := DmFire.ConfigComissoesVLRCHEQUE.Value;
       edtVlrCarga.Value := DmFire.ConfigComissoesPERCARGA.Value;
     end;


  DmFire.ClientRelacaoComissoes.Close;
end;

end.
