{=======================================}
{             RSC SISTEMAS              }
{        SOLU��ES TECNOL�GICAS          }
{         rscsistemas.com.br            }
{          +55 92 4141-2737             }
{      contato@rscsistemas.com.br       }
{                                       }
{ Desenvolvidor por:                    }
{   Roniery Santos Cardoso              }
{     ronierys2@hotmail.com             }
{     +55 92 984391279                  }
{                                       }
{                                       }
{ Vers�o Original RSC SISTEMAS          }
{ Vers�o: 3.0.0                         }
{                                       }
{ Componente TscPix                     }
{ Componente OpenSource                 }
{ license Apache-2.0                    }
{                                       }
{=======================================}

unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PIX_Tela, Vcl.ExtCtrls,
  REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  uDWAbout, uDWResponseTranslator, Vcl.Buttons, Vcl.Samples.Spin, System.TypInfo, ACBrPosPrinter,
  ACBrBase, configuraserial, IniFiles,  System.UITypes, System.DateUtils,

  uRscPix.Variaveis, uRscPix.Tipos,
  uRscPix.Validations, ACBrSocket, ACBrPicpay, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, uRESTDWBase, uRscPix.Classes,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  Vcl.ComCtrls,


  RscPix, uRscPix.funcoes


  ;

type
  TFrmMain = class(TForm)
    ACBrPosPrinter1: TACBrPosPrinter;
    gb_Config_Seg: TGroupBox;
    Label2: TLabel;
    edtCertificado: TLabeledEdit;
    edtSenhaCertificado: TLabeledEdit;
    edtClientID: TLabeledEdit;
    edtClientSecreat: TLabeledEdit;
    edtDeveloperKey: TLabeledEdit;
    edtChavePix: TLabeledEdit;
    CbbTipoChavePix: TComboBox;
    edtNomeRecebedore: TLabeledEdit;
    gbConfigImpressora: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    btSerial: TSpeedButton;
    btProcuraImpressoras: TSpeedButton;
    seLinhasPular: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seColunas: TSpinEdit;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    btTestarPosPrinter: TBitBtn;
    edtDuracaoMinutos: TSpinEdit;
    Label9: TLabel;
    edtTxIdDev: TLabeledEdit;
    edtEndToEndId: TLabeledEdit;
    Label1: TLabel;
    cbbTipoQRCode: TComboBox;
    btn_GerarCabranca: TButton;
    gb_Consulta_Periodo: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    dtp_Data_Inicial: TDateTimePicker;
    Button5: TButton;
    dtp_Data_Final: TDateTimePicker;
    dtp_Hora_Inicial: TDateTimePicker;
    dtp_Hora_Final: TDateTimePicker;
    grbxPSP: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    CbbPSP: TComboBox;
    CbbTipoAmbiente: TComboBox;
    gb_Consulta_Pix_TXID: TGroupBox;
    Button6: TButton;
    edt_E2eID: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    Button7: TButton;
    Button4: TButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    edtCidadeRecebedor: TLabeledEdit;
    btn_Certificados: TSpeedButton;
    Open_Dialog: TOpenDialog;
    pnl_tela: TPanel;
    pnl_menu: TPanel;
    pnl_Configs: TPanel;
    pnl_Funcoes: TPanel;
    PnlBtn_Funcoes: TPanel;
    PnlBtn_Configs: TPanel;
    Pnl_MenuFuncoes: TPanel;
    PnlBtn_FuncCobranca: TPanel;
    PnlBtn_FuncConsulta: TPanel;
    pnl_FuncCobranca: TPanel;
    pnl_FuncConsulta: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    Panel6: TPanel;
    edtTXID: TEdit;
    SpeedButton1: TSpeedButton;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    edtValorPix: TEdit;
    Label11: TLabel;
    edtMsgPix: TEdit;
    pnl_CobToolsRet: TPanel;
    Panel7: TPanel;
    Label12: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    mmPayload: TMemo;
    btnCancelar: TBitBtn;
    btnImprQrCode: TBitBtn;
    Label13: TLabel;
    imgQRCODE: TImage;
    Panel10: TPanel;
    lblStatus: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btn_SimulaPgto: TButton;
    procedure btn_GerarCabrancaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btTestarPosPrinterClick(Sender: TObject);
    procedure btProcuraImpressorasClick(Sender: TObject);
    procedure btSerialClick(Sender: TObject);


    procedure CriarConfigIni;
    procedure LerConfigIni;
    procedure GravarConfigIni;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btn_CertificadosClick(Sender: TObject);

    { fun��es espeficaic}
    procedure PnlsBtnMouseLeave(Sender: TObject);
    procedure PnlsBtnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PnlBtn_ConfigsClick(Sender: TObject);
    procedure PnlBtn_FuncoesClick(Sender: TObject);
    procedure PnlBtn_FuncCobrancaClick(Sender: TObject);
    procedure PnlBtn_FuncConsultaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprQrCodeClick(Sender: TObject);
    procedure btn_SimulaPgtoClick(Sender: TObject);
  private

    bRecebido  : Boolean;
    cQrCode,
    cFantasia  : String;


    procedure SetResetConfigPnlBtn(Sender: TObject);
    procedure SetConfigClick(Sender: TObject);
    { Private declarations }
    procedure ProcurarImpressora;
    procedure AdicionarLinhaImpressao(ALinha: AnsiString);
    procedure ConfigurarPosPrinter;
    procedure AtivarPosPrinter;
    procedure SetConfigTelaPix;

    procedure SetConfigPixObrig(Sender: TObject);

    procedure SetConfigPixGeraCobranca(Sender: TObject);

    procedure SetConfigPix(Sender: TObject);

    {-------------------------------------------------------------------}
    procedure InOnCobGet_(Sender : TObject; Const RespCobGet: TRespCobGet = nil; Erro: String = '');
    procedure InOnCobPut_(Sender : TObject; Const RespCobPut: TRespCobPut = nil; Erro: String = '');
    procedure InOnCobPatch_(Sender : TObject; Const RespCobPatch: TRespCobPatch = nil; Erro: String = '');
    procedure InOnToken_(Sender : TObject; Const Token: TToken = nil; Erro: String = '');

  public
    { Public declarations }
    procedure GerarPix(Sender: TObject);
    procedure AtualizarPix(cStatus : String);
    procedure ConsultaPixPorTXID(dMostraMensagem : Boolean);
    procedure ConsultaListaPixPorPeriodo( dMostraMensagem      : Boolean ;
                                          _Data_Hora_Inicial    : TDateTime ;
                                          _Data_Hora_Final      : TDateTime );
    procedure ConsultarPixRecebido( dMostraMensagem : Boolean ; _E2eid : String );
    procedure SolicitarDevolucaoPixRecebido(dMostraMensagem : Boolean);
    procedure ConsultarDevolucaoPixRecebido(dMostraMensagem : Boolean);
  end;

