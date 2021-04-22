unit IniciaFechamentoCupomMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmIniciaFechamentoCupomMFD = class(TForm)
    GroupBox1: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    optAmbos: TRadioButton;
    GroupBox2: TGroupBox;
    optPercentual: TRadioButton;
    optValor: TRadioButton;
    Edit1: TEdit;
    cmdOK: TButton;
    cmdCancelar: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure cmdOKClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIniciaFechamentoCupomMFD: TfrmIniciaFechamentoCupomMFD;

implementation

uses Principal, UnitDeclaracoes;


{$R *.DFM}

procedure TfrmIniciaFechamentoCupomMFD.cmdOKClick(Sender: TObject);
var cParametro1, cParametro2: string;
begin

  iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD('1');

  if optAcrescimo.Checked  = true then cParametro1 := 'A';
  if optDesconto.Checked   = true then cParametro1 := 'D';
  if optAmbos.Checked      = true then cParametro1 := 'X';
  if optPercentual.Checked = true then cParametro2 := '%';
  if optValor.Checked      = true then cParametro2 := '$';

  if Caption = 'Inicia Fechamento Cupom MFD' then
  begin
    iRetorno := Bematech_FI_IniciaFechamentoCupomMFD( cParametro1, cParametro2, Edit1.Text, Edit2.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
  end
  Else
  begin
    iRetorno := Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD( cParametro1, cParametro2, Edit1.Text, Edit2.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
  end;
  Close;
end;

procedure TfrmIniciaFechamentoCupomMFD.cmdCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
