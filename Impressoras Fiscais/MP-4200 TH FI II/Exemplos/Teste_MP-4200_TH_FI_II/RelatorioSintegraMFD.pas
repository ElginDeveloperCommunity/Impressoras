unit RelatorioSintegraMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmRelatorioSintegraMFD = class(TForm)
    GroupBox1: TGroupBox;
    Check60M: TCheckBox;
    Check60A: TCheckBox;
    Check60D: TCheckBox;
    Check60I: TCheckBox;
    Check60R: TCheckBox;
    Check75: TCheckBox;
    Label1: TLabel;
    txtNomeArquivo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtMes: TEdit;
    txtAno: TEdit;
    txtRazaoSocial: TEdit;
    txtEndereco: TEdit;
    txtNumero: TEdit;
    txtEmpresa: TEdit;
    txtBairro: TEdit;
    txtCidade: TEdit;
    Label10: TLabel;
    txtCEP: TEdit;
    Label11: TLabel;
    txtTelefone: TEdit;
    txtFAX: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    txtContato: TEdit;
    cmdOK: TButton;
    cmdCancelar: TButton;
    procedure cmdOKClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioSintegraMFD: TfrmRelatorioSintegraMFD;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmRelatorioSintegraMFD.cmdOKClick(Sender: TObject);
var iRegistro: integer;
begin
  Try
    Screen.Cursor := crHourglass;
    iRegistro := 0;
    if check60M.Checked = true then iRegistro := iRegistro + 1;
    if check60A.Checked = true then iRegistro := iRegistro + 2;
    if check60D.Checked = true then iRegistro := iRegistro + 4;
    if check60I.Checked = true then iRegistro := iRegistro + 8;
    if check60R.Checked = true then iRegistro := iRegistro + 16;
    if check75.Checked  = true then iRegistro := iRegistro + 32;

    iRetorno := Bematech_FI_RelatorioSintegraMFD( iRegistro, txtNomeArquivo.Text, txtMes.Text,
                                                 txtAno.Text, txtRazaoSocial.Text, txtEndereco.Text,
                                                 txtNumero.Text, txtEmpresa.Text, txtBairro.Text,
                                                 txtCidade.Text, txtCEP.Text, txtTelefone.Text,
                                                 txtFAX.Text, txtContato.Text );
    frmPrincipal.Analisa_iRetorno;
    frmPrincipal.Retorno_Impressora;
    if iRetorno = 1 then
      MessageDLG('O relatório foi gerado com sucesso!',mtInformation,[mbOK],0);
  Finally
     Screen.Cursor := crDefault;
  End;
end;

procedure TfrmRelatorioSintegraMFD.cmdCancelarClick(Sender: TObject);
begin
    frmRelatorioSintegraMFD.Close;
end;

end.
