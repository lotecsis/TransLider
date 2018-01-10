unit UConsInfracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, Buttons;

type
  TFConsInfracoes = class(TForm)
    dbg1: TDBGrid;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dsConsInfracoesCad: TDataSource;
    btnNovo: TBitBtn;
    btnAbrirFicha: TBitBtn;
    procedure edtDescricaoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure btnAbrirFichaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dsConsInfracoesCadDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsInfracoes: TFConsInfracoes;

implementation

uses UDmFire, UInfracoesCad, UPrincipal;

{$R *.dfm}

procedure TFConsInfracoes.btnAbrirFichaClick(Sender: TObject);
begin
  DmFire.CadInfracoesCad.Close;
  DmFire.CadInfracoesCad.ParamByName('codinfra').Value := DmFire.ConsInfracoesCadCODINFRA.Value;
  DmFire.CadInfracoesCad.Open;
  if not DmFire.CadInfracoesCad.IsEmpty then
     begin
       FInfracoesCad := TFInfracoesCad.Create(Self);
       FConsInfracoes.Visible := False;
       FInfracoesCad.ShowModal;
       FreeAndNil(FInfracoesCad);
       FConsInfracoes.Visible := True;
     end;
end;

procedure TFConsInfracoes.btnNovoClick(Sender: TObject);
begin
  DmFire.CadInfracoesCad.Open;
  DmFire.CadInfracoesCad.Insert;
  DmFire.CadInfracoesCadDATCAD.Value := Date;
  DmFire.CadInfracoesCadCODUSU.Value := FPrincipal.vnCodUsu;

   FInfracoesCad := TFInfracoesCad.Create(Self);
   FConsInfracoes.Visible := False;
   FInfracoesCad.ShowModal;
   FreeAndNil(FInfracoesCad);
   FConsInfracoes.Visible := True;
end;

procedure TFConsInfracoes.dbg1DblClick(Sender: TObject);
begin
if btnAbrirFicha.Enabled = true then
   btnAbrirFicha.Click;

end;

procedure TFConsInfracoes.dsConsInfracoesCadDataChange(Sender: TObject;
  Field: TField);
begin
if DmFire.ConsInfracoesCad.IsEmpty then
     begin
       btnAbrirFicha.Enabled := false;
     end
  else
     begin
       btnAbrirFicha.Enabled := True;
     end;
end;

procedure TFConsInfracoes.edtCodigoChange(Sender: TObject);
begin
  DmFire.ConsInfracoesCad.Close;
  DmFire.ConsInfracoesCad.SQL.Clear;
  DmFire.ConsInfracoesCad.SQL.Add('select infracoes_cad.*,usuario.nomusu');
  DmFire.ConsInfracoesCad.SQL.Add(' from infracoes_cad');
  DmFire.ConsInfracoesCad.SQL.Add(' inner join usuario on usuario.codusu = infracoes_cad.codusu');
  DmFire.ConsInfracoesCad.SQL.Add('where');
  DmFire.ConsInfracoesCad.SQL.Add(' infracoes_cad.codinfra ='+QuotedStr(edtCodigo.Text));
  DmFire.ConsInfracoesCad.SQL.Add('');
  DmFire.ConsInfracoesCad.SQL.Add(' order by infracoes_cad.codinfra');
  DmFire.ConsInfracoesCad.Open;
end;

procedure TFConsInfracoes.edtCodigoEnter(Sender: TObject);
begin
edtDescricao.Clear;
end;

procedure TFConsInfracoes.edtDescricaoChange(Sender: TObject);
begin
  DmFire.ConsInfracoesCad.Close;
  DmFire.ConsInfracoesCad.SQL.Clear;
  DmFire.ConsInfracoesCad.SQL.Add('select infracoes_cad.*,usuario.nomusu');
  DmFire.ConsInfracoesCad.SQL.Add(' from infracoes_cad');
  DmFire.ConsInfracoesCad.SQL.Add(' inner join usuario on usuario.codusu = infracoes_cad.codusu');
  DmFire.ConsInfracoesCad.SQL.Add('where');
  DmFire.ConsInfracoesCad.SQL.Add(' infracoes_cad.desinfra like'+QuotedStr('%'+edtDescricao.Text+'%'));
  DmFire.ConsInfracoesCad.SQL.Add('');
  DmFire.ConsInfracoesCad.SQL.Add(' order by infracoes_cad.desinfra');
  DmFire.ConsInfracoesCad.Open;
end;

procedure TFConsInfracoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsInfracoes.FormShow(Sender: TObject);
begin
//  edtDescricaoChange(Sender);
  DmFire.ConsInfracoesCad.Close;
  ActiveControl := edtDescricao;
end;

end.
