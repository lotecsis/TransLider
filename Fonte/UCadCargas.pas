unit UCadCargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFCadCargas = class(TForm)
    Label1: TLabel;
    dbedtIDCARGA: TDBEdit;
    dsCadCargas: TDataSource;
    Label2: TLabel;
    dbedtDESTINO: TDBEdit;
    Label6: TLabel;
    dbedtVLRADT: TDBEdit;
    Label8: TLabel;
    dbedtVLRRET: TDBEdit;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    Label3: TLabel;
    dbedtVLRFREIDA: TDBEdit;
    Label4: TLabel;
    dbedtVLRFREVOL: TDBEdit;
    Label5: TLabel;
    dbcbbFRERETPAG: TDBComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dsCadCargasStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbedtVLRADTExit(Sender: TObject);
    procedure dbcbbFRERETPAGExit(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaDados();
  public
    { Public declarations }
  end;

var
  FCadCargas: TFCadCargas;

implementation

uses UDmFire, UDespesasViagem;

{$R *.dfm}

//procedimento para atualizar a carga
procedure TFCadCargas.AtualizaDados;
begin
  if DmFire.CadCargas.State in [dsEdit] then
   begin
     //consulto se existe a entrada e saida do veiculo
     DmFire.ConsSql.Close;
     DmFire.ConsSql.SQL.Clear;
     DmFire.ConsSql.SQL.Add('SELECT entrada_saida.carga');
     DmFire.ConsSql.SQL.Add(' FROM entrada_saida');
     DmFire.ConsSql.SQL.Add(' WHERE');
     DmFire.ConsSql.SQL.Add(' entrada_saida.carga = :carga');
     DmFire.ConsSql.ParamByName('carga').Value := DmFire.CadCargasIDCARGA.AsInteger;
     DmFire.ConsSql.Open;
     if not DmFire.ConsSql.IsEmpty then
        begin
           DmFire.CadCargas.Post;
           DmFire.ibtTransacao.CommitRetaining;

           FDespesasViagem := TFDespesasViagem.Create(Self);
           FDespesasViagem.Show;
           FDespesasViagem.edtNumCarga.Value := DmFire.CadCargasIDCARGA.AsInteger;
           FDespesasViagem.edtNumCargaExit(Self);
           DmFire.CadEntradaSaida.Edit;
           FDespesasViagem.CalculaTotal;
           FDespesasViagem.btnConfirmar.Click;
           FreeAndNil(FDespesasViagem);
        end;
   end;
end;

procedure TFCadCargas.btnCancelarClick(Sender: TObject);
begin
DmFire.CadCargas.Cancel;
end;

procedure TFCadCargas.btnConfirmarClick(Sender: TObject);
begin
  if Trim(DmFire.CadCargasDESTINO.Text) = '' then
     begin
       Application.MessageBox('Informe o destino','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := dbedtDESTINO;
       Abort;
     end;

     if DmFire.CadCargas.State in [dsInsert] then
        begin
          DmFire.CadCargasSITCAR.AsString := 'ABERTO';
        end;

     if DmFire.CadCargasVLRADT.AsFloat = 0 then
        begin
          if Application.MessageBox('Não foi informado valor de adiantamento, deseja gerar carga assim mesmo?','Aviso',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2)=mrNo then
             begin
               Abort;
             end;
        end;

  DmFire.CadCargas.Post;
  Close;
end;

procedure TFCadCargas.dbcbbFRERETPAGExit(Sender: TObject);
begin
 AtualizaDados;
end;

procedure TFCadCargas.dbedtVLRADTExit(Sender: TObject);
begin
  AtualizaDados;
end;

procedure TFCadCargas.dsCadCargasStateChange(Sender: TObject);
begin
  if DmFire.CadCargas.State in [dsInsert,dsEdit] then
     begin
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
     end
  else
     begin
       btnConfirmar.Enabled := False;
       btnCancelar.Enabled := False;
     end;
end;

procedure TFCadCargas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadCargas.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadCargas.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
