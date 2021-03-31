unit TranfMesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTranfMesa = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    txtMesaOrigem: TEdit;
    txtMesaDestino: TEdit;
    btnOK: TButton;
    btnCancelar: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTranfMesa: TFormTranfMesa;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormTranfMesa.btnOKClick(Sender: TObject);
begin
    // Função de transferência de mesa
    iRetorno := Bematech_FIR_TransferenciaMesa(txtMesaOrigem.Text, txtMesaDestino.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
end;

procedure TFormTranfMesa.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
