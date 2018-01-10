unit UEntradaSaidaVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, jpeg, DB, Buttons,
  DBClient, Mask, DBCtrls, IBCustomDataSet, IBQuery, rxToolEdit, RXDBCtrl,
  AppEvnts;

type
  TFEntradaSaidaVeiculos = class(TForm)
    PaginaControle: TPageControl;
    tsEntrada: TTabSheet;
    tsSaida: TTabSheet;
    dbgVeiculosviagem: TDBGrid;
    dbgVeiculosPatio: TDBGrid;
    pnl1: TPanel;
    img1: TImage;
    img2: TImage;
    dsConsVeiculosPatio: TDataSource;
    lbl1: TLabel;
    dbedtPLAVEI: TDBEdit;
    dsClientSaida: TDataSource;
    lbl2: TLabel;
    ImgAlu: TImage;
    dblkcbbCODMOT: TDBLookupComboBox;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasFOTO: TIBStringField;
    dsMotoristas: TDataSource;
    dbedtHORSAI: TDBEdit;
    edtDATSAI: TDBDateEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtKMSAI: TDBEdit;
    lbl5: TLabel;
    dbedtDESTINO: TDBEdit;
    lbl6: TLabel;
    ClientSaida: TClientDataSet;
    ClientSaidaPLAVEI: TStringField;
    ClientSaidaCODVEI: TIntegerField;
    ClientSaidaCODMOT: TIntegerField;
    ClientSaidaDATSAI: TDateField;
    ClientSaidaHORSAI: TTimeField;
    ClientSaidaKMSAI: TIntegerField;
    ClientSaidaDESTINO: TStringField;
    ClientSaidaPLACA_CARRETA: TIntegerField;
    ClientSaidaIN_ENGATADO: TStringField;
    ClientSaidaCODCARRETA: TIntegerField;
    ClientSaidaCARGA: TIntegerField;
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
    lblCarreta: TLabel;
    dsCarretas: TDataSource;
    dblkcbbPLAVEICarreta: TDBLookupComboBox;
    cbbEngatado: TComboBox;
    lblEngatado: TLabel;
    lblCarga: TLabel;
    dbedtCARGA: TDBEdit;
    ApplicationEvents1: TApplicationEvents;
    pnl2: TPanel;
    btnGerarSaida: TBitBtn;
    btnConfirmarSaida: TBitBtn;
    btnCancelar: TBitBtn;
    dsConsVeiculosViagem: TDataSource;
    dsClientEntrada: TDataSource;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    imgMotEntrada: TImage;
    pnl3: TPanel;
    btnGerarEntrada: TBitBtn;
    btnConfirmarEntrada: TBitBtn;
    dbedtPLAVEI1: TDBEdit;
    dbedtNOMMOT: TDBEdit;
    dbedtHORSAI1: TDBEdit;
    dbedtKMSAI1: TDBEdit;
    dbedtDESTINO1: TDBEdit;
    edtDATSAI1: TDBDateEdit;
    edtDATENT: TDBDateEdit;
    dbedtHORENT: TDBEdit;
    dbedtKMENT: TDBEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    dbedtCARGA1: TDBEdit;
    dbedtPLACA_CARRETA: TDBEdit;
    lblCarretaEnt: TLabel;
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
    dbcbbIN_ENGATADO: TDBComboBox;
    lblEngatadoEnt: TLabel;
    btnCancelarEnt: TBitBtn;
    ClientEntradavnTotalKm: TIntegerField;
    dbtxt1: TDBText;
    lbl17: TLabel;
    MotoristasTIPMOT: TIBStringField;
    lbl18: TLabel;
    ClientEntradaOBS_MOTORISTA: TStringField;
    dbmmoOBS_MOTORISTA: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btnGerarSaidaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblkcbbCODMOTCloseUp(Sender: TObject);
    procedure dblkcbbCODMOTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarSaidaClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGerarEntradaClick(Sender: TObject);
    procedure btnCancelarEntClick(Sender: TObject);
    procedure btnConfirmarEntradaClick(Sender: TObject);
    procedure ClientEntradaCalcFields(DataSet: TDataSet);
    procedure dbmmoOBS_MOTORISTAKeyPress(Sender: TObject; var Key: Char);
    procedure dbmmoOBS_MOTORISTAChange(Sender: TObject);
    procedure dbedtDESTINOEnter(Sender: TObject);
    procedure dbedtDESTINOExit(Sender: TObject);
    procedure dbedtPLAVEIEnter(Sender: TObject);
    procedure dbedtPLAVEIExit(Sender: TObject);
    procedure edtDATSAIEnter(Sender: TObject);
    procedure edtDATSAIExit(Sender: TObject);
    procedure dbedtHORSAIEnter(Sender: TObject);
    procedure dbedtHORSAIExit(Sender: TObject);
    procedure dbedtKMSAIEnter(Sender: TObject);
    procedure dbedtKMSAIExit(Sender: TObject);
    procedure dblkcbbPLAVEICarretaEnter(Sender: TObject);
    procedure dblkcbbPLAVEICarretaExit(Sender: TObject);
    procedure cbbEngatadoEnter(Sender: TObject);
    procedure cbbEngatadoExit(Sender: TObject);
    procedure dbedtCARGAEnter(Sender: TObject);
    procedure dbedtCARGAExit(Sender: TObject);
    procedure dblkcbbCODMOTEnter(Sender: TObject);
    procedure dblkcbbCODMOTExit(Sender: TObject);
    procedure dbedtPLAVEI1Enter(Sender: TObject);
    procedure dbedtPLAVEI1Exit(Sender: TObject);
    procedure edtDATSAI1Enter(Sender: TObject);
    procedure edtDATSAI1Exit(Sender: TObject);
    procedure dbedtDESTINO1Enter(Sender: TObject);
    procedure dbedtDESTINO1Exit(Sender: TObject);
    procedure dbedtPLACA_CARRETAEnter(Sender: TObject);
    procedure dbedtPLACA_CARRETAExit(Sender: TObject);
    procedure dbedtNOMMOTEnter(Sender: TObject);
    procedure dbedtNOMMOTExit(Sender: TObject);
    procedure dbedtHORSAI1Enter(Sender: TObject);
    procedure dbedtHORSAI1Exit(Sender: TObject);
    procedure dbedtKMSAI1Enter(Sender: TObject);
    procedure dbedtKMSAI1Exit(Sender: TObject);
    procedure dbedtCARGA1Exit(Sender: TObject);
    procedure dbedtCARGA1Enter(Sender: TObject);
    procedure dbcbbIN_ENGATADOEnter(Sender: TObject);
    procedure dbcbbIN_ENGATADOExit(Sender: TObject);
    procedure edtDATENTEnter(Sender: TObject);
    procedure edtDATENTExit(Sender: TObject);
    procedure dbedtHORENTEnter(Sender: TObject);
    procedure dbedtHORENTExit(Sender: TObject);
    procedure dbedtKMENTEnter(Sender: TObject);
    procedure dbedtKMENTExit(Sender: TObject);
    procedure dbgVeiculosPatioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgVeiculosviagemDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaSaidaVeiculos: TFEntradaSaidaVeiculos;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFEntradaSaidaVeiculos.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblCarreta.Visible := (ClientSaida.State in [dsInsert]) and (DmFire.ConsVeiculosPatioTIPO.AsString = 'CAVALO');
  lblCarreta.Enabled := cbbEngatado.Text = 'SIM';

  dblkcbbPLAVEICarreta.Visible := (ClientSaida.State in [dsInsert]) and (DmFire.ConsVeiculosPatioTIPO.AsString = 'CAVALO');
  dblkcbbPLAVEICarreta.Enabled := cbbEngatado.Text = 'SIM';

  lblEngatado.Visible := (ClientSaida.State in [dsInsert]) and (ClientSaidaCODCARRETA.AsInteger <> 0);
  cbbEngatado.Visible := (ClientSaida.State in [dsInsert]) and (ClientSaidaCODCARRETA.AsInteger <> 0);

  lblCarga.Visible := (ClientSaida.State in [dsInsert]) and ((DmFire.ConsVeiculosPatioTIPO.AsString = 'TRUCK') or (DmFire.ConsVeiculosPatioTIPO.AsString = 'CAVALO'));
  dbedtCARGA.Visible := (ClientSaida.State in [dsInsert]) and ((DmFire.ConsVeiculosPatioTIPO.AsString = 'TRUCK') or (DmFire.ConsVeiculosPatioTIPO.AsString = 'CAVALO'));

  btnConfirmarSaida.Enabled := ClientSaida.State in [dsInsert];
  btnGerarSaida.Enabled := (not(ClientSaida.State in [dsInsert])) and (not DmFire.ConsVeiculosPatio.IsEmpty);
  dbgVeiculosPatio.Enabled := not(ClientSaida.State in [dsInsert]);

  btnConfirmarEntrada.Enabled := ClientEntrada.State in [dsInsert];
  btnGerarEntrada.Enabled := (not(ClientEntrada.State in [dsInsert])) and (not DmFire.ConsVeiculosViagem.IsEmpty);
  dbgVeiculosviagem.Enabled := not(ClientEntrada.State in [dsInsert]);

  btnCancelar.Enabled := ClientSaida.State in [dsInsert];
  btnCancelarEnt.Enabled := ClientEntrada.State in [dsInsert];

  lblCarretaEnt.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;
  dbedtPLACA_CARRETA.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;

  lblEngatadoEnt.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;
  dbcbbIN_ENGATADO.Visible := ClientEntradaCODCARRETA.AsInteger <> 0;

  tsEntrada.TabVisible := not(ClientSaida.State in [dsInsert]);
  tsSaida.TabVisible := not(ClientEntrada.State in [dsInsert]);
