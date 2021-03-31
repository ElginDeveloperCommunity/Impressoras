unit RetornoValor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmRetornoValor = class(TForm)
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
  frmRetornoValor: TfrmRetornoValor;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmRetornoValor.cmdOKClick(Sender: TObject);
var cRet: string;
begin
   setlength( cRet, 14 );
   if Caption = 'Valor Forma Pagamento' then
      begin
         iRetorno := Bematech_FI_ValorFormaPagamentoMFD( Edit1.Text, cRet );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
         Application.MessageBox( pchar( cRet ), 'Informações da Impressora', MB_IconInformation + MB_OK );
      end
   else
      begin
         iRetorno := Bematech_FI_ValorTotalizadorNaoFiscalMFD( Edit1.Text, cRet );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
         Application.MessageBox( pchar( cRet ), 'Informações da Impressora', MB_IconInformation + MB_OK );
      end;

Close;
end;

procedure TfrmRetornoValor.cmdCancelarClick(Sender: TObject);
begin
Close;
end;

end.
