unit FechaResumido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormFechaResumido = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
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
  FormFechaResumido: TFormFechaResumido;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormFechaResumido.Button1Click(Sender: TObject);
  Begin
    if Caption = 'Inicia Fechamento do Cupom - RESUMIDO' then
       begin
         iRetorno := Bematech_FI_FechaCupomResumido( Edit1.Text, Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();

Close;
       end
    else
       begin
         iRetorno := Bematech_FIR_FechaCupomResumidoRestaurante( Edit1.Text, Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();

Close;
       end;
  End;

Procedure TFormFechaResumido.Button2Click(Sender: TObject);
  Begin

Close;
  End;

End.
