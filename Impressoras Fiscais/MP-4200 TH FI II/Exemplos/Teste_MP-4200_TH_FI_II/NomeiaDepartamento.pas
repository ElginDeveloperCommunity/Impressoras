unit NomeiaDepartamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormNomeiaDepartamento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNomeiaDepartamento: TFormNomeiaDepartamento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormNomeiaDepartamento.Button2Click(Sender: TObject);
  Begin
    iRetorno := Bematech_FI_NomeiaDepartamento( StrToInt( Edit1.Text ), Edit2.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;
  End;

Procedure TFormNomeiaDepartamento.Button1Click(Sender: TObject);
  Begin
Close;
  End;

End.
