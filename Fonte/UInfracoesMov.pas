unit UInfracoesMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, rxToolEdit, RXDBCtrl, Buttons,
  IBCustomDataSet, IBQuery, AppEvnts;

type
  TFInfracoesMov = class(TForm)
    lbl1: TLabel;
    dbedtAUTOINFRA: TDBEdit;
    dsCadInfracoesMov: TDataSource;
    lbl2: TLabel;
    dbedtHORINFRA: TDBEdit;
    dbedtLOCAL_INFRA: TDBEdit;
    dbedtCID_INFRA: TDBEdit;
    dbedtSIGUFS: TDBEdit;
    dbedtVLRINFRA: TDBEdit;
    dbedtVLRINFRADESC: TDBEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dblkcbbCODINFRA: TDBLookupComboBox;
    dblkcbbCODVEI: TDBLookupComboBox;
    dblkcbbCODMOT: TDBLookupComboBox;
    lbl4: TLabel;
    lbl3: TLabel;
    imgCondutor: TImage;
    lbl18: TLabel;
    dbmmoOBSINFRA: TDBMemo;
    lblCONDUTOR_CONF: TLabel;
    dbcbbCONDUTOR_CONF: TDBComboBox;
    dbcbbENVIO_CONF: TDBComboBox;
    lblDATVCT_CONDUT: TLabel;
    edtDATVCT_CONDUT: TDBDateEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edtDATVCT: TDBDateEdit;
    lblENVIO_CONF: TLabel;
    lblDATENVIO: TLabel;
    edtDATENVIO: TDBDateEdit;
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
    dsVeiculos: TDataSource;
    Infracoes: TIBQuery;
    dsInfracoes: TDataSource;
    InfracoesCODINFRA: TIBStringField;
    InfracoesDESINFRA: TIBStringField;
    InfracoesQTD_PONTOS: TIntegerField;
    dsReserva: TDataSource;
    edtDATINFRA: TDBDateEdit;
    lblIN_CONDUTOR: TLabel;
    dbcbbIN_CONDUTOR: TDBComboBox;
    ApplicationEvents1: TApplicationEvents;
    pnl1: TPanel;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    dblkcbbCODINFRA1: TDBLookupComboBox;
    procedure dblkcbbCODMOTCloseUp(Sender: TObject);
    procedure dblkcbbCODMOTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure dsCadInfracoesMovStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbmmoOBSINFRAKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsCadInfracoesMovDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    vaOperacao : string;
  end;

var
  FInfracoesMov: TFInfracoesMov;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFInfracoesMov.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  lblCONDUTOR_CONF.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';
  dbcbbCONDUTOR_CONF.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';

  lblDATVCT_CONDUT.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';
  edtDATVCT_CONDUT.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';

  lblENVIO_CONF.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';
  dbcbbENVIO_CONF.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';

  lblDATENVIO.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';
  edtDATENVIO.Enabled := dbcbbIN_CONDUTOR.Text = 'NAO';


end;

procedure TFInfracoesMov.btnAlterarClick(Sender: TObject);
begin
  if not DmFire.CadInfracoesMov.IsEmpty then
     begin
       DmFire.CadInfracoesMov.Edit;
     end;
end;

procedure TFInfracoesMov.btnCancelarClick(Sender: TObject);
begin
if DmFire.CadInfracoesMov.State in [dsInsert] then
   begin
     DmFire.CadInfracoesMov.Cancel;
     Close;
   end
else
   begin
     DmFire.CadInfracoesMov.Cancel;
   end;
end;

