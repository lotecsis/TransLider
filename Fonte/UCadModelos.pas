unit UCadModelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, IBCustomDataSet, IBQuery,
  Grids, DBGrids, jpeg, ExtCtrls;

type
  TFCadModelos = class(TForm)
    dsCadModelos: TDataSource;
    DBEDESMOD: TDBEdit;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    Marcas: TIBQuery;
    MarcasCODMAR: TIntegerField;
    MarcasCODUSU: TIntegerField;
    MarcasDESMAR: TIBStringField;
    dsMarcas: TDataSource;
    dblkcbbCODMAR: TDBLookupComboBox;
    dbg1: TDBGrid;
    dsConsModelos: TDataSource;
    img1: TImage;
    lblModelo: TLabel;
    lblMarca: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dsCadModelosStateChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadModelos: TFCadModelos;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFCadModelos.btnAlterarClick(Sender: TObject);
begin
if not DmFire.ConsModelos.IsEmpty then
     begin
       DmFire.CadModelos.Close;
       DmFire.CadModelos.ParamByName('codmod').AsInteger := DmFire.ConsModelosCODMOD.AsInteger;
       DmFire.CadModelos.Open;
       if not DmFire.CadModelos.IsEmpty then
          begin
            DmFire.CadModelos.Edit;
          end;
     end;
end;

procedure TFCadModelos.btnCancelarClick(Sender: TObject);
begin
  DmFire.CadModelos.Cancel;
end;

procedure TFCadModelos.btnConfirmarClick(Sender: TObject);
begin
if Trim(DBEDESMOD.Text) = '' then
     begin
       Application.MessageBox('Informe a descição do modelo','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := DBEDESMOD;
       Abort;
     end;

if Trim(dblkcbbCODMAR.Text) = '' then
     begin
       Application.MessageBox('Informe a marca','Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODMAR;
       Abort;
     end;

     DmFire.CadModelos.Post;
     DmFire.ibtTransacao.CommitRetaining;

     DmFire.ConsModelos.Close;
     DmFire.ConsModelos.Open;

end;

procedure TFCadModelos.btnExcluirClick(Sender: TObject);
begin
if not DmFire.ConsModelos.IsEmpty then
     begin
       DmFire.CadModelos.Close;
       DmFire.CadModelos.ParamByName('codmod').AsInteger := DmFire.ConsModelosCODMOD.AsInteger;
       DmFire.CadModelos.Open;
       if not DmFire.CadModelos.IsEmpty then
          begin
            if Application.MessageBox('Deseja realmente excluir o registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
                Begin
                   DmFire.CadModelos.Delete;
                   DmFire.ibtTransacao.CommitRetaining;

                   DmFire.ConsModelos.Close;
                   DmFire.ConsModelos.Open;
                End;
          end;
     end;
end;

procedure TFCadModelos.btnNovoClick(Sender: TObject);
begin
   DmFire.CadModelos.Open;
   DmFire.CadModelos.Insert;

   DmFire.CadModelosCODUSU.Value := FPrincipal.vnCodUsu;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODMOD) AS CODMOD FROM MODELOS');
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadModelosCODMOD.AsInteger := 1
   else
      DmFire.CadModelosCODMOD.AsInteger := DmFire.ConsSql.FieldByName('CODMOD').AsInteger + 1;

   ActiveControl := DBEDESMOD;
end;

procedure TFCadModelos.dsCadModelosStateChange(Sender: TObject);
begin
if DmFire.CadModelos.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAlterar.Enabled := False;
       btnExcluir.Enabled := false;
       btnConfirmar.Enabled := True;
       btnCancelar.Enabled := True;
       lblMarca.Visible := True;
       lblModelo.Visible := True;
       DBEDESMOD.Visible := True;
       dblkcbbCODMAR.Visible := True;
     end
  else
     begin
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnExcluir.Enabled := True;
       btnConfirmar.Enabled := false;
       btnCancelar.Enabled := false;
       lblMarca.Visible := false;
       DBEDESMOD.Visible := False;
       lblModelo.Visible := FALSE;
       dblkcbbCODMAR.Visible := FALSE;
     end;
end;

procedure TFCadModelos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canClose := False;
with application do
 if DmFire.CadModelos.State in [dsinsert,dsedit] then
  begin
    Application.MessageBox('Salve ou Cancele as alterações antes de fechar!', 'Atenção', MB_ICONWARNING+MB_OK);
  end
 else
   canclose := true;
end;

procedure TFCadModelos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCadModelos.FormShow(Sender: TObject);
begin
  Marcas.Close;
  Marcas.Open;
  Marcas.Last;
  Marcas.First;

  DmFire.CadModelos.Close;
  DmFire.CadModelos.Open;

  DmFire.ConsModelos.Close;
  DmFire.ConsModelos.Open;
end;

end.
