unit UCadServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DB, DBCtrls, Grids, DBGrids,
  RXDBCtrl, IBCustomDataSet, IBQuery, Buttons, AppEvnts, pngimage, ExtCtrls;

type
  TFCadServico = class(TForm)
    lbl1: TLabel;
    edtCodSer: TCurrencyEdit;
    dbedtDESSER: TDBEdit;
    dsCadServico: TDataSource;
    lbl2: TLabel;
    dbedtLIMITE_KM: TDBEdit;
    dbedtLIMITE_DIAS: TDBEdit;
    lbl3: TLabel;
    dbcbbIN_PERIODICO: TDBComboBox;
    lblLimiteKm: TLabel;
    lblLimiteDias: TLabel;
    dbcbbIN_REVISAO: TDBComboBox;
    lblExigeRevisao: TLabel;
    dbgRevisoes: TDBGrid;
    lblRevisoes: TLabel;
    dbcbbSITSER: TDBComboBox;
    lbl4: TLabel;
    Usuarios: TIBQuery;
    UsuariosCODUSU: TIntegerField;
    UsuariosNOMUSU: TIBStringField;
    UsuariosDESUSU: TIBStringField;
    UsuariosLOGUSU: TIBStringField;
    UsuariosSENUSU: TIBStringField;
    UsuariosDATCAD: TDateField;
    UsuariosSITUSU: TIBStringField;
    dsUsuarios: TDataSource;
    dblkcbbCODUSU: TDBLookupComboBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    dbtxtDATCAD: TDBText;
    imgCaminhao: TImage;
    dsCadServico_Revisao: TDataSource;
    pnlFocu: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadServicoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure edtCodSerExit(Sender: TObject);
    procedure dbgRevisoesEnter(Sender: TObject);
    procedure dbgRevisoesExit(Sender: TObject);
    procedure dbgRevisoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCadServico_RevisaoStateChange(Sender: TObject);
  private
    { Private declarations }
    vaStatusCadServico_Revisao : TDataSetState;
  public
    { Public declarations }
    vaOperacao : string;
  end;

var
  FCadServico: TFCadServico;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFCadServico.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblLimiteKm.Enabled := dbcbbIN_PERIODICO.Text = 'SIM';
  dbedtLIMITE_KM.Enabled := dbcbbIN_PERIODICO.Text = 'SIM';

  lblLimiteDias.Enabled := dbcbbIN_PERIODICO.Text = 'SIM';
  dbedtLIMITE_DIAS.Enabled := dbcbbIN_PERIODICO.Text = 'SIM';

  dbcbbIN_REVISAO.Visible := dbcbbIN_PERIODICO.Text = 'NAO';
  lblExigeRevisao.Visible := dbcbbIN_PERIODICO.Text = 'NAO';

  lblRevisoes.Enabled := (dbcbbIN_PERIODICO.Text = 'NAO') and (dbcbbIN_REVISAO.Text = 'SIM');

  if (dbcbbIN_REVISAO.Text = 'SIM') and (dbcbbIN_PERIODICO.Text = 'NAO') then
     begin
       {btnNovo.Top := 323;
       btnAlterar.Top := 323;
       btnExcluir.Top := 323;
       btnCancelar.Top := 323;
       btnConfirmar.Top := 323;}
       lblRevisoes.Visible := True;
       dbgRevisoes.Visible := True;
       imgCaminhao.Visible := false;
     end
  else
     begin
       {btnNovo.Top := 176;
       btnAlterar.Top := 176;
       btnExcluir.Top := 176;
       btnCancelar.Top := 176;
       btnConfirmar.Top := 176;}
       lblRevisoes.Visible := false;
       dbgRevisoes.Visible := false;
       imgCaminhao.Visible := True;
     end;


end;

procedure TFCadServico.btnAlterarClick(Sender: TObject);
begin
if not DmFire.CadServico.IsEmpty then
     begin
       DmFire.CadServico.Edit;
     end;
end;

procedure TFCadServico.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadServico.Cancel;
  DmFire.ibtTransacao.Rollback;
  DmFire.CadServico_Revisao.Close;
  edtCodSer.Clear;
end;

