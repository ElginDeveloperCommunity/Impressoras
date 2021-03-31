unit EfetuaFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls;

type
  TFormEfetuaFormaPagamento = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEfetuaFormaPagamento: TFormEfetuaFormaPagamento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormEfetuaFormaPagamento.Button1Click(Sender: TObject);
  Begin

      if Caption = 'Efetua Forma de Pagamento' then
         begin
            iRetorno := Bematech_FI_EfetuaFormaPagamento( Edit1.Text, Edit2.Text );
            frmPrincipal.Analisa_iRetorno();
            frmPrincipal.Retorno_Impressora();
         end;
      if Caption = 'Efetua Forma de Pagamento Imp Antiga' then
         begin
            iRetorno := Bematech_FI_EfetuaFormaPagamentoImpAntiga( Edit1.Text, Edit2.Text );
            frmPrincipal.Analisa_iRetorno();
            frmPrincipal.Retorno_Impressora();
         end;
      if Caption = 'Efetua Forma de Pagamento MFD' then
         begin
            iRetorno := Bematech_FI_EfetuaFormaPagamentoMFD( Edit1.Text, Edit2.Text, Edit3.Text, pchar('') );
            frmPrincipal.Analisa_iRetorno();
            frmPrincipal.Retorno_Impressora();
         end;
      Close;
  End;

Procedure TFormEfetuaFormaPagamento.Button2Click(Sender: TObject);
  Begin
      Close;
  End;

End.
