unit ULancaManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls, Mask,
  rxToolEdit, RXDBCtrl, Grids, DBGrids, rxCurrEdit,DateUtils, ExtCtrls;

type
  TFLancaManutencao = class(TForm)
    btnNovo: TBitBtn;
    lblPlaca: TLabel;
    Veiculos: TIBQuery;
    VeiculosCODVEI: TIntegerField;
    VeiculosDESVEI: TIBStringField;
    VeiculosPLAVEI: TIBStringField;
    dsVeiculos: TDataSource;
    dblkcbbCODVEI: TDBLookupComboBox;
    lblFornecedor: TLabel;
    Fornecedor: TIBQuery;
    FornecedorCODFOR: TIntegerField;
    FornecedorDESFOR: TIBStringField;
    FornecedorCIDFOR: TIBStringField;
    FornecedorSIGUFS: TIBStringField;
    dsFornecedor: TDataSource;
    dblkcbbCODFOR: TDBLookupComboBox;
    lblKmServico: TLabel;
    dbg1: TDBGrid;
    dsCadManut_Ger: TDataSource;
    edtDATMAN: TDBDateEdit;
    lblData: TLabel;
    dbedtCODMAN: TDBEdit;
    lblOrdemServico: TLabel;
    edtKmSer: TCurrencyEdit;
    dbtxtDESVEI: TDBText;
    dsReserva: TDataSource;
    dbtxtCID_UF: TDBText;
    FornecedorCID_UF: TStringField;
    btnConfirmar: TBitBtn;
    dsClientManutencao_Serv: TDataSource;
    pnl1: TPanel;
    lblServico: TLabel;
    lblDescricao: TLabel;
    lblQuantidade: TLabel;
    lblVlrUnit: TLabel;
    edtCodSer: TCurrencyEdit;
    edtQtdSer: TCurrencyEdit;
    edtVlrUni: TCurrencyEdit;
    edtDesSer: TEdit;
    btnAdicionar: TBitBtn;
    btnConsServico: TBitBtn;
    lblDesSer: TLabel;
    lblVlrTotal: TLabel;
    dbedtVLR_TOTAL: TDBEdit;
    pnl2: TPanel;
    lblDesconto: TLabel;
    lblVlrDesconto: TLabel;
    edtVlrDesc: TCurrencyEdit;
    btnClaculaDesc: TBitBtn;
    dbedtTOTAL_DESC: TDBEdit;
    dbedtVLR_TOTAL_DESC: TDBEdit;
    lblVlrDesconto1: TLabel;
    lblVlrTotal_Desc: TLabel;
    edtGarantia: TEdit;
    lblGarantia: TLabel;
    VeiculosKMATU: TIntegerField;
    Label1: TLabel;
    dbtxtKMATU: TDBText;
    Label2: TLabel;
    dbedtNUMDOC: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblkcbbCODVEICloseUp(Sender: TObject);
    procedure dblkcbbCODVEIKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FornecedorCalcFields(DataSet: TDataSet);
    procedure dblkcbbCODFORCloseUp(Sender: TObject);
    procedure dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCadManut_GerStateChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConsServicoClick(Sender: TObject);
    procedure edtCodSerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodSerExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure pnl1Enter(Sender: TObject);
    procedure btnClaculaDescClick(Sender: TObject);
    procedure dsClientManutencao_ServDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLancaManutencao: TFLancaManutencao;

implementation

uses UDmFire, UPrincipal, UConsServicoLancaManut;

{$R *.dfm}

