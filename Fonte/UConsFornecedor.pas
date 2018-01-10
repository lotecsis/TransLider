unit UConsFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, Buttons;

type
  TFConsFornecedor = class(TForm)
    dbg1: TDBGrid;
    lbl1: TLabel;
    edtPesquisa: TEdit;
    dsConsFornecedor: TDataSource;
    btnNovo: TBitBtn;
    btnAbrirFicha: TBitBtn;
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  FConsFornecedor: TFConsFornecedor;

implementation

uses UDmFire, UCadFornecedor;

{$R *.dfm}

procedure TFConsFornecedor.btnAbrirFichaClick(Sender: TObject);
begin
if not DmFire.ConsFornecedor.IsEmpty then
   begin
      FCadFornecedor := TFCadFornecedor.Create(Self);
      FCadFornecedor.edtCodFor.Value := DmFire.ConsFornecedorCODFOR.AsInteger;
      FCadFornecedor.edtCodForExit(Sender);
      FCadFornecedor.vaOperacao := 'CONSULTA';
      FConsFornecedor.Visible := false;
      FCadFornecedor.ShowModal;
      FreeAndNil(FCadFornecedor);
      FConsFornecedor.Visible := True;
      edtPesquisaChange(Sender);
   end;
end;

procedure TFConsFornecedor.btnNovoClick(Sender: TObject);
begin
      FCadFornecedor := TFCadFornecedor.Create(Self);
      FCadFornecedor.vaOperacao := 'INSERIR';
      FConsFornecedor.Visible := false;
      FCadFornecedor.ShowModal;
      FreeAndNil(FCadFornecedor);
      FConsFornecedor.Visible := True;
      edtPesquisaChange(Sender);
end;

procedure TFConsFornecedor.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsFornecedor.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
end;

procedure TFConsFornecedor.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsFornecedor.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
   end;
end;

procedure TFConsFornecedor.edtPesquisaChange(Sender: TObject);
begin
  DmFire.ConsFornecedor.Close;
  DmFire.ConsFornecedor.SQL.Clear;
  DmFire.ConsFornecedor.SQL.Add('SELECT FORNECEDOR.*,USUARIO.NOMUSU');
  DmFire.ConsFornecedor.SQL.Add(' FROM FORNECEDOR');
  DmFire.ConsFornecedor.SQL.Add(' INNER JOIN USUARIO ON USUARIO.CODUSU = FORNECEDOR.CODUSU');
  DmFire.ConsFornecedor.SQL.Add(' WHERE FORNECEDOR.DESFOR LIKE '+QuotedStr('%'+edtPesquisa.Text+'%'));
  DmFire.ConsFornecedor.SQL.Add(' ORDER BY FORNECEDOR.DESFOR');
  DmFire.ConsFornecedor.Open;

end;

procedure TFConsFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsFornecedor.FormShow(Sender: TObject);
begin
  edtPesquisaChange(Sender);
end;

end.
