unit Recebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormRecebimento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  FormRecebimento: TFormRecebimento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormRecebimento.Button1Click(Sender: TObject);
  Begin
      if Caption = 'Recebimento Não Fiscal' then
         begin
             iRetorno := Bematech_FI_RecebimentoNaoFiscal(Edit1.Text, Edit2.Text, Edit3.Text);
             frmPrincipal.Analisa_iRetorno();
             frmPrincipal.Retorno_Impressora();
         end
      else
         begin
             iRetorno := Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(Edit1.Text, Edit2.Text);
             frmPrincipal.Analisa_iRetorno();
             frmPrincipal.Retorno_Impressora();
         end;
  End;

Procedure TFormRecebimento.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
