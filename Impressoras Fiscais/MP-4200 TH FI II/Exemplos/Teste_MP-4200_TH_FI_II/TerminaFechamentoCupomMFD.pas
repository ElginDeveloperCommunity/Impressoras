unit TerminaFechamentoCupomMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmMensagemPromocionalMFD = class(TForm)
    Label1: TLabel;
    txtMensagem: TEdit;
    GroupBox1: TGroupBox;
    radioEAN13: TRadioButton;
    radioEAN8: TRadioButton;
    radioCODABAR: TRadioButton;
    radioPDF: TRadioButton;
    radioITF: TRadioButton;
    radioCODE128: TRadioButton;
    radioCODE39: TRadioButton;
    radioISBN: TRadioButton;
    radioMSI: TRadioButton;
    radioPLESSEY: TRadioButton;
    radioUPCA: TRadioButton;
    radioUPCE: TRadioButton;
    Label2: TLabel;
    txtCodigo: TEdit;
    Label3: TLabel;
    txtAltura: TEdit;
    GroupBox2: TGroupBox;
    radioFinas: TRadioButton;
    radioMedias: TRadioButton;
    radioGrossas: TRadioButton;
    GroupBox3: TGroupBox;
    radioNaoImprime: TRadioButton;
    radioAcima: TRadioButton;
    radioAbaixo: TRadioButton;
    radioAmbos: TRadioButton;
    GroupBox4: TGroupBox;
    radioNormal: TRadioButton;
    radioCondensado: TRadioButton;
    Label4: TLabel;
    txtCorrecaoErros: TEdit;
    txtColunas: TEdit;
    cmdOK: TButton;
    cmdCancelar: TButton;
    label5: TLabel;
    procedure radioEAN13Click(Sender: TObject);
    procedure radioEAN8Click(Sender: TObject);
    procedure radioCODABARClick(Sender: TObject);
    procedure radioPDFClick(Sender: TObject);
    procedure radioITFClick(Sender: TObject);
    procedure radioCODE128Click(Sender: TObject);
    procedure radioCODE39Click(Sender: TObject);
    procedure radioISBNClick(Sender: TObject);
    procedure radioMSIClick(Sender: TObject);
    procedure radioPLESSEYClick(Sender: TObject);
    procedure radioUPCAClick(Sender: TObject);
    procedure radioUPCEClick(Sender: TObject);
    procedure cmdOKClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagemPromocionalMFD: TfrmMensagemPromocionalMFD;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmMensagemPromocionalMFD.radioEAN13Click(Sender: TObject);
begin
   txtCodigo.Text := '123456789012';
end;

procedure TfrmMensagemPromocionalMFD.radioEAN8Click(Sender: TObject);
begin
   txtCodigo.Text := '1234567';
end;

procedure TfrmMensagemPromocionalMFD.radioCODABARClick(Sender: TObject);
begin
   txtCodigo.Text := '123-ABC/001';
end;

procedure TfrmMensagemPromocionalMFD.radioPDFClick(Sender: TObject);
begin
   txtCodigo.Text := 'Bematech. Nosso Negócio é Automação Comercial!';
end;

procedure TfrmMensagemPromocionalMFD.radioITFClick(Sender: TObject);
begin
   txtCodigo.Text := '0123456789012345';
end;

procedure TfrmMensagemPromocionalMFD.radioCODE128Click(Sender: TObject);
begin
   txtCodigo.Text := 'Bematech';
end;

procedure TfrmMensagemPromocionalMFD.radioCODE39Click(Sender: TObject);
begin
   txtCodigo.Text := 'abc-123';
end;

procedure TfrmMensagemPromocionalMFD.radioISBNClick(Sender: TObject);
begin
   txtCodigo.Text := '1-56592-292-X 9000';
end;

procedure TfrmMensagemPromocionalMFD.radioMSIClick(Sender: TObject);
begin
   txtCodigo.Text := '123';
end;

procedure TfrmMensagemPromocionalMFD.radioPLESSEYClick(Sender: TObject);
begin
   txtCodigo.Text := '123-ABC';
end;

procedure TfrmMensagemPromocionalMFD.radioUPCAClick(Sender: TObject);
begin
   txtCodigo.Text := '12345678901';
end;

procedure TfrmMensagemPromocionalMFD.radioUPCEClick(Sender: TObject);
begin
   txtCodigo.Text := '123456';
end;

procedure TfrmMensagemPromocionalMFD.cmdOKClick(Sender: TObject);
var
   cTipoCodigo: string;
   iLargura, iPosicaoCaracteres, iFonte : integer;
begin
   if ( radioEAN13.Checked   = true ) then cTipoCodigo := 'EAN13';
   if ( radioEAN8.Checked    = true ) then cTipoCodigo := 'EAN8';
   if ( radioCODABAR.Checked = true ) then cTipoCodigo := 'CODABAR';
   if ( radioPDF.Checked     = true ) then cTipoCodigo := 'PDF';
   if ( radioITF.Checked     = true ) then cTipoCodigo := 'ITF';
   if ( radioCODE128.Checked = true ) then cTipoCodigo := 'CODE128';
   if ( radioCODE39.Checked  = true ) then cTipoCodigo := 'CODE39';
   if ( radioISBN.Checked    = true ) then cTipoCodigo := 'ISBN';
   if ( radioMSI.Checked     = true ) then cTipoCodigo := 'MSI';
   if ( radioPLESSEY.Checked = true ) then cTipoCodigo := 'PLESSEY';
   if ( radioUPCA.Checked    = true ) then cTipoCodigo := 'UPCA';
   if ( radioUPCE.Checked    = true ) then cTipoCodigo := 'UPCE';

   if ( radioFinas.Checked   = true ) then iLargura := 0;
   if ( radioMedias.Checked  = true ) then iLargura := 1;
   if ( radioGrossas.Checked = true ) then iLargura := 2;

   if ( radioNaoImprime.Checked = true ) then iPosicaoCaracteres := 0;
   if ( radioAcima.Checked      = true ) then iPosicaoCaracteres := 1;
   if ( radioAbaixo.Checked     = true ) then iPosicaoCaracteres := 2;
   if ( radioAmbos.Checked      = true ) then iPosicaoCaracteres := 3;

   if ( radioNormal.Checked     = true ) then iFonte := 0;
   if ( radioCondensado.Checked = true ) then iFonte := 0;

   iRetorno := Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( txtMensagem.Text,
                                                                  pchar( cTipoCodigo ),
                                                                  txtCodigo.Text,
                                                                  strtoint( txtAltura.Text ) ,
                                                                  iLargura,
                                                                  iPosicaoCaracteres,
                                                                  iFonte,
                                                                  1,
                                                                  strtoint( txtCorrecaoErros.Text ),
                                                                  strtoint( txtColunas.Text ) );

   frmPrincipal.Analisa_iRetorno();
   frmMensagemPromocionalMFD.Close;

end;

procedure TfrmMensagemPromocionalMFD.cmdCancelarClick(Sender: TObject);
begin
   frmMensagemPromocionalMFD.Close;
end;

end.
