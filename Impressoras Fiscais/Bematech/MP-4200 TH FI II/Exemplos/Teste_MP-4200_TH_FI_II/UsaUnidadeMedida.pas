unit UsaUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormUsaUnidadeMedida = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
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
  FormUsaUnidadeMedida: TFormUsaUnidadeMedida;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormUsaUnidadeMedida.Button1Click(Sender: TObject);
  Begin
    iRetorno := Bematech_FI_UsaUnidadeMedida( Edit1.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;    
  End;

Procedure TFormUsaUnidadeMedida.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
