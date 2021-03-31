unit FechaCupomContaDividida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormFechaCupomContaDividida = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    optValor: TRadioButton;
    optPercentual: TRadioButton;
    txtValorAcreDesc: TEdit;
    Label4: TLabel;
    txtCupons: TEdit;
    txtFormaPagto: TEdit;
    Label1: TLabel;
    txtValorFormaPagto: TEdit;
    Label3: TLabel;
    txtValorCupomCliente: TEdit;
    Label5: TLabel;
    txtCPF: TEdit;
    Label6: TLabel;
    btnOK: TButton;
    btnCancelar: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    TipoAcrescimoDesconto : String;
    AcrescimoDesconto     : String;

  public
    { Public declarations }
  end;

var
  FormFechaCupomContaDividida: TFormFechaCupomContaDividida;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

//------------ Fecha Cupom com Conta Dividida -----------//

procedure TFormFechaCupomContaDividida.btnOKClick(Sender: TObject);
begin
    // Verifica se é acréscimo ou desconto
    If optAcrescimo.Checked = True Then
        AcrescimoDesconto := 'A'  // Acrescimo
    Else
        AcrescimoDesconto := 'D';  // Desconto

    // Verifica se é por valor ou percentual
    If optValor.Checked = True Then
        TipoAcrescimoDesconto := '$'  // Por valor
    Else
        TipoAcrescimoDesconto := '%';  // Por percentual

    // Fecha o cupom com conta dividida
    iRetorno := Bematech_FIR_FechaCupomContaDividida( txtCupons.Text, AcrescimoDesconto,
                TipoAcrescimoDesconto, txtValorAcreDesc.Text, txtFormaPagto.Text,
                txtValorFormaPagto.Text, txtValorCupomCliente.Text, txtCPF.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;

end;

procedure TFormFechaCupomContaDividida.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
