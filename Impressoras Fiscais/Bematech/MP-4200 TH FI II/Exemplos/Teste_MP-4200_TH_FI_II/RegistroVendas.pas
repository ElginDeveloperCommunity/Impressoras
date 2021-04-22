unit RegistroVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormRegistroVendas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtMesa: TEdit;
    txtCodigo: TEdit;
    txtDescricao: TEdit;
    txtAliquota: TEdit;
    txtQuantidade: TEdit;
    txtValor: TEdit;
    GroupBox2: TGroupBox;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    txtValorAcreDesc: TEdit;
    Label7: TLabel;
    btnFechar: TButton;
    btnOK: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    Mesa              : String;
    Codigo            : String;
    Descricao         : String;
    Aliquota          : String;
    Quantidade        : String;
    ValorUnitario     : String;
    AcrescimoDesconto : String;
    ValorAcreDesconto : String;

  public
    { Public declarations }
  end;

var
  FormRegistroVendas: TFormRegistroVendas;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}


// ---------------- Registro de Venda ------------------ //

procedure TFormRegistroVendas.btnOKClick(Sender: TObject);
begin

    // Verifica se é acréscimo ou desconto
    If optAcrescimo.Checked = True Then
        AcrescimoDesconto := 'A'  // Acrescimo
    Else
        AcrescimoDesconto := 'D';  // Desconto


    Mesa              := txtMesa.Text;
    Codigo            := txtCodigo.Text;
    Descricao         := txtDescricao.Text;
    Aliquota          := txtAliquota.Text;
    Quantidade        := txtQuantidade.Text;
    ValorUnitario     := txtValor.Text;
    ValorAcreDesconto := txtValorAcreDesc.Text;


    If iControle = 1 Then
        // Função para Registrar venda na imp. Restaurante
        iRetorno := Bematech_FIR_RegistraVenda(Mesa, Codigo, Descricao,
                    Aliquota, Quantidade, ValorUnitario, AcrescimoDesconto,
                    ValorAcreDesconto)

    Else if iControle = 2 Then
        // Função para Cancelar um registro de venda na imp. Restaurante
        iRetorno := Bematech_FIR_CancelaVenda(Mesa, Codigo, Descricao,
                    Aliquota, Quantidade, ValorUnitario, AcrescimoDesconto,
                    ValorAcreDesconto);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();

end;

// ------------- Fecha o formulário --------------- //
procedure TFormRegistroVendas.btnFecharClick(Sender: TObject);
begin
     iControle := 0;
Close;
end;

end.
