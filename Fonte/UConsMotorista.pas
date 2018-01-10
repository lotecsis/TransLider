unit UConsMotorista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DB;

type
  TFConsMotorista = class(TForm)
    dbg1: TDBGrid;
    pnl2: TPanel;
    ImgAlu: TImage;
    lbl1: TLabel;
    edtPesquisa: TEdit;
    btnAbrirFicha: TBitBtn;
    dsConsMotorista: TDataSource;
    btnNovo: TBitBtn;
    btnVisualizaImg: TBitBtn;
    procedure btnAbrirFichaClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure btnVisualizaImgClick(Sender: TObject);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsMotorista: TFConsMotorista;

implementation

uses UDmFire, UCadMotoristas;

{$R *.dfm}

procedure TFConsMotorista.btnAbrirFichaClick(Sender: TObject);
begin
  if not DmFire.ConsMotorista.IsEmpty then
     begin
        FCadMotoristas := TFCadMotoristas.Create(Self);
        FCadMotoristas.edtCodMot.Value := DmFire.ConsMotoristaCODMOT.AsInteger;
        FCadMotoristas.edtCodMotExit(Sender);
        FCadMotoristas.vaOperacao := 'CONSULTA';
        FConsMotorista.Visible := False;
        FCadMotoristas.ShowModal;
        FreeAndNil(FCadMotoristas);
        FConsMotorista.Visible := True;
        edtPesquisaChange(Sender);
     end;
end;

procedure TFConsMotorista.btnNovoClick(Sender: TObject);
begin
  FCadMotoristas := TFCadMotoristas.Create(Self);
  FCadMotoristas.vaOperacao := 'INSERIR';
  FConsMotorista.Visible := False;
  FCadMotoristas.ShowModal;
  FreeAndNil(FCadMotoristas);
  FConsMotorista.Visible := True;
end;

procedure TFConsMotorista.btnVisualizaImgClick(Sender: TObject);
begin
if trim(DmFire.ConsMotoristaFOTO.AsString) <> '' then
   begin
     if FileExists(DmFire.ConsMotoristaFOTO.AsString) then
        begin
          ImgAlu.Picture.LoadFromFile(DmFire.ConsMotoristaFOTO.AsString);
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

procedure TFConsMotorista.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsMotorista.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
end;

procedure TFConsMotorista.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsMotorista.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
   end;
end;

procedure TFConsMotorista.edtPesquisaChange(Sender: TObject);
begin
  DmFire.ConsMotorista.Close;
  DmFire.ConsMotorista.SQL.Clear;
  DmFire.ConsMotorista.SQL.Add('SELECT MOTORISTA.* FROM MOTORISTA');
  DmFire.ConsMotorista.SQL.Add(' WHERE');
  DmFire.ConsMotorista.SQL.Add(' MOTORISTA.NOMMOT LIKE'+QuotedStr('%'+edtPesquisa.Text+'%'));
  DmFire.ConsMotorista.Open;
end;

procedure TFConsMotorista.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsMotorista.FormShow(Sender: TObject);
begin
  edtPesquisaChange(Sender);
  ActiveControl := edtPesquisa;
end;

end.
