unit UCadMotoristas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DB, DBCtrls,
  RXDBCtrl, IBCustomDataSet, IBQuery, Buttons, ExtCtrls;

type
  TFCadMotoristas = class(TForm)
    PaginaControle: TPageControl;
    tsCadastro: TTabSheet;
    edtCodMot: TCurrencyEdit;
    lbl1: TLabel;
    DBENOMMOT: TDBEdit;
    dsCadMotoristas: TDataSource;
    dbedtAPEMOT: TDBEdit;
    dbedtRG: TDBEdit;
    dbedtCPF: TDBEdit;
    dbedtCNH: TDBEdit;
    edtDATVENCNH: TDBDateEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dbcbbCATCNH: TDBComboBox;
    lbl11: TLabel;
    dbedtFONE1: TDBEdit;
    dbedtFONE2: TDBEdit;
    dbedtEMAIL: TDBEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    dbedtENDMOT: TDBEdit;
    dbedtNUMEND: TDBEdit;
    dbedtBAIMOT: TDBEdit;
    dbedtCIDMOT: TDBEdit;
    lbl8: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    dbcbbSIGUFS: TDBComboBox;
    dbedtTIPSANG: TDBEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    edtDATNAS: TDBDateEdit;
    edtDATADMI: TDBDateEdit;
    edtDATDEMI: TDBDateEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl19: TLabel;
    dbcbbSITMOT: TDBComboBox;
    lbl20: TLabel;
    dblkcbbCODUSU: TDBLookupComboBox;
    Usuarios: TIBQuery;
    UsuariosCODUSU: TIntegerField;
    UsuariosNOMUSU: TIBStringField;
    UsuariosDESUSU: TIBStringField;
    UsuariosLOGUSU: TIBStringField;
    UsuariosSENUSU: TIBStringField;
    UsuariosDATCAD: TDateField;
    UsuariosSITUSU: TIBStringField;
    dsUsuarios: TDataSource;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    pnl2: TPanel;
    ImgAlu: TImage;
    btnBExcFoto: TBitBtn;
    btnBTirarFoto: TSpeedButton;
    btnBProcuraFoto: TSpeedButton;
    Janela: TOpenDialog;
    lbl21: TLabel;
    lbl22: TLabel;
    dbcbbTIPMOT: TDBComboBox;
    dbcbbLOCALMOT: TDBComboBox;
    Label1: TLabel;
    dbedtVLRCOMFIXA: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dbcbbSITMOTKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dsCadMotoristasStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtCodMotExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBProcuraFotoClick(Sender: TObject);
    procedure btnBTirarFotoClick(Sender: TObject);
    procedure btnBExcFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaOperacao : string;
  end;

var
  FCadMotoristas: TFCadMotoristas;

implementation

uses UDmFire, UPrincipal, UTirarFotoAluno;

{$R *.dfm}

procedure TFCadMotoristas.btnAlterarClick(Sender: TObject);
begin
if not DmFire.CadMotoristas.IsEmpty then
   begin
     DmFire.CadMotoristas.Edit;
   end;
end;

procedure TFCadMotoristas.btnBExcFotoClick(Sender: TObject);
var vaCaminho : string;
begin
   vaCaminho := FPrincipal.vaCaminhoFotos;
if trim(DmFire.CadMotoristasFOTO.AsString) <> '' then
       begin
         if FileExists(DmFire.CadMotoristasFOTO.AsString) then
            begin
              DeleteFile(DmFire.CadMotoristasFOTO.AsString);
              DmFire.CadMotoristasFOTO.AsString := '';
              ImgAlu.Picture := nil;
            end
       end;

end;

procedure TFCadMotoristas.btnBProcuraFotoClick(Sender: TObject);
begin
if Janela.Execute then
  begin
    DmFire.CadMotoristasFOTO.AsString := Janela.FileName;

    ImgAlu.Picture.LoadFromFile(Janela.FileName);
  end;
end;

procedure TFCadMotoristas.btnBTirarFotoClick(Sender: TObject);
var vaCaminho : string;
begin
    FTirarFotoAluno := TFTirarFotoAluno.Create(Self);
    FTirarFotoAluno.ShowModal;
    FreeAndNil(FTirarFotoAluno);

    vaCaminho := FPrincipal.vaCaminhoFotos;

    if trim(DmFire.CadMotoristasFOTO.AsString) <> '' then
       begin//1
         if FileExists(DmFire.CadMotoristasFOTO.AsString) then
            begin//2
              ImgAlu.Picture.LoadFromFile(DmFire.CadMotoristasFOTO.AsString);
            end//2
         else
            begin
              ImgAlu.Picture := nil;
            end;
       end//1
    else
       begin
         ImgAlu.Picture := nil;
       end;
end;

procedure TFCadMotoristas.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadMotoristas.Cancel;
end;

