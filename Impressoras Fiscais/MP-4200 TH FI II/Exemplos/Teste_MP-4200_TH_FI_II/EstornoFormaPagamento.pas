unit EstornoFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormEstornoFormaPagamento = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstornoFormaPagamento: TFormEstornoFormaPagamento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormEstornoFormaPagamento.Button1Click(Sender: TObject);
  Begin
    iRetorno := Bematech_FI_EstornoFormasPagamento( Edit1.Text, Edit2.Text, Edit3.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
  End;

Procedure TFormEstornoFormaPagamento.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
