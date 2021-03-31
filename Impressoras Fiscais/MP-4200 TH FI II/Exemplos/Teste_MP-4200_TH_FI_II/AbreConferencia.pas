unit AbreConferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormAbreConferencia = class(TForm)
    GroupBox1: TGroupBox;
    txtMesa: TEdit;
    Label1: TLabel;
    btnOK: TButton;
    btnCancelar: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbreConferencia: TFormAbreConferencia;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}


//------------ Abertura da Conferência de Mesa --------- //

procedure TFormAbreConferencia.btnOKClick(Sender: TObject);
begin
    // Função para Cancelar um registro de venda na imp. Restaurante
    iRetorno := Bematech_FIR_AbreConferenciaMesa( txtMesa.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;

end;

procedure TFormAbreConferencia.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
