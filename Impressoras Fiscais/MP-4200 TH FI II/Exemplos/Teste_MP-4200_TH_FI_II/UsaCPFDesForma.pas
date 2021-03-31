unit UsaCPFDesForma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFormUsaCPFDesForma = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Edit2: TEdit;
    Label2: TLabel;
    optFazTEF: TRadioButton;
    optNaoFazTEF: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsaCPFDesForma: TFormUsaCPFDesForma;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormUsaCPFDesForma.Button1Click(Sender: TObject);
var cOperacao: string;
Begin
   if Caption = 'CGC/CPF do Consumidor' then
      begin
         iRetorno := Bematech_FI_AbreCupom( Edit1.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else
      begin
         if optFazTEF.Checked = true then cOperacao := '1';
         if optNaoFazTEF.Checked = true then cOperacao := '0';
         iRetorno := Bematech_FI_ProgramaFormaPagamentoMFD( Edit2.Text, pchar( cOperacao ));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
Close;
End;

Procedure TFormUsaCPFDesForma.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