end;

procedure TFEntradaSaidaVeiculos.btnCancelarClick(Sender: TObject);
begin
  ClientSaida.Cancel;
  ImgAlu.Picture := nil;
end;

procedure TFEntradaSaidaVeiculos.btnCancelarEntClick(Sender: TObject);
begin
  ClientEntrada.Cancel;
  imgMotEntrada.Picture := nil;
end;

procedure TFEntradaSaidaVeiculos.btnConfirmarEntradaClick(Sender: TObject);
begin
    if ClientEntradaKMENT.Value = 0 then
       begin
         Application.MessageBox('Informe o Km de Entrada','Aviso',MB_OK+MB_ICONWARNING);
         ActiveControl := dbedtKMENT;
         Abort;
       end;
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

    if ClientEntradaKMENT.Value <= ClientEntradaKMSAI.Value then
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

    if (ClientEntradavnTotalKm.Value > 5000) then
       begin
         if Application.MessageBox('Foi informado um total de KM rodado maior do que 4.000 KM e isso não é comum, Deseja realmente confirmar? ','Aviso',MB_YESNO+MB_ICONWARNING+MB_DEFBUTTON2) = mrYes then
            begin

            end
         else
            begin
              Abort;
            end;

       end;

    ClientEntrada.Post;

    DmFire.CadEntradaSaida.Close;
    DmFire.CadEntradaSaida.ParamByName('SEQENTSAI').Value := DmFire.ConsVeiculosViagemSEQENTSAI.Value;
    DmFire.CadEntradaSaida.ParamByName('CODVEI').Value := DmFire.ConsVeiculosViagemCODVEI.Value;
    DmFire.CadEntradaSaida.Open;
    if not DmFire.CadEntradaSaida.IsEmpty then
      begin
        DmFire.CadEntradaSaida.Edit;
        DmFire.CadEntradaSaidaUSUENT.Value := FPrincipal.vnCodUsu;
        DmFire.CadEntradaSaidaDATENT.Value := ClientEntradaDATENT.Value;
        DmFire.CadEntradaSaidaHORENT.Value := ClientEntradaHORENT.Value;
        DmFire.CadEntradaSaidaKMENT.Value := ClientEntradaKMENT.Value;
        if Trim(ClientEntradaOBS_MOTORISTA.Text) = '' then
           begin
             DmFire.CadEntradaSaidaOBS_MOTORISTA.Value := '';
           end
        else
           begin
             DmFire.CadEntradaSaidaOBS_MOTORISTA.Value := ClientEntradaOBS_MOTORISTA.Value;
           end;
        DmFire.CadEntradaSaidaIN_VISUALIZADO.Value := 'NAO';
        DmFire.CadEntradaSaida.Post;

        //atualiza o LOCAL E KM do veiculo carreta
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('update veiculo set localvei = ''PATIO'', ');
        DmFire.ConsSql.SQL.Add('                   kmatu = :KMATU ');
        DmFire.ConsSql.SQL.Add(' where veiculo.codvei = :codvei');
        DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODVEI.AsInteger;
        DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMENT.AsInteger;
        DmFire.ConsSql.ExecSQL;

        if ClientEntradaIN_ENGATADO.Value = 'SIM' then
           begin
              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('update veiculo set localvei = ''PATIO'', ');
              DmFire.ConsSql.SQL.Add('                   kmatu = :KMATU ');
              DmFire.ConsSql.SQL.Add(' where veiculo.codvei = :codvei');
              DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODCARRETA.AsInteger;
              DmFire.ConsSql.ParamByName('KMATU').Value := DmFire.CadEntradaSaidaKMENT.AsInteger;
              DmFire.ConsSql.ExecSQL;
           end;

        //ATUALIZA O LOCAL EM QUE O MOTORISTA SE ENCONTRA
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('update motorista set localmot = ''EMPRESA'' ');
        DmFire.ConsSql.SQL.Add(' where motorista.codmot = :codmot');
        DmFire.ConsSql.ParamByName('CODMOT').Value := DmFire.CadEntradaSaidaCODMOT.AsInteger;
        DmFire.ConsSql.ExecSQL;

        {*******************************
            GERA O LOG DA ENTRADA DO VEICULO
        ********************************}
        if DmFire.ConsVeiculosViagemIN_MONITORAR.Value = 'SIM' then
           begin
              DmFire.CadChega_Vei_Mot.Open;
              DmFire.CadChega_Vei_Mot.Insert;
              DmFire.CadChega_Vei_MotCODUSU.Value := FPrincipal.vnCodUsu;
              DmFire.CadChega_Vei_MotCODMOT.Value := ClientEntradaCODMOT.Value;
              DmFire.CadChega_Vei_MotCODVEI.Value := ClientEntradaCODVEI.Value;
              DmFire.CadChega_Vei_MotDATCHE.Value := ClientEntradaDATENT.Value;
              DmFire.CadChega_Vei_MotHORCHE.Value := ClientEntradaHORENT.Value;
              DmFire.CadChega_Vei_MotDESCRICAO.Value := 'Destino: '+ ClientEntradaDESTINO.AsString;

              if ClientEntradaCARGA.Value <> 0 then
                 DmFire.CadChega_Vei_MotDESCRICAO.Value := DmFire.CadChega_Vei_MotDESCRICAO.Value + '  Carga: '+IntToStr(ClientEntradaCARGA.Value);

              DmFire.CadChega_Vei_MotDESCRICAO.Value := DmFire.CadChega_Vei_MotDESCRICAO.Value +'  Mot: '+ClientEntradaNOMMOT.Value;

              DmFire.CadChega_Vei_MotIN_VISU.Value := 'NAO';

              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT MAX(SEQCHE) AS SEQCHE FROM CHEGA_VEI_MOT');
              DmFire.ConsSql.Open;
              if DmFire.ConsSql.IsEmpty then
                 DmFire.CadChega_Vei_MotSEQCHE.AsInteger := 1
              else
                 DmFire.CadChega_Vei_MotSEQCHE.AsInteger := DmFire.ConsSql.FieldByName('SEQCHE').AsInteger + 1;

              DmFire.CadChega_Vei_MotTIPMOV.Value := 'ENTRADA';
              DmFire.CadChega_Vei_Mot.Post;
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
                  DmFire.CadCargasDATCHE.AsDateTime := DmFire.CadEntradaSaidaDATENT.AsDateTime;
                  DmFire.CadCargasSITCAR.AsString := 'FECHADO';
                  DmFire.CadCargas.Post;
                end;
            end;

        DmFire.ibtTransacao.CommitRetaining;

        ClientEntrada.Delete;

        FEntradaSaidaVeiculos.FormShow(Sender);

      end;