procedure TFLancaManutencao.btnAdicionarClick(Sender: TObject);
begin
  if DmFire.CadManut_GerDATMAN.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a data', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATMAN;
       Abort;
     end;
  if edtKmSer.Value = 0 then
     begin
       Application.MessageBox('Informe o Km em que o serviço foi realizado', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtKmSer;
       Abort;
     end;
  if edtCodSer.Value = 0 then
     begin
       Application.MessageBox('Informe o Serviço', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodSer;
       Abort;
     end;
  if Trim(edtDesSer.Text) = '' then
     begin
       Application.MessageBox('Informe a Descrição', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDesSer;
       Abort;
     end;

  if edtQtdSer.Value = 0 then
     begin
       Application.MessageBox('Informe a quantidade', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtQtdSer;
       Abort;
     end;
  {if edtVlrUni.Value = 0 then
     begin
       Application.MessageBox('Informe o Valor Unitário', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtVlrUni;
       Abort;
     end;}

   DmFire.ClientManutencao_Serv.Insert;
   DmFire.ClientManutencao_ServSEQSER.Value := 1;
   DmFire.ClientManutencao_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
   DmFire.ClientManutencao_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
   DmFire.ClientManutencao_ServCODSER.Value := edtCodSer.AsInteger;
   DmFire.ClientManutencao_ServNOMSER.Value := lblDesSer.Caption;
   DmFire.ClientManutencao_ServDESSER.Text := edtDesSer.Text;
   DmFire.ClientManutencao_ServDATSER.Value := edtDATMAN.Date;
   DmFire.ClientManutencao_ServKMSER.Value := edtKmSer.AsInteger;
   DmFire.ClientManutencao_ServQTDSER.Value := edtQtdSer.AsInteger;
   DmFire.ClientManutencao_ServVLRUNI.Value := edtVlrUni.Value;

   if DmFire.ConsServicoLancaManutIN_PERIODICO.Value = 'SIM' then
      begin
         DmFire.ClientManutencao_ServTIPSER.Value := 'PERIODICO';

         if DmFire.ConsServicoLancaManutLIMITE_KM.Value > 0 then
            begin
              DmFire.ClientManutencao_ServKMVCT.AsInteger := edtKmSer.AsInteger + DmFire.ConsServicoLancaManutLIMITE_KM.AsInteger;
            end;
         if DmFire.ConsServicoLancaManutLIMITE_DIAS.Value > 0 then
            begin
              DmFire.ClientManutencao_ServDATVCT.Value := IncDay(edtDATMAN.Date,DmFire.ConsServicoLancaManutLIMITE_DIAS.AsInteger);
            end;
      end
   else
   if DmFire.ConsServicoLancaManutIN_REVISAO.Value = 'SIM' then
      begin
        DmFire.ClientManutencao_ServTIPSER.Value := 'COMUM_REVISAO';
      end
   else
   if DmFire.ConsServicoLancaManutCODSERREV.AsInteger <> 0 then //É PQ ESTE ITEM É REVISAO DE UM OUTRO SERVICO
      begin
        DmFire.ClientManutencao_ServTIPSER.Value := 'REVISAO';
      end
   else
   begin
     DmFire.ClientManutencao_ServTIPSER.Value := 'COMUM';
   end;

   if Trim(edtGarantia.Text) = '' then
      begin
        DmFire.ClientManutencao_ServGARANTIA.Value := ' ';
      end
   else
      begin
        DmFire.ClientManutencao_ServGARANTIA.Value := edtGarantia.Text;
      end;

   DmFire.ClientManutencao_Serv.Post;

   edtCodSer.Value := 0;
   lblDesSer.Caption := '';
   edtDesSer.Clear;
   edtQtdSer.Value := 0;
   edtVlrUni.Value := 0;
   edtGarantia.Clear;
   ActiveControl := edtCodSer;
end;

procedure TFLancaManutencao.btnClaculaDescClick(Sender: TObject);
var vnPerRep, vnVlrDesc : Double;
begin
if not DmFire.ClientManutencao_Serv.IsEmpty then
   begin
      DmFire.ClientManutencao_Serv.First;
      while not DmFire.ClientManutencao_Serv.Eof do
        begin
          vnPerRep := (DmFire.ClientManutencao_ServVLRUNI.AsFloat * 100) / DmFire.ClientManutencao_ServVLR_TOTAL.Value;
          vnVlrDesc := edtVlrDesc.Value * (vnPerRep / 100);
          DmFire.ClientManutencao_Serv.Edit;
          DmFire.ClientManutencao_ServVLRDES.Value := vnVlrDesc;
          DmFire.ClientManutencao_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNI.Value - vnVlrDesc;
          DmFire.ClientManutencao_Serv.Post;

          DmFire.ClientManutencao_Serv.Next;
        end;
   end;
end;

procedure TFLancaManutencao.btnConfirmarClick(Sender: TObject);
begin
  if DmFire.ClientManutencao_Serv.IsEmpty then
     begin
       Application.MessageBox('Informe os serviços realizados antes de confirmar','Atenção',MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodSer;
       Abort;
     end;

  if DmFire.CadManut_GerDATMAN.AsDateTime = 0 then
     begin
       Application.MessageBox('Informe a data', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := edtDATMAN;
       Abort;
     end;
  if Trim(dblkcbbCODFOR.Text) = '' then
     begin
       Application.MessageBox('Informe o fornecedor', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODFOR;
       Abort;
     end;

  DmFire.CadManut_Ger.Post;

  //GRAVA OS ITENS
  DmFire.CadManut_Serv.Open;
  DmFire.ClientManutencao_Serv.First;
  while not DmFire.ClientManutencao_Serv.Eof do
     begin
        if DmFire.ClientManutencao_ServTIPSER.Value = 'COMUM' then
           begin
              DmFire.CadManut_Serv.Insert;
              DmFire.CadManut_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
              DmFire.CadManut_ServNUMORDEM.Value := DmFire.CadManut_GerCODMAN.Value;
              DmFire.CadManut_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
              DmFire.CadManut_ServCODSER.Value := DmFire.ClientManutencao_ServCODSER.Value;
              DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
              DmFire.CadManut_ServDATVCT.Value := DmFire.ClientManutencao_ServDATVCT.Value;
              DmFire.CadManut_ServKMVCT.Value := DmFire.ClientManutencao_ServKMVCT.Value;
              DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
              DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
              DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
              DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
              DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
              DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
              DmFire.CadManut_ServSITSER.Value := 'CONCLUIDO';
              DmFire.CadManut_ServTIPSER.Value := DmFire.ClientManutencao_ServTIPSER.Value;
              DmFire.CadManut_ServGARANTIA.Value := DmFire.ClientManutencao_ServGARANTIA.Value;

              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT MAX(SEQSER) AS SEQSER');
              DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
              DmFire.ConsSql.SQL.Add(' WHERE');
              DmFire.ConsSql.SQL.Add('CODMAN = :CODMAN AND');
              DmFire.ConsSql.SQL.Add('CODVEI = :CODVEI');
              DmFire.ConsSql.ParamByName('CODMAN').AsInteger := DmFire.CadManut_GerCODMAN.Value;
              DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
              DmFire.ConsSql.Open;
              if DmFire.ConsSql.IsEmpty then
                 DmFire.CadManut_ServSEQSER.Value := 1
              else
                 DmFire.CadManut_ServSEQSER.Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger + 1;

             DmFire.CadManut_Serv.Post;
           end
        else
        if DmFire.ClientManutencao_ServTIPSER.Value = 'PERIODICO' then
           begin
              //CONSULTA SE JA EXISTE UM SERVIÇO LANCADO PARA ATUALIZAR
              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT CODMAN,CODVEI,SEQSER');
              DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
              DmFire.ConsSql.SQL.Add(' WHERE');
              DmFire.ConsSql.SQL.Add(' CODVEI = :CODVEI AND');
              DmFire.ConsSql.SQL.Add(' CODSER = :CODSER AND');
              DmFire.ConsSql.SQL.Add('SITSER = ''ABERTO''');
              DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.ClientManutencao_ServCODVEI.Value;
              DmFire.ConsSql.ParamByName('CODSER').AsInteger := DmFire.ClientManutencao_ServCODSER.Value;
              DmFire.ConsSql.Open;
              if not DmFire.ConsSql.IsEmpty then
                 begin
                   DmFire.CadManut_Serv.Close;
                   DmFire.CadManut_Serv.ParamByName('CODMAN').Value := DmFire.ConsSql.FieldByName('CODMAN').AsInteger;
                   DmFire.CadManut_Serv.ParamByName('CODVEI').Value := DmFire.ConsSql.FieldByName('CODVEI').AsInteger;
                   DmFire.CadManut_Serv.ParamByName('SEQSER').Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger;
                   DmFire.CadManut_Serv.Open;
                   if not DmFire.CadManut_Serv.IsEmpty then
                      begin
                        DmFire.CadManut_Serv.Edit;
                        DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
                        DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
                        DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
                        DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
                        DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
                        DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
                        DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
                        DmFire.CadManut_ServSITSER.Value := 'CONCLUIDO';
                        DmFire.CadManut_ServNUMORDEM.Value := DmFire.CadManut_GerCODMAN.Value;
                        DmFire.CadManut_Serv.Post;

                        //ATUALIZA O FORNECEDOR DA ORDEM DESTE SERVIÇO
                        DmFire.ConsSql.Close;
                        DmFire.ConsSql.SQL.Clear;
                        DmFire.ConsSql.SQL.Add('UPDATE MANUT_GER SET CODFOR = :CODFOR');
                        DmFire.ConsSql.SQL.Add(' WHERE');
                        DmFire.ConsSql.SQL.Add(' CODMAN = :CODMAN AND');
                        DmFire.ConsSql.SQL.Add(' CODVEI = :CODVEI');
                        DmFire.ConsSql.ParamByName('CODFOR').Value := DmFire.CadManut_GerCODFOR.Value;
                        DmFire.ConsSql.ParamByName('CODMAN').Value := DmFire.CadManut_ServCODMAN.Value;
                        DmFire.ConsSql.ParamByName('CODVEI').Value := DmFire.CadManut_ServCODVEI.Value;
                        DmFire.ConsSql.ExecSQL;
                      end;
                 end
              else
                 begin
                   //SE NAO EXISTIR GRAVA UM COM O HISTORICO E GERA O OUTRO EM ABERTO
                    DmFire.CadManut_Serv.Insert;
                    DmFire.CadManut_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
                    DmFire.CadManut_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
                    DmFire.CadManut_ServNUMORDEM.Value := DmFire.CadManut_GerCODMAN.Value;
                    DmFire.CadManut_ServCODSER.Value := DmFire.ClientManutencao_ServCODSER.Value;
                    DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
                    DmFire.CadManut_ServDATVCT.Value := Date;
                    DmFire.CadManut_ServKMVCT.Value := 0;
                    DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
                    DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
                    DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
                    DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
                    DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
                    DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
                    DmFire.CadManut_ServSITSER.Value := 'CONCLUIDO';
                    DmFire.CadManut_ServTIPSER.Value := DmFire.ClientManutencao_ServTIPSER.Value;
                    DmFire.CadManut_ServGARANTIA.Value := DmFire.ClientManutencao_ServGARANTIA.Value;

                    DmFire.ConsSql.Close;
                    DmFire.ConsSql.SQL.Clear;
                    DmFire.ConsSql.SQL.Add('SELECT MAX(SEQSER) AS SEQSER');
                    DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
                    DmFire.ConsSql.SQL.Add(' WHERE');
                    DmFire.ConsSql.SQL.Add('CODMAN = :CODMAN AND');
                    DmFire.ConsSql.SQL.Add('CODVEI = :CODVEI');
                    DmFire.ConsSql.ParamByName('CODMAN').AsInteger := DmFire.CadManut_GerCODMAN.Value;
                    DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
                    DmFire.ConsSql.Open;
                    if DmFire.ConsSql.IsEmpty then
                       DmFire.CadManut_ServSEQSER.Value := 1
                    else
                       DmFire.CadManut_ServSEQSER.Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger + 1;
                   DmFire.CadManut_Serv.Post;
                 end;

              //AGORA GERA O QUE VAI FICAR EM ABERTO
              DmFire.CadManut_Serv.Insert;
              DmFire.CadManut_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
              DmFire.CadManut_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
              DmFire.CadManut_ServNUMORDEM.Value := 0;
              DmFire.CadManut_ServCODSER.Value := DmFire.ClientManutencao_ServCODSER.Value;
              //DmFire.CadManut_ServDESSER.Value := '';
              DmFire.CadManut_ServDATVCT.Value := DmFire.ClientManutencao_ServDATVCT.Value;
              DmFire.CadManut_ServKMVCT.Value := DmFire.ClientManutencao_ServKMVCT.Value;
              //DmFire.CadManut_ServDATSER.Value := 0;
              //DmFire.CadManut_ServKMSER.Value := 0;
              //DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
              //DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
              //DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
              //DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
              DmFire.CadManut_ServSITSER.Value := 'ABERTO';
              DmFire.CadManut_ServTIPSER.Value := DmFire.ClientManutencao_ServTIPSER.Value;

              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT MAX(SEQSER) AS SEQSER');
              DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
              DmFire.ConsSql.SQL.Add(' WHERE');
              DmFire.ConsSql.SQL.Add('CODMAN = :CODMAN AND');
              DmFire.ConsSql.SQL.Add('CODVEI = :CODVEI');
              DmFire.ConsSql.ParamByName('CODMAN').AsInteger := DmFire.CadManut_GerCODMAN.Value;
              DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
              DmFire.ConsSql.Open;
              if DmFire.ConsSql.IsEmpty then
                 DmFire.CadManut_ServSEQSER.Value := 1
              else
                 DmFire.CadManut_ServSEQSER.Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger + 1;
             DmFire.CadManut_Serv.Post;
           end
        else
        if DmFire.ClientManutencao_ServTIPSER.Value = 'COMUM_REVISAO' then
           begin
             //grava a manutenção depois consulta os vencimentos das revisoes
              DmFire.CadManut_Serv.Insert;
              DmFire.CadManut_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
              DmFire.CadManut_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
              DmFire.CadManut_ServNUMORDEM.Value := DmFire.CadManut_GerCODMAN.Value;
              DmFire.CadManut_ServCODSER.Value := DmFire.ClientManutencao_ServCODSER.Value;
              DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
              DmFire.CadManut_ServDATVCT.Value := DmFire.ClientManutencao_ServDATVCT.Value;
              DmFire.CadManut_ServKMVCT.Value := DmFire.ClientManutencao_ServKMVCT.Value;
              DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
              DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
              DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
              DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
              DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
              DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
              DmFire.CadManut_ServSITSER.Value := 'CONCLUIDO';
              DmFire.CadManut_ServTIPSER.Value := 'COMUM_REVISAO';//O TIPO É COMUM_REVISAO PQ SÓ AS REVISOES DESTE SERVIÇO SAO DO TIPO REVISAO

              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT MAX(SEQSER) AS SEQSER');
              DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
              DmFire.ConsSql.SQL.Add(' WHERE');
              DmFire.ConsSql.SQL.Add('CODMAN = :CODMAN AND');
              DmFire.ConsSql.SQL.Add('CODVEI = :CODVEI');
              DmFire.ConsSql.ParamByName('CODMAN').AsInteger := DmFire.CadManut_GerCODMAN.Value;
              DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
              DmFire.ConsSql.Open;
              if DmFire.ConsSql.IsEmpty then
                 DmFire.CadManut_ServSEQSER.Value := 1
              else
                 DmFire.CadManut_ServSEQSER.Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger + 1;

             DmFire.CadManut_Serv.Post;

             //CONSULTA O SERVIÇO *REVISAO* LIGADO A ESTE SERVIÇO
             DmFire.Serv_Rev.Close;
             DmFire.Serv_Rev.ParamByName('CODSERREV').Value := DmFire.ClientManutencao_ServCODSER.AsInteger;
             DmFire.Serv_Rev.Open;
             if not DmFire.Serv_Rev.IsEmpty then
                begin
                   //CONSULTA AS REVISOES QUE DEVEM SER FEITAS
                   DmFire.ConsServico_Revisao.Close;
                   DmFire.ConsServico_Revisao.ParamByName('CODSER').AsInteger := DmFire.ClientManutencao_ServCODSER.AsInteger;
                   DmFire.ConsServico_Revisao.Open;
                   DmFire.ConsServico_Revisao.First;
                   while not DmFire.ConsServico_Revisao.Eof do
                      begin
                        DmFire.CadManut_Serv.Insert;
                        DmFire.CadManut_ServCODMAN.Value := DmFire.CadManut_GerCODMAN.Value;
                        DmFire.CadManut_ServCODVEI.Value := DmFire.CadManut_GerCODVEI.Value;
                        DmFire.CadManut_ServNUMORDEM.Value := 0;
                        DmFire.CadManut_ServCODSER.Value := DmFire.Serv_RevCODSER.Value;
                        //DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
                        DmFire.CadManut_ServDATVCT.Value := IncDay(edtDATMAN.Date,DmFire.ConsServico_RevisaoLIMITE_DIAS.AsInteger);
                        DmFire.CadManut_ServKMVCT.Value := edtKmSer.AsInteger + DmFire.ConsServico_RevisaoLIMITE_KM.AsInteger;
                        //DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
                        //DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
                        //DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
                        //DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
                        //DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
                        //DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
                        DmFire.CadManut_ServSITSER.Value := 'ABERTO';
                        DmFire.CadManut_ServTIPSER.Value := 'REVISAO';//O TIPO É COMUM PQ SÓ AS REVISOES DESTE SERVIÇO SAO DO TIPO REVISAO

                        DmFire.ConsSql.Close;
                        DmFire.ConsSql.SQL.Clear;
                        DmFire.ConsSql.SQL.Add('SELECT MAX(SEQSER) AS SEQSER');
                        DmFire.ConsSql.SQL.Add(' FROM MANUT_SERV');
                        DmFire.ConsSql.SQL.Add(' WHERE');
                        DmFire.ConsSql.SQL.Add('CODMAN = :CODMAN AND');
                        DmFire.ConsSql.SQL.Add('CODVEI = :CODVEI');
                        DmFire.ConsSql.ParamByName('CODMAN').AsInteger := DmFire.CadManut_GerCODMAN.Value;
                        DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
                        DmFire.ConsSql.Open;
                        if DmFire.ConsSql.IsEmpty then
                           DmFire.CadManut_ServSEQSER.Value := 1
                        else
                           DmFire.CadManut_ServSEQSER.Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger + 1;

                        DmFire.CadManut_Serv.Post;

                        DmFire.ConsServico_Revisao.Next;
                      end;
                end;
           end
        else
        if DmFire.ClientManutencao_ServTIPSER.Value = 'REVISAO' then
           begin
              //SO CONSULTA A REVISAO EM ABERTO QUE ESTA NA VEZ E ATUALIZA OS DADOS
              DmFire.ConsSql.Close;
              DmFire.ConsSql.SQL.Clear;
              DmFire.ConsSql.SQL.Add('SELECT * FROM MANUT_SERV');
              DmFire.ConsSql.SQL.Add(' WHERE CODVEI = :CODVEI AND');
              DmFire.ConsSql.SQL.Add('       CODSER = :CODSER AND');
              DmFire.ConsSql.SQL.Add('       SITSER = ''ABERTO''');
              DmFire.ConsSql.SQL.Add(' ORDER BY CODMAN,SEQSER');
              DmFire.ConsSql.ParamByName('CODVEI').AsInteger := DmFire.CadManut_GerCODVEI.Value;
              DmFire.ConsSql.ParamByName('CODSER').AsInteger := DmFire.ClientManutencao_ServCODSER.Value;
              DmFire.ConsSql.Open;
              if not DmFire.ConsSql.IsEmpty then
                 begin
                   DmFire.CadManut_Serv.Close;
                   DmFire.CadManut_Serv.ParamByName('CODMAN').Value := DmFire.ConsSql.FieldByName('CODMAN').AsInteger;
                   DmFire.CadManut_Serv.ParamByName('CODVEI').Value := DmFire.ConsSql.FieldByName('CODVEI').AsInteger;
                   DmFire.CadManut_Serv.ParamByName('SEQSER').Value := DmFire.ConsSql.FieldByName('SEQSER').AsInteger;
                   DmFire.CadManut_Serv.Open;
                   if not DmFire.CadManut_Serv.IsEmpty then
                      begin
                        DmFire.CadManut_Serv.Edit;
                        DmFire.CadManut_ServDESSER.Value := DmFire.ClientManutencao_ServDESSER.Value;
                        DmFire.CadManut_ServDATSER.Value := DmFire.ClientManutencao_ServDATSER.Value;
                        DmFire.CadManut_ServKMSER.Value := DmFire.ClientManutencao_ServKMSER.Value;
                        DmFire.CadManut_ServQTDSER.Value := DmFire.ClientManutencao_ServQTDSER.Value;
                        DmFire.CadManut_ServVLRUNI.Value := DmFire.ClientManutencao_ServVLRUNI.Value;
                        DmFire.CadManut_ServVLRUNIDES.Value := DmFire.ClientManutencao_ServVLRUNIDES.Value;
                        DmFire.CadManut_ServVLRDES.Value := DmFire.ClientManutencao_ServVLRDES.Value;
                        DmFire.CadManut_ServSITSER.Value := 'CONCLUIDO';
                        DmFire.CadManut_ServNUMORDEM.Value := DmFire.CadManut_GerCODMAN.Value;
                        DmFire.CadManut_ServGARANTIA.Value := DmFire.ClientManutencao_ServGARANTIA.Value;
                        DmFire.CadManut_Serv.Post;
                      end;
                 end
           end;


       DmFire.ClientManutencao_Serv.Next;
     end;



  DmFire.ibtTransacao.Commit;

   //LIMPA O CLIENT DOS ITENS
   DmFire.ClientManutencao_Serv.Close;
   DmFire.ClientManutencao_Serv.Open;
   DmFire.ClientManutencao_Serv.First;
   while not DmFire.ClientManutencao_Serv.Eof do
     begin
       DmFire.ClientManutencao_Serv.Delete;
     end;


  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;
  dbtxtDESVEI.DataSource := dsReserva;

  Fornecedor.Close;
  Fornecedor.Open;
  Fornecedor.Last;
  Fornecedor.First;
  dbtxtCID_UF.DataSource := dsReserva;

  DmFire.CadManut_Ger.Close;
  DmFire.CadManut_Ger.Open;

  edtKmSer.Value := 0;

end;

procedure TFLancaManutencao.btnConsServicoClick(Sender: TObject);
begin
  FConsServicoLancaManut := TFConsServicoLancaManut.Create(Self);
  if FConsServicoLancaManut.ShowModal = mrOk then
     begin
       edtCodSer.Value := DmFire.ConsServicoLancaManutCODSER.Value;
       lblDesSer.Caption := DmFire.ConsServicoLancaManutDESSER.Value;
       ActiveControl := edtCodSer;
     end;

  FreeAndNil(FConsServicoLancaManut);
end;

procedure TFLancaManutencao.btnNovoClick(Sender: TObject);
begin
  if Trim(dblkcbbCODVEI.Text) = '' then
     begin
       Application.MessageBox('Informe o veículo', 'Atenção', MB_ICONWARNING+MB_OK);
       ActiveControl := dblkcbbCODVEI;
       Abort;
     end;

  DmFire.CadManut_Ger.Open;
  DmFire.CadManut_Ger.Insert;

   DmFire.CadManut_GerCODUSU.Value := FPrincipal.vnCodUsu;

   DmFire.ConsSql.Close;
   DmFire.ConsSql.SQL.Clear;
   DmFire.ConsSql.SQL.Add('SELECT MAX(CODMAN) AS CODMAN FROM MANUT_GER WHERE CODVEI = :CODVEI');
   DmFire.ConsSql.ParamByName('CODVEI').Value := VeiculosCODVEI.Value;
   DmFire.ConsSql.Open;
   if DmFire.ConsSql.IsEmpty then
      DmFire.CadManut_GerCODMAN.AsInteger := 1
   else
      DmFire.CadManut_GerCODMAN.AsInteger := DmFire.ConsSql.FieldByName('CODMAN').AsInteger + 1;

   DmFire.CadManut_GerNUMORDEM.AsInteger := DmFire.CadManut_GerCODMAN.AsInteger;

   DmFire.CadManut_GerCODVEI.Value := VeiculosCODVEI.Value;
   ActiveControl := edtDATMAN;

   dblkcbbCODFORCloseUp(Sender);

   edtCodSer.Value := 0;
   lblDesSer.Caption := '';
   edtDesSer.Clear;
   edtKmSer.Value := 0;
   edtQtdSer.Value := 0;
   edtVlrUni.Value := 0;
   edtGarantia.Clear;

   //LIMPA O CLIENT DOS ITENS
   DmFire.ClientManutencao_Serv.Close;
   DmFire.ClientManutencao_Serv.Open;
   DmFire.ClientManutencao_Serv.First;
   while not DmFire.ClientManutencao_Serv.Eof do
     begin
       DmFire.ClientManutencao_Serv.Delete;
     end;
   DmFire.ClientManutencao_Serv.Open;
end;

procedure TFLancaManutencao.dblkcbbCODFORCloseUp(Sender: TObject);
begin
  if Trim(dblkcbbCODFOR.Text) <> '' then
     begin
        dbtxtCID_UF.DataSource := dsFornecedor;
     end
  else
    begin
      dbtxtCID_UF.DataSource := dsReserva;
    end;
end;

procedure TFLancaManutencao.dblkcbbCODFORKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Trim(dblkcbbCODFOR.Text) <> '' then
     begin
        dbtxtCID_UF.DataSource := dsFornecedor;
     end
  else
    begin
      dbtxtCID_UF.DataSource := dsReserva;
    end;
end;

procedure TFLancaManutencao.dblkcbbCODVEICloseUp(Sender: TObject);
begin
  if Trim(dblkcbbCODVEI.Text) <> '' then
     begin
        dbtxtDESVEI.DataSource := dsVeiculos;
     end
  else
    begin
      dbtxtDESVEI.DataSource := dsReserva;
    end;
end;

procedure TFLancaManutencao.dblkcbbCODVEIKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Trim(dblkcbbCODVEI.Text) <> '' then
     begin
        dbtxtDESVEI.DataSource := dsVeiculos;
     end
  else
    begin
      dbtxtDESVEI.DataSource := dsReserva;
    end;

end;

procedure TFLancaManutencao.dsCadManut_GerStateChange(Sender: TObject);
begin
  if DmFire.CadManut_Ger.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnAdicionar.Enabled := True;
       btnConfirmar.Enabled := True;
       btnConsServico.Enabled := True;

       lblPlaca.Enabled := False;
       lblOrdemServico.Enabled := True;
       lblData.Enabled := True;
       lblFornecedor.Enabled := True;

       dblkcbbCODVEI.Enabled := false;
       dbedtCODMAN.Enabled := True;
       edtDATMAN.Enabled := True;
       dblkcbbCODFOR.Enabled := True;


       lblServico.Enabled := True;
       lblDescricao.Enabled := True;
       lblKmServico.Enabled := True;
       lblQuantidade.Enabled := True;
       lblVlrUnit.Enabled := True;

       edtCodSer.Enabled := True;
       edtDesSer.Enabled := True;
       edtKmSer.Enabled := True;
       edtQtdSer.Enabled := True;
       edtVlrUni.Enabled := True;

       lblDesconto.Enabled := True;
       lblVlrDesconto.Enabled := True;
       edtVlrDesc.Enabled := True;
       btnClaculaDesc.Enabled := True;

       edtGarantia.Enabled := True;
       lblGarantia.Enabled := True;
     end
  else
     begin
       btnNovo.Enabled := true;
       btnAdicionar.Enabled := False;
       btnConfirmar.Enabled := false;
       btnConsServico.Enabled := false;

       lblPlaca.Enabled := true;
       lblOrdemServico.Enabled := False;
       lblData.Enabled := False;
       lblFornecedor.Enabled := False;

       dblkcbbCODVEI.Enabled := true;
       dbedtCODMAN.Enabled := False;
       edtDATMAN.Enabled := False;
       dblkcbbCODFOR.Enabled := False;

       lblServico.Enabled := False;
       lblDescricao.Enabled := False;
       lblKmServico.Enabled := False;
       lblQuantidade.Enabled := False;
       lblVlrUnit.Enabled := False;

       edtCodSer.Enabled := False;
       edtDesSer.Enabled := False;
       edtKmSer.Enabled := False;
       edtQtdSer.Enabled := False;
       edtVlrUni.Enabled := False;

       lblDesconto.Enabled := False;
       lblVlrDesconto.Enabled := False;
       edtVlrDesc.Enabled := False;
       btnClaculaDesc.Enabled := False;

       edtGarantia.Enabled := False;
       lblGarantia.Enabled := False;
     end;
end;

procedure TFLancaManutencao.dsClientManutencao_ServDataChange(Sender: TObject;
  Field: TField);
begin
  lblVlrTotal.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;
  lblVlrDesconto1.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;
  lblVlrTotal_Desc.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;

  lblDesconto.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;
  lblVlrDesconto.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;
  edtVlrDesc.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;
  btnClaculaDesc.Enabled := not DmFire.ClientManutencao_Serv.IsEmpty;

end;

procedure TFLancaManutencao.edtCodSerExit(Sender: TObject);
begin
  if edtCodSer.Value <> 0 then
     begin
        DmFire.ConsServicoLancaManut.Close;
        DmFire.ConsServicoLancaManut.SQL.Clear;
        DmFire.ConsServicoLancaManut.SQL.Add('SELECT SERVICO.*');
        DmFire.ConsServicoLancaManut.SQL.Add(' FROM SERVICO');
        DmFire.ConsServicoLancaManut.SQL.Add(' WHERE SERVICO.SITSER = ''ATIVO''');
        DmFire.ConsServicoLancaManut.SQL.Add(' AND SERVICO.CODSER = :CODSER');
        DmFire.ConsServicoLancaManut.ParamByName('CODSER').Value := edtCodSer.AsInteger;
        DmFire.ConsServicoLancaManut.Open;
        if DmFire.ConsServicoLancaManut.IsEmpty then
           begin
             Application.MessageBox('Serviço não encontrado', 'Atenção', MB_ICONWARNING+MB_OK);
             lblDesSer.Caption := '';
             ActiveControl := edtCodSer;
             Abort;
           end
        else
           begin
             lblDesSer.Caption := DmFire.ConsServicoLancaManutDESSER.Value;
           end;
     end
  else
     begin
       lblDesSer.Caption := '';
     end;
end;

procedure TFLancaManutencao.edtCodSerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
     begin
       btnConsServico.Click;
     end;
end;

procedure TFLancaManutencao.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFLancaManutencao.FormShow(Sender: TObject);
begin
  Veiculos.Close;
  Veiculos.Open;
  Veiculos.Last;
  Veiculos.First;
  dbtxtDESVEI.DataSource := dsReserva;

  Fornecedor.Close;
  Fornecedor.Open;
  Fornecedor.Last;
  Fornecedor.First;
  dbtxtCID_UF.DataSource := dsReserva;

  DmFire.CadManut_Ger.Close;
  DmFire.CadManut_Ger.Open;

  //LIMPA O CLIENT DOS ITENS
  DmFire.ClientManutencao_Serv.Close;
  DmFire.ClientManutencao_Serv.Open;
  DmFire.ClientManutencao_Serv.First;
  while not DmFire.ClientManutencao_Serv.Eof do
    begin
      DmFire.ClientManutencao_Serv.Delete;
    end;
end;

procedure TFLancaManutencao.FornecedorCalcFields(DataSet: TDataSet);
begin
  FornecedorCID_UF.Value := FornecedorCIDFOR.Value;

  if Trim(FornecedorSIGUFS.Value) <> '' then
     begin
        if Trim(FornecedorCIDFOR.Value) <> '' then
           begin
             FornecedorCID_UF.Value := FornecedorCID_UF.Value + '  -  '+FornecedorSIGUFS.Value;
           end
        else
           begin
              FornecedorCID_UF.Value := FornecedorSIGUFS.Value
           end;
     end;
end;

procedure TFLancaManutencao.pnl1Enter(Sender: TObject);
begin
  //ActiveControl := edtCodSer;
end;

end.
