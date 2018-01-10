unit UComissaoPorFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons, rxCurrEdit, Mask, rxToolEdit, DateUtils,
  DBCtrls, ImgList;

type
  TFComissaoPorFrete = class(TForm)
    dbg1: TDBGrid;
    dsClientConsComissaoVlrFrete: TDataSource;
    btnMostrar: TBitBtn;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbedtTVlrFreTot: TDBEdit;
    dbedtTVlrFreVol: TDBEdit;
    dbedtTVlrFreIda: TDBEdit;
    dbedtTVlrCom: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    ImageList1: TImageList;
    btnImprimir: TBitBtn;
    dbedtTQtdCar: TDBEdit;
    lbl5: TLabel;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComissaoPorFrete: TFComissaoPorFrete;

implementation

uses UDmFire, URelacaoCargas;

{$R *.dfm}

procedure TFComissaoPorFrete.btnImprimirClick(Sender: TObject);
begin
  DmFire.RvComissaoPorFrete.SetParam('PERIODO',DateToStr(edtDatIni.Date)+'  à  '+DateToStr(edtDatFim.Date));
  DmFire.RvComissaoPorFrete.SetParam('VLRFREIDA',FormatFloat(',0.00', DmFire.ClientConsComissaoVlrFreteTVlrFreIda.Value));
  DmFire.RvComissaoPorFrete.SetParam('VLRFREVOL',FormatFloat(',0.00', DmFire.ClientConsComissaoVlrFreteTVlrFreVol.Value));
  DmFire.RvComissaoPorFrete.SetParam('VLRTOTAL',FormatFloat(',0.00', DmFire.ClientConsComissaoVlrFreteTVlrFreTot.Value));
  DmFire.RvComissaoPorFrete.SetParam('VLRCOM',FormatFloat(',0.00', DmFire.ClientConsComissaoVlrFreteTVlrCom.Value));
  DmFire.RvComissaoPorFrete.SetParam('QTDCAR',IntToStr(DmFire.ClientConsComissaoVlrFreteTQtdCar.Value));
  DmFire.RvComissaoPorFrete.Execute;
end;

procedure TFComissaoPorFrete.btnMostrarClick(Sender: TObject);
begin
  if edtDatIni.Date = 0 then
     begin
       Application.MessageBox('Informe a data inicial','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatIni;
       Abort;
     end;

  if edtDatFim.Date = 0 then
     begin
       Application.MessageBox('Informe a data final','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatFim;
       Abort;
     end;

  DmFire.ClientConsComissaoVlrFrete.Close;
  DmFire.ConsComissaoVlrFrete.Close;
  DmFire.ConsComissaoVlrFrete.ParamByName('DATINI').Value := edtDatIni.Date;
  DmFire.ConsComissaoVlrFrete.ParamByName('DATFIM').Value := edtDatFim.Date;
  DmFire.ConsComissaoVlrFrete.Open;
  DmFire.ClientConsComissaoVlrFrete.Open;

end;

procedure TFComissaoPorFrete.dbg1CellClick(Column: TColumn);
begin
if not DmFire.ClientConsComissaoVlrFrete.IsEmpty then
   begin
      if dbg1.SelectedField.FieldName = 'vaImg' then
         begin
           FRelacaoCargas := TFRelacaoCargas.Create(Self);
           FRelacaoCargas.vnCodMot := DmFire.ClientConsComissaoVlrFreteCODMOT.AsInteger;
           FRelacaoCargas.Show;
           FRelacaoCargas.chkSituacao.Checked := False;
           FRelacaoCargas.chkDataSaida.Checked := True;
           FRelacaoCargas.edtDatSaidaIni.Date := edtDatIni.Date;
           FRelacaoCargas.edtDatSaidaFim.Date := edtDatFim.Date;
           FRelacaoCargas.btnNovo.Enabled := False;
           FRelacaoCargas.btnAbrir.Enabled := False;
           FRelacaoCargas.btnMostrar.Click;

         end;
   end;
end;

procedure TFComissaoPorFrete.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not DmFire.ClientConsComissaoVlrFrete.IsEmpty then
   begin
      if Column.FieldName = 'vaImg' then
          begin
            dbg1.Canvas.FillRect(Rect);
            ImageList1.Draw(dbg1.Canvas,Rect.Left+6,Rect.Top+1,0);
          end;
   end;
end;

procedure TFComissaoPorFrete.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheMonth(Date);
  edtDatFim.Date := EndOfTheMonth(Date);

  btnMostrar.Click;
end;

end.
