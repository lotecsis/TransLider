unit UVeiculosMonitorar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, Buttons;

type
  TFVeiculosMonitorar = class(TForm)
    VeiculosMonitorar: TIBQuery;
    VeiculosMonitorarCODVEI: TIntegerField;
    VeiculosMonitorarCODUSU: TIntegerField;
    VeiculosMonitorarCODMOD: TIntegerField;
    VeiculosMonitorarCODMOT: TIntegerField;
    VeiculosMonitorarDESVEI: TIBStringField;
    VeiculosMonitorarPLAVEI: TIBStringField;
    VeiculosMonitorarPLAVEIUF: TIBStringField;
    VeiculosMonitorarANOFAB: TIBStringField;
    VeiculosMonitorarDATAQUI: TDateField;
    VeiculosMonitorarDATVEN: TDateField;
    VeiculosMonitorarKMINI: TIntegerField;
    VeiculosMonitorarKMATU: TIntegerField;
    VeiculosMonitorarCATEGORIA: TIBStringField;
    VeiculosMonitorarCHASSI: TIBStringField;
    VeiculosMonitorarRENAVAM: TIBStringField;
    VeiculosMonitorarTIPO: TIBStringField;
    VeiculosMonitorarCODCAV: TIntegerField;
    VeiculosMonitorarEIXOS: TIBStringField;
    VeiculosMonitorarALTURA: TFloatField;
    VeiculosMonitorarLARGURA: TFloatField;
    VeiculosMonitorarCOMPRIMENTO: TFloatField;
    VeiculosMonitorarCUBICO: TFloatField;
    VeiculosMonitorarTARA: TFloatField;
    VeiculosMonitorarMAXPESO: TFloatField;
    VeiculosMonitorarCAPPESO: TIntegerField;
    VeiculosMonitorarSITVEI: TIBStringField;
    VeiculosMonitorarCOR: TIBStringField;
    VeiculosMonitorarOBSVEI: TIBStringField;
    VeiculosMonitorarUSUALT: TIntegerField;
    VeiculosMonitorarDATALT: TDateField;
    VeiculosMonitorarLOCALVEI: TIBStringField;
    VeiculosMonitorarIN_MONITORAR: TIBStringField;
    VeiculosMonitorarNOMMOT: TIBStringField;
    VeiculosNaoMonitorar: TIBQuery;
    VeiculosNaoMonitorarCODVEI: TIntegerField;
    VeiculosNaoMonitorarCODUSU: TIntegerField;
    VeiculosNaoMonitorarCODMOD: TIntegerField;
    VeiculosNaoMonitorarCODMOT: TIntegerField;
    VeiculosNaoMonitorarDESVEI: TIBStringField;
    VeiculosNaoMonitorarPLAVEI: TIBStringField;
    VeiculosNaoMonitorarPLAVEIUF: TIBStringField;
    VeiculosNaoMonitorarANOFAB: TIBStringField;
    VeiculosNaoMonitorarDATAQUI: TDateField;
    VeiculosNaoMonitorarDATVEN: TDateField;
    VeiculosNaoMonitorarKMINI: TIntegerField;
    VeiculosNaoMonitorarKMATU: TIntegerField;
    VeiculosNaoMonitorarCATEGORIA: TIBStringField;
    VeiculosNaoMonitorarCHASSI: TIBStringField;
    VeiculosNaoMonitorarRENAVAM: TIBStringField;
    VeiculosNaoMonitorarTIPO: TIBStringField;
    VeiculosNaoMonitorarCODCAV: TIntegerField;
    VeiculosNaoMonitorarEIXOS: TIBStringField;
    VeiculosNaoMonitorarALTURA: TFloatField;
    VeiculosNaoMonitorarLARGURA: TFloatField;
    VeiculosNaoMonitorarCOMPRIMENTO: TFloatField;
    VeiculosNaoMonitorarCUBICO: TFloatField;
    VeiculosNaoMonitorarTARA: TFloatField;
    VeiculosNaoMonitorarMAXPESO: TFloatField;
    VeiculosNaoMonitorarCAPPESO: TIntegerField;
    VeiculosNaoMonitorarSITVEI: TIBStringField;
    VeiculosNaoMonitorarCOR: TIBStringField;
    VeiculosNaoMonitorarOBSVEI: TIBStringField;
    VeiculosNaoMonitorarUSUALT: TIntegerField;
    VeiculosNaoMonitorarDATALT: TDateField;
    VeiculosNaoMonitorarLOCALVEI: TIBStringField;
    VeiculosNaoMonitorarIN_MONITORAR: TIBStringField;
    VeiculosNaoMonitorarNOMMOT: TIBStringField;
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    dsVeiculosMonitorar: TDataSource;
    dsVeiculosNaoMonitorar: TDataSource;
    btnSim: TBitBtn;
    btnNao: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVeiculosMonitorar: TFVeiculosMonitorar;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFVeiculosMonitorar.btnNaoClick(Sender: TObject);
begin
if not VeiculosNaoMonitorar.IsEmpty then
     begin
       DmFire.CadVeiculo.Close;
       DmFire.CadVeiculo.ParamByName('CODVEI').Value := VeiculosNaoMonitorarCODVEI.Value;
       DmFire.CadVeiculo.Open;
       if not DmFire.CadVeiculo.IsEmpty then
          begin
            DmFire.CadVeiculo.Edit;
            DmFire.CadVeiculoIN_MONITORAR.Value := 'SIM';
            DmFire.CadVeiculo.Post;
            DmFire.ibtTransacao.CommitRetaining;

            VeiculosMonitorar.Close;
            VeiculosMonitorar.Open;

            VeiculosNaoMonitorar.Close;
            VeiculosNaoMonitorar.Open;
          end;
     end;
end;

procedure TFVeiculosMonitorar.btnSimClick(Sender: TObject);
begin
  if not VeiculosMonitorar.IsEmpty then
     begin
       DmFire.CadVeiculo.Close;
       DmFire.CadVeiculo.ParamByName('CODVEI').Value := VeiculosMonitorarCODVEI.Value;
       DmFire.CadVeiculo.Open;
       if not DmFire.CadVeiculo.IsEmpty then
          begin
            DmFire.CadVeiculo.Edit;
            DmFire.CadVeiculoIN_MONITORAR.Value := 'NAO';
            DmFire.CadVeiculo.Post;
            DmFire.ibtTransacao.CommitRetaining;

            VeiculosMonitorar.Close;
            VeiculosMonitorar.Open;

            VeiculosNaoMonitorar.Close;
            VeiculosNaoMonitorar.Open;
          end;
     end;
end;

procedure TFVeiculosMonitorar.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFVeiculosMonitorar.FormShow(Sender: TObject);
begin
  VeiculosMonitorar.Close;
  VeiculosMonitorar.Open;

  VeiculosNaoMonitorar.Close;
  VeiculosNaoMonitorar.Open;
end;

end.
