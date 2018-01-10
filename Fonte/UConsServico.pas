unit UConsServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFConsServico = class(TForm)
    dbg1: TDBGrid;
    btnNovo: TBitBtn;
    btnAbrirFicha: TBitBtn;
    lbl1: TLabel;
    edtServico: TEdit;
    dsConsServico: TDataSource;
    lbl2: TLabel;
    cbbPeriodico: TComboBox;
    lbl3: TLabel;
    cbbExigeRevisao: TComboBox;
    lbl4: TLabel;
    cbbSituacao: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtServicoChange(Sender: TObject);
    procedure cbbPeriodicoCloseUp(Sender: TObject);
    procedure cbbPeriodicoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbExigeRevisaoCloseUp(Sender: TObject);
    procedure cbbExigeRevisaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbSituacaoCloseUp(Sender: TObject);
    procedure cbbSituacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAbrirFichaClick(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsServico: TFConsServico;

implementation

uses UDmFire, UCadServico;

{$R *.dfm}

procedure TFConsServico.btnAbrirFichaClick(Sender: TObject);
begin
if not DmFire.ConsServico.IsEmpty then
     begin
        FCadServico := TFCadServico.Create(Self);
        FCadServico.edtCodSer.Value := DmFire.ConsServicoCODSER.AsInteger;
        FCadServico.vaOperacao := 'CONSULTA';
        FConsServico.Visible := False;
        FCadServico.ShowModal;
        FreeAndNil(FCadServico);
        FConsServico.Visible := True;
     end;
end;

procedure TFConsServico.btnNovoClick(Sender: TObject);
begin
    FCadServico := TFCadServico.Create(Self);
    FCadServico.vaOperacao := 'INSERIR';
    FConsServico.Visible := False;
    FCadServico.ShowModal;
    FreeAndNil(FCadServico);
    FConsServico.Visible := True;

end;

procedure TFConsServico.cbbExigeRevisaoCloseUp(Sender: TObject);
begin
edtServicoChange(Sender);
end;

procedure TFConsServico.cbbExigeRevisaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edtServicoChange(Sender);
end;

procedure TFConsServico.cbbPeriodicoCloseUp(Sender: TObject);
begin
edtServicoChange(Sender);
end;

procedure TFConsServico.cbbPeriodicoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  edtServicoChange(Sender);
end;

procedure TFConsServico.cbbSituacaoCloseUp(Sender: TObject);
begin
edtServicoChange(Sender);
end;

procedure TFConsServico.cbbSituacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edtServicoChange(Sender);
end;

procedure TFConsServico.dbg1DblClick(Sender: TObject);
begin
  if not DmFire.ConsServico.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
end;

procedure TFConsServico.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if not DmFire.ConsServico.IsEmpty then
     begin
       btnAbrirFicha.Click;
     end;
   end;
end;

procedure TFConsServico.edtServicoChange(Sender: TObject);
begin
  DmFire.ConsServico.Close;
  DmFire.ConsServico.SQL.Clear;
  DmFire.ConsServico.SQL.Add('SELECT SERVICO.*');
  DmFire.ConsServico.SQL.Add(' FROM SERVICO');
  DmFire.ConsServico.SQL.Add(' WHERE SERVICO.DESSER LIKE '+QuotedStr('%'+edtServico.Text+'%'));

  if cbbPeriodico.Text <> 'TODOS' then
     begin
       DmFire.ConsServico.SQL.Add(' AND SERVICO.IN_PERIODICO = '+QuotedStr(cbbPeriodico.Text));
     end;

  if cbbExigeRevisao.Text <> 'TODOS' then
     begin
       DmFire.ConsServico.SQL.Add(' AND SERVICO.IN_REVISAO = '+QuotedStr(cbbExigeRevisao.Text));
     end;

  if cbbSituacao.Text <> 'TODOS' then
     begin
       DmFire.ConsServico.SQL.Add(' AND SERVICO.SITSER = '+QuotedStr(cbbSituacao.Text));
     end;

  DmFire.ConsServico.SQL.Add(' ORDER BY SERVICO.DESSER');
  DmFire.ConsServico.Open;
end;

procedure TFConsServico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFConsServico.FormShow(Sender: TObject);
begin
  edtServicoChange(Sender);

  ActiveControl := edtServico;
end;

end.
