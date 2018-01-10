unit UCadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, Mask, rxToolEdit,
  rxCurrEdit, IBCustomDataSet, IBQuery;

type
  TFCadFornecedor = class(TForm)
    PaginaControle: TPageControl;
    tsCadastro: TTabSheet;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    edtCodFor: TCurrencyEdit;
    lbl1: TLabel;
    DBEDESFOR: TDBEdit;
    dsCadFornecedor: TDataSource;
    DBECPF_CNPJ: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    DBETEL1: TDBEdit;
    DBETEL2: TDBEdit;
    DBEEMAFOR: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    DBEENDFOR: TDBEdit;
    DBENUMEND: TDBEdit;
    DBEBAIFOR: TDBEdit;
    DBECEPFOR: TDBEdit;
    DBECIDFOR: TDBEdit;
    lbl7: TLabel;
    dbcbbSIGUFS: TDBComboBox;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    dbcbbSITFOR: TDBComboBox;
    lbl11: TLabel;
    Usuarios: TIBQuery;
    UsuariosCODUSU: TIntegerField;
    UsuariosNOMUSU: TIBStringField;
    UsuariosDESUSU: TIBStringField;
    UsuariosLOGUSU: TIBStringField;
    UsuariosSENUSU: TIBStringField;
    UsuariosDATCAD: TDateField;
    UsuariosSITUSU: TIBStringField;
    dsUsuarios: TDataSource;
    dbmmoOBSFOR: TDBMemo;
    lbl12: TLabel;
    lbl20: TLabel;
    dblkcbbCODUSU: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadFornecedorStateChange(Sender: TObject);
    procedure dbmmoOBSFORKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtCodForExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaOperacao : string;
  end;

var
  FCadFornecedor: TFCadFornecedor;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFCadFornecedor.btnAlterarClick(Sender: TObject);
begin
if not DmFire.CadFornecedor.IsEmpty then
   begin
     DmFire.CadFornecedor.Edit;
   end;
end;

procedure TFCadFornecedor.btnCancelarClick(Sender: TObject);
begin
DmFire.CadFornecedor.Cancel;
end;

procedure TFCadFornecedor.btnConfirmarClick(Sender: TObject);
begin
if Trim(DmFire.CadFornecedorDESFOR.Value) = '' then
     begin
       Application.MessageBox('Informe a descrição','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBEDESFOR;
       Abort;
     end;
if Trim(DmFire.CadFornecedorTEL1.Value) = '' then
     begin
       Application.MessageBox('Informe o telefone','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBETEL1;
       Abort;
     end;
 if Trim(DmFire.CadFornecedorENDFOR.Value) = '' then
     begin
       Application.MessageBox('Informe o endereço','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBEENDFOR;
       Abort;
     end;
 if Trim(DmFire.CadFornecedorNUMEND.Value) = '' then
     begin
       Application.MessageBox('Informe o número do endereço','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBENUMEND;
       Abort;
     end;
 if Trim(DmFire.CadFornecedorBAIFOR.Value) = '' then
     begin
       Application.MessageBox('Informe o bairro','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBEBAIFOR;
       Abort;
     end;
 if Trim(DmFire.CadFornecedorCIDFOR.Value) = '' then
     begin
       Application.MessageBox('Informe a cidade','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBECIDFOR;
       Abort;
     end;
 if Trim(DmFire.CadFornecedorSIGUFS.Value) = '' then
     begin
       Application.MessageBox('Informe a UF','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbSIGUFS;
       Abort;
     end;

     DmFire.CadFornecedor.Post;
     DmFire.ibtTransacao.CommitRetaining;
end;

procedure TFCadFornecedor.btnExcluirClick(Sender: TObject);
begin
   DmFire.CadFornecedor.Close;
   DmFire.CadFornecedor.ParamByName('CODFOR').AsInteger := edtCodFor.AsInteger;
   DmFire.CadFornecedor.Open;
   if not DmFire.CadFornecedor.IsEmpty then
      begin
        if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin
               DmFire.CadFornecedor.Delete;
               DmFire.ibtTransacao.CommitRetaining;
               Close;
            End;
      end;
end;

procedure TFCadFornecedor.btnNovoClick(Sender: TObject);
begin
   DmFire.CadFornecedor.Open;
   DmFire.CadFornecedor.Insert;
   DmFire.CadFornecedorSITFOR.Value := 'ATIVO';
   DmFire.CadFornecedorCODUSU.Value := FPrincipal.vnCodUsu;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODFOR) AS CODFOR FROM FORNECEDOR');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadFornecedorCODFOR.AsInteger := 1
   else
      DmFire.CadFornecedorCODFOR.AsInteger := DmFire.ConsSql.FieldByName('CODFOR').AsInteger + 1;

   ActiveControl := DBEDESFOR;

   edtCodFor.Value := DmFire.CadFornecedorCODFOR.AsInteger;
end;

procedure TFCadFornecedor.dbmmoOBSFORKeyPress(Sender: TObject; var Key: Char);
begin
  key := UpCase(Key);
end;

procedure TFCadFornecedor.dsCadFornecedorStateChange(Sender: TObject);
begin
if DmFire.CadFornecedor.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       edtCodFor.Enabled := False;
     end
 else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       edtCodFor.Enabled := True;
     end;
end;

procedure TFCadFornecedor.edtCodForExit(Sender: TObject);
begin
  DmFire.CadFornecedor.Close;
  DmFire.CadFornecedor.ParamByName('CODFOR').Value := edtCodFor.AsInteger;
  DmFire.CadFornecedor.Open;
  if DmFire.CadFornecedor.IsEmpty then
     begin
       Application.MessageBox('Fornecedor não encontrado','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodFor;
       edtCodFor.Value := 0;
     end;
end;

procedure TFCadFornecedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadFornecedor.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadFornecedor.FormShow(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.Open;
  Usuarios.Last;
  Usuarios.First;

  DmFire.CadFornecedor.Close;
  DmFire.CadFornecedor.Open;

  if vaOperacao = 'INSERIR' then
     begin
       btnNovo.Click;
     end;
end;

end.
