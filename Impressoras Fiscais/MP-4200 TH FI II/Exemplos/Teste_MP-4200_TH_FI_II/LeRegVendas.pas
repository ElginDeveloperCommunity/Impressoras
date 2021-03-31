unit LeRegVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormLeRegVendas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtMesa: TEdit;
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
  FormLeRegVendas: TFormLeRegVendas;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormLeRegVendas.btnOKClick(Sender: TObject);
begin
    //--- Leitura dos Registros de Venda Pela Serial ---//

    iRetorno := Bematech_FIR_RegistroVendaSerial(txtMesa.Text);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
end;

procedure TFormLeRegVendas.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.
