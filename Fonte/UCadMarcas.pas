unit UCadMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, jpeg;

type
  TFCadMarcas = class(TForm)
    dsCadMarcas: TDataSource;
    DBEDESMAR: TDBEdit;
    btnNovo: TBitBtn;
    btnConfirmar: TBitBtn;
    dsConsMarcas: TDataSource;
    dbg1: TDBGrid;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    img1: TImage;
    lblMarca: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure dsCadMarcasStateChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    vaStatusCadMar : TDataSetState;
  public
    { Public declarations }
  end;

var
  FCadMarcas: TFCadMarcas;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFCadMarcas.btnAlterarClick(Sender: TObject);
begin
  if not DmFire.ConsMarcas.IsEmpty then
     begin
       DmFire.CadMarcas.Close;
       DmFire.CadMarcas.ParamByName('codmar').AsInteger := DmFire.ConsMarcasCODMAR.AsInteger;
       DmFire.CadMarcas.Open;
       if not DmFire.CadMarcas.IsEmpty then
          begin
            DmFire.CadMarcas.Edit;
          end;
     end;
end;

procedure TFCadMarcas.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadMarcas.Cancel;
end;

procedure TFCadMarcas.btnConfirmarClick(Sender: TObject);
begin
  if Trim(DBEDESMAR.Text) = '' then
     begin
       Application.MessageBox('Informe a descição da marca','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBEDESMAR;
       Abort;
     end;

     DmFire.CadMarcas.Post;
     DmFire.ibtTransacao.CommitRetaining;

     DmFire.ConsMarcas.Close;
     DmFire.ConsMarcas.Open;
end;

procedure TFCadMarcas.btnExcluirClick(Sender: TObject);
begin
  if not DmFire.ConsMarcas.IsEmpty then
     begin
       DmFire.CadMarcas.Close;
       DmFire.CadMarcas.ParamByName('codmar').AsInteger := DmFire.ConsMarcasCODMAR.AsInteger;
       DmFire.CadMarcas.Open;
       if not DmFire.CadMarcas.IsEmpty then
          begin
            if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
                Begin
                   DmFire.CadMarcas.Delete;
                   DmFire.ibtTransacao.CommitRetaining;

                   DmFire.ConsMarcas.Close;
                   DmFire.ConsMarcas.Open;
                End;
          end;
     end;
end;

procedure TFCadMarcas.btnNovoClick(Sender: TObject);
begin
  DmFire.CadMarcas.Open;
  DmFire.CadMarcas.Insert;

   DmFire.CadMarcasCODUSU.Value := FPrincipal.vnCodUsu;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODMAR) AS CODMAR FROM MARCAS');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadMarcasCODMAR.AsInteger := 1
   else
      DmFire.CadMarcasCODMAR.AsInteger := DmFire.ConsSql.FieldByName('CODMAR').AsInteger + 1;

   ActiveControl := DBEDESMAR;
end;

procedure TFCadMarcas.dsCadMarcasStateChange(Sender: TObject);
begin
  if DmFire.CadMarcas.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       lblMarca.Visible := True;
       DBEDESMAR.Visible := True;
     end
  else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       lblMarca.Visible := false;
       DBEDESMAR.Visible := False;
     end;

  vaStatusCadMar := DmFire.CadMarcas.State;
end;

procedure TFCadMarcas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadMarcas.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadMarcas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadMarcas.FormShow(Sender: TObject);
begin
  DmFire.CadMarcas.Close;
  DmFire.CadMarcas.Open;
  ActiveControl := nil;

  DmFire.ConsMarcas.Close;
  DmFire.ConsMarcas.Open;
end;

end.

