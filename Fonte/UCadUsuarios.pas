unit UCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, Buttons,
  PlatformDefaultStyleActnCtrls, ActnList, ActnMan, ImgList;

type
  TFCadUsuarios = class(TForm)
    lbl2: TLabel;
    NOMUSU: TDBEdit;
    LOGUSU: TDBEdit;
    SENUSU: TDBEdit;
    lbl1: TLabel;
    lbl4: TLabel;
    dbg1: TDBGrid;
    dbgPermissoes: TDBGrid;
    btnConfirmar: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    dsConsUsuario: TDataSource;
    dsCadUsuPermissoes: TDataSource;
    actmgra: TActionManager;
    ImageList1: TImageList;
    lbl3: TLabel;
    dbcbbCATUSU: TDBComboBox;
    lbl5: TLabel;
    dbcbbIN_LEMBRETE: TDBComboBox;
    ImageList16: TImageList;
    procedure btnNovoClick(Sender: TObject);
    procedure dsCadUsuarioStateChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPermissoesCellClick(Column: TColumn);
    procedure dbgPermissoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsCadUsuCadStateChange(Sender: TObject);
  private
    { Private declarations }
    vaStatusCadUsuario : TDataSetState;
  public
    { Public declarations }
  end;

var
  FCadUsuarios: TFCadUsuarios;

implementation

uses UDmFire, UPrincipal;

{$R *.dfm}

procedure TFCadUsuarios.btnAlterarClick(Sender: TObject);
begin
  if not DmFire.ConsUsuario.IsEmpty then
     begin
       DmFire.CadUsuario.Close;
       DmFire.CadUsuario.ParamByName('CODUSU').Value := DmFire.ConsUsuarioCODUSU.Value;
       DmFire.CadUsuario.Open;
       if not DmFire.CadUsuario.IsEmpty then
          begin
            DmFire.CadUsuario.Edit;
          end;
     end;
end;