procedure TFCadMotoristas.btnConfirmarClick(Sender: TObject);
begin
 if Trim(DBENOMMOT.Text) = '' then
     begin
       Application.MessageBox('Informe o nome do motorista','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBENOMMOT;
       Abort;
     end;
 if Trim(dbedtAPEMOT.Text) = '' then
     begin
       Application.MessageBox('Informe o apelido do motorista','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtAPEMOT;
       Abort;
     end;
 if Trim(dbedtCNH.Text) = '' then
     begin
       Application.MessageBox('Informe o número da CNH','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtCNH;
       Abort;
     end;
 if Trim(dbcbbCATCNH.Text) = '' then
     begin
       Application.MessageBox('Informe a categoria da CNH','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbCATCNH;
       Abort;
     end;
 if DmFire.CadMotoristasDATVENCNH.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a data de vencimento da CNH','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATVENCNH;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasFONE1.Value) = '' then
     begin
       Application.MessageBox('Informe o telefone','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtFONE1;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasENDMOT.Value) = '' then
     begin
       Application.MessageBox('Informe o endereço','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtENDMOT;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasNUMEND.Value) = '' then
     begin
       Application.MessageBox('Informe o número do endereço','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtNUMEND;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasBAIMOT.Value) = '' then
     begin
       Application.MessageBox('Informe o bairro','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtBAIMOT;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasCIDMOT.Value) = '' then
     begin
       Application.MessageBox('Informe a cidade','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtCIDMOT;
       Abort;
     end;
 if Trim(DmFire.CadMotoristasSIGUFS.Value) = '' then
     begin
       Application.MessageBox('Informe a UF','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbSIGUFS;
       Abort;
     end;
 if DmFire.CadMotoristasDATNAS.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a data de nascimento','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATNAS;
       Abort;
     end;
 if DmFire.CadMotoristasDATADMI.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a data de admissão','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATADMI;
       Abort;
     end;
 if Trim(dbcbbTIPMOT.Text) = '' then
     begin
       Application.MessageBox('Informe o Tipo de Permissão que o motorista terá para dirigir','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dbcbbTIPMOT;
       Abort;
     end;

     if DmFire.CadMotoristasVLRCOMFIXA.Value = 0 then
        DmFire.CadMotoristasVLRCOMFIXA.Value := 0;

     DmFire.CadMotoristas.Post;
     DmFire.ibtTransacao.CommitRetaining;

end;

procedure TFCadMotoristas.btnExcluirClick(Sender: TObject);
begin
       DmFire.CadMotoristas.Close;
       DmFire.CadMotoristas.ParamByName('codmot').AsInteger := edtCodMot.AsInteger;
       DmFire.CadMotoristas.Open;
       if not DmFire.CadMotoristas.IsEmpty then
          begin
            if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
                Begin
                   DmFire.CadMotoristas.Delete;
                   DmFire.ibtTransacao.CommitRetaining;
                   ImgAlu.Picture := nil;
                   Close;
                End;
          end;
end;

procedure TFCadMotoristas.btnNovoClick(Sender: TObject);
begin
  DmFire.CadMotoristas.Open;
  DmFire.CadMotoristas.Insert;
  DmFire.CadMotoristasSITMOT.Value := 'ATIVO';
  DmFire.CadMotoristasLOCALMOT.Value := 'EMPRESA';
  DmFire.CadMotoristasVLRCOMFIXA.Value := 0;
   DmFire.CadMotoristasCODUSU.Value := FPrincipal.vnCodUsu;


   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODMOT) AS CODMOT FROM MOTORISTA');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadMotoristasCODMOT.AsInteger := 1
   else
      DmFire.CadMotoristasCODMOT.AsInteger := DmFire.ConsSql.FieldByName('CODMOT').AsInteger + 1;

   ActiveControl := DBENOMMOT;

   edtCodMot.Value := DmFire.CadMotoristasCODMOT.AsInteger;
   ImgAlu.Picture := nil;
end;

procedure TFCadMotoristas.dbcbbSITMOTKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadMotoristas.dsCadMotoristasStateChange(Sender: TObject);
begin
 if DmFire.CadMotoristas.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       edtCodMot.Enabled := False;
       btnBProcuraFoto.Enabled := True;
       btnBTirarFoto.Enabled := True;
       btnBExcFoto.Enabled := True;
     end
 else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       edtCodMot.Enabled := True;
       btnBProcuraFoto.Enabled := false;
       btnBTirarFoto.Enabled := false;
       btnBExcFoto.Enabled := false;
     end;
end;

procedure TFCadMotoristas.edtCodMotExit(Sender: TObject);
begin
  DmFire.CadMotoristas.Close;
  DmFire.CadMotoristas.ParamByName('CODMOT').Value := edtCodMot.AsInteger;
  DmFire.CadMotoristas.Open;
  if DmFire.CadMotoristas.IsEmpty then
     begin
       Application.MessageBox('Motorista não encontrado','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodMot;
       edtCodMot.Value := 0;
       ImgAlu.Picture := nil;
     end
  else
     begin
       if trim(DmFire.CadMotoristasFOTO.AsString) <> '' then
             begin
               if FileExists(DmFire.CadMotoristasFOTO.AsString) then
                  begin
                    ImgAlu.Picture.LoadFromFile(DmFire.CadMotoristasFOTO.AsString);
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
end;

procedure TFCadMotoristas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadMotoristas.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadMotoristas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadMotoristas.FormShow(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.Open;
  Usuarios.Last;
  Usuarios.First;

  DmFire.CadMotoristas.Close;
  DmFire.CadMotoristas.Open;

  if vaOperacao = 'INSERIR' then
     begin
       btnNovo.Click;
     end;

end;

end.
