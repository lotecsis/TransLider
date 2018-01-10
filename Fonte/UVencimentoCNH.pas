unit UVencimentoCNH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls;

type
  TFVencimentoCNH = class(TForm)
    dbg1: TDBGrid;
    dsConsVencimentoCNH: TDataSource;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVencimentoCNH: TFVencimentoCNH;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFVencimentoCNH.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field.FieldName = 'vnQtdDias' then
     begin
       //MUDA A COR DA LINHA

       if DmFire.ConsVencimentoCNHvnQtdDias.AsInteger < 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clRed;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end
       else
       if DmFire.ConsVencimentoCNHvnQtdDias.AsInteger > 0 then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clGreen;
            Font.Color := clWhite;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;


       if (DmFire.ConsVencimentoCNHvnQtdDias.AsInteger > 0) and (DmFire.ConsVencimentoCNHvnQtdDias.AsInteger < 30) then
          with (Sender as TDBGrid).Canvas do
          begin
            FillRect(Rect);
            Brush.Color := clYellow;
            Font.Color := clBlue;
            Font.Style := [fsBold];
            Column.Field.Alignment := taCenter;


            TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
     end;
end;

procedure TFVencimentoCNH.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFVencimentoCNH.FormShow(Sender: TObject);
begin
  DmFire.ConsVencimentoCNH.Close;
  DmFire.ConsVencimentoCNH.Open;
end;

end.
