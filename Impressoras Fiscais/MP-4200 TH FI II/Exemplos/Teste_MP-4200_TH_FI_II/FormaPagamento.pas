unit FormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmEfetuaFormaPagamentoTextoOpcional = class(TForm)
    Label1: TLabel;
    txtForma: TEdit;
    Label2: TLabel;
    txtValor: TEdit;
    Label3: TLabel;
    txtTexto: TMemo;
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
  frmEfetuaFormaPagamentoTextoOpcional: TfrmEfetuaFormaPagamentoTextoOpcional;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmEfetuaFormaPagamentoTextoOpcional.cmdOKClick(Sender: TObject);
  var iRetorno: integer;
  begin
    iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma(txtForma.Text,
                                                               txtValor.Text,
                                                               txtTexto.Text);
    frmPrincipal.Analisa_iRetorno;
    frmPrincipal.Retorno_Impressora;
Close;
  end;

procedure TfrmEfetuaFormaPagamentoTextoOpcional.cmdCancelarClick(Sender: TObject);
  begin
Close;
  end;

end.
