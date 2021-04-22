unit AbreCupomRestaurante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormAbreCupomRestaurante = class(TForm)
    GroupBox1: TGroupBox;
    txtCPF: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    txtMesa: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbreCupomRestaurante: TFormAbreCupomRestaurante;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormAbreCupomRestaurante.Button1Click(Sender: TObject);
begin
          iRetorno := Bematech_FIR_AbreCupomRestaurante(txtMesa.Text, txtCPF.Text);
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
end;

procedure TFormAbreCupomRestaurante.Button2Click(Sender: TObject);
begin
Close;
end;

end.
