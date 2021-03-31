unit FechaConferenciaMesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormFechaConferenciaMesa = class(TForm)
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
  FormFechaConferenciaMesa: TFormFechaConferenciaMesa;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

//------------- Fecha o Cupom de Conferência ------------//

procedure TFormFechaConferenciaMesa.btnOKClick(Sender: TObject);
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

    // Fecha o cupom de conferência
    iRetorno := Bematech_FIR_FechaConferenciaMesa( AcrescimoDesconto,
                TipoAcrescimoDesconto, txtValorAcreDesc.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;

end;

procedure TFormFechaConferenciaMesa.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
