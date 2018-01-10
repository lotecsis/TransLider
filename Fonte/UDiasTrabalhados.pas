unit UDiasTrabalhados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, frxClass, frxDBSet, DBClient;

type
  TFDiasTrabalhados = class(TForm)
    edtAno: TCurrencyEdit;
    Label1: TLabel;
    btnMostrar: TBitBtn;
    dbg1: TDBGrid;
    dsClientDiasTrabalhados: TDataSource;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasSITMOT: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    Entrada_Saida: TIBQuery;
    Entrada_SaidaCODMOT: TIntegerField;
    Entrada_SaidaDATSAIDA: TDateField;
    Entrada_SaidaDATENT: TDateField;
    Entrada_SaidaCARGA: TIntegerField;
    btnImprimir: TBitBtn;
    frxImpressao: TfrxReport;
    frxDBClientDiasTrabalhados: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure frxImpressaoGetValue(const VarName: string; var Value: Variant);
    procedure dbg1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDiasTrabalhados: TFDiasTrabalhados;

implementation

uses UDmFire;

{$R *.dfm}

procedure TFDiasTrabalhados.btnImprimirClick(Sender: TObject);
begin
if not DmFire.ClientDiasTrabalhados.IsEmpty then
   begin
     frxImpressao.ShowReport();
   end;
end;

procedure TFDiasTrabalhados.btnMostrarClick(Sender: TObject);
var Ano,Mes,Dia : Word;
begin
  if edtAno.Value = 0 then
     begin
       Application.MessageBox('Informe o ano','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtAno;
       Abort;
     end;

 // DecodeDate(Date,Ano,Mes,Dia);
 Ano := edtAno.AsInteger;

  DmFire.ClientDiasTrabalhados.Open;
  while NOT DmFire.ClientDiasTrabalhados.Eof do
    begin
      DmFire.ClientDiasTrabalhados.Delete;
    end;

  Motoristas.Close;
  Motoristas.Open;
  while NOT Motoristas.Eof do
    begin

      DmFire.ClientDiasTrabalhados.Insert;
      DmFire.ClientDiasTrabalhadosNomMot.AsString := MotoristasNOMMOT.AsString;
      DmFire.ClientDiasTrabalhadosCodMot.AsInteger := MotoristasCODMOT.AsInteger;
      DmFire.ClientDiasTrabalhadosJan.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosFev.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosMar.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosAbr.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosMai.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosJun.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosJul.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosAgo.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosSet.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosOut.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosNov.AsInteger := 0;
      DmFire.ClientDiasTrabalhadosDez.AsInteger := 0;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/01/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/01/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          DmFire.ClientDiasTrabalhadosJan.AsInteger := DmFire.ClientDiasTrabalhadosJan.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/02/'+IntToStr(Ano));
      if ano = 2016 then
         Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('29/02/'+IntToStr(Ano))
      else
         Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('28/02/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          DmFire.ClientDiasTrabalhadosFev.AsInteger := DmFire.ClientDiasTrabalhadosFev.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/03/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/03/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosMar.AsInteger := DmFire.ClientDiasTrabalhadosMar.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/04/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('30/04/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosAbr.AsInteger := DmFire.ClientDiasTrabalhadosAbr.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/05/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/05/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosMai.AsInteger := DmFire.ClientDiasTrabalhadosMai.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/06/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('30/06/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosJun.AsInteger := DmFire.ClientDiasTrabalhadosJun.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/07/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/07/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosJul.AsInteger := DmFire.ClientDiasTrabalhadosJul.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/08/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/08/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosAgo.AsInteger := DmFire.ClientDiasTrabalhadosAgo.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/09/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('30/09/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosSet.AsInteger := DmFire.ClientDiasTrabalhadosSet.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/10/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/10/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosOut.AsInteger := DmFire.ClientDiasTrabalhadosOut.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/11/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('30/11/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosNov.AsInteger := DmFire.ClientDiasTrabalhadosNov.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;

      Entrada_Saida.Close;
      Entrada_Saida.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      Entrada_Saida.ParamByName('DATINI').AsDate := StrToDate('01/12/'+IntToStr(Ano));
      Entrada_Saida.ParamByName('DATFIM').AsDate := StrToDate('31/12/'+IntToStr(Ano));
      Entrada_Saida.Open;
      while not Entrada_Saida.Eof do
        begin
          if Entrada_SaidaDATENT.AsDateTime <> 0 then
             DmFire.ClientDiasTrabalhadosDez.AsInteger := DmFire.ClientDiasTrabalhadosDez.AsInteger + DaysBetween(Entrada_SaidaDATSAIDA.AsDateTime,Entrada_SaidaDATENT.AsDateTime) + 1;
          Entrada_Saida.Next;
        end;


      DmFire.ClientDiasTrabalhados.Post;
      Motoristas.Next;
    end;
end;

procedure TFDiasTrabalhados.dbg1TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idx: TClientDataSet;
begin
   clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idx.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idx.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idx.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idx.IndexName := indice;
    clientdataset_idx.First;
  end
  else
     begin
       clientdataset_idx.IndexFieldNames := Column.FieldName;
       clientdataset_idx.First;
     end;

end;

procedure TFDiasTrabalhados.FormShow(Sender: TObject);
var Dia,Mes,Ano : Word;
begin
 DmFire.ClientDiasTrabalhados.Close;
 DecodeDate(Date,Ano,Mes,Dia);
 edtAno.Value := Ano;

end;

procedure TFDiasTrabalhados.frxImpressaoGetValue(const VarName: string;
  var Value: Variant);
begin
if VarName = 'Ano' then
         Value := 'Ano: '+IntToStr(edtAno.AsInteger);
end;

end.
