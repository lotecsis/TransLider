unit UConsCavalo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFConsCavalo = class(TForm)
    dbg1: TDBGrid;
    dsConsCavalos: TDataSource;
    btnSelecionar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dsConsCavalosDataChange(Sender: TObject; Field: TField);
    procedure dbg1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsCavalo: TFConsCavalo;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFConsCavalo.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsCavalos.IsEmpty then
     begin
       btnSelecionar.Click;
     end;
end;

procedure TFConsCavalo.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsCavalos.IsEmpty then
     begin
       btnSelecionar.Click;
     end;
   end;
end;

procedure TFConsCavalo.dsConsCavalosDataChange(Sender: TObject; Field: TField);
begin
  if DmFire.ConsCavalos.IsEmpty then
     begin
       btnSelecionar.Enabled := false;
     end
  else
     begin
       btnSelecionar.Enabled := True;
     end;
end;

procedure TFConsCavalo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsCavalo.FormShow(Sender: TObject);
begin
DmFire.ConsCavalos.Close;
DmFire.ConsCavalos.SQL.Clear;
DmFire.ConsCavalos.SQL.Add('SELECT CODVEI,DESVEI,PLAVEI,CODMOT FROM VEICULO');
DmFire.ConsCavalos.SQL.Add(' WHERE');
DmFire.ConsCavalos.SQL.Add(' TIPO = ''CAVALO'' AND');
DmFire.ConsCavalos.SQL.Add(' SITVEI = ''ATIVO''');
DmFire.ConsCavalos.SQL.Add(' ORDER BY DESVEI');
DmFire.ConsCavalos.Open;
end;

end.