procedure TFCadServico.btnConfirmarClick(Sender: TObject);
begin
  if Trim(dbedtDESSER.Text) = '' then
       begin
         Application.MessageBox('Informe a descição do serviço','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := dbedtDESSER;
         Abort;
       end;
  if Trim(dbcbbIN_PERIODICO.Text) = '' then
       begin
         Application.MessageBox('Informe se o serviço é periódico','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := dbcbbIN_PERIODICO;
         Abort;
       end;

  if DmFire.CadServicoIN_PERIODICO.Value = 'SIM' then
     begin
        if (DmFire.CadServicoLIMITE_KM.Value = 0) and (DmFire.CadServicoLIMITE_DIAS.Value = 0) then
           begin
             Application.MessageBox('Informe o limite de Km ou Dias','Atenção', MB_ICONWARNING+MB_OK);
             ActiveControl := dbedtLIMITE_KM;
             Abort;
           end;
     end;

  if DmFire.CadServicoIN_PERIODICO.Value = 'NAO' then
     begin
       if Trim(dbcbbIN_REVISAO.Text) = '' then
          begin
            Application.MessageBox('Informe se exige revisão','Atenção', MB_ICONWARNING+MB_OK);
            ActiveControl := dbcbbIN_REVISAO;
            Abort;
          end;
     end;

   if DmFire.CadServicoIN_PERIODICO.Value = 'SIM' then
     begin
       DmFire.CadServicoIN_REVISAO.Value := 'NAO';
     end;

     if vaStatusCadServico_Revisao in [dsInsert,dsEdit] then
        begin
          DmFire.CadServico_Revisao.Post;
        end;

     DmFire.CadServico.Post;

     //SE EXIGIR REVISAO CONSULTA SE JA EXISTE UM SERVICO(REVISAO) LIGADO A ESTE, SE NAO EXISTIR GERA UM NOVO REGISTRO
     if DmFire.CadServicoIN_REVISAO.Value = 'SIM' then
        begin
          DmFire.ConsSql.Close;
          DmFire.ConsSql.SQL.Clear;
          DmFire.ConsSql.SQL.Add('SELECT SERVICO.CODSER');
          DmFire.ConsSql.SQL.Add(' FROM SERVICO');
          DmFire.ConsSql.SQL.Add(' WHERE');
          DmFire.ConsSql.SQL.Add(' SERVICO.CODSERREV = :CODSERREV');
          DmFire.ConsSql.ParamByName('CODSERREV').Value := DmFire.CadServicoCODSER.AsInteger;
          DmFire.ConsSql.Open;
          if DmFire.ConsSql.IsEmpty then
             begin
                 DmFire.SqlInsertServico.Close;
                 DmFire.SqlInsertServico.SQL.Clear;
                 DmFire.SqlInsertServico.SQL.Add('INSERT INTO SERVICO (CODSER,CODUSU,DESSER,IN_PERIODICO,IN_REVISAO,SITSER,DATCAD,CODSERREV)');
                 DmFire.SqlInsertServico.SQL.Add(' VALUES (:CODSER,:CODUSU,:DESSER,:IN_PERIODICO,:IN_REVISAO,:SITSER,:DATCAD,:CODSERREV)');


                 DmFire.ConsSql.Close;
                 DmFire.ConsSql.SQL.Clear;
                 DmFire.ConsSql.SQL.Add('SELECT MAX(CODSER) AS CODSER FROM SERVICO');
                 DmFire.ConsSql.Open;
                 if DmFire.ConsSql.IsEmpty then
                    DmFire.SqlInsertServico.ParamByName('CODSER').Value := 1
                 else
                    DmFire.SqlInsertServico.ParamByName('CODSER').Value := DmFire.ConsSql.FieldByName('CODSER').AsInteger + 1;

                 DmFire.SqlInsertServico.ParamByName('CODUSU').Value := FPrincipal.vnCodUsu;
                 DmFire.SqlInsertServico.ParamByName('DESSER').Value := 'REVISAO / '+DmFire.CadServicoDESSER.AsString;
                 DmFire.SqlInsertServico.ParamByName('IN_PERIODICO').Value := 'NAO';
                 DmFire.SqlInsertServico.ParamByName('IN_REVISAO').Value := 'NAO';
                 DmFire.SqlInsertServico.ParamByName('SITSER').Value := 'ATIVO';
                 DmFire.SqlInsertServico.ParamByName('DATCAD').Value := Date;
                 DmFire.SqlInsertServico.ParamByName('CODSERREV').Value := DmFire.CadServicoCODSER.AsInteger;
                 DmFire.SqlInsertServico.ExecSQL;
             end;
        end;

     DmFire.ibtTransacao.CommitRetaining;
end;

procedure TFCadServico.btnExcluirClick(Sender: TObject);
begin
if not DmFire.CadServico.IsEmpty then
     begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
               DmFire.ConsSql.Close;
               DmFire.ConsSql.SQL.Clear;
               DmFire.ConsSql.SQL.Add('DELETE FROM SERVICO_REVISAO WHERE CODSER = :CODSER');
               DmFire.ConsSql.ParamByName('CODSER').AsInteger := DmFire.CadServicoCODSER.AsInteger;
               DmFire.ConsSql.ExecSQL;

               DmFire.CadServico.Delete;
               DmFire.ibtTransacao.CommitRetaining;
               Close;
            End;
     end;
end;

procedure TFCadServico.btnNovoClick(Sender: TObject);
begin
  DmFire.CadServico.Open;
  DmFire.CadServico.Insert;

   DmFire.CadServicoCODUSU.Value := FPrincipal.vnCodUsu;
   DmFire.CadServicoDATCAD.Value := Date;
   DmFire.CadServicoSITSER.Value := 'ATIVO';
   DmFire.CadServicoCODSERREV.Value := 0;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODSER) AS CODSER FROM SERVICO');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadServicoCODSER.AsInteger := 1
   else
      DmFire.CadServicoCODSER.AsInteger := DmFire.ConsSql.FieldByName('CODSER').AsInteger + 1;

  edtCodSer.AsInteger := DmFire.CadServicoCODSER.AsInteger;
   ActiveControl := dbedtDESSER;

   DmFire.CadServico_Revisao.Close;
   DmFire.CadServico_Revisao.ParamByName('CODSER').AsInteger := DmFire.CadServicoCODSER.AsInteger;
   DmFire.CadServico_Revisao.Open;
end;

procedure TFCadServico.dbgRevisoesEnter(Sender: TObject);
begin
KeyPreview := False;
end;

procedure TFCadServico.dbgRevisoesExit(Sender: TObject);
begin
KeyPreview := True;
end;

procedure TFCadServico.dbgRevisoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    dbgRevisoes.SelectedIndex := dbgRevisoes.SelectedIndex + 1;
end;

procedure TFCadServico.dsCadServicoStateChange(Sender: TObject);
begin
if DmFire.CadServico.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       edtCodSer.Enabled := False;
       dbgRevisoes.ReadOnly := False;
     end
 else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       edtCodSer.Enabled := True;
       dbgRevisoes.ReadOnly := True;
     end;
end;

procedure TFCadServico.dsCadServico_RevisaoStateChange(Sender: TObject);
begin
  vaStatusCadServico_Revisao := DmFire.CadServico_Revisao.State;
end;

procedure TFCadServico.edtCodSerExit(Sender: TObject);
begin
  if edtCodSer.Value <> 0 then
     begin
        DmFire.CadServico.Close;
        DmFire.CadServico.ParamByName('CODSER').Value := edtCodSer.AsInteger;
        DmFire.CadServico.Open;
        if DmFire.CadServico.IsEmpty then
           begin
             Application.MessageBox('Serviço não encontrado','Atenção', MB_ICONWARNING+MB_OK);
             ActiveControl := edtCodSer;
             edtCodSer.Value := 0;
             DmFire.CadServico_Revisao.Close;
           end
        else
           begin
             DmFire.CadServico_Revisao.Close;
             DmFire.CadServico_Revisao.ParamByName('CODSER').AsInteger := DmFire.CadServicoCODSER.AsInteger;
             DmFire.CadServico_Revisao.Open;

             ActiveControl := nil;
           end;
     end;
end;

procedure TFCadServico.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if (DmFire.CadServico.State in [dsinsert,dsedit]) or (DmFire.CadServico_Revisao.State in [dsInsert,dsEdit]) then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadServico.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadServico.FormShow(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.Open;
  Usuarios.Last;
  Usuarios.First;

  DmFire.CadServico.Close;
  DmFire.CadServico.Open;
  DmFire.CadServico.Close;

  if vaOperacao = 'INSERIR' then
     begin
       btnNovo.Click;
     end
  else
  if vaOperacao = 'CONSULTA' then
     begin
       edtCodSerExit(Sender);
       ActiveControl := pnlFocu;
     end;
end;

end.