procedure TFInfracoesMov.btnConfirmarClick(Sender: TObject);
begin
  if Trim(DmFire.CadInfracoesMovAUTOINFRA.Value) = '' then
     begin
       Application.MessageBox('Informe o auto da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtAUTOINFRA;
       Abort;
     end;
  if DmFire.CadInfracoesMovCODINFRA.AsInteger = 0 then
     begin
       Application.MessageBox('Informe a infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODINFRA;
       Abort;
     end;
  if DmFire.CadInfracoesMovDATINFRA.Value = 0 then
     begin
       Application.MessageBox('Informe a data da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATINFRA;
       Abort;
     end;
  if DmFire.CadInfracoesMovHORINFRA.Value = 0 then
     begin
       Application.MessageBox('Informe a hora da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtHORINFRA;
       Abort;
     end;
  if Trim(DmFire.CadInfracoesMovLOCAL_INFRA.Value) = '' then
     begin
       Application.MessageBox('Informe o local da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtLOCAL_INFRA;
       Abort;
     end;
  if Trim(DmFire.CadInfracoesMovCID_INFRA.Value) = '' then
     begin
       Application.MessageBox('Informe a cidade da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtCID_INFRA;
       Abort;
     end;
  if Trim(DmFire.CadInfracoesMovSIGUFS.Value) = '' then
     begin
       Application.MessageBox('Informe a UF da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtSIGUFS;
       Abort;
     end;
  if Trim(DmFire.CadInfracoesMovIN_CONDUTOR.Value) = '' then
     begin
       Application.MessageBox('Informe se a infração veio com condutor já informado','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbIN_CONDUTOR;
       Abort;
     end;
  if DmFire.CadInfracoesMovCODVEI.Value = 0 then
     begin
       Application.MessageBox('Informe o veículo','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODVEI;
       Abort;
     end;
  if DmFire.CadInfracoesMovCODMOT.Value = 0 then
     begin
       Application.MessageBox('Informe o condutor','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODMOT;
       Abort;
     end;

  if Trim(DmFire.CadInfracoesMovIN_CONDUTOR.Value) = 'NAO' then
     begin
        if Trim(DmFire.CadInfracoesMovCONDUTOR_CONF.Value) = '' then
           begin
             Application.MessageBox('Informe se já está assinado a identificação','Atenção', MB_ICONWARNING+MB_OK);
             ActiveControl := dbcbbCONDUTOR_CONF;
             Abort;
           end;

        if (Trim(DmFire.CadInfracoesMovCONDUTOR_CONF.Value) = 'NAO') and (DmFire.CadInfracoesMovDATVCT_CONDUT.Value = 0) then
           begin
              Application.MessageBox('Informe o prazo para  identificação','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := edtDATVCT_CONDUT;
              Abort;
           end;

        if (Trim(DmFire.CadInfracoesMovCONDUTOR_CONF.Value) = 'SIM') and (Trim(DmFire.CadInfracoesMovENVIO_CONF.Value) = '') then
           begin
              Application.MessageBox('Informe se já foi enviado para correio','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := dbcbbENVIO_CONF;
              Abort;
           end;

        if (DmFire.CadInfracoesMovENVIO_CONF.Value = 'SIM') and (DmFire.CadInfracoesMovDATENVIO.Value = 0) then
            begin
               Application.MessageBox('Informe  a data do envio para o correio','Atenção', MB_ICONWARNING+MB_OK);
              ActiveControl := edtDATENVIO;
              Abort;
            end;
     end;

  if DmFire.CadInfracoesMov.State IN [dsInsert] then
     begin

       //valida se ja nao existe infração lançada com o mesmo auto.
       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('select * FROM infracoes_mov WHERE infracoes_mov.autoinfra = '+QuotedStr(DmFire.CadInfracoesMovAUTOINFRA.AsString));
       DmFire.ConsSql.Open;
       if not DmFire.ConsSql.IsEmpty then
          begin
             Application.MessageBox('Já existe uma infração lançada com o mesmo Auto de Infração','Aviso',+MB_ICONWARNING+MB_OK);
             Abort;
          end;

       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT MAX(SEQINFRA) AS SEQINFRA FROM INFRACOES_MOV');
       DmFire.ConsSql.Open;
       if DmFire.ConsSql.IsEmpty then
          DmFire.CadInfracoesMovSEQINFRA.AsInteger := 1
       else
          DmFire.CadInfracoesMovSEQINFRA.AsInteger := DmFire.ConsSql.FieldByName('SEQINFRA').AsInteger + 1;

     end;

  DmFire.CadInfracoesMov.Post;
  DmFire.ibtTransacao.CommitRetaining;
end;

procedure TFInfracoesMov.btnExcluirClick(Sender: TObject);
begin
if not DmFire.CadInfracoesMov.IsEmpty then
     begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
               DmFire.CadInfracoesMov.Delete;
               DmFire.ibtTransacao.CommitRetaining;
               Close;
            End;
     end;
end;

procedure TFInfracoesMov.dblkcbbCODMOTCloseUp(Sender: TObject);
begin
  if trim(dblkcbbCODMOT.Text) <> '' then
     begin
       if FileExists(MotoristasFOTO.Value) then
          begin
            imgCondutor.Picture.LoadFromFile(MotoristasFOTO.Value);
          end
       else
          begin
            imgCondutor.Picture := nil;
          end;
     end
  else
     begin
       imgCondutor.Picture := nil;
     end;
end;

procedure TFInfracoesMov.dblkcbbCODMOTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if trim(dblkcbbCODMOT.Text) <> '' then
     begin
       if FileExists(MotoristasFOTO.Value) then
          begin
            imgCondutor.Picture.LoadFromFile(MotoristasFOTO.Value);
          end
       else
          begin
            imgCondutor.Picture := nil;
          end;
     end
  else
     begin
       imgCondutor.Picture := nil;
     end;
end;

procedure TFInfracoesMov.dbmmoOBSINFRAKeyPress(Sender: TObject; var Key: Char);
begin
Key := UpCase(Key);
end;

procedure TFInfracoesMov.dsCadInfracoesMovDataChange(Sender: TObject;
  Field: TField);
begin
   if (dbcbbIN_CONDUTOR.Text = 'SIM') AND (dbcbbIN_CONDUTOR.Enabled = True) then
     dbcbbIN_CONDUTOR.Font.Color := clGreen
   else
    if (dbcbbIN_CONDUTOR.Text = 'NAO') and (dbcbbIN_CONDUTOR.Enabled = True) then
       dbcbbIN_CONDUTOR.Font.Color := clRed;

    if (dbcbbENVIO_CONF.Text = 'SIM') and (dbcbbENVIO_CONF.Enabled = True) then
     dbcbbENVIO_CONF.Font.Color := clGreen
    else
    if (dbcbbENVIO_CONF.Text = 'NAO') and (dbcbbENVIO_CONF.Enabled = True) then
       dbcbbENVIO_CONF.Font.Color := clRed;

    if (dbcbbCONDUTOR_CONF.Text = 'SIM') AND (dbcbbCONDUTOR_CONF.Enabled = True) then
     dbcbbCONDUTOR_CONF.Font.Color := clGreen
    else
    if (dbcbbCONDUTOR_CONF.Text = 'NAO') AND (dbcbbCONDUTOR_CONF.Enabled = True) then
       dbcbbCONDUTOR_CONF.Font.Color := clRed;
end;

procedure TFInfracoesMov.dsCadInfracoesMovStateChange(Sender: TObject);
begin

    if DmFire.CadInfracoesMov.State in [dsInsert,dsEdit] then
       begin
         btnExcluir.Enabled := False;
         btnAlterar.Enabled := false;
         btnConfirmar.Enabled := True;
         btnCancelar.Enabled := True;

       end
    else
       begin
          btnExcluir.Enabled := true;
          btnAlterar.Enabled := true;
          btnConfirmar.Enabled := false;
          btnCancelar.Enabled := false;
       end;

end;

procedure TFInfracoesMov.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadInfracoesMov.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFInfracoesMov.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFInfracoesMov.FormShow(Sender: TObject);
begin


  Infracoes.Close;
  Infracoes.Open;
  Infracoes.Last;
  Infracoes.First;

  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;

  Motoristas.Close;
  Motoristas.Open;
  Motoristas.Last;
  Motoristas.First;

  if vaOperacao = 'VISUALIZAR' then
     begin
      dsCadInfracoesMov.AutoEdit := false;

      dblkcbbCODMOT.DropDown;
      dblkcbbCODMOT.CloseUp(true);

      dsCadInfracoesMov.AutoEdit := true;
     end;

   if (dbcbbIN_CONDUTOR.Text = 'SIM') AND (dbcbbIN_CONDUTOR.Enabled = True) then
     dbcbbIN_CONDUTOR.Font.Color := clGreen
   else
    if (dbcbbIN_CONDUTOR.Text = 'NAO') and (dbcbbIN_CONDUTOR.Enabled = True) then
       dbcbbIN_CONDUTOR.Font.Color := clRed;

    if (dbcbbENVIO_CONF.Text = 'SIM') and (dbcbbENVIO_CONF.Enabled = True) then
     dbcbbENVIO_CONF.Font.Color := clGreen
    else
    if (dbcbbENVIO_CONF.Text = 'NAO') and (dbcbbENVIO_CONF.Enabled = True) then
       dbcbbENVIO_CONF.Font.Color := clRed;

    if (dbcbbCONDUTOR_CONF.Text = 'SIM') AND (dbcbbCONDUTOR_CONF.Enabled = True) then
     dbcbbCONDUTOR_CONF.Font.Color := clGreen
    else
    if (dbcbbCONDUTOR_CONF.Text = 'NAO') AND (dbcbbCONDUTOR_CONF.Enabled = True) then
       dbcbbCONDUTOR_CONF.Font.Color := clRed;

   

end;

end.
