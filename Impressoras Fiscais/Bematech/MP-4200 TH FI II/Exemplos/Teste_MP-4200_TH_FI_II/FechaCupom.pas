unit FechaCupom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormFechaCupom = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    optValor: TRadioButton;
    optPercentual: TRadioButton;
    txtValorAcreDesc: TEdit;
    btnOK: TButton;
    btnCancelar: TButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    txtValorPagto: TEdit;
    txtFormaPagto: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtMensagem: TMemo;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    TipoAcrescimoDesconto : String;
    AcrescimoDesconto     : String;

  public
    { Public declarations }
  end;

var
  FormFechaCupom: TFormFechaCupom;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormFechaCupom.btnCancelarClick(Sender: TObject);
begin
Close;
end;


// ------ Fechamento do Cupom na Imp. Restaurante -------//
procedure TFormFechaCupom.btnOKClick(Sender: TObject);
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

    // Fecha o cupom
    iRetorno := Bematech_FIR_FechaCupomRestaurante( txtFormaPagto.Text,AcrescimoDesconto,
                TipoAcrescimoDesconto, txtValorAcreDesc.Text, txtValorPagto.Text, txtMensagem.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;

end;

end.
