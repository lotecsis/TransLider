unit UConsServicoLancaManut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Buttons, AppEvnts;

type
  TFConsServicoLancaManut = class(TForm)
    lbl1: TLabel;
    edtServico: TEdit;
    dbg1: TDBGrid;
    dsConsServicoLancaManut: TDataSource;
    btnSelecionar: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure edtServicoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsConsServicoLancaManutDataChange(Sender: TObject; Field: TField);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsServicoLancaManut: TFConsServicoLancaManut;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFConsServicoLancaManut.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
 btnSelecionar.Enabled :=  not DmFire.ConsServicoLancaManut.IsEmpty

end;

procedure TFConsServicoLancaManut.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsServicoLancaManut.IsEmpty then
     begin
       btnSelecionar.Click;
     end;

end;

procedure TFConsServicoLancaManut.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsServicoLancaManut.IsEmpty then
     begin
       btnSelecionar.Click;
     end;
   end;
end;

procedure TFConsServicoLancaManut.dsConsServicoLancaManutDataChange(
  Sender: TObject; Field: TField);
begin
  if DmFire.ConsServicoLancaManut.IsEmpty then
     begin
       btnSelecionar.Enabled := false;
     end
  else
     begin
       btnSelecionar.Enabled := True;
     end;
end;

procedure TFConsServicoLancaManut.edtServicoChange(Sender: TObject);
begin
  DmFire.ConsServicoLancaManut.Close;
  DmFire.ConsServicoLancaManut.SQL.Clear;
  DmFire.ConsServicoLancaManut.SQL.Add('SELECT SERVICO.*');
  DmFire.ConsServicoLancaManut.SQL.Add(' FROM SERVICO');
  DmFire.ConsServicoLancaManut.SQL.Add(' WHERE SERVICO.SITSER = ''ATIVO''');
  DmFire.ConsServicoLancaManut.SQL.Add(' AND SERVICO.DESSER LIKE '+QuotedStr('%'+edtServico.Text+'%'));
  DmFire.ConsServicoLancaManut.SQL.Add(' ORDER BY SERVICO.DESSER');
  DmFire.ConsServicoLancaManut.Open;
end;

procedure TFConsServicoLancaManut.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsServicoLancaManut.FormShow(Sender: TObject);
begin
  DmFire.ConsServicoLancaManut.Close;

  ActiveControl := edtServico;

end;

end.