var
  FrmMain: TFrmMain;
  PathConfigIni : String;

implementation

{$R *.dfm}

function Selecionar_Diretorio( Titulo : String ; var Dir : String ) : Boolean ;
begin
result := False ;
with TFileOpenDialog.Create(nil) do
     try
       Title := Titulo ;
       Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem] ;
       OkButtonLabel := 'Selecionar';
       DefaultFolder := Dir;
       FileName := Dir;
       if Execute then
          begin
          Dir := FileName ;
          result := True ;
          end;
     finally
       Free;
     end;
end;





procedure TFrmMain.AdicionarLinhaImpressao(ALinha: AnsiString);
begin
if ACBrPosPrinter1.Ativo then
   ACBrPosPrinter1.Imprimir(ALinha);
end;






procedure TFrmMain.AtivarPosPrinter;
begin
ConfigurarPosPrinter;
if (ACBrPosPrinter1.Porta <> '') then
    ACBrPosPrinter1.Ativar
    else
    raise Exception.Create('Porta n�o definida');
end;











procedure TFrmMain.AtualizarPix(cStatus: String);
begin

end;

procedure TFrmMain.BitBtn1Click(Sender: TObject);
begin
  GravarConfigIni;
  LerConfigIni;
  MessageDlg('Configura��es Gravadas Com Sucesso!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
end;

procedure TFrmMain.btnImprQrCodeClick(Sender: TObject);
var
  mImp  : TStringList;
begin
  try
    if (ACBrPosPrinter1.Porta <> '') then
      ACBrPosPrinter1.Ativar
    else
      raise Exception.Create('Porta n�o definida');

    ACBrPosPrinter1.CortaPapel    := True;
    ACBrPosPrinter1.TraduzirTags  := True;

    //Configurando o QrCOde
    ACBrPosPrinter1.configqrcode.Tipo               := 2;
    ACBrPosPrinter1.configqrcode.LarguraModulo      := 6;//4;
    ACBrPosPrinter1.configqrcode.ErrorLevel         := 0;

    //aplicando
    mImp  := TStringList.Create;
    mImp.Clear;
    mImp.Add('</zera>');
    mImp.Add('</ce>');
    mImp.Add('<a><n>'+cFantasia+'</n></a>');
    mImp.Add('</ce>');
    mImp.Add('<qrcode>'+cQrCode+'</qrcode>');
    mImp.Add('</ce>');
    mImp.Add('<n><e><a>'+edtValorPix.Text+'</a></e></n>');
    mImp.Add('</fn>');
    mImp.Add('</ce>');
    mImp.Add('</corte_total>');
    ACBrPosPrinter1.Ativar;
    ACBrPosPrinter1.Buffer.Text := mImp.Text;
    ACBrPosPrinter1.Imprimir;

  finally
    ACBrPosPrinter1.Desativar;
    mImp.Free;
  end;
end;

procedure TFrmMain.btn_CertificadosClick(Sender: TObject);
 var Dir : String ;
begin
Open_Dialog.DefaultExt := '*.cer' ;
Open_Dialog.Filter := 'Arquivos cer|*.cer' ;
if Open_Dialog.Execute then
   begin
   edtCertificado.Text := Open_Dialog.FileName ;
   end;
end;








procedure TFrmMain.btProcuraImpressorasClick(Sender: TObject);
begin
ProcurarImpressora;
end;







procedure TFrmMain.btSerialClick(Sender: TObject);
var
  frConfiguraSerial: TfrConfiguraSerial;
begin
  frConfiguraSerial := TfrConfiguraSerial.Create(self);
  try
    frConfiguraSerial.Device.Porta        := ACBrPosPrinter1.Device.Porta ;
    frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text ;
    frConfiguraSerial.Device.ParamsString := ACBrPosPrinter1.Device.ParamsString ;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
      cbxPorta.Text := frConfiguraSerial.cmbPortaSerial.Text ;
      ACBrPosPrinter1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
    end ;
  finally
    FreeAndNil( frConfiguraSerial ) ;
  end ;
end;

procedure TFrmMain.btTestarPosPrinterClick(Sender: TObject);
var
  SL: TStringList;
begin
  try
    AtivarPosPrinter;

    SL := TStringList.Create;
    try
      SL.Add('</zera>');
      SL.Add('</linha_dupla>');
      SL.Add('FONTE NORMAL: '+IntToStr(ACBrPosPrinter1.ColunasFonteNormal)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
      SL.Add('<e>EXPANDIDO: '+IntToStr(ACBrPosPrinter1.ColunasFonteExpandida)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
      SL.Add('</e><c>CONDENSADO: '+IntToStr(ACBrPosPrinter1.ColunasFonteCondensada)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));
      SL.Add('</c><n>FONTE NEGRITO</N>');
      SL.Add('<in>FONTE INVERTIDA</in>');
      SL.Add('<S>FONTE SUBLINHADA</s>');
      SL.Add('<i>FONTE ITALICO</i>');
      SL.Add('FONTE NORMAL');
      SL.Add('');
      SL.Add('TESTE DE ACENTOS. ����������');
      SL.Add('');
      SL.Add('</corte_total>');

      AdicionarLinhaImpressao(AnsiString(SL.Text));
    finally
       SL.Free;
    end;
  except
    On E: Exception do
    begin
      MessageDlg('Falha ao ativar a Impressora' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end
end;

procedure TFrmMain.btn_GerarCabrancaClick(Sender: TObject);
var
  Pix : TRscPix;
begin
  Pix := TRscPix.Create(Self);
  try
    Pix.OnCobGet  :=  InOnCobGet_;
    Pix.OnToken   :=  InOnToken_;
    Pix.OnCobPut  :=  InOnCobPut_;
    SetConfigPixGeraCobranca(Pix);
    Pix.CriarCobranca(StrToFloatDef(edtValorPix.Text, 0), edtTXID.Text, edtMsgPix.Text);
  finally
    Pix.Free;
  end;



//  frmPIX_Tela := TfrmPIX_Tela.Create(nil);
//  try
//    SetConfigTelaPix ;
//
//    frmPIX_Tela.GerarPix ;
//
//    if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
//      begin
//        if frmPIX_Tela.RscPix1.Resultado.textoImagemQRcode <> '' then
//         begin
//           edtPayload.Text  :=  frmPIX_Tela.RscPix1.Resultado.textoImagemQRcode ;
//           edtTXID.Text := frmPIX_Tela.RscPix1.Resultado.txid ;
//         end
//        else
//          begin
//            edtPayload.Text  :=  frmPIX_Tela.RscPix1.Resultado.location ;
//            edtTXID.Text := frmPIX_Tela.RscPix1.Resultado.txid ;
//          end;
//        frmPIX_Tela.ShowModal ;
//      end;
//  finally
//   frmPIX_Tela.Free ;
//  end;
end;


procedure TFrmMain.btn_SimulaPgtoClick(Sender: TObject);
var
  Pix : TRscPix;
begin
  Pix := TRscPix.Create(Self);
  try
    Pix.OnCobGet  :=  InOnCobGet_;
    Pix.OnToken   :=  InOnToken_;
    Pix.OnCobPut  :=  InOnCobPut_;
    SetConfigPixGeraCobranca(Pix);
    Pix.SimularPagamentoPix(mmPayload.Text);
  finally
    Pix.Free;
  end;
end;

procedure TFrmMain.Button2Click(Sender: TObject);
var
  Pix : TRscPix;
begin
  Pix := TRscPix.Create(Self);
  try
    Pix.OnCobGet    :=  InOnCobGet_;
    Pix.OnToken     :=  InOnToken_;
    Pix.OnCobPut    :=  InOnCobPut_;
    Pix.OnCobPatch  :=  InOnCobPatch_;
    SetConfigPixObrig(Pix);
    Pix.ConsultarCobranca(edtTXID.Text);
  finally
    Pix.Free;
  end;


//  frmPIX_Tela := TfrmPIX_Tela.Create(nil);
//  try
//    SetConfigTelaPix;
//
//    frmPIX_Tela.ConsultaPixPorTXID(True);
//
////    if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
////    begin
////      frmPIX_Tela.ShowModal;
////    end;
//  finally
//    frmPIX_Tela.Free;
//  end;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
var
  Pix : TRscPix;
begin
  Pix := TRscPix.Create(Self);
  try
    Pix.OnCobGet    :=  InOnCobGet_;
    Pix.OnToken     :=  InOnToken_;
    Pix.OnCobPut    :=  InOnCobPut_;
    Pix.OnCobPatch  :=  InOnCobPatch_;
    SetConfigPixObrig(Pix);
    Pix.CancelarCobranca('REMOVIDA_PELO_USUARIO_RECEBEDOR', StrToFloatDef(edtValorPix.Text, 0), edtTXID.Text, edtMsgPix.Text);
  finally
    Pix.Free;
  end;


//  frmPIX_Tela := TfrmPIX_Tela.Create(nil);
//  try
//    SetConfigTelaPix;
//
//    frmPIX_Tela.AtualizarPix('REMOVIDA_PELO_USUARIO_RECEBEDOR');
//
////    if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
////    begin
////      frmPIX_Tela.ShowModal;
////    end;
//  finally
//    frmPIX_Tela.Free;
//  end;
end;

procedure TFrmMain.Button4Click(Sender: TObject);
begin
  frmPIX_Tela := TfrmPIX_Tela.Create(nil);
  try
    SetConfigTelaPix;

    frmPIX_Tela.SolicitarDevolucaoPixRecebido(True);

//    if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
//    begin
//      frmPIX_Tela.ShowModal;
//    end;
  finally
    frmPIX_Tela.Free;
  end;
end;





procedure TFrmMain.Button5Click(Sender: TObject);
begin
frmPIX_Tela := TfrmPIX_Tela.Create(nil);
 try
 SetConfigTelaPix ;

 frmPIX_Tela.ConsultaListaPixPorPeriodo( True ,
                                         StrToDateTime(DateToStr(dtp_Data_Inicial.Date) + TimeToStr(dtp_Hora_Inicial.Time)) ,
                                         StrToDateTime(DateToStr(dtp_Data_Final.Date) + TimeToStr(dtp_Hora_Final.Time)) );

// if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
//    begin
//    frmPIX_Tela.ShowModal ;
//    end;
 finally
   frmPIX_Tela.Free ;
 end;
end;





procedure TFrmMain.Button6Click(Sender: TObject);
begin
frmPIX_Tela := TfrmPIX_Tela.Create(nil);
 try
 SetConfigTelaPix ;
 if Trim(edt_E2eID.Text) = ''  then
    begin
    MessageDlg('Digite o campo E2eID' , TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    edt_E2eID.SetFocus ;
    Exit;
    end;
 frmPIX_Tela.ConsultarPixRecebido(True , edt_E2eID.Text) ;
// if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
//    begin
//    frmPIX_Tela.ShowModal;
//    end;
 finally
   frmPIX_Tela.Free;
 end;
end;








procedure TFrmMain.Button7Click(Sender: TObject);
begin
  frmPIX_Tela := TfrmPIX_Tela.Create(nil);
  try
    SetConfigTelaPix;

    frmPIX_Tela.ConsultarDevolucaoPixRecebido(True);

//    if frmPIX_Tela.RscPix1.Resultado_Cod = 200 then
//    begin
//      frmPIX_Tela.ShowModal;
//    end;
  finally
    frmPIX_Tela.Free;
  end;
end;

procedure TFrmMain.SetResetConfigPnlBtn(Sender: TObject);
var
  P:  integer;
begin
  if Sender is TPanel then
    begin
      for P := 0 to Pred(TPanel(Sender).ControlCount) do
        begin
          if TPanel(Sender).Controls[P] is TPanel then
            begin
              TPanel(TPanel(Sender).Controls[P]).Tag    :=  0;
              TPanel(TPanel(Sender).Controls[P]).Color  :=  clMenuHighlight;
            end;
        end;
    end;



//  PnlBtn_Configs.Tag    :=  0;
//  PnlBtn_Configs.Color  :=  clMenuHighlight;
//
//  PnlBtn_Funcoes.Tag    :=  0;
//  PnlBtn_Funcoes.Color  :=  clMenuHighlight

end;

procedure TFrmMain.SolicitarDevolucaoPixRecebido(dMostraMensagem: Boolean);
begin

end;

procedure TFrmMain.SpeedButton1Click(Sender: TObject);
begin
  edtTXID.Text  :=  'RSC1996'
                  + IntToStr(Random(9999))
                  + IntToStr(Random(9999))
                  + IntToStr(Random(9999))
                  + IntToStr(Random(9999))
                  + IntToStr(Random(9999))
                  + 'EZL1991';
end;

procedure TFrmMain.SetConfigTelaPix;
begin
    {configurar impressora}
    frmPIX_Tela.ACBrPosPrinterPIX.Desativar;
    frmPIX_Tela.ACBrPosPrinterPIX.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
    frmPIX_Tela.ACBrPosPrinterPIX.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
    frmPIX_Tela.ACBrPosPrinterPIX.Porta := cbxPorta.Text;
    frmPIX_Tela.ACBrPosPrinterPIX.ColunasFonteNormal := seColunas.Value;
    frmPIX_Tela.ACBrPosPrinterPIX.LinhasEntreCupons := seLinhasPular.Value;
    frmPIX_Tela.ACBrPosPrinterPIX.EspacoEntreLinhas := seEspLinhas.Value;
    {======================}
    {Configurar PIX}
    frmPIX_Tela.RscPix1.Seguranca.CertFile        :=  edtCertificado.Text;
    frmPIX_Tela.RscPix1.Seguranca.CertKeyFile   :=  edtSenhaCertificado.Text;

    frmPIX_Tela.RscPix1.TitularPix.TipoChavePix                        :=  TTipoChavePIX(CbbTipoChavePix.ItemIndex);
    frmPIX_Tela.RscPix1.TitularPix.ChavePIX                            :=  edtChavePix.Text;

    frmPIX_Tela.RscPix1.TitularPix.NomeTitularConta                    :=  edtNomeRecebedore.Text;
    frmPIX_Tela.RscPix1.TitularPix.CidadeTitularConta                  :=  edtCidadeRecebedor.Text;

    frmPIX_Tela.RscPix1.PSP.TipoPsp                             :=  TTipoPSP(CbbPSP.ItemIndex);
    frmPIX_Tela.RscPix1.PSP.TipoPspAmbiente                     :=  TTipoAmbiente(CbbTipoAmbiente.ItemIndex);

    frmPIX_Tela.RscPix1.Developer.Application_key               :=  edtDeveloperKey.Text;
    frmPIX_Tela.RscPix1.Developer.Client_ID                     :=  edtClientID.Text;
    frmPIX_Tela.RscPix1.Developer.Client_Secret                 :=  edtClientSecreat.Text;

//    frmPIX_Tela.RscPix1.PixCobranca.Valor                       :=  StrToFloatDef(edtValorPix.Text, 0);
//    frmPIX_Tela.RscPix1.PixCobranca.TXID                        :=  edtTXID.Text ;
//    frmPIX_Tela.RscPix1.PixCobranca.E2eid                       :=  edtEndToEndId.Text ;
//    frmPIX_Tela.RscPix1.PixCobranca.TXIDDev                     :=  edtTxIdDev.Text;
//    frmPIX_Tela.RscPix1.PixCobranca.TipoQRCode                  :=  TTipoQrCode(cbbTipoQRCode.ItemIndex);
//    frmPIX_Tela.RscPix1.PixCobranca.DuracaoMinutos              :=  edtDuracaoMinutos.Value;
//    frmPIX_Tela.RscPix1.PixCobranca.Mensagem                    :=  Trim(edtMsgPix.Text);

end;


procedure TFrmMain.SetConfigClick(Sender: TObject);
begin
  TPanel(Sender).Color := clNavy;
  TPanel(Sender).Tag := 1;
end;



procedure TFrmMain.SetConfigPix(Sender: TObject);
begin
//    TRscPix(Sender).PixCobranca.Valor                       :=  StrToFloatDef(edtValorPix.Text, 0);
//    TRscPix(Sender).PixCobranca.TXID                        :=  edtTXID.Text ;
//    TRscPix(Sender).PixCobranca.E2eid                       :=  edtEndToEndId.Text ;
//    TRscPix(Sender).PixCobranca.TXIDDev                     :=  edtTxIdDev.Text;
//    TRscPix(Sender).PixCobranca.Mensagem                    :=  Trim(edtMsgPix.Text);
end;

procedure TFrmMain.SetConfigPixGeraCobranca(Sender: TObject);
begin
  SetConfigPixObrig(Sender);

//  TRscPix(Sender).PixCobranca.Valor                       :=  StrToFloatDef(edtValorPix.Text, 0);
//  TRscPix(Sender).PixCobranca.TXID                        :=  edtTXID.Text ;
//  TRscPix(Sender).PixCobranca.Mensagem                    :=  Trim(edtMsgPix.Text);
end;

procedure TFrmMain.SetConfigPixObrig(Sender: TObject);
begin
    TRscPix(Sender).TitularPix.NomeTitularConta                    :=  edtNomeRecebedore.Text;
    TRscPix(Sender).TitularPix.CidadeTitularConta                  :=  edtCidadeRecebedor.Text;

    TRscPix(Sender).Seguranca.CertFile                      :=  edtCertificado.Text;
    TRscPix(Sender).Seguranca.CertKeyFile                   :=  edtSenhaCertificado.Text;

    TRscPix(Sender).Developer.Application_key               :=  edtDeveloperKey.Text;
    TRscPix(Sender).Developer.Client_ID                     :=  edtClientID.Text;
    TRscPix(Sender).Developer.Client_Secret                 :=  edtClientSecreat.Text;

    TRscPix(Sender).PSP.TipoPsp                             :=  TTipoPSP(CbbPSP.ItemIndex);
    TRscPix(Sender).PSP.TipoPspAmbiente                     :=  TTipoAmbiente(CbbTipoAmbiente.ItemIndex);

    TRscPix(Sender).TitularPix.TipoChavePix                        :=  TTipoChavePIX(CbbTipoChavePix.ItemIndex);
    TRscPix(Sender).TitularPix.ChavePIX                            :=  edtChavePix.Text;
    TRscPix(Sender).TitularPix.TipoQRCode                          :=  TTipoQrCode(cbbTipoQRCode.ItemIndex);
    TRscPix(Sender).TitularPix.DuracaoMinutos                      :=  edtDuracaoMinutos.Value;
end;

procedure TFrmMain.ConfigurarPosPrinter;
begin
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
  ACBrPosPrinter1.Porta := cbxPorta.Text;
  ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
  ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
  ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
end;






procedure TFrmMain.ConsultaListaPixPorPeriodo(dMostraMensagem: Boolean;
  _Data_Hora_Inicial, _Data_Hora_Final: TDateTime);
begin

end;

procedure TFrmMain.ConsultaPixPorTXID(dMostraMensagem: Boolean);
begin

end;

procedure TFrmMain.ConsultarDevolucaoPixRecebido(dMostraMensagem: Boolean);
begin

end;

procedure TFrmMain.ConsultarPixRecebido(dMostraMensagem: Boolean;
  _E2eid: String);
begin

end;

procedure TFrmMain.CriarConfigIni;
var
  ConfigIni : TIniFile;
begin
  try
    if not FileExists(PathConfigIni) then
      begin
        ConfigIni := TIniFile.Create(PathConfigIni);
        try
          ConfigIni.WriteString('PIX', 'Certificado', '');
          ConfigIni.WriteString('PIX', 'Senha Certificado', '');
          ConfigIni.WriteString('PIX', 'Client ID', '');
          ConfigIni.WriteString('PIX', 'Client Secreat', '');
          ConfigIni.WriteString('PIX', 'Developer Application Key', '');
          ConfigIni.WriteString('PIX', 'Chave PIX', '');
          ConfigIni.WriteString('PIX', 'Tipo Chave PIX', '');
          ConfigIni.WriteString('PIX', 'Tipo QRCode', '');
          ConfigIni.WriteString('PIX', 'Cidade Recebedor', '');
          ConfigIni.WriteString('PIX', 'Nome Recebedor', '');
          ConfigIni.WriteString('PIX', 'PSP', '');
          ConfigIni.WriteString('PIX', 'Tipo Ambiente', '');

          ConfigIni.WriteString('IMPRESSORA', 'Modelo Impressora', '');
          ConfigIni.WriteString('IMPRESSORA', 'Porta Impressoara', '');
          ConfigIni.WriteString('IMPRESSORA', 'Cod Pag Impressora', '');
          ConfigIni.WriteString('IMPRESSORA', 'Espa�o Entre Linhas', '');
          ConfigIni.WriteString('IMPRESSORA', 'Linhas a Pular', '');
          ConfigIni.WriteString('IMPRESSORA', 'Qtd Colunas', '');

        finally
          ConfigIni.Free;
        end;
      end;
  Except on E:Exception do
    begin
      MessageDlg('Erro ao Criar arquivo de configura��o: ' + E.ClassType.ClassName + #13#10  + E.Message, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  O:  TACBrPosPrinterModelo;
  P:  TACBrPosPaginaCodigo;
  Q:  TTipoQrCode;
  R:  TTipoChavePIX;
  S:  TTipoPSP;
  T:  TTipoAmbiente;
begin
//  PC.ActivePageIndex := 0 ;
//  PC_Funcoes.ActivePageIndex := 0 ;

  PathConfigIni :=  ExtractFilePath(ParamStr(0)) + 'Config.ini';
  CriarConfigIni;

  cbxModeloPosPrinter.Items.Clear ;
  For O := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(O) ) ) ;

  cbxPagCodigo.Items.Clear ;
  For P := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(P) ) ) ;

  cbbTipoQRCode.Clear;
  For Q := Low(TTipoQrCode) to High(TTipoQrCode) do
     cbbTipoQRCode.Items.Add( GetEnumName(TypeInfo(TTipoQrCode), integer(Q)));
  if cbbTipoQRCode.Items.Count > 0 then
    cbbTipoQRCode.ItemIndex :=  0;

  CbbTipoChavePix.Clear;
  For R := Low(TTipoChavePIX) to High(TTipoChavePIX) do
     CbbTipoChavePix.Items.Add( GetEnumName(TypeInfo(TTipoChavePIX), integer(R)));
  if CbbTipoChavePix.Items.Count > 0 then
    CbbTipoChavePix.ItemIndex :=  0;

  CbbPSP.Clear;
  For S := Low(TTipoPSP) to High(TTipoPSP) do
     CbbPSP.Items.Add( GetEnumName(TypeInfo(TTipoPSP), integer(S)));
  if CbbPSP.Items.Count > 0 then
    CbbPSP.ItemIndex :=  0;

  CbbTipoAmbiente.Clear;
  For T := Low(TTipoAmbiente) to High(TTipoAmbiente) do
     CbbTipoAmbiente.Items.Add( GetEnumName(TypeInfo(TTipoAmbiente), integer(T)));
  if CbbTipoAmbiente.Items.Count > 0 then
    CbbTipoAmbiente.ItemIndex :=  0;

  ProcurarImpressora ;

  LerConfigIni ;

  PnlBtn_ConfigsClick(PnlBtn_Configs);
  PnlBtn_FuncCobrancaClick(PnlBtn_FuncCobranca);
end;

procedure TFrmMain.GerarPix(Sender: TObject);
var
  cValor : String ;
  iMinuto : integer;
begin
  iMinuto :=  0;

//  TRscPix(Sender).CriarCobranca;

//  if TRscPix(Sender).Resultado_Cod = 200 then
//    begin
//      lblStatus.Caption := 'Situa��o: '+TRscPix(Sender).ResultadoCobPut.status;
//
//      if TRscPix(Sender).ResultadoCobPut.textoImagemQRcode <> '' then
//        begin
//          mmPayload.Text  :=  TRscPix(Sender).ResultadoCobPut.textoImagemQRcode;
//          QRCodeWin(imgQRCODE, TRscPix(Sender).ResultadoCobPut.textoImagemQRcode);
//          cQrCode := TRscPix(Sender).ResultadoCobPut.textoImagemQRcode;
//        end
//      else
//        begin
//          mmPayload.Text  :=  TRscPix(Sender).ResultadoCobPut.location;
//          QRCodeWin(imgQRCODE, TRscPix(Sender).ResultadoCobPut.location);
//          cQrCode := TRscPix(Sender).ResultadoCobPut.location;
//        end;
//
//      cValor := StringReplace(TRscPix(Sender).ResultadoCobPut.valor.original, '.', ',', [rfReplaceAll]);
//      Label15.Caption := 'Valor Retornado: R$ '+FormatFLoat('###,###,##0.00',StrToCurr(cValor));
//
////      repeat
////        Inc(iMinuto, 1);
////        TRscPix(Sender).ConsultarCobranca;
////
////
////        Label14.Caption :=  IntToStr((TRscPix(Sender).ResultadoCobGet.calendario.expiracao * 60) - iMinuto);
////        Sleep(3000);
////
////
////      until (((TRscPix(Sender).ResultadoCobGet.calendario.expiracao * 60) = iMinuto)
////            or (TRscPix(Sender).ResultadoCobPut.status = 'CONCLUIDA'));
//
//
//
//    end
//  else
//    begin
//      lblStatus.Caption  := 'Situa��o: Erro ao Gerar';
//      MessageBox(0, PChar(TRscPix(Sender).Retorno), PChar('Erro'), MB_ICONERROR + mb_ok);
//  //      MessageBox(0, PChar(TRscPix(Sender).ResultadoErro.message  + #13#10  + 'C�digo Erro: ' + TRscPix(Sender).ResultadoErro.statusCode.ToString), PChar(TRscPix(Sender).ResultadoErro.error), MB_ICONERROR + mb_ok);
//    end;
end;

procedure TFrmMain.GravarConfigIni;
var
  ConfigIni : TIniFile;
begin
  try
    ConfigIni := TIniFile.Create(PathConfigIni);
    try
      ConfigIni.WriteString('PIX', 'Certificado', edtCertificado.Text);
      ConfigIni.WriteString('PIX', 'Senha Certificado', edtSenhaCertificado.Text);
      ConfigIni.WriteString('PIX', 'Client ID', edtClientID.Text);
      ConfigIni.WriteString('PIX', 'Client Secreat', edtClientSecreat.Text);
      ConfigIni.WriteString('PIX', 'Developer Application Key', edtDeveloperKey.Text);
      ConfigIni.WriteString('PIX', 'Chave PIX', edtChavePix.Text);
      ConfigIni.WriteInteger('PIX', 'Tipo Chave PIX', CbbTipoChavePix.ItemIndex);
      ConfigIni.WriteInteger('PIX', 'Tipo QRCode', cbbTipoQRCode.ItemIndex);
      ConfigIni.WriteString('PIX', 'Cidade Recebedor', edtCidadeRecebedor.Text);
      ConfigIni.WriteString('PIX', 'Nome Recebedor', edtNomeRecebedore.Text);
      ConfigIni.WriteInteger('PIX', 'PSP', CbbPSP.ItemIndex);
      ConfigIni.WriteInteger('PIX', 'Tipo Ambiente', CbbTipoAmbiente.ItemIndex);

      ConfigIni.WriteInteger('IMPRESSORA', 'Modelo Impressora', cbxModeloPosPrinter.ItemIndex);
      ConfigIni.WriteInteger('IMPRESSORA', 'Porta Impressoara', cbxPorta.ItemIndex);
      ConfigIni.WriteInteger('IMPRESSORA', 'Cod Pag Impressora', cbxPagCodigo.ItemIndex);
      ConfigIni.WriteInteger('IMPRESSORA', 'Espa�o Entre Linhas', seEspLinhas.Value);
      ConfigIni.WriteInteger('IMPRESSORA', 'Linhas a Pular', seLinhasPular.Value);
      ConfigIni.WriteInteger('IMPRESSORA', 'Qtd Colunas', seColunas.Value);
    finally
      ConfigIni.Free;
    end;
  Except on E:Exception do
    begin
      MessageDlg('Erro ao gravar arquivo de configura��o: ' + E.ClassType.ClassName + #13#10  + E.Message, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;



procedure TFrmMain.InOnCobGet_(Sender : TObject; Const RespCobGet: TRespCobGet = nil;
  Erro: String = '');
var
  cValor : String ;
begin
  if (Erro = '') then
    begin
      lblStatus.Caption := 'Situa��o: ' +  RespCobGet.Status;

      if (RespCobGet.Status <> 'NAO_CRIADO') then
        begin
          cValor := StringReplace(RespCobGet.valor.original, '.', ',', [rfReplaceAll]);
          Label15.Caption := 'Valor Retornado: R$ '+FormatFLoat('#0.00',StrToCurr(cValor));

          if RespCobGet.textoImagemQRcode <> '' then
            begin
              mmPayload.Text  :=  RespCobGet.textoImagemQRcode;
              QRCodeWin(imgQRCODE, RespCobGet.textoImagemQRcode);
              cQrCode := RespCobGet.textoImagemQRcode;
            end
          else
            begin
              mmPayload.Text  :=  RespCobGet.location;
              QRCodeWin(imgQRCODE, RespCobGet.location);
              cQrCode := RespCobGet.location;
            end;
        end;
    end
  else
    begin
      lblStatus.Caption  := 'Situa��o: '  + Erro;
      MessageDlg('Erro ao Consultar Cobran�a' + #13 + Erro, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

procedure TFrmMain.InOnCobPatch_(Sender: TObject;
  const RespCobPatch: TRespCobPatch; Erro: String);
var
  cValor : String ;
begin
  if (Erro = '') then
    begin
      lblStatus.Caption := 'Situa��o: ' +  RespCobPatch.Status;
    end
  else
    begin
      lblStatus.Caption  := 'Situa��o: '  + Erro;
      MessageDlg('Erro ao Revisar Cobran�a' + #13 + Erro, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

procedure TFrmMain.InOnCobPut_(Sender: TObject; const RespCobPut: TRespCobPut;
  Erro: String);
var
  cValor : String ;
begin
  if (Erro = '') then
    begin
      lblStatus.Caption := 'Situa��o: ' +  RespCobPut.Status;

      if (RespCobPut.Status <> 'NAO_CRIADO') then
        begin
          cValor := StringReplace(RespCobPut.valor.original, '.', ',', [rfReplaceAll]);
          Label15.Caption := 'Valor Retornado: R$ '+FormatFLoat('#0.00',StrToCurr(cValor));

          if RespCobPut.textoImagemQRcode <> '' then
            begin
              mmPayload.Text  :=  RespCobPut.textoImagemQRcode;
              QRCodeWin(imgQRCODE, RespCobPut.textoImagemQRcode);
              cQrCode := RespCobPut.textoImagemQRcode;
            end
          else
            begin
              mmPayload.Text  :=  RespCobPut.location;
              QRCodeWin(imgQRCODE, RespCobPut.location);
              cQrCode := RespCobPut.location;
            end;
        end;
    end
  else
    begin
      lblStatus.Caption  := 'Situa��o: '  + Erro;
      MessageDlg('Erro ao Criar Cobran�a' + #13 + Erro, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

procedure TFrmMain.InOnToken_(Sender: TObject; const Token: TToken;
  Erro: String);
begin
  if Erro <> '' then
    begin
      lblStatus.Caption  := 'Situa��o: '  + Erro;
      MessageDlg('Erro ao Obter Token!' +  #13 +Erro, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

procedure TFrmMain.LerConfigIni;
var
  ConfigIni : TIniFile;
begin
  try
    ConfigIni := TIniFile.Create(PathConfigIni);
    try
      edtCertificado.Text       :=  ConfigIni.ReadString('PIX', 'Certificado', 'D:\Projetos\DBSistema\Exe\DBPdvEx\Utilitarios\CertificadoDigital\Certificado_Atenas_2022.pfx');
      edtSenhaCertificado.Text  :=  ConfigIni.ReadString('PIX', 'Senha Certificado', '586270');
      edtClientID.Text          :=  ConfigIni.ReadString('PIX', 'Client ID', 'eyJpZCI6IjVkIiwiY29kaWdvUHVibGljYWRvciI6MCwiY29kaWdvU29mdHdhcmUiOjI5MTgyLCJzZXF1ZW5jaWFsSW5zdGFsYWNhbyI6MX0');
      edtClientSecreat.Text     :=  ConfigIni.ReadString('PIX', 'Client Secreat', 'eyJpZCI6ImM4YzAwOTAtYjUyNS00N2RjLWE2ZGEtZGI1YmQ0OWRmYWQ3NDZiYjI2YTQtOCIsImNvZGlnb1B1YmxpY2Fkb3Ii'+
                                                                                  'OjAsImNvZGlnb1NvZnR3YXJlIjoyOTE4Miwic2VxdWVuY2lhbEluc3RhbGFjYW8iOjEsInNlcXVlbmNpYWxDcmVkZW5jaWFsIjoxLCJhbWJpZW50ZSI6ImhvbW9sb2dhY2FvIiwiaWF0IjoxNjQ0MDY5ODYzODU2fQ');
      edtDeveloperKey.Text      :=  ConfigIni.ReadString('PIX', 'Developer Application Key', 'd27b07790affab401368e17dc0050e56b9b1a5b8');
      edtChavePix.Text          :=  ConfigIni.ReadString('PIX', 'Chave PIX', 'atenassoftwares');
      CbbTipoChavePix.ItemIndex :=  ConfigIni.ReadInteger('PIX', 'Tipo Chave PIX', 0);
      cbbTipoQRCode.ItemIndex   :=  ConfigIni.ReadInteger('PIX', 'Tipo QRCode', 0);
      edtCidadeRecebedor.Text   :=  ConfigIni.ReadString('PIX', 'Cidade Recebedor', 'Sumar�');
      edtNomeRecebedore.Text    :=  ConfigIni.ReadString('PIX', 'Nome Recebedor', 'Marcelo Ferreira');
      CbbPSP.ItemIndex          :=  ConfigIni.ReadInteger('PIX', 'PSP', 0);
      CbbTipoAmbiente.ItemIndex :=  ConfigIni.ReadInteger('PIX', 'Tipo Ambiente', 0);

      cbxModeloPosPrinter.ItemIndex :=  ConfigIni.ReadInteger('IMPRESSORA', 'Modelo Impressora', 1);
      cbxPorta.ItemIndex            :=  ConfigIni.ReadInteger('IMPRESSORA', 'Porta Impressoara', 1);
      cbxPagCodigo.ItemIndex        :=  ConfigIni.ReadInteger('IMPRESSORA', 'Cod Pag Impressora', 0);
      seEspLinhas.Value             :=  ConfigIni.ReadInteger('IMPRESSORA', 'Espa�o Entre Linhas', 0);
      seLinhasPular.Value           :=  ConfigIni.ReadInteger('IMPRESSORA', 'Linhas a Pular', 0);
      seColunas.Value               :=  ConfigIni.ReadInteger('IMPRESSORA', 'Qtd Colunas', 40);
    finally
      ConfigIni.Free;
    end;
  Except on E:Exception do
    begin
      MessageDlg('Erro ao ler arquivo de configura��o: ' + E.ClassType.ClassName + #13#10  + E.Message, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;


procedure TFrmMain.PnlBtn_ConfigsClick(Sender: TObject);
begin
  pnl_Configs.BringToFront;
  SetResetConfigPnlBtn(pnl_menu);
  SetConfigClick(Sender);
end;

procedure TFrmMain.PnlBtn_FuncCobrancaClick(Sender: TObject);
begin
  pnl_FuncCobranca.BringToFront;
  SetResetConfigPnlBtn(Pnl_MenuFuncoes);
  SetConfigClick(Sender);
end;

procedure TFrmMain.PnlBtn_FuncConsultaClick(Sender: TObject);
begin
  pnl_FuncConsulta.BringToFront;
  SetResetConfigPnlBtn(Pnl_MenuFuncoes);
  SetConfigClick(Sender);
end;

procedure TFrmMain.PnlBtn_FuncoesClick(Sender: TObject);
begin
  pnl_Funcoes.BringToFront;
  SetResetConfigPnlBtn(pnl_menu);
  SetConfigClick(Sender);
end;

procedure TFrmMain.PnlsBtnMouseLeave(Sender: TObject);
begin
  if TPanel(Sender).Tag = 0 then
    TPanel(Sender).Color  :=  clMenuHighlight
  else
    TPanel(Sender).Color  :=  clNavy;
end;

procedure TFrmMain.PnlsBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  TPanel(Sender).Color  :=  clHotLight;
end;

procedure TFrmMain.ProcurarImpressora;
begin
  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
  {$IfDef MSWINDOWS}
  ACBrPosPrinter1.Device.AcharPortasUSB( cbxPorta.Items );
  {$EndIf}
  ACBrPosPrinter1.Device.AcharPortasRAW( cbxPorta.Items );

  cbxPorta.Items.Add('TCP:192.168.0.31:9100') ;

  {$IfNDef MSWINDOWS}
   cbxPorta.Items.Add('/dev/ttyS0') ;
   cbxPorta.Items.Add('/dev/ttyUSB0') ;
   cbxPorta.Items.Add('/tmp/ecf.txt') ;
  {$Else}
   cbxPorta.Items.Add('\\localhost\Epson') ;
   cbxPorta.Items.Add('c:\temp\ecf.txt') ;
  {$EndIf}
end;





end.
