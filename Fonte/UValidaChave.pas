unit UValidaChave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons;

type
  TFValidaChave = class(TForm)
    edtMes: TCurrencyEdit;
    edtAno: TCurrencyEdit;
    edtChave: TEdit;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValidaChave: TFValidaChave;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFValidaChave.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFValidaChave.btnConfirmarClick(Sender: TObject);
begin
     DmFire.ConsSql.Close;
     DmFire.ConsSql.SQL.Clear;
     DmFire.ConsSql.SQL.Add('SELECT * FROM CHAVE_ACESSO');
     DmFire.ConsSql.SQL.Add(' WHERE');
     DmFire.ConsSql.SQL.Add(' MES = :MES AND');
     DmFire.ConsSql.SQL.Add(' ANO = :ANO AND');
     DmFire.ConsSql.SQL.Add(' SITCHA = ''C'' AND');
     DmFire.ConsSql.SQL.Add(' NUMCHA = :NUMCHA');
     DmFire.ConsSql.ParamByName('MES').Value := edtMes.Value;
     DmFire.ConsSql.ParamByName('ANO').Value := edtAno.Value;
     DmFire.ConsSql.ParamByName('NUMCHA').Value := edtChave.Text;
     DmFire.ConsSql.Open;
     if not DmFire.ConsSql.IsEmpty then
        begin
          Application.MessageBox('Esta chave já ativa para este mês!!', 'Confirmação', MB_ICONWARNING+MB_OK);
          Close;
        end
     else
       begin

           DmFire.ConsSql.Close;
           DmFire.ConsSql.SQL.Clear;
           DmFire.ConsSql.SQL.Add('SELECT * FROM CHAVE_ACESSO');
           DmFire.ConsSql.SQL.Add(' WHERE');
           DmFire.ConsSql.SQL.Add(' MES = :MES AND');
           DmFire.ConsSql.SQL.Add(' ANO = :ANO AND');
           DmFire.ConsSql.SQL.Add(' SITCHA = ''A'' AND');
           DmFire.ConsSql.SQL.Add(' NUMCHA = :NUMCHA');
           DmFire.ConsSql.ParamByName('MES').Value := edtMes.Value;
           DmFire.ConsSql.ParamByName('ANO').Value := edtAno.Value;
           DmFire.ConsSql.ParamByName('NUMCHA').Value := edtChave.Text;
           DmFire.ConsSql.Open;
           if DmFire.ConsSql.IsEmpty then
              begin
                Application.MessageBox('Chave inválida', 'Atenção', MB_ICONWARNING+MB_OK);
                ActiveControl := edtChave;
              end
           else
              begin
                 DmFire.ConsSql.Close;
                 DmFire.ConsSql.SQL.Clear;
                 DmFire.ConsSql.SQL.Add(' UPDATE CHAVE_ACESSO SET SITCHA = ''C''');
                 DmFire.ConsSql.SQL.Add(' WHERE');
                 DmFire.ConsSql.SQL.Add(' MES = :MES AND');
                 DmFire.ConsSql.SQL.Add(' ANO = :ANO AND');
                 DmFire.ConsSql.SQL.Add(' SITCHA = ''A'' AND');
                 DmFire.ConsSql.SQL.Add(' NUMCHA = :NUMCHA');
                 DmFire.ConsSql.ParamByName('MES').Value := edtMes.Value;
                 DmFire.ConsSql.ParamByName('ANO').Value := edtAno.Value;
                 DmFire.ConsSql.ParamByName('NUMCHA').Value := edtChave.Text;
                 DmFire.ConsSql.ExecSQL;
                 DmFire.IbtTransacao.CommitRetaining;

                 Application.MessageBox('Validação efetuada com sucesso!!', 'Confirmação', MB_ICONINFORMATION+MB_OK);
                 Close;
              end;
       end;

end;


procedure TFValidaChave.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
