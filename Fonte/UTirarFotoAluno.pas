unit UTirarFotoAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Camera, StdCtrls, Buttons;

type
  TFTirarFotoAluno = class(TForm)
    Image1: TImage;
    camCamera: TCamera;
    Label1: TLabel;
    BCapturar: TBitBtn;
    Panel1: TPanel;
    ImgCapturada: TImage;
    BGravarImagem: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BCapturarClick(Sender: TObject);
    procedure BGravarImagemClick(Sender: TObject);
  private
    { Private declarations }
    vaCaminhoImg: string;
    procedure AtivarWebCam;
    procedure CarregarTImage(Filename:String);
    procedure CapturarImagem;


  public
    { Public declarations }
  end;

var
  FTirarFotoAluno: TFTirarFotoAluno;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

//PROCEDIMENTO PARA ATIVAR A WEBCAM
procedure  TFTirarFotoAluno.AtivarWebCam;
begin
  try
      camCamera.Actif := True;
   except
     MessageDlg('Ocorreu um erro ao tentar ativar a Webcam.' + #13 +
     'Certifique-se de que a câmera esteja conectada e corretamente configurada.'
     , mtError, [mbOk], 0);
    end;
end;


{Vamos implementar agora a procedure CapturarImagem capturar a imagem do componente camCamera.
Veja que estamos salvando como F.bmp o nome do arquivo
Segundo ponto estamos mudando o nome da imagem F, caso você abra o código no ponto da linha CaptureImageDisque, você poderá ver que é criado um arquivo “F”, apenas
Após executar esta linha  mudamos seu nome para salvar com o nome F.BMP, e logo em seguida nós carregamos a imagem no TImage, usando a função criada}
procedure TFTirarFotoAluno.BCapturarClick(Sender: TObject);
begin
    CapturarImagem;
end;

procedure TFTirarFotoAluno.BGravarImagemClick(Sender: TObject);
begin
     if FileExists(vaCaminhoImg) then
        begin
           DmFire.CadMotoristasFOTO.AsString := vaCaminhoImg;
        end
     else
        begin
           DmFire.CadMotoristasFOTO.AsString := '';
        end;
     Close;

end;

procedure TFTirarFotoAluno.CapturarImagem;
begin

  vaCaminhoImg := FPrincipal.vaCaminhoFotos+'\';
  vaCaminhoImg := vaCaminhoImg + IntToStr(DmFire.CadMotoristasCODMOT.AsInteger)+'.bmp';

  if FileExists(vaCaminhoImg) then
     DeleteFile(vaCaminhoImg);

  camCamera.FichierImage := 'F';

  camCamera.CaptureImageDisque;

  CopyFile(pchar(camCamera.FichierImage),pchar(vaCaminhoImg),true);//copia ja renomeando

  //RenameFile(Dm.CadConfEmpPSTEXE.AsString+'\FotosAlunos\F', IntToStr(Dm.CadAluCadCODALU.AsInteger)+'.bmp');

  CarregarTImage(vaCaminhoImg);

end;

{Vamos implementar agora a procedure CarregarTImage para exibir a imagem no nosso TImage }
procedure TFTirarFotoAluno.CarregarTImage(Filename: String);
begin
   ImgCapturada.Picture.LoadFromFile(FileName);
end;

procedure TFTirarFotoAluno.FormDestroy(Sender: TObject);
begin
 camCamera.Actif := False;
end;

procedure TFTirarFotoAluno.FormShow(Sender: TObject);
begin
  AtivarWebCam;
end;

end.
