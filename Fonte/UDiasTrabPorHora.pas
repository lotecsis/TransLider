unit UDiasTrabPorHora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, Buttons,
  Mask, rxToolEdit, rxCurrEdit, frxClass, frxDBSet;

type
  Tx = class(TForm)
    Label1: TLabel;
    edtAno: TCurrencyEdit;
    btnMostrar: TBitBtn;
    dbg1: TDBGrid;
    btnImprimir: TBitBtn;
    dsClientDiasTrabalhados: TDataSource;
    Motoristas: TIBQuery;
    MotoristasCODMOT: TIntegerField;
    MotoristasNOMMOT: TIBStringField;
    MotoristasSITMOT: TIBStringField;
    MotoristasTIPMOT: TIBStringField;
    HorasTrab: TIBQuery;
    HorasTrabQTDMIN: TFloatField;
    frxImpressao: TfrxReport;
    frxDBClientDiasTrabalhados: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure frxImpressaoGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  x: Tx;

implementation

uses UDmFire;

{$R *.dfm}

procedure Tx.btnImprimirClick(Sender: TObject);
begin
if not DmFire.ClientDiasTrabalhados.IsEmpty then
   begin
     frxImpressao.ShowReport();
   end;
end;

procedure Tx.btnMostrarClick(Sender: TObject);
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
      DmFire.ClientDiasTrabalhadosJan.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosFev.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosMar.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosAbr.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosMai.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosJun.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosJul.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosAgo.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosSet.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosOut.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosNov.AsFloat := 0;
      DmFire.ClientDiasTrabalhadosDez.AsFloat := 0;

      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/01/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/01/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosJan.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/02/'+IntToStr(Ano));
      if ano = 2016 then
         HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('29/02/'+IntToStr(Ano))
      else
         HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('28/02/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosFev.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/03/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/03/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosMar.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/04/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('30/04/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosAbr.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/05/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/05/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosMai.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;

      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/06/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('30/06/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosJun.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/07/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/07/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosJul.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/08/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/08/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosAgo.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/09/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('30/09/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosSet.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;

      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/10/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/10/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosOut.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/11/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('30/11/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosNov.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;


      HorasTrab.Close;
      HorasTrab.ParamByName('CODMOT').AsInteger := MotoristasCODMOT.AsInteger;
      HorasTrab.ParamByName('DATINI').AsDate := StrToDate('01/12/'+IntToStr(Ano));
      HorasTrab.ParamByName('DATFIM').AsDate := StrToDate('31/12/'+IntToStr(Ano));
      HorasTrab.Open;
      DmFire.ClientDiasTrabalhadosDez.AsFloat := (HorasTrabQTDMIN.AsFloat / 60) / 8;

      DmFire.ClientDiasTrabalhados.Post;
      Motoristas.Next;
    end;
end;

procedure Tx.FormShow(Sender: TObject);
var Dia,Mes,Ano : Word;
begin
 DmFire.ClientDiasTrabalhados.Close;
 DecodeDate(Date,Ano,Mes,Dia);
 edtAno.Value := Ano;

end;

procedure Tx.frxImpressaoGetValue(const VarName: string;
  var Value: Variant);
begin
if VarName = 'Ano' then
         Value := 'Ano: '+IntToStr(edtAno.AsInteger);
end;

end.
