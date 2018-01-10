unit UInfracoesCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, Buttons, ExtCtrls;

type
  TFInfracoesCad = class(TForm)
    lbl1: TLabel;
    dbedtCODINFRA: TDBEdit;
    dsCadInfracoesCad: TDataSource;
    dbedtDESINFRA: TDBEdit;
    dbedtOBSINFRA: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    dbcbbRESPONSABILIDADE: TDBComboBox;
    lbl4: TLabel;
    lbl5: TLabel;
    dbcbbGRAVIDADE: TDBComboBox;
    lbl6: TLabel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    dbcbbQTD_PONTOS: TDBComboBox;
    pnl1: TPanel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsCadInfracoesCadStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbedtCODINFRAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInfracoesCad: TFInfracoesCad;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFInfracoesCad.btnAlterarClick(Sender: TObject);
begin
  if not DmFire.CadInfracoesCad.IsEmpty then
   begin
     DmFire.CadInfracoesCad.Edit;
   end;
end;

procedure TFInfracoesCad.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadInfracoesCad.Cancel;
end;

procedure TFInfracoesCad.btnConfirmarClick(Sender: TObject);
begin

   if (Trim(DmFire.CadInfracoesCadCODINFRA.Value) = '') and (DmFire.CadInfracoesCad.State in [dsInsert]) then
     begin
       Application.MessageBox('Informe o código da infração','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtCODINFRA;
       Abort;
     end;

  if Trim(DmFire.CadInfracoesCadDESINFRA.Value) = '' then
     begin
       Application.MessageBox('Informe a descição da infralção','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtDESINFRA;
       Abort;
     end;

  if Trim(dbcbbQTD_PONTOS.Text) = '' then
     begin
       Application.MessageBox('Informe a quantidade de pontos','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbQTD_PONTOS;
       Abort;
     end;

  if Trim(DmFire.CadInfracoesCadRESPONSABILIDADE.Value) = '' then
     begin
       Application.MessageBox('Informe a responsabilidade da infralção','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbRESPONSABILIDADE;
       Abort;
     end;

  if Trim(DmFire.CadInfracoesCadGRAVIDADE.Value) = '' then
     begin
       Application.MessageBox('Informe a gravidade da infralção','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbGRAVIDADE;
       Abort;
     end;

  if DmFire.CadInfracoesCad.State in [dsInsert] then
     begin
       DmFire.ConsSql.Close;
       DmFire.ConsSql.SQL.Clear;
       DmFire.ConsSql.SQL.Add('SELECT infracoes_cad.codinfra, infracoes_cad.desinfra FROM infracoes_cad');
       DmFire.ConsSql.SQL.Add(' WHERE CODINFRA = '+QuotedStr(DmFire.CadInfracoesCadCODINFRA.Value));
       DmFire.ConsSql.Open;
       if not DmFire.ConsSql.IsEmpty then
          begin
            Application.MessageBox(PChar('A Infração: '+DmFire.ConsSql.FieldByName('DESINFRA').AsString+'  já está cadastrada com este código'),'Atenção', MB_ICONWARNING+MB_OK);
            Abort;
          end;
     end;

  DmFire.CadInfracoesCad.Post;
  DmFire.ibtTransacao.CommitRetaining;

end;

procedure TFInfracoesCad.btnExcluirClick(Sender: TObject);
begin
if not DmFire.CadInfracoesCad.IsEmpty then
     begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
               DmFire.CadInfracoesCad.Delete;
               DmFire.ibtTransacao.CommitRetaining;
               Close;
            End;
     end;
end;

procedure TFInfracoesCad.btnNovoClick(Sender: TObject);
begin
DmFire.CadInfracoesCad.Open;
DmFire.CadInfracoesCad.Insert;
DmFire.CadInfracoesCadDATCAD.Value := Date;
DmFire.CadInfracoesCadCODUSU.Value := FPrincipal.vnCodUsu;

ActiveControl := dbedtCODINFRA;
end;

procedure TFInfracoesCad.dbedtCODINFRAKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '-' then
   begin
     Key := #0;
   end;
end;

procedure TFInfracoesCad.dsCadInfracoesCadStateChange(Sender: TObject);
begin
    if DmFire.CadInfracoesCad.State in [dsInsert,dsEdit] then
       begin
         btnNovo.Enabled := False;
         btnExcluir.Enabled := False;
         btnAlterar.Enabled := false;
         btnConfirmar.Enabled := True;
         btnCancelar.Enabled := True;

       end
    else
       begin
          btnNovo.Enabled := true;
          btnExcluir.Enabled := true;
          btnAlterar.Enabled := true;
          btnConfirmar.Enabled := false;
          btnCancelar.Enabled := false;
       end;

    if DmFire.CadInfracoesCad.State in [dsInsert] then
       begin
         dbedtCODINFRA.Enabled := True;
       end
    else
       begin
         dbedtCODINFRA.Enabled := false;
       end;
end;

procedure TFInfracoesCad.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadInfracoesCad.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFInfracoesCad.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFInfracoesCad.FormShow(Sender: TObject);
begin
  ActiveControl := pnl1;
end;

end.
