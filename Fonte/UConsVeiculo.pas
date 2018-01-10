unit UConsVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons;

type
  TFConsVeiculo = class(TForm)
    dbg1: TDBGrid;
    dsConsVeiculo: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    edtDescricao: TEdit;
    edtPlaca: TEdit;
    lbl3: TLabel;
    edtMotorista: TEdit;
    btnNovo: TBitBtn;
    btnAbrirFicha: TBitBtn;
    procedure edtPlacaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescricaoChange(Sender: TObject);
    procedure edtMotoristaChange(Sender: TObject);
    procedure btnAbrirFichaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsVeiculo: TFConsVeiculo;

implementation

uses UDmFire, UCadVeiculo;

{$R *.dfm}

procedure TFConsVeiculo.btnAbrirFichaClick(Sender: TObject);
begin

  if not DmFire.ConsVeiculo.IsEmpty then
     begin
        FCadVeiculo := TFCadVeiculo.Create(Self);
        FCadVeiculo.edtCodVei.Value := DmFire.ConsVeiculoCODVEI.AsInteger;
        FCadVeiculo.vaOperacao := 'CONSULTA';
        FConsVeiculo.Visible := False;
        FCadVeiculo.ShowModal;
        FreeAndNil(FCadVeiculo);
        FConsVeiculo.Visible := True;
     end;
end;

procedure TFConsVeiculo.btnNovoClick(Sender: TObject);
begin
    FCadVeiculo := TFCadVeiculo.Create(Self);
    //FCadVeiculo.edtCodVeiExit(Sender);
    FCadVeiculo.vaOperacao := 'INSERIR';
    FConsVeiculo.Visible := False;
    FCadVeiculo.ShowModal;
    FreeAndNil(FCadVeiculo);
    FConsVeiculo.Visible := True;
end;

procedure TFConsVeiculo.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsVeiculo.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
end;

procedure TFConsVeiculo.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsVeiculo.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
   end;
end;

procedure TFConsVeiculo.edtDescricaoChange(Sender: TObject);
begin
  DmFire.ConsVeiculo.Close;
  DmFire.ConsVeiculo.SQL.Clear;
  DmFire.ConsVeiculo.SQL.Add('SELECT VEICULO.*,MOTORISTA.NOMMOT');
  DmFire.ConsVeiculo.SQL.Add(' FROM VEICULO');
  DmFire.ConsVeiculo.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT');
  DmFire.ConsVeiculo.SQL.Add(' WHERE VEICULO.DESVEI <> ''NAO EXISTE'''); //SO PARA PODE DEXAR INCLUIDO O WHERE
  DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.DESVEI LIKE '+QuotedStr('%'+edtDescricao.Text+'%'));

  if Trim(edtPlaca.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.PLAVEI LIKE '+QuotedStr('%'+edtPlaca.Text+'%'));

  if Trim(edtMotorista.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND MOTORISTA.NOMMOT LIKE '+QuotedStr('%'+edtMotorista.Text+'%'));

  DmFire.ConsVeiculo.SQL.Add('ORDER BY VEICULO.DESVEI');
  DmFire.ConsVeiculo.Open;
end;

procedure TFConsVeiculo.edtMotoristaChange(Sender: TObject);
begin
  DmFire.ConsVeiculo.Close;
  DmFire.ConsVeiculo.SQL.Clear;
  DmFire.ConsVeiculo.SQL.Add('SELECT VEICULO.*,MOTORISTA.NOMMOT');
  DmFire.ConsVeiculo.SQL.Add(' FROM VEICULO');
  DmFire.ConsVeiculo.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT');
  DmFire.ConsVeiculo.SQL.Add(' WHERE VEICULO.DESVEI <> ''NAO EXISTE'''); //SO PARA PODE DEXAR INCLUIDO O WHERE
  DmFire.ConsVeiculo.SQL.Add(' AND MOTORISTA.NOMMOT LIKE '+QuotedStr('%'+edtMotorista.Text+'%'));

  if Trim(edtPlaca.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.PLAVEI LIKE '+QuotedStr('%'+edtPlaca.Text+'%'));

  if Trim(edtDescricao.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.DESVEI LIKE '+QuotedStr('%'+edtDescricao.Text+'%'));

  DmFire.ConsVeiculo.SQL.Add('ORDER BY VEICULO.DESVEI');
  DmFire.ConsVeiculo.Open;
end;

procedure TFConsVeiculo.edtPlacaChange(Sender: TObject);
begin
  DmFire.ConsVeiculo.Close;
  DmFire.ConsVeiculo.SQL.Clear;
  DmFire.ConsVeiculo.SQL.Add('SELECT VEICULO.*,MOTORISTA.NOMMOT');
  DmFire.ConsVeiculo.SQL.Add(' FROM VEICULO');
  DmFire.ConsVeiculo.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT');
  DmFire.ConsVeiculo.SQL.Add(' WHERE VEICULO.DESVEI <> ''NAO EXISTE'''); //SO PARA PODE DEXAR INCLUIDO O WHERE
  DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.PLAVEI LIKE '+QuotedStr(edtPlaca.Text+'%'));

  if Trim(edtDescricao.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND VEICULO.DESVEI LIKE '+QuotedStr('%'+edtDescricao.Text+'%'));

  if Trim(edtMotorista.Text) <> '' then
     DmFire.ConsVeiculo.SQL.Add(' AND MOTORISTA.NOMMOT LIKE '+QuotedStr('%'+edtMotorista.Text+'%'));

  DmFire.ConsVeiculo.SQL.Add('ORDER BY VEICULO.DESVEI');
  DmFire.ConsVeiculo.Open;

end;

procedure TFConsVeiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsVeiculo.FormShow(Sender: TObject);
begin
  DmFire.ConsVeiculo.Close;
  DmFire.ConsVeiculo.SQL.Clear;
  DmFire.ConsVeiculo.SQL.Add('SELECT VEICULO.*,MOTORISTA.NOMMOT');
  DmFire.ConsVeiculo.SQL.Add(' FROM VEICULO');
  DmFire.ConsVeiculo.SQL.Add(' INNER JOIN MOTORISTA ON MOTORISTA.CODMOT = VEICULO.CODMOT');
  DmFire.ConsVeiculo.SQL.Add(' WHERE VEICULO.DESVEI <> ''NAO EXISTE'''); //SO PARA PODE DEXAR INCLUIDO O WHERE
  DmFire.ConsVeiculo.SQL.Add('ORDER BY VEICULO.DESVEI');
  DmFire.ConsVeiculo.Open;
end;

end.