end;

procedure TFEntradaSaidaVeiculos.btnConfirmarSaidaClick(Sender: TObject);
begin
  if Trim(ClientSaidaPLAVEI.Value) = '' then
     begin
       Application.MessageBox('Informe o Veículo', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtPLAVEI;
       Abort;
     end;
  if Trim(dblkcbbCODMOT.Text) = '' then
     begin
       Application.MessageBox('Informe o Motorista', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODMOT;
       Abort;
     end;
  if ClientSaidaDATSAI.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a Data de Saída', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATSAI;
       Abort;
     end;
  if ClientSaidaHORSAI.Value = 0 then
     begin
       Application.MessageBox('Informe a Hora de Saída', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtHORSAI;
       Abort;
     end;
  if ClientSaidaKMSAI.AsInteger = 0 then
     begin
       Application.MessageBox('Informe o Km de Saída', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtKMSAI;
       Abort;
     end;
  if Trim(ClientSaidaDESTINO.Value) = '' then
     begin
       Application.MessageBox('Informe o Destino', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtDESTINO;
       Abort;
     end;

  if (ClientSaidaCODCARRETA.AsInteger <> 0) and (cbbEngatado.Text = 'SIM') and (ClientSaidaCARGA.AsInteger = 0) then
     begin
        if Application.MessageBox('Esta é uma saída de carrega engatada e não foi informado o número da carga, confirmar saída assim mesmo?', 'Saída', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
            Begin

            End
        else
           begin
             ActiveControl := dbedtCARGA;
             Abort;
           end;
     end;

  if (DmFire.ConsVeiculosPatioTIPO.Value = 'TRUCK') and (ClientSaidaCARGA.AsInteger = 0) then
      begin
        if Application.MessageBox('Esta é uma saída de caminhão truck e não foi informado o número da carga, confirmar saída assim mesmo?', 'Saída', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
            Begin

            End
        else
           begin
             ActiveControl := dbedtCARGA;
             Abort;
           end;
      end;

  //VALIDA SE EXISTE SAIDA COM A CARGA INFORMADA
  if ClientSaidaCARGA.AsInteger <> 0 then
     begin
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('SELECT entrada_saida.seqentsai');
        DmFire.ConsSql.SQL.Add('  FROM entrada_saida');
        DmFire.ConsSql.SQL.Add('  where entrada_saida.carga = :CARGA');
        DmFire.ConsSql.ParamByName('CARGA').Value := ClientSaidaCARGA.AsInteger;
        DmFire.ConsSql.Open;
        if (not DmFire.ConsSql.IsEmpty) and (DmFire.ConsVeiculosPatioTIPO.Value <> 'VEICULO LEVE') then
           begin
             Application.MessageBox('Já existe uma SAÍDA com a carga informada','AVISO',MB_ICONWARNING+MB_OK);
             Abort;
           end;
     end;


  ClientSaida.Post;

  DmFire.CadEntradaSaida.Open;
  DmFire.CadEntradaSaida.Insert;
  DmFire.CadEntradaSaidaCODVEI.Value := ClientSaidaCODVEI.Value;
  DmFire.CadEntradaSaidaUSUSAIDA.Value := FPrincipal.vnCodUsu;
  DmFire.CadEntradaSaidaCODMOT.Value := ClientSaidaCODMOT.Value;
  DmFire.CadEntradaSaidaDATSAIDA.Value := ClientSaidaDATSAI.Value;
  DmFire.CadEntradaSaidaHORSAIDA.Value := ClientSaidaHORSAI.Value;
  DmFire.CadEntradaSaidaKMSAIDA.Value := ClientSaidaKMSAI.Value;
  DmFire.CadEntradaSaidaDESTINO.Value := ClientSaidaDESTINO.Value;
  DmFire.CadEntradaSaidaCARGA.Value := ClientSaidaCARGA.Value;
  DmFire.CadEntradaSaidaKMENT.AsInteger := 0;
  DmFire.CadEntradaSaidaITESEL.Value := 'N';
  DmFire.CadEntradaSaidaQTD_COMB.Value := 0;
  DmFire.CadEntradaSaidaMEDIA_CONS.Value := 0;

  if cbbEngatado.Visible = true then
     begin
       DmFire.CadEntradaSaidaIN_ENGATADO.Value := cbbEngatado.Text;
     end
  else
     begin
       DmFire.CadEntradaSaidaIN_ENGATADO.Value := 'NAO';
     end;



  if cbbEngatado.Text = 'SIM' then
     begin
       DmFire.CadEntradaSaidaCODCARRETA.Value := ClientSaidaCODCARRETA.Value;
     end
  else
     begin
       DmFire.CadEntradaSaidaCODCARRETA.Value := 0;
     end;


  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('SELECT MAX(SEQENTSAI) AS SEQENTSAI');
  DmFire.ConsSql.SQL.Add(' FROM ENTRADA_SAIDA WHERE CODVEI = :CODVEI');
  DmFire.ConsSql.ParamByName('CODVEI').Value := ClientSaidaCODVEI.Value;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadEntradaSaidaSEQENTSAI.Value := 1
  else
     DmFire.CadEntradaSaidaSEQENTSAI.Value := DmFire.ConsSql.FieldByName('SEQENTSAI').AsInteger + 1;
  DmFire.CadEntradaSaida.Post;

  //atualiza o local do veiculo e carreta
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('update veiculo set localvei = ''VIAGEM'' where veiculo.codvei = :codvei');
  DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODVEI.AsInteger;
  DmFire.ConsSql.ExecSQL;

  if DmFire.CadEntradaSaidaCODCARRETA.AsInteger <> 0 then
     begin
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('update veiculo set localvei = ''VIAGEM'' where veiculo.codvei = :codvei');
        DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadEntradaSaidaCODCARRETA.AsInteger;
        DmFire.ConsSql.ExecSQL;
     end;

  //ATUALIZA O LOCAL EM QUE O MOTORISTA SE ENCONTRA
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('update motorista set localmot = ''VIAGEM'' ');
  DmFire.ConsSql.SQL.Add(' where motorista.codmot = :codmot');
  DmFire.ConsSql.ParamByName('CODMOT').Value := DmFire.CadEntradaSaidaCODMOT.AsInteger;
  DmFire.ConsSql.ExecSQL;

  {*******************************
      GERA O LOG DA SAIDA DO VEICULO
  ********************************}
  if DmFire.ConsVeiculosPatioIN_MONITORAR.Value = 'SIM' then
     begin
        DmFire.CadChega_Vei_Mot.Open;
        DmFire.CadChega_Vei_Mot.Insert;
        DmFire.CadChega_Vei_MotCODUSU.Value := FPrincipal.vnCodUsu;
        DmFire.CadChega_Vei_MotCODMOT.Value := ClientSaidaCODMOT.Value;
        DmFire.CadChega_Vei_MotCODVEI.Value := ClientSaidaCODVEI.Value;
        DmFire.CadChega_Vei_MotDATCHE.Value := ClientSaidaDATSAI.Value;
        DmFire.CadChega_Vei_MotHORCHE.Value := ClientSaidaHORSAI.Value;
        DmFire.CadChega_Vei_MotDESCRICAO.Value := 'Destino: '+ ClientSaidaDESTINO.AsString;

        if ClientSaidaCARGA.Value <> 0 then
           DmFire.CadChega_Vei_MotDESCRICAO.Value := DmFire.CadChega_Vei_MotDESCRICAO.Value + '  Carga: '+IntToStr(ClientSaidaCARGA.Value);

        DmFire.CadChega_Vei_MotDESCRICAO.Value := DmFire.CadChega_Vei_MotDESCRICAO.Value +'  Mot: '+ MotoristasNOMMOT.Value;

        DmFire.CadChega_Vei_MotIN_VISU.Value := 'NAO';

        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('SELECT MAX(SEQCHE) AS SEQCHE FROM CHEGA_VEI_MOT');
        DmFire.ConsSql.Open;
        if DmFire.ConsSql.IsEmpty then
           DmFire.CadChega_Vei_MotSEQCHE.AsInteger := 1
        else
           DmFire.CadChega_Vei_MotSEQCHE.AsInteger := DmFire.ConsSql.FieldByName('SEQCHE').AsInteger + 1;

        DmFire.CadChega_Vei_MotTIPMOV.Value := 'SAIDA';
        DmFire.CadChega_Vei_Mot.Post;
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
            DmFire.CadCargas.Post;
          end;
      end;

  DmFire.ibtTransacao.CommitRetaining;

  ClientSaida.Delete;
  ClientSaida.Close;
  ImgAlu.Picture := nil;

  FEntradaSaidaVeiculos.FormShow(Sender);

  Refresh;
end;

procedure TFEntradaSaidaVeiculos.btnGerarEntradaClick(Sender: TObject);
begin
    ClientEntrada.Open;
    ClientEntrada.Insert;
    ClientEntradaPLAVEI.Value := DmFire.ConsVeiculosViagemPLAVEI.Value;
    ClientEntradaCODVEI.Value := DmFire.ConsVeiculosViagemCODVEI.Value;
    ClientEntradaCODMOT.Value := DmFire.ConsVeiculosViagemCODMOT.Value;
    ClientEntradaDATSAI.Value := DmFire.ConsVeiculosViagemDATSAIDA.Value;
    ClientEntradaHORSAI.Value := DmFire.ConsVeiculosViagemHORSAIDA.Value;
    ClientEntradaKMSAI.Value := DmFire.ConsVeiculosViagemKMSAIDA.Value;
    ClientEntradaDESTINO.Value := DmFire.ConsVeiculosViagemDESTINO.Value;
    ClientEntradaCODCARRETA.Value := DmFire.ConsVeiculosViagemCODCARRETA.Value;
    ClientEntradaPLACA_CARRETA.AsString := DmFire.ConsVeiculosViagemPLAVEI_CARRETA.AsString;
    ClientEntradaIN_ENGATADO.Value := DmFire.ConsVeiculosViagemIN_ENGATADO.Value;
    ClientEntradaCARGA.Value := DmFire.ConsVeiculosViagemCARGA.Value;
    ClientEntradaNOMMOT.Value := DmFire.ConsVeiculosViagemNOMMOT.Value;
    ClientEntradaDATENT.Value := date;
    ClientEntradaHORENT.Value := Time;

    if trim(DmFire.ConsVeiculosViagemFOTO.Value) <> '' then
       begin
         if FileExists(DmFire.ConsVeiculosViagemFOTO.Value) then
            begin
              imgMotEntrada.Picture.LoadFromFile(DmFire.ConsVeiculosViagemFOTO.Value);
            end
         else
            begin
              imgMotEntrada.Picture := nil;
            end;
       end
    else
       begin
         imgMotEntrada.Picture := nil;
       end;

    ActiveControl := edtDATENT;

end;

procedure TFEntradaSaidaVeiculos.btnGerarSaidaClick(Sender: TObject);
begin
  Motoristas.Close;
  Motoristas.SQL.Clear;
  Motoristas.SQL.Add('SELECT MOTORISTA.codmot, MOTORISTA.nommot,motorista.foto,MOTORISTA.TIPMOT');
  Motoristas.SQL.Add(' FROM motorista');
  Motoristas.SQL.Add(' WHERE');
  Motoristas.SQL.Add(' MOTORISTA.sitmot = ''ATIVO'' ');
  //Motoristas.SQL.Add(' MOTORISTA.LOCALMOT = ''EMPRESA'' ');
  if (DmFire.ConsVeiculosPatioTIPO.Value = 'TRUCK') or (DmFire.ConsVeiculosPatioTIPO.Value = 'CAVALO') or (DmFire.ConsVeiculosPatioTIPO.Value = 'CARRETA') then
      Motoristas.SQL.Add(' AND MOTORISTA.TIPMOT IN (''TODOS'',''PESADOS'')')
  else
  if (DmFire.ConsVeiculosPatioTIPO.Value = 'VEICULO LEVE') then
      Motoristas.SQL.Add(' AND MOTORISTA.TIPMOT IN (''TODOS'',''LEVES'')');

  Motoristas.SQL.Add('ORDER BY MOTORISTA.nommot');
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

  ClientSaida.Open;
  ClientSaida.Insert;
  ClientSaidaPLAVEI.Value := DmFire.ConsVeiculosPatioPLAVEI.Value;
  ClientSaidaCODVEI.Value := DmFire.ConsVeiculosPatioCODVEI.Value;
  ClientSaidaCODMOT.Value := DmFire.ConsVeiculosPatioCODMOT.Value;
  ClientSaidaDATSAI.Value := Date;
  ClientSaidaHORSAI.Value := Time;
  ClientSaidaKMSAI.Value := DmFire.ConsVeiculosPatioKMATU.Value;

  if DmFire.ConsVeiculosPatioTIPO.Value = 'CAVALO' then
     begin
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('select veiculo.*');
        DmFire.ConsSql.SQL.Add(' from veiculo');
        DmFire.ConsSql.SQL.Add(' where veiculo.tipo = ''CARRETA'' and');
        DmFire.ConsSql.SQL.Add('       veiculo.localvei = ''PATIO'' and');
        DmFire.ConsSql.SQL.Add('       veiculo.codcav = :codcav');
        DmFire.ConsSql.ParamByName('codcav').Value := ClientSaidaCODVEI.Value;
        DmFire.ConsSql.Open;
        if DmFire.ConsSql.IsEmpty then
           begin
             ClientSaidaCODCARRETA.AsInteger := 0;
           end
        else
           begin
             ClientSaidaCODCARRETA.AsInteger := DmFire.ConsSql.FieldByName('CODVEI').AsInteger;
           end;
     end
  else
     begin
       ClientSaidaCODCARRETA.AsInteger := 0;
     end;


  dblkcbbCODMOTCloseUp(Sender);

  ActiveControl := dbedtDESTINO;

end;

procedure TFEntradaSaidaVeiculos.cbbEngatadoEnter(Sender: TObject);
begin
  cbbEngatado.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.cbbEngatadoExit(Sender: TObject);
begin
cbbEngatado.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.ClientEntradaCalcFields(DataSet: TDataSet);
begin
  if ClientEntradaKMENT.Value > 0 then
     begin
       ClientEntradavnTotalKm.AsInteger := ClientEntradaKMENT.AsInteger - ClientEntradaKMSAI.AsInteger;
     end
  else
     begin
       ClientEntradavnTotalKm.Value := 0;
     end;
end;

procedure TFEntradaSaidaVeiculos.dbcbbIN_ENGATADOEnter(Sender: TObject);
begin
dbcbbIN_ENGATADO.Color := clLime;
end;

procedure TFEntradaSaidaVeiculos.dbcbbIN_ENGATADOExit(Sender: TObject);
begin
  dbcbbIN_ENGATADO.Color := clMoneyGreen;
end;

procedure TFEntradaSaidaVeiculos.dbedtCARGA1Enter(Sender: TObject);
begin
  dbedtCARGA1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtCARGA1Exit(Sender: TObject);
begin
dbedtCARGA1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtCARGAEnter(Sender: TObject);
begin
  dbedtCARGA.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtCARGAExit(Sender: TObject);
begin
 dbedtCARGA.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtDESTINO1Enter(Sender: TObject);
begin
  dbedtDESTINO1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtDESTINO1Exit(Sender: TObject);
begin
  dbedtDESTINO1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtDESTINOEnter(Sender: TObject);
begin
  dbedtDESTINO.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtDESTINOExit(Sender: TObject);
begin
  dbedtDESTINO.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORENTEnter(Sender: TObject);
begin
  dbedtHORENT.Color := clLime;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORENTExit(Sender: TObject);
begin
  dbedtHORENT.Color := clMoneyGreen;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORSAI1Enter(Sender: TObject);
begin
dbedtHORSAI1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORSAI1Exit(Sender: TObject);
begin
 dbedtHORSAI1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORSAIEnter(Sender: TObject);
begin
dbedtHORSAI.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtHORSAIExit(Sender: TObject);
begin
 dbedtHORSAI.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMENTEnter(Sender: TObject);
begin
  dbedtKMENT.Color := clLime;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMENTExit(Sender: TObject);
begin
   dbedtKMENT.Color := clMoneyGreen;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMSAI1Enter(Sender: TObject);
begin
dbedtKMSAI1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMSAI1Exit(Sender: TObject);
begin
 dbedtKMSAI1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMSAIEnter(Sender: TObject);
begin
  dbedtKMSAI.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtKMSAIExit(Sender: TObject);
begin
  dbedtKMSAI.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtNOMMOTEnter(Sender: TObject);
begin
dbedtNOMMOT.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtNOMMOTExit(Sender: TObject);
begin
dbedtNOMMOT.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLACA_CARRETAEnter(Sender: TObject);
begin
dbedtPLACA_CARRETA.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLACA_CARRETAExit(Sender: TObject);
begin
 dbedtPLACA_CARRETA.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLAVEI1Enter(Sender: TObject);
begin
  dbedtPLAVEI1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLAVEI1Exit(Sender: TObject);
begin
  dbedtPLAVEI1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLAVEIEnter(Sender: TObject);
begin
dbedtPLAVEI.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dbedtPLAVEIExit(Sender: TObject);
begin
 dbedtPLAVEI.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbgVeiculosPatioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
Grid: TDBGrid;
begin

  Grid := Sender as TDBGrid;
  if gdFocused in State then
    begin
      Grid.Canvas.Brush.Style := bsClear;
      Grid.Canvas.Brush.Color := clYellow;
      Grid.Canvas.Font.Color := clBlack;
    end;
  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFEntradaSaidaVeiculos.dbgVeiculosviagemDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
Grid: TDBGrid;
begin
  Grid := Sender as TDBGrid;
  if gdFocused in State then
    begin
      Grid.Canvas.Brush.Style := bsClear;
      Grid.Canvas.Brush.Color := clLime;
    end;
  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFEntradaSaidaVeiculos.dblkcbbCODMOTCloseUp(Sender: TObject);
begin
if trim(dblkcbbCODMOT.Text) <> '' then
   begin
     if FileExists(MotoristasFOTO.Value) then
        begin
          ImgAlu.Picture.LoadFromFile(MotoristasFOTO.Value);
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

procedure TFEntradaSaidaVeiculos.dblkcbbCODMOTEnter(Sender: TObject);
begin
dblkcbbCODMOT.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dblkcbbCODMOTExit(Sender: TObject);
begin
dblkcbbCODMOT.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dblkcbbCODMOTKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if trim(dblkcbbCODMOT.Text) <> '' then
   begin
     if FileExists(MotoristasFOTO.Value) then
        begin
          ImgAlu.Picture.LoadFromFile(MotoristasFOTO.Value);
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

procedure TFEntradaSaidaVeiculos.dblkcbbPLAVEICarretaEnter(Sender: TObject);
begin
  dblkcbbPLAVEICarreta.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.dblkcbbPLAVEICarretaExit(Sender: TObject);
begin
 dblkcbbPLAVEICarreta.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.dbmmoOBS_MOTORISTAChange(Sender: TObject);
begin
  if Trim(dbmmoOBS_MOTORISTA.Text) = '' then
    begin
      dbmmoOBS_MOTORISTA.Color := clWhite;
    end
  else
    begin
      dbmmoOBS_MOTORISTA.Color := $0080FFFF;
    end;

end;

procedure TFEntradaSaidaVeiculos.dbmmoOBS_MOTORISTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFEntradaSaidaVeiculos.edtDATENTEnter(Sender: TObject);
begin
edtDATENT.Color := clLime;
end;

procedure TFEntradaSaidaVeiculos.edtDATENTExit(Sender: TObject);
begin
  edtDATENT.Color := clMoneyGreen;
end;

procedure TFEntradaSaidaVeiculos.edtDATSAI1Enter(Sender: TObject);
begin
edtDATSAI1.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.edtDATSAI1Exit(Sender: TObject);
begin
edtDATSAI1.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.edtDATSAIEnter(Sender: TObject);
begin
  edtDATSAI.Color := clYellow;
end;

procedure TFEntradaSaidaVeiculos.edtDATSAIExit(Sender: TObject);
begin
 edtDATSAI.Color := clInfoBk;
end;

procedure TFEntradaSaidaVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEntradaSaidaVeiculos.FormShow(Sender: TObject);
begin
  

  Carretas.Close;
  Carretas.Open;
  Carretas.Last;
  Carretas.First;

  DmFire.ConsVeiculosPatio.Close;
  DmFire.ConsVeiculosPatio.Open;

  DmFire.ConsVeiculosViagem.Close;
  DmFire.ConsVeiculosViagem.Open;

  ImgAlu.Picture := nil;
  imgMotEntrada.Picture := nil;

  PaginaControle.ActivePageIndex := 0;

end;

end.
