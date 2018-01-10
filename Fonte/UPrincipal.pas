unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, AppEvnts, IniFiles, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, Ribbon, RibbonLunaStyleActnCtrls,
  ScreenTips, ToolWin, ActnCtrls, ActnMenus, RibbonActnMenus, ImgList, pngimage,
  ExtCtrls, ComCtrls, MidasLib, IdBaseComponent, IdComponent, IdIPWatch;

  const InputBoxMessage = WM_USER + 200;

type
  TFPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    ActionManeger: TActionManager;
    actCadMarcas: TAction;
    actCadModelos: TAction;
    actCadMotoristas: TAction;
    actCadFornecedores: TAction;
    actCadVeiculos: TAction;
    actCadServicos: TAction;
    actLancaManutencoes: TAction;
    actRelacaoManutencoes: TAction;
    actRelacaoManutencoesPeriodicas: TAction;
    actEntradaSaidaVeiculos: TAction;
    actRelacaoEntrada_Saida: TAction;
    actAbastecimento_Viagem: TAction;
    actCadInfracoes: TAction;
    actLancamentoInfracoes: TAction;
    actIdentificacaoCondutoresInfra: TAction;
    actVencimentoCNH: TAction;
    actResumoGeral: TAction;
    actCadUsuarios: TAction;
    actSair: TAction;
    RbMenu: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    ImageList16: TImageList;
    ImageList32: TImageList;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    statusBar: TStatusBar;
    tmr1: TTimer;
    actVeiculosMonitorar: TAction;
    actLogMonitoramentoVeiculos: TAction;
    actTanqueCombustivel: TAction;
    tmrAbreInformacoesGerais: TTimer;
    tmrConsLogEntradaSaida: TTimer;
    actEntradaVeicObsMot: TAction;
    IdIPWatch1: TIdIPWatch;
    RibbonPage3: TRibbonPage;
    RibbonPage4: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    actDespesasViagem: TAction;
    actCustoAdicionalKm: TAction;
    actCustoKm: TAction;
    actRelacaoComissoes: TAction;
    pnl1: TPanel;
    actRelacaoCargas: TAction;
    actComissaoPorFrete: TAction;
    actDiasTrabalhados: TAction;
    actHoras_Trab: TAction;
    actDiasTrabPorHora: TAction;
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure actCadMarcasExecute(Sender: TObject);
    procedure actCadModelosExecute(Sender: TObject);
    procedure actCadMotoristasExecute(Sender: TObject);
    procedure actCadFornecedoresExecute(Sender: TObject);
    procedure actCadVeiculosExecute(Sender: TObject);
    procedure actCadServicosExecute(Sender: TObject);
    procedure actLancaManutencoesExecute(Sender: TObject);
    procedure actRelacaoManutencoesExecute(Sender: TObject);
    procedure actRelacaoManutencoesPeriodicasExecute(Sender: TObject);
    procedure actEntradaSaidaVeiculosExecute(Sender: TObject);
    procedure actRelacaoEntrada_SaidaExecute(Sender: TObject);
    procedure actAbastecimento_ViagemExecute(Sender: TObject);
    procedure actCadInfracoesExecute(Sender: TObject);
    procedure actLancamentoInfracoesExecute(Sender: TObject);
    procedure actIdentificacaoCondutoresInfraExecute(Sender: TObject);
    procedure actVencimentoCNHExecute(Sender: TObject);
    procedure actResumoGeralExecute(Sender: TObject);
    procedure actCadUsuariosExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure actVeiculosMonitorarExecute(Sender: TObject);
    procedure actLogMonitoramentoVeiculosExecute(Sender: TObject);
    procedure actTanqueCombustivelExecute(Sender: TObject);
    procedure tmrAbreInformacoesGeraisTimer(Sender: TObject);
    procedure tmrConsLogEntradaSaidaTimer(Sender: TObject);
    procedure actEntradaVeicObsMotExecute(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure IdIPWatch1StatusChanged(Sender: TObject);
    procedure actDespesasViagemExecute(Sender: TObject);
    procedure actCustoAdicionalKmExecute(Sender: TObject);
    procedure actCustoKmExecute(Sender: TObject);
    procedure actRelacaoComissoesExecute(Sender: TObject);
    procedure actRelacaoCargasExecute(Sender: TObject);
    procedure actComissaoPorFreteExecute(Sender: TObject);
    procedure actDiasTrabalhadosExecute(Sender: TObject);
    procedure actHoras_TrabExecute(Sender: TObject);
    procedure actDiasTrabPorHoraExecute(Sender: TObject);
  private
    { Private declarations }
    vaSistemaEmUso : string;
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    function VersaoExe: String;
  public
    { Public declarations }
    vnCodUsu : Integer;
    vaNomUsu : string;
    vaCategUsu : string;
    vaCaminhoFotos : string;
    vaAtivaLembrete : string;
    vnTempConsLog : Integer;
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UCadMarcas, UCadModelos, UCadMotoristas, UConsMotorista, UCadFornecedor,
  UConsFornecedor, UCadVeiculo, UConsVeiculo, UCadServico, UConsServico,
  ULancaManutencao, URelacaoManutencoes, UAlteraOrdemServico,
  UEntradaSaidaVeiculos, UAbastecimento_Viagem, URelacaoEntrada_Saida,
  URelacaoManutencoesPeriodicas, UInfracoesCad, UConsInfracoes, UInfracoesMov,
  UConsInfracoesMov, UInfracoesIdentificar, UVencimentoCNH, UResumoGeral,
  UCadUsuarios, UDmFire, ULogin, UVeiculosMonitorar, ULogMonitoramentoVeiculos,
  UTanqueCombustivel, UEntradaVeicObsMot, UDespesasViagem, UCustoAdicionalKm,
  UCustoKm, URelacaoComissoes, URelacaoCargas, UValidaChave, UComissaoPorFrete,
  UDiasTrabalhados, ULancarHoras_Trab, UDiasTrabPorHora;

{$R *.dfm}

{*******************************
   para abrir imput com senha
********************************}
procedure TFPrincipal.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

Function TFPrincipal.VersaoExe: String;  //funçao para pegar a versao do executavel
type
PFFI = ^vs_FixedFileInfo;
var
    F : PFFI;
    Handle : Dword;
    Len : Longint;
    Data : Pchar;
    Buffer : Pointer;
    Tamanho : Dword;
    Parquivo: Pchar;
    Arquivo : String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
    begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
        VerQueryValue(Data, '\',Buffer,Tamanho);
        F := PFFI(Buffer);
        Result := Format('%d.%d.%d.%d',
        [HiWord(F^.dwFileVersionMs),
        LoWord(F^.dwFileVersionMs),
        HiWord(F^.dwFileVersionLs),
        Loword(F^.dwFileVersionLs)]
        );
      end;
      StrDispose(Data);
    end;
  StrDispose(Parquivo);
end;

procedure TFPrincipal.actAbastecimento_ViagemExecute(Sender: TObject);
begin
  FAbastecimento_Viagem := TFAbastecimento_Viagem.Create(Self);
  FAbastecimento_Viagem.ShowModal;
  FreeAndNil(FAbastecimento_Viagem);
end;

procedure TFPrincipal.actCadFornecedoresExecute(Sender: TObject);
begin
  FConsFornecedor := TFConsFornecedor.Create(Self);
  FConsFornecedor.ShowModal;
  FreeAndNil(FConsFornecedor);
end;

procedure TFPrincipal.actCadInfracoesExecute(Sender: TObject);
begin
  FConsInfracoes := TFConsInfracoes.Create(Self);
  FConsInfracoes.ShowModal;
  FreeAndNil(FConsInfracoes);
end;

procedure TFPrincipal.actCadMarcasExecute(Sender: TObject);
begin
  FCadMarcas := TFCadMarcas.Create(Self);
  FCadMarcas.ShowModal;
  FreeAndNil(FCadMarcas);
end;

procedure TFPrincipal.actCadModelosExecute(Sender: TObject);
begin
FCadModelos := TFCadModelos.Create(Self);
FCadModelos.ShowModal;
FreeAndNil(FCadModelos);
end;

procedure TFPrincipal.actCadMotoristasExecute(Sender: TObject);
begin
  FConsMotorista := TFConsMotorista.Create(Self);
  FConsMotorista.ShowModal;
  FreeAndNil(FConsMotorista);
end;

procedure TFPrincipal.actCadServicosExecute(Sender: TObject);
begin
   FConsServico := TFConsServico.Create(Self);
   FConsServico.ShowModal;
   FreeAndNil(FConsServico);
end;

procedure TFPrincipal.actCadUsuariosExecute(Sender: TObject);
begin
  FCadUsuarios := TFCadUsuarios.Create(Self);
  FCadUsuarios.ShowModal;
  FreeAndNil(FCadUsuarios);
end;

procedure TFPrincipal.actCadVeiculosExecute(Sender: TObject);
begin
  FConsVeiculo := TFConsVeiculo.Create(Self);
  FConsVeiculo.ShowModal;
  FreeAndNil(FConsVeiculo);
end;

procedure TFPrincipal.actComissaoPorFreteExecute(Sender: TObject);
begin
  FComissaoPorFrete := TFComissaoPorFrete.Create(Self);
  FComissaoPorFrete.ShowModal;
  FreeAndNil(FComissaoPorFrete);
end;

procedure TFPrincipal.actCustoAdicionalKmExecute(Sender: TObject);
begin
  FCustoAdicionalKm := TFCustoAdicionalKm.Create(Self);
  FCustoAdicionalKm.ShowModal;
  FreeAndNil(FCustoAdicionalKm);
end;

procedure TFPrincipal.actCustoKmExecute(Sender: TObject);
begin
  FCustoKm := TFCustoKm.Create(Self);
  FCustoKm.ShowModal;
  FreeAndNil(FCustoKm);
end;

procedure TFPrincipal.actDespesasViagemExecute(Sender: TObject);
begin
  FDespesasViagem := TFDespesasViagem.Create(Self);
  FDespesasViagem.ShowModal;
  FreeAndNil(FDespesasViagem);
end;

procedure TFPrincipal.actDiasTrabalhadosExecute(Sender: TObject);
begin
    FDiasTrabalhados := TFDiasTrabalhados.Create(Self);
    FDiasTrabalhados.ShowModal;
    FreeAndNil(FDiasTrabalhados);
end;

procedure TFPrincipal.actDiasTrabPorHoraExecute(Sender: TObject);
begin
{FDiasTrabPorHora := TFDiasTrabPorHora.Create(Self);
FDiasTrabPorHora.ShowModal;
FreeAndNil(FDiasTrabPorHora);}
end;

procedure TFPrincipal.actEntradaSaidaVeiculosExecute(Sender: TObject);
begin
  FEntradaSaidaVeiculos := TFEntradaSaidaVeiculos.Create(Self);
  FEntradaSaidaVeiculos.ShowModal;
  FreeAndNil(FEntradaSaidaVeiculos);
end;

procedure TFPrincipal.actEntradaVeicObsMotExecute(Sender: TObject);
begin
  FEntradaVeicObsMot := TFEntradaVeicObsMot.Create(Self);
  FEntradaVeicObsMot.ShowModal;
  FreeAndNil(FEntradaVeicObsMot);
end;

procedure TFPrincipal.actHoras_TrabExecute(Sender: TObject);
begin
  FLancarHoras_Trab := TFLancarHoras_Trab.Create(Self);
  FLancarHoras_Trab.ShowModal;
  FreeAndNil(FLancarHoras_Trab);
end;

procedure TFPrincipal.actIdentificacaoCondutoresInfraExecute(Sender: TObject);
begin
  FInfracoesIdentificar := TFInfracoesIdentificar.Create(Self);
  FInfracoesIdentificar.ShowModal;
  FreeAndNil(FInfracoesIdentificar);
end;

procedure TFPrincipal.actLancaManutencoesExecute(Sender: TObject);
begin
   FLancaManutencao := TFLancaManutencao.Create(Self);
   FLancaManutencao.ShowModal;
   FreeAndNil(FLancaManutencao);
end;

procedure TFPrincipal.actLancamentoInfracoesExecute(Sender: TObject);
begin
  FConsInfracoesMov := TFConsInfracoesMov.Create(Self);
  FConsInfracoesMov.ShowModal;
  FreeAndNil(FInfracoesMov);
end;

procedure TFPrincipal.actLogMonitoramentoVeiculosExecute(Sender: TObject);
begin
  FLogMonitoramentoVeiculos := TFLogMonitoramentoVeiculos.Create(Self);
  FLogMonitoramentoVeiculos.ShowModal;
  FreeAndNil(FLogMonitoramentoVeiculos);
end;

procedure TFPrincipal.actRelacaoCargasExecute(Sender: TObject);
begin
  FRelacaoCargas := TFRelacaoCargas.Create(Self);
  FRelacaoCargas.ShowModal;
  FreeAndNil(FRelacaoCargas);
end;

procedure TFPrincipal.actRelacaoComissoesExecute(Sender: TObject);
begin
  FRelacaoComissoes := TFRelacaoComissoes.Create(Self);
  FRelacaoComissoes.ShowModal;
  FreeAndNil(FRelacaoComissoes);
end;

procedure TFPrincipal.actRelacaoEntrada_SaidaExecute(Sender: TObject);
begin
  FRelacaoEntrada_Saida := TFRelacaoEntrada_Saida.Create(Self);
  FRelacaoEntrada_Saida.ShowModal;
  FreeAndNil(FRelacaoEntrada_Saida);
end;

procedure TFPrincipal.actRelacaoManutencoesExecute(Sender: TObject);
begin
  FRelacaoManutencoes := TFRelacaoManutencoes.Create(Self);
  FRelacaoManutencoes.ShowModal;
  FreeAndNil(FRelacaoManutencoes);
end;

procedure TFPrincipal.actRelacaoManutencoesPeriodicasExecute(Sender: TObject);
begin
  FRelacaoManutencoesPeriodicas := TFRelacaoManutencoesPeriodicas.Create(Self);
  FRelacaoManutencoesPeriodicas.ShowModal;
  FreeAndNil(FRelacaoManutencoesPeriodicas);
end;

procedure TFPrincipal.actResumoGeralExecute(Sender: TObject);
begin
    FResumoGeral := TFResumoGeral.Create(Self);
    FResumoGeral.ShowModal;
    FreeAndNil(FResumoGeral);
end;

procedure TFPrincipal.actSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.actTanqueCombustivelExecute(Sender: TObject);
begin
  FTanqueCombustivel := TFTanqueCombustivel.Create(Self);
  FTanqueCombustivel.ShowModal;
  FreeAndNil(FTanqueCombustivel);
end;

procedure TFPrincipal.actVeiculosMonitorarExecute(Sender: TObject);
begin
  FVeiculosMonitorar := TFVeiculosMonitorar.Create(Self);
  FVeiculosMonitorar.ShowModal;
  FreeAndNil(FVeiculosMonitorar);
end;

procedure TFPrincipal.actVencimentoCNHExecute(Sender: TObject);
begin
  FVencimentoCNH := TFVencimentoCNH.Create(Self);
  FVencimentoCNH.ShowModal;
  FreeAndNil(FVencimentoCNH);
end;

procedure TFPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
  var Msg : string;
begin
if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
   begin
     Msg:='A Data informada é inválida';
     Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
   end;

  if Pos(UpperCase('MySQL server has gone away'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Falha na conexão com WebService';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('invalid input value'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Valor informado inválido';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Hora informada inválida';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('violation of foreign key'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Este registro está sendo referênciado por outro lançamento e não poderá ser excluído';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;

  if Pos(UpperCase('is not a valid integer value'), UpperCase(E.Message)) <> 0 then
     begin
       Msg:='Este não é um valor válido';
       Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING+MB_OK);
     end;
end;

procedure TFPrincipal.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
  var vnHorM,vnHorT : TTime;
begin
   if vaCategUsu = 'PORTARIA' then
      begin
        vnHorM := DmFire.CadConfig_GeralHOR_LOGOF_PORTARIA_M.Value;
        vnHorT := DmFire.CadConfig_GeralHOR_LOGOF_PORTARIA_T.Value;
        if TimeToStr(vnHorM) = TimeToStr(Time) then
           begin
              Application.MessageBox('O sistema será finalizado para a troca de usuário', 'Atenção', MB_ICONWARNING+MB_OK);
              Application.Terminate;
           end
        else
        if TimeToStr(vnHorT) = TimeToStr(Time) then
           begin
              Application.MessageBox('O sistema será finalizado para a troca de usuário', 'Atenção', MB_ICONWARNING+MB_OK);
              Application.Terminate;
           end;

      end;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var Handle: THandle;
begin
  IdIPWatch1.HistoryEnabled := FALSE;
  IdIPWatch1.Active := TRUE;

 Handle := CreateMutex(nil, False, PChar(Application.Title));
  if WaitForSingleObject(Handle, 0) = wait_TimeOut then begin  //o restante é validado no onshow
     vaSistemaEmUso := 'S';
  end
ELSE
   begin
     vaSistemaEmUso := 'N';
   end;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
var vaCaminhoBanco : string;
    ArqIni : TIniFile;
    I,II : Integer;
    vaTempConsLog : string;
    vaSenha : string;
    vaVersaoExe : string;
    vnDia,vnMes,vnAno : Word;
    vaCaminhoEx : string;
begin

  if vaSistemaEmUso = 'S' then
     begin
        if Application.MessageBox('Programa já está em uso, abrir uma nova instância?', 'Aviso', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
          Begin

              PostMessage(Handle, InputBoxMessage, 0, 0); //para abrir um input com senha
               vaSenha := InputBox('Senha para abrir uma nova instância', 'Digite a senha', '');

                if vaSenha = '1483' then
                   begin

                   end
                else
                   begin
                       MessageDlg('Senha incorreta!!', mtError, [mbOk], 0);
                       Application.Terminate;
                       exit;
                   end;
          End
        else
          begin
             Application.Terminate;
             exit;
          end;
     end;

   vaCaminhoEx := ExtractFilePath(Application.ExeName);
   vaCaminhoEx := Copy(vaCaminhoEx,0,14);

  if FileExists(vaCaminhoEx+'conf.ini') then
     begin
        ArqIni := TIniFile.Create(vaCaminhoEx+'conf.ini');
        vaCaminhoBanco := ArqIni.ReadString('CAMINHO_BANCO','CAMINHO',vaCaminhoBanco);
        vaCaminhoFotos := ArqIni.ReadString('CAMINHO_FOTOS','CAMINHO',vaCaminhoFotos);
        vaTempConsLog := ArqIni.ReadString('CONF_GERAL','TEMPO_CONS_lOG',vaTempConsLog);
        vnTempConsLog := 60000 * StrToInt(vaTempConsLog);
        ArqIni.Free;
     end
  else
     begin
       ArqIni := TIniFile.Create(vaCaminhoEx+'conf.ini');
       ArqIni.WriteString('CAMINHO_BANCO','CAMINHO',vaCaminhoEx+'Banco\BANCO.FDB');
       ArqIni.WriteString('CAMINHO_FOTOS','CAMINHO',vaCaminhoEx+'FotosTransLider');
       ArqIni.WriteString('CONF_GERAL','TEMPO_CONS_lOG','10');
       vaCaminhoBanco := vaCaminhoEx+'Banco\BANCO.FDB';
       vaCaminhoFotos := vaCaminhoEx+'FotosTransLider';
       vnTempConsLog := 2 * 60000;
       ArqIni.Free;
     end;

 {if FileExists('C:\TransLider\conf.ini') then
     begin
        ArqIni := TIniFile.Create('C:\TransLider\conf.ini');
        vaCaminhoBanco := ArqIni.ReadString('CAMINHO_BANCO','CAMINHO',vaCaminhoBanco);
        vaCaminhoFotos := ArqIni.ReadString('CAMINHO_FOTOS','CAMINHO',vaCaminhoFotos);
        vaTempConsLog := ArqIni.ReadString('CONF_GERAL','TEMPO_CONS_lOG',vaTempConsLog);
        vnTempConsLog := 60000 * StrToInt(vaTempConsLog);
        ArqIni.Free;
     end
  else
     begin
       ArqIni := TIniFile.Create('C:\TransLider\conf.ini');
       ArqIni.WriteString('CAMINHO_BANCO','CAMINHO','C:\TransLider\Banco\BANCO.FDB');
       ArqIni.WriteString('CAMINHO_FOTOS','CAMINHO','C:\TransLider\FotosTransLider');
       ArqIni.WriteString('CONF_GERAL','TEMPO_CONS_lOG','10');
       vaCaminhoBanco := 'C:\TransLider\Banco\BANCO.FDB';
       vaCaminhoFotos := 'C:\TransLider\FotosTransLider';
       vnTempConsLog := 2 * 60000;
       ArqIni.Free;
     end;}

  try
     DmFire.Banco.DatabaseName := vaCaminhoBanco;
   except
     Application.MessageBox('Não foi possível conectar ao banco de dados','Atenção', MB_ICONWARNING+MB_OK);
   end;

   try
     DmFire.Banco.Connected := True;
   except
     Application.MessageBox('Não foi possível conectar ao banco de dados','Atenção', MB_ICONWARNING+MB_OK);
   end;

   StatusBar.Panels[5].Text := 'Conectado ->'+vaCaminhoBanco;
   DecodeDate(date,vnAno,vnMes,vnDia);

  //VALIDA SE EXISTE CHAVE EM ABERTO PARA O MES
  if vnDia >= 10 then
     begin
       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT * FROM CHAVE_ACESSO');
       DmFire.ConsSql.SQL.Add(' WHERE');
       DmFire.ConsSql.SQL.Add(' MES = :MES AND');
       DmFire.ConsSql.SQL.Add(' ANO = :ANO AND');
       DmFire.ConsSql.SQL.Add(' SITCHA = ''A''');
       DmFire.ConsSql.ParamByName('MES').Value := vnMes;
       DmFire.ConsSql.ParamByName('ANO').Value := vnAno;
       DmFire.ConsSql.Open;
       if not DmFire.ConsSql.IsEmpty then
          begin
            FValidaChave := TFValidaChave.Create(Self);
            FValidaChave.edtMes.Value := vnMes;
            FValidaChave.edtAno.Value := vnAno;
            FValidaChave.ShowModal;
            FreeAndNil(FValidaChave);
          end;
     end;

   FLogin := TFLogin.Create(Self);
   FLogin.ShowModal;
   FreeAndNil(FLogin);

   II := ActionManeger.ActionCount;
     for I := 0 to II - 1 do
         begin
            DmFire.ConsSql.Close;
            DmFire.ConsSql.SQL.Clear;
            DmFire.ConsSql.SQL.Add('select USUPERMISSOES.NOMACT, usupermissoes.in_liberado');
            DmFire.ConsSql.SQL.Add(' FROM USUPERMISSOES');
            DmFire.ConsSql.SQL.Add(' WHERE');
            DmFire.ConsSql.SQL.Add(' NOMACT LIKE '+QuotedStr(TAction(ActionManeger.Actions[I]).Name));
            DmFire.ConsSql.SQL.Add(' AND CODUSU = :CODUSU');
            DmFire.ConsSql.SQL.Add(' AND usupermissoes.in_liberado = ''S''');
            DmFire.ConsSql.ParamByName('CODUSU').Value := FPrincipal.vnCodUsu;
            DmFire.ConsSql.Open;
            if DmFire.ConsSql.IsEmpty then
               begin
                 TAction(ActionManeger.Actions[I]).Enabled := false;
               end
            else
               begin
                  TAction(ActionManeger.Actions[I]).Enabled := true;
               end;
         end;


         DmFire.CadConfig_Geral.Close;
         DmFire.CadConfig_Geral.ParamByName('codconfig').Value := 1;
         DmFire.CadConfig_Geral.Open;


         tmrAbreInformacoesGerais.Enabled := True;

         vaVersaoExe := VersaoExe;
         StatusBar.Panels[0].Text := 'Versão:  '+vaVersaoExe;
end;

procedure TFPrincipal.IdIPWatch1StatusChanged(Sender: TObject);
begin
  if IdIPWatch1.ForceCheck then
     begin
       //StatusBar.Panels[5].Text := 'Rede Local -> Conectado';
     end
  else
    begin
      StatusBar.Panels[5].Text := 'Rede Local -> Desconectado';
      Application.MessageBox('Sua conexão com a rede caiu. O Sistema será finalizado!','Aviso',MB_OK+MB_ICONWARNING);
      Application.Terminate;
    end;
end;

procedure TFPrincipal.tmr1Timer(Sender: TObject);
var variavel_string : string;
begin

case DayOfWeek( Date ) of
  1: variavel_string := 'Domingo';
  2: variavel_string := 'Segunda-Feira';
  3: variavel_string := 'Terça-Feira';
  4: variavel_string := 'Quarta-Feira';
  5: variavel_string := 'Quinta-Feira';
  6: variavel_string := 'Sexta-Feira';
  7: variavel_string := 'Sábado';
end;

StatusBar.Panels[1].Text := variavel_string;
StatusBar.Panels[2].Text := DateToStr(Date);
StatusBar.Panels[3].Text := TimeToStr(time);

end;

procedure TFPrincipal.tmrAbreInformacoesGeraisTimer(Sender: TObject);
begin
  if vaAtivaLembrete = 'SIM' then
     begin
        tmrAbreInformacoesGerais.Enabled := false;
        FResumoGeral := TFResumoGeral.Create(Self);
        FResumoGeral.ShowModal;
        FreeAndNil(FResumoGeral);
        tmrConsLogEntradaSaida.Interval := vnTempConsLog;
        tmrConsLogEntradaSaida.Enabled := True;//ativa a consulta de logs de entrada/saida
     end
  else
     begin
        tmrAbreInformacoesGerais.Enabled := false;
     end;

end;

procedure TFPrincipal.tmrConsLogEntradaSaidaTimer(Sender: TObject);
begin
    {**********************************************
       CONSULTA O LOG DE MONITORAMENTO DE VEICULOS
    ***********************************************}
    DmFire.ConsLogMonitoramento.Close;
    DmFire.ConsLogMonitoramento.Open;
    if DmFire.ConsLogMonitoramento.IsEmpty then
       begin
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

               end
            else
               begin
                 if FResumoGeral = nil then
                    begin
                       FResumoGeral := TFResumoGeral.Create(Self);
                       FResumoGeral.pnlEntradasObservacoes.Color := clAqua;
                       FResumoGeral.ShowModal;
                       FreeAndNil(FResumoGeral);
                    end;
               end;
       end
    else
       begin
          if FResumoGeral = nil then
             begin
                FResumoGeral := TFResumoGeral.Create(Self);
                FResumoGeral.pnlLogMonitoramento.Color := clAqua;
                FResumoGeral.ShowModal;
                FreeAndNil(FResumoGeral);
             end;
       end;



end;

end.
