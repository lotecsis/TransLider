unit UAlteraEntrada_Saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, IBCustomDataSet, IBQuery, ExtCtrls, StdCtrls,
  rxToolEdit, RXDBCtrl, DBCtrls, Mask, Buttons, AppEvnts;

type
  TFAlteraEntrada_Saida = class(TForm)
    dsClientEntrada: TDataSource;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    dsMotoristas: TDataSource;
    Carretas: TIBQuery;
    CarretasCODVEI: TIntegerField;
    CarretasCODUSU: TIntegerField;
    CarretasCODMOD: TIntegerField;
    CarretasCODMOT: TIntegerField;
    CarretasDESVEI: TIBStringField;
    CarretasPLAVEI: TIBStringField;
    CarretasPLAVEIUF: TIBStringField;
    CarretasANOFAB: TIBStringField;
    CarretasDATAQUI: TDateField;
    CarretasDATVEN: TDateField;
    CarretasKMINI: TIntegerField;
    CarretasKMATU: TIntegerField;
    CarretasCATEGORIA: TIBStringField;
    CarretasCHASSI: TIBStringField;
    CarretasRENAVAM: TIBStringField;
    CarretasTIPO: TIBStringField;
    CarretasCODCAV: TIntegerField;
    CarretasEIXOS: TIBStringField;
    CarretasALTURA: TFloatField;
    CarretasLARGURA: TFloatField;
    CarretasCOMPRIMENTO: TFloatField;
    CarretasCUBICO: TFloatField;
    CarretasTARA: TFloatField;
    CarretasMAXPESO: TFloatField;
    CarretasCAPPESO: TIntegerField;
    CarretasSITVEI: TIBStringField;
    CarretasCOR: TIBStringField;
    CarretasOBSVEI: TIBStringField;
    CarretasUSUALT: TIntegerField;
    CarretasDATALT: TDateField;
    CarretasLOCALVEI: TIBStringField;
    dsCarretas: TDataSource;
    lbl1: TLabel;
    dbedtPLAVEI: TDBEdit;
    lbl2: TLabel;
    dblkcbbCODMOT: TDBLookupComboBox;
    lbl3: TLabel;
    edtDATSAI: TDBDateEdit;
    lbl4: TLabel;
    dbedtHORSAI: TDBEdit;
    lbl5: TLabel;
    dbedtKMSAI: TDBEdit;
    lbl6: TLabel;
    dbedtDESTINO: TDBEdit;
    lblCarreta: TLabel;
    dblkcbbPLAVEICarreta: TDBLookupComboBox;
    lblEngatado: TLabel;
    cbbEngatado: TComboBox;
    dbedtCARGA: TDBEdit;
    lblCarga: TLabel;
    ImgMot: TImage;
    lbl13: TLabel;
    edtDATENT: TDBDateEdit;
    lbl14: TLabel;
    dbedtHORENT: TDBEdit;
    lbl15: TLabel;
    dbedtKMENT: TDBEdit;
    pnl1: TPanel;
    btnConfirmar: TBitBtn;
    ClientEntrada: TClientDataSet;
    ClientEntradaPLAVEI: TStringField;
    ClientEntradaCODVEI: TIntegerField;
    ClientEntradaCODMOT: TIntegerField;
    ClientEntradaDATSAI: TDateField;
    ClientEntradaHORSAI: TTimeField;
    ClientEntradaKMSAI: TIntegerField;
    ClientEntradaDESTINO: TStringField;
    ClientEntradaIN_ENGATADO: TStringField;
    ClientEntradaCODCARRETA: TIntegerField;
    ClientEntradaCARGA: TIntegerField;
    ClientEntradaNOMMOT: TStringField;
    ClientEntradaDATENT: TDateField;
    ClientEntradaHORENT: TTimeField;
    ClientEntradaKMENT: TIntegerField;
    ClientEntradaPLACA_CARRETA: TStringField;
    ClientEntradavnTotalKm: TIntegerField;
    ClientEntradaFOTO: TStringField;
    ClientEntradaSEQENTSAI: TIntegerField;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure dblkcbbCODMOTCloseUp(Sender: TObject);
    procedure dblkcbbCODMOTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vaUltimoLancamento : string;
  end;

var
  FAlteraEntrada_Saida: TFAlteraEntrada_Saida;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFAlteraEntrada_Saida.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblCarreta.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;
  dblkcbbPLAVEICarreta.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;

  lblEngatado.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;
  cbbEngatado.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;
end;

