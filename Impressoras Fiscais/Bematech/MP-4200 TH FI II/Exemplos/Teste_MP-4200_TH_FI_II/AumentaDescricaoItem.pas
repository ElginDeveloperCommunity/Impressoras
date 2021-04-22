unit AumentaDescricaoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormAumentaDescricaoItem = class(TForm)
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
  FormAumentaDescricaoItem: TFormAumentaDescricaoItem;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormAumentaDescricaoItem.Button1Click(Sender: TObject);
  Begin
    iRetorno := Bematech_FI_AumentaDescricaoItem( Memo1.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;
 End;

Procedure TFormAumentaDescricaoItem.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
