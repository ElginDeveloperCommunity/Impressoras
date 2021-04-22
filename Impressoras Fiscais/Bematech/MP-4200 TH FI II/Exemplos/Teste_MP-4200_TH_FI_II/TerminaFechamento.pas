unit TerminaFechamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTerminaFechamento = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTerminaFechamento: TFormTerminaFechamento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormTerminaFechamento.Button1Click(Sender: TObject);
begin
   if Caption = 'Finaliza o Fechamento do Cupom Fiscal' then
      begin
         iRetorno := Bematech_FI_TerminaFechamentoCupom(Memo1.Text);
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else
      begin
         iRetorno := Bematech_FI_FechaRecebimentoNaoFiscalMFD(Memo1.Text);
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
Close;
End;

Procedure TFormTerminaFechamento.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
