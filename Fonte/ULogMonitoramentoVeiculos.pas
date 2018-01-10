unit ULogMonitoramentoVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons;

type
  TFLogMonitoramentoVeiculos = class(TForm)
    dbg1: TDBGrid;
    dsConsLogMonitoramento: TDataSource;
    btnConfirma: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogMonitoramentoVeiculos: TFLogMonitoramentoVeiculos;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFLogMonitoramentoVeiculos.btnConfirmaClick(Sender: TObject);
begin
  if not DmFire.ConsLogMonitoramento.IsEmpty then
     begin
       if Application.MessageBox('Confirmar Visualização:', 'Confirmação', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
          Begin
             DmFire.CadChega_Vei_Mot.Close;
             DmFire.CadChega_Vei_Mot.ParamByName('SEQCHE').Value := DmFire.ConsLogMonitoramentoSEQCHE.Value;
             DmFire.CadChega_Vei_Mot.Open;
             if not DmFire.CadChega_Vei_Mot.IsEmpty then
                begin
                  DmFire.CadChega_Vei_Mot.Delete;
                  DmFire.ibtTransacao.CommitRetaining;

                  DmFire.ConsLogMonitoramento.Close;
                  DmFire.ConsLogMonitoramento.Open;
                end;
          End;
     end;
end;

procedure TFLogMonitoramentoVeiculos.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFLogMonitoramentoVeiculos.FormShow(Sender: TObject);
begin
  DmFire.ConsLogMonitoramento.Close;
  DmFire.ConsLogMonitoramento.Open;
end;

end.
