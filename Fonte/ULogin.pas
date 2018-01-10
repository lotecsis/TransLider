unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls, IniFiles;

type
  TFLogin = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    img1: TImage;
    edtEdLogin: TEdit;
    edtEdSenha: TEdit;
    btnBConfirmaLogin: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnBConfirmaLoginClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCaminhoEx : string;
  end;

var
  FLogin: TFLogin;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFLogin.btnBConfirmaLoginClick(Sender: TObject);
VAR ArqIni : TIniFile;
begin
  if Trim(edtEdLogin.Text) = '' then
     begin
        Application.MessageBox('Informe o Login ','Atenção', MB_ICONWARNING+MB_OK);
        ActiveControl := edtEdLogin;
        Abort;
     end;
  if Trim(edtEdSenha.Text) = '' then
     begin
        Application.MessageBox('Informe a Senha ','Atenção', MB_ICONWARNING+MB_OK);
        ActiveControl := edtEdSenha;
        Abort;
     end;

     DmFire.ValidaLogin.Close;
     DmFire.ValidaLogin.ParamByName('LOGUSU').Value := edtEdLogin.Text;
     DmFire.ValidaLogin.ParamByName('SENUSU').Value := edtEdSenha.Text;
     DmFire.ValidaLogin.Open;
     if DmFire.ValidaLogin.IsEmpty then
        begin
           Application.MessageBox('Login ou Senha inválido ','Atenção', MB_ICONWARNING+MB_OK);
           ActiveControl := edtEdLogin;
           Abort;
        end;


    //GRAVA NO ARQUIVO INI O LOGIN
    vaCaminhoEx := ExtractFilePath(Application.ExeName);
    vaCaminhoEx := Copy(vaCaminhoEx,0,14);
    ArqIni := TIniFile.Create(vaCaminhoEx+'conf.ini');
    //ArqIni := TIniFile.Create('C:\TransLider\conf.ini');
    ArqIni.WriteString('TELA_LOGIN','LOGIN',trim(edtEdLogin.Text));
    ArqIni.Free;

    FPrincipal.vnCodUsu := DmFire.ValidaLoginCODUSU.Value;
    FPrincipal.vaNomUsu := DmFire.ValidaLoginNOMUSU.Value;
    FPrincipal.vaCategUsu := DmFire.ValidaLoginCATUSU.Value;
    FPrincipal.vaAtivaLembrete := DmFire.ValidaLoginIN_LEMBRETE.Value;
    FPrincipal.StatusBar.Panels[4].Text := 'Usuário: '+ DmFire.ValidaLoginNOMUSU.Value+',      Login realizado em: '+DateToStr(Date)+'  '+TimeToStr(Time);
    Close;

end;

procedure TFLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFLogin.FormShow(Sender: TObject);
var ArqIni : TInifile;
    vaLogin : string;
begin
    vaCaminhoEx := ExtractFilePath(Application.ExeName);
    vaCaminhoEx := Copy(vaCaminhoEx,0,14);

       //le o arquivo para carregar o login
       if FileExists(vaCaminhoEx+'conf.ini') then
         begin
            ArqIni := TIniFile.Create(vaCaminhoEx+'conf.ini');
            vaLogin := ArqIni.ReadString('TELA_LOGIN','LOGIN',vaLogin);
            ArqIni.Free;

            edtEdLogin.Text := vaLogin;
         end
      else
         begin
           ArqIni := TIniFile.Create(vaCaminhoEx+'conf.ini');
           ArqIni.WriteString('TELA_LOGIN','LOGIN',trim(edtEdLogin.Text));
           ArqIni.Free;
         end;
      {if FileExists('C:\TransLider\conf.ini') then
         begin
            ArqIni := TIniFile.Create('C:\TransLider\conf.ini');
            vaLogin := ArqIni.ReadString('TELA_LOGIN','LOGIN',vaLogin);
            ArqIni.Free;

            edtEdLogin.Text := vaLogin;
         end
      else
         begin
           ArqIni := TIniFile.Create('C:\TransLider\conf.ini');
           ArqIni.WriteString('TELA_LOGIN','LOGIN',trim(edtEdLogin.Text));
           ArqIni.Free;
         end;}
end;

end.