procedure TFAlteraEntrada_Saida.btnConfirmarClick(Sender: TObject);
begin
   {if ClientEntradaKMENT.Value = 0 then
       begin
         Application.MessageBox('Informe o Km de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtKMENT;
         Abort;
       end;}
    if ClientEntradaDATENT.Value = 0 then
       begin
         Application.MessageBox('Informe a Data de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtDATENT;
         Abort;
       end;
    if ClientEntradaHORENT.Value = 0 then
       begin
         Application.MessageBox('Informe a Hora de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtHORENT;
         Abort;
       end;

    if ClientEntradaDATENT.Value < ClientEntradaDATSAI.Value then
       begin
         Application.MessageBox('A Data de Entrada não pode ser menor do que a Data de Saída','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtDATENT;
         Abort;
       end;

    if (ClientEntradaKMENT.Value > 0) and (ClientEntradaKMENT.Value <= ClientEntradaKMSAI.Value) then
       begin
         Application.MessageBox('O Km de Entrada não pode ser menor ou igual ao Km de Saída','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtKMENT;
         Abort;
       end;

    if (ClientEntradaDATENT.Value = ClientEntradaDATSAI.Value) and (ClientEntradaHORENT.Value < ClientEntradaHORSAI.Value) then
       begin
         Application.MessageBox('A Hora de Entrada não pode ser menor do que a Hora de Saída','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtHORENT;
         Abort;
       end;

    if (vaUltimoLancamento = 'N') and (ClientEntradaDATENT.AsDateTime = 0)  then
       begin
         Application.MessageBox('Este não é o ultimo lançamento e não poderá ficar com a entrada em aberto, informe a Data de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := edtDATENT;
         Abort;
       end;

    if (vaUltimoLancamento = 'N') and (ClientEntradaHORENT.AsDateTime = 0)  then
       begin
         Application.MessageBox('Este não é o ultimo lançamento e não poderá ficar com a entrada em aberto, informe a Hora de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtHORENT;
         Abort;
       end;

    if (vaUltimoLancamento = 'N') and (ClientEntradaKMENT.Value = 0)  then
       begin
         Application.MessageBox('Este não é o ultimo lançamento e não poderá ficar com a entrada em aberto, informe o KM de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtKMENT;
         Abort;
       end;

    if ClientEntradaKMENT.Value = 0 then
       begin
         ClientEntradaDATENT.Value := 0;
         ClientEntradaHORENT.Value := 0;
       end;

     if ClientEntrada.State in [dsInsert,dsEdit] then
        begin
          ClientEntrada.Post;
        end;

    DmFire.CadEntradaSaida.Close;
    DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := ClientEntradaSEQENTSAI.Value;
    DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := ClientEntradaCODVEI.Value;
    DmFire.CadEntradaSaida.Open;
    if not DmFire.CadEntradaSaida.IsEmpty then
      begin

         if DmFire.CadEntradaSaidaQTD_COMB.Value > 0 then
            begin
              Application.MessageBox('É necessário estornar o abastecimento realizado para realizar alterações','Aviso',MB_OK+MB_ICONWARNING);
              Abort;
            end;


          DmFire.CadEntradaSaida.Edit;
          DmFire.CadEntradaSaidaCODMOT.Value := ClientEntradaCODMOT.Value;
          DmFire.CadEntradaSaidaDATSAIDA.Value := ClientEntradaDATSAI.Value;
          DmFire.CadEntradaSaidaHORSAIDA.Value := ClientEntradaHORSAI.Value;
          DmFire.CadEntradaSaidaKMSAIDA.Value := ClientEntradaKMSAI.Value;
          DmFire.CadEntradaSaidaDATENT.Value := ClientEntradaDATENT.Value;
          DmFire.CadEntradaSaidaHORENT.Value := ClientEntradaHORENT.Value;
          DmFire.CadEntradaSaidaKMENT.Value := ClientEntradaKMENT.Value;
          DmFire.CadEntradaSaidaDESTINO.Value := ClientEntradaDESTINO.Value;
          DmFire.CadEntradaSaidaCARGA.Value := ClientEntradaCARGA.Value;
          DmFire.CadEntradaSaidaCODCARRETA.Value := ClientEntradaCODCARRETA.Value;
          DmFire.CadEntradaSaidaIN_ENGATADO.Value := ClientEntradaIN_ENGATADO.Value;
          DmFire.CadEntradaSaida.Post;

          //se for o ultimo lançamento do veiculo
          if vaUltimoLancamento = 'S' then
             begin
                DmFire.ConsSql.Close;
                DmFire.ConsSql.SQL.Clear;
                DmFire.ConsSql.SQL.Add('update veiculo set localvei = :LOCAL, ');
                DmFire.ConsSql.SQL.Add('                   kmatu = :KMATU ');
                DmFire.ConsSql.SQL.Add(' where veiculo.codvei = :codvei');
                DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODVEI.Value;

                if DmFire.CadEntradaSaidaKMENT.Value = 0 then
                   begin
                     DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMSAIDA.AsInteger;
                     DmFire.ConsSql.ParamByName('LOCAL').Value := 'VIAGEM';
                   end
                else
                   begin
                     DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMENT.AsInteger;
                     DmFire.ConsSql.ParamByName('LOCAL').Value := 'PATIO';
                   end;
                DmFire.ConsSql.ExecSQL;

             //se tiver carreta engatada atualiZa a carreta
             if (DmFire.CadEntradaSaidaCODCARRETA.Value <> 0) and (DmFire.CadEntradaSaidaIN_ENGATADO.Value = 'SIM') then
                begin
                    DmFire.ConsSql.Close;
                    DmFire.ConsSql.SQL.Clear;
                    DmFire.ConsSql.SQL.Add('update veiculo set localvei = :LOCAL, ');
                    DmFire.ConsSql.SQL.Add('                   kmatu = :KMATU ');
                    DmFire.ConsSql.SQL.Add(' where veiculo.codvei = :codvei');
                    DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODCARRETA.Value;

                    if DmFire.CadEntradaSaidaKMENT.Value = 0 then
                       begin
                         DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMSAIDA.AsInteger;
                         DmFire.ConsSql.ParamByName('LOCAL').Value := 'VIAGEM';
                       end
                    else
                       begin
                         DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMENT.AsInteger;
                         DmFire.ConsSql.ParamByName('LOCAL').Value := 'PATIO';
                       end;
                    DmFire.ConsSql.ExecSQL;
                end;


                //ATUALIZA O LOCAL EM QUE O MOTORISTA SE ENCONTRA
                DmFire.ConsSql.Close;
                DmFire.ConsSql.SQL.Clear;
                DmFire.ConsSql.SQL.Add('update motorista set localmot = :LOCALMOT ');
                DmFire.ConsSql.SQL.Add(' where motorista.codmot = :codmot');
                DmFire.ConsSql.ParamByName('CODMOT').Value := DmFire.CadEntradaSaidaCODMOT.AsInteger;

                if DmFire.CadEntradaSaidaKMENT.Value = 0 then
                   begin
                     DmFire.ConsSql.ParamByName('LOCALMOT').Value := 'VIAGEM';
                   end
                else
                   begin
                     DmFire.ConsSql.ParamByName('LOCALMOT').Value := 'EMPRESA';
                   end;

                DmFire.ConsSql.ExecSQL;

             end;

           //ATUALIZA A CARGA
           if DmFire.CadEntradaSaidaCARGA.AsInteger <> 0 then
              begin
                DmFire.CadCargas.Close;
                DmFire.CadCargas.ParamByName('IDCARGA').AsInteger := DmFire.CadEntradaSaidaCARGA.AsInteger;
                DmFire.CadCargas.Open;
               if not DmFire.CadCargas.IsEmpty then
                  begin
                    DmFire.CadCargas.Edit;
                    DmFire.CadCargasCODMOT.AsInteger := DmFire.CadEntradaSaidaCODMOT.AsInteger;
                    DmFire.CadCargasDATSAI.AsDateTime := DmFire.CadEntradaSaidaDATSAIDA.AsDateTime;
                    DmFire.CadCargasCODVEI.AsInteger := DmFire.CadEntradaSaidaCODVEI.AsInteger;
                    DmFire.CadCargasDATCHE.AsDateTime := DmFire.CadEntradaSaidaDATENT.AsDateTime;
                    DmFire.CadCargas.Post;
                  end;
              end;

          DmFire.ibtTransacao.CommitRetaining;

          Application.MessageBox('Atualização realizada com sucesso!','Aviso',MB_OK+MB_ICONINFORMATION);
          Close;
      end;
end;

procedure TFAlteraEntrada_Saida.dblkcbbCODMOTCloseUp(Sender: TObject);
begin
if trim(dblkcbbCODMOT.Text) <> '' then
   begin
     if FileExists(MotoristasFOTO.Value) then
        begin
          ImgMot.Picture.LoadFromFile(MotoristasFOTO.Value);
        end
     else
        begin
          ImgMot.Picture := nil;
        end;
   end
else
   begin
     ImgMot.Picture := nil;
   end;
end;

procedure TFAlteraEntrada_Saida.dblkcbbCODMOTKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if trim(dblkcbbCODMOT.Text) <> '' then
     begin
       if FileExists(MotoristasFOTO.Value) then
          begin
            ImgMot.Picture.LoadFromFile(MotoristasFOTO.Value);
          end
       else
          begin
            ImgMot.Picture := nil;
          end;
     end
  else
     begin
       ImgMot.Picture := nil;
     end;
end;

procedure TFAlteraEntrada_Saida.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAlteraEntrada_Saida.FormShow(Sender: TObject);
begin
  Carretas.Close;
  Carretas.Open;
  Carretas.Last;
  Carretas.First;

  Motoristas.Close;
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

   if trim(ClientEntradaFOTO.Value) <> '' then
       begin
         if FileExists(ClientEntradaFOTO.Value) then
            begin
              ImgMot.Picture.LoadFromFile(ClientEntradaFOTO.Value);
            end
         else
            begin
              ImgMot.Picture := nil;
            end;
       end
    else
       begin
         ImgMot.Picture := nil;
       end;
end;

end.
