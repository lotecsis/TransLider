unit UTanqueCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, ExtCtrls;

type
  TFTanqueCombustivel = class(TForm)
    Tanque: TGauge;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtNivel: TCurrencyEdit;
    edtNivelMax: TCurrencyEdit;
    edtNivelMin: TCurrencyEdit;
    pnl1: TPanel;
    lbl4: TLabel;
    edtNovoNivel: TCurrencyEdit;
    btnAjustar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAjustarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTanqueCombustivel: TFTanqueCombustivel;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFTanqueCombustivel.btnAjustarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente ajustar nível do tanque?', 'Confirmação', MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = idyes then
   Begin
     if edtNovoNivel.Value > edtNivelMax.Value then
        begin
          Application.MessageBox('Este nível não pode ser maior do que o máximo', 'Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := edtNovoNivel;
          Abort;
        end;

     if edtNovoNivel.Value < 0then
        begin
          Application.MessageBox('Nível menor que 0(zero) não permitido', 'Atenção', MB_ICONWARNING+MB_OK);
          ActiveControl := edtNovoNivel;
          Abort;
        end;

      DmFire.CadTanque_Comb.Close;
      DmFire.CadTanque_Comb.ParamByName('CODTAN').Value := 1;
      DmFire.CadTanque_Comb.Open;
      if not DmFire.CadTanque_Comb.IsEmpty then
          begin
            DmFire.CadTanque_Comb.Edit;
            DmFire.CadTanque_CombNIVEL.Value := edtNovoNivel.Value;
            DmFire.CadTanque_Comb.Post;
            DmFire.ibtTransacao.CommitRetaining;
            FTanqueCombustivel.FormShow(Sender);
          end;
  End;
end;

procedure TFTanqueCombustivel.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFTanqueCombustivel.FormShow(Sender: TObject);
var vnNivelMin : Integer;
begin

     DmFire.CadTanque_Comb.Close;
     DmFire.CadTanque_Comb.ParamByName('CODTAN').Value := 1;
     DmFire.CadTanque_Comb.Open;

     Tanque.MaxValue := DmFire.CadTanque_CombNIVEL_MAX.AsInteger;

     vnNivelMin := DmFire.CadTanque_CombNIVEL_MIN.AsInteger;

     edtNivel.Value := DmFire.CadTanque_CombNIVEL.Value;
     edtNivelMax.Value := DmFire.CadTanque_CombNIVEL_MAX.Value;
     edtNivelMin.Value := DmFire.CadTanque_CombNIVEL_MIN.Value;

     Tanque.Progress := DmFire.CadTanque_CombNIVEL.AsInteger;

     if edtNivel.Value > edtNivelMin.Value then
        begin
          Tanque.ForeColor := clLime;
        end
     else
        begin
          Tanque.ForeColor := clRed;
        end;

end;

end.