procedure TFCadUsuarios.btnConfirmarClick(Sender: TObject);
var I,II : Integer;
begin
    if Trim(DmFire.CadUsuarioNOMUSU.Value) = '' then
       begin
         Application.MessageBox('Informe o nome','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := NOMUSU;
         Abort;
       end;
    if Trim(DmFire.CadUsuarioLOGUSU.Value) = '' then
       begin
         Application.MessageBox('Informe o login','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := LOGUSU;
         Abort;
       end;
    if Trim(DmFire.CadUsuarioSENUSU.Value) = '' then
       begin
         Application.MessageBox('Informe a senha','Atenção', MB_ICONWARNING+MB_OK);
         ActiveControl := SENUSU;
         Abort;
       end;

    if vaStatusCadUsuario in [dsInsert] then
       begin
         DmFire.ConsSql.Close;
         DmFire.ConsSql.SQL.Clear;
         DmFire.ConsSql.SQL.Add(' SELECT max(CODUSU) AS CODUSU FROM USUARIO');
         DmFire.ConsSql.Open;
         if DmFire.ConsSql.IsEmpty then
            DmFire.CadUsuarioCODUSU.Value := 1
         else
            DmFire.CadUsuarioCODUSU.Value := DmFire.ConsSql.FieldByName('CODUSU').AsInteger + 1;

          DmFire.CadUsuarioDATCAD.Value := date;
       end;

    DmFire.CadUsuario.Post;


   II := FPrincipal.ActionManeger.ActionCount;
   for I := 0 to II - 1 do
      begin
        DmFire.ConsSql.Close;
        DmFire.ConsSql.SQL.Clear;
        DmFire.ConsSql.SQL.Add('select USUPERMISSOES.NOMACT');
        DmFire.ConsSql.SQL.Add(' FROM USUPERMISSOES');
        DmFire.ConsSql.SQL.Add(' WHERE');
        DmFire.ConsSql.SQL.Add(' NOMACT LIKE '+QuotedStr(TAction(FPrincipal.ActionManeger.Actions[I]).Name));
        DmFire.ConsSql.SQL.Add(' AND CODUSU = :CODUSU');
        DmFire.ConsSql.ParamByName('CODUSU').Value := DmFire.CadUsuarioCODUSU.Value;
        DmFire.ConsSql.Open;
        if DmFire.ConsSql.IsEmpty then
           begin
             DmFire.CadUsuPermissoes.Open;
             DmFire.CadUsuPermissoes.Insert;
             DmFire.CadUsuPermissoesCODUSU.Value := DmFire.CadUsuarioCODUSU.Value;
             DmFire.CadUsuPermissoesNOMACT.Value := TAction(FPrincipal.ActionManeger.Actions[I]).Name;
             DmFire.CadUsuPermissoesDESACT.Value := TAction(FPrincipal.ActionManeger.Actions[I]).Caption;
             DmFire.CadUsuPermissoesIMGINDEX.Value := TAction(FPrincipal.ActionManeger.Actions[I]).ImageIndex;
             DmFire.CadUsuPermissoesTAG.Value := TAction(FPrincipal.ActionManeger.Actions[I]).Tag;
             DmFire.CadUsuPermissoesIN_LIBERADO.Value := 'N';

             DmFire.ConsSql.Close;
             DmFire.ConsSql.SQL.Clear;
             DmFire.ConsSql.SQL.Add(' SELECT MAX(SEQPER) AS SEQPER FROM usupermissoes');
             DmFire.ConsSql.SQL.Add(' WHERE CODUSU = :CODUSU');
             DmFire.ConsSql.ParamByName('CODUSU').Value := DmFire.CadUsuarioCODUSU.Value;
             DmFire.ConsSql.Open;
             if DmFire.ConsSql.IsEmpty then
                DmFire.CadUsuPermissoesSEQPER.AsInteger := 1
             else
                DmFire.CadUsuPermissoesSEQPER.AsInteger := DmFire.ConsSql.FieldByName('SEQPER').AsInteger + 1;

             DmFire.CadUsuPermissoes.Post;
           end;

      end;
        {ShowMessage(TAction(FPrincipal.ActionManeger.Actions[I]).Caption);
        ShowMessage(IntToStr(TAction(FPrincipal.ActionManeger.Actions[I]).Tag));}


   DmFire.IbtTransacao.CommitRetaining;

    DmFire.CadUsuario.Close;


    DmFire.CadUsuPermissoes.Close;
    DmFire.CadUsuPermissoes.ParamByName('CODUSU').Value := DmFire.CadUsuarioCODUSU.Value;
    DmFire.CadUsuPermissoes.Open;

     DmFire.ConsUsuario.Close;
     DmFire.ConsUsuario.Open;
end;

procedure TFCadUsuarios.btnNovoClick(Sender: TObject);
begin
    DmFire.CadUsuario.Open;
    DmFire.CadUsuario.Insert;

    ActiveControl := NOMUSU;

end;

procedure TFCadUsuarios.dbgPermissoesCellClick(Column: TColumn);
begin
  if dbgPermissoes.SelectedIndex = 0 then
     begin
        DmFire.CadUsuPermissoes.Edit;

        if DmFire.CadUsuPermissoesIN_LIBERADO.Value = 'N' then
           DmFire.CadUsuPermissoesIN_LIBERADO.Value := 'S'
        else
        if DmFire.CadUsuPermissoesIN_LIBERADO.Value = 'S' then
           DmFire.CadUsuPermissoesIN_LIBERADO.Value := 'N';

        DmFire.CadUsuPermissoes.Post;
        DmFire.IbtTransacao.CommitRetaining;
     end;
end;

procedure TFCadUsuarios.dbgPermissoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not DmFire.CadUsuPermissoes.IsEmpty then
   begin
      if Column.FieldName = 'ImagemIcone' then
          begin
              dbgPermissoes.Canvas.FillRect(Rect);
              // Desenha o Quadrado
            //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

              // Desenha o check sobre o quadrado

              ImageList16.Draw(dbgPermissoes.Canvas,Rect.Left+10,Rect.Top+1,DmFire.CadUsuPermissoesIMGINDEX.AsInteger);
          end
      else
      if Column.FieldName = 'ImagemSit' then
         begin
           dbgPermissoes.Canvas.FillRect(Rect);
            // Desenha o Quadrado
          //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

            // Desenha o check sobre o quadrado
            if (DmFire.CadUsuPermissoesIN_LIBERADO.Value = 'S') then
               begin
                ImageList1.Draw(dbgPermissoes.Canvas,Rect.Left+10,Rect.Top+1,1);
               end
            else
            if (DmFire.CadUsuPermissoesIN_LIBERADO.Value  = 'N') then
               begin
                ImageList1.Draw(dbgPermissoes.Canvas,Rect.Left+10,Rect.Top+1,0);
               end;
               Column.Field.Alignment := taCenter;

         end;

   end;
end;

procedure TFCadUsuarios.dsCadUsuarioStateChange(Sender: TObject);
begin
  vaStatusCadUsuario := DmFire.CadUsuario.State;
  if DmFire.CadUsuario.State in [dsInsert,dsEdit] then
     begin
        btnConfirmar.Enabled := True;
        btnNovo.Enabled := false;
        btnAlterar.Enabled := false;
     end
  else
     begin
        btnConfirmar.Enabled := false;
        btnNovo.Enabled := True;
        btnAlterar.Enabled := True;
     end;
end;

procedure TFCadUsuarios.dsCadUsuCadStateChange(Sender: TObject);
begin
 vaStatusCadUsuario := DmFire.CadUsuario.State;
  if DmFire.CadUsuario.State in [dsInsert,dsEdit] then
     begin
        btnConfirmar.Enabled := True;
        btnNovo.Enabled := false;
        btnAlterar.Enabled := false;
     end
  else
     begin
        btnConfirmar.Enabled := false;
        btnNovo.Enabled := True;
        btnAlterar.Enabled := True;
     end;
end;

procedure TFCadUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadUsuarios.FormShow(Sender: TObject);
begin
  DmFire.CadUsuario.Close;
  DmFire.CadUsuario.Open;

  DmFire.ConsUsuario.Close;
  DmFire.ConsUsuario.Open;

end;

end.
