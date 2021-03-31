unit ConferenciaMesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormConferenciaMesa = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtMesa: TEdit;
    GroupBox2: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    btnOK: TButton;
    btnCancelar: TButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    optValor: TRadioButton;
    optPercentual: TRadioButton;
    txtValorAcreDesc: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    AcrescimoDesconto     : String;
    TipoAcrescimoDesconto : String;
  public
    { Public declarations }
  end;

var
  FormConferenciaMesa: TFormConferenciaMesa;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormConferenciaMesa.btnOKClick(Sender: TObject);
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

    // Função para Cancelar um registro de venda na imp. Restaurante
    iRetorno := Bematech_FIR_ConferenciaMesa( txtMesa.Text, AcrescimoDesconto,
                TipoAcrescimoDesconto, txtValorAcreDesc.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;

end;

procedure TFormConferenciaMesa.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
