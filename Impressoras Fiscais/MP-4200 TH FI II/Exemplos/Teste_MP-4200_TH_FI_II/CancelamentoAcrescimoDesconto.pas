unit CancelamentoAcrescimoDesconto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmCancelamentoAcrescimoDesconto = class(TForm)
    GroupBox1: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
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
  frmCancelamentoAcrescimoDesconto: TfrmCancelamentoAcrescimoDesconto;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmCancelamentoAcrescimoDesconto.cmdOKClick(Sender: TObject);
var AcrescimoDesconto: String;
begin
    If optAcrescimo.Checked = True Then
        AcrescimoDesconto := 'A'
    Else
        AcrescimoDesconto := 'D';

    If Caption = 'Cancelamento de Acréscimo/Desconto no Subtotal' Then
       begin
          iRetorno := Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( AcrescimoDesconto );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    If Caption = 'Cancelamento de Acréscimo/Desconto no Item' Then
       begin
          iRetorno := Bematech_FI_CancelaAcrescimoDescontoItemMFD( AcrescimoDesconto, Edit1.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Cancelamento de Acréscimo/Desconto em Subtotal de Recebimento Não Fiscal' then
       begin
          iRetorno := Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( AcrescimoDesconto );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
end;

procedure TfrmCancelamentoAcrescimoDesconto.cmdCancelarClick(
  Sender: TObject);
begin
Close;
end;

end.
