unit TranfItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTranfItem = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtMesaOrigem: TEdit;
    txtCodigo: TEdit;
    txtDescricao: TEdit;
    txtAliquota: TEdit;
    txtQuantidade: TEdit;
    txtValor: TEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    optAcrescimo: TRadioButton;
    optDesconto: TRadioButton;
    txtValorAcreDesc: TEdit;
    btnOK: TButton;
    btnFechar: TButton;
    Label8: TLabel;
    txtMesaDestino: TEdit;
    Label9: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    MesaOrigem        : String;
    MesaDestino       : String;
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
  FormTranfItem: TFormTranfItem;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormTranfItem.btnOKClick(Sender: TObject);
begin
    // Verifica se é acréscimo ou desconto
    If optAcrescimo.Checked = True Then
        AcrescimoDesconto := 'A'  // Acrescimo
    Else
        AcrescimoDesconto := 'D';  // Desconto


    MesaOrigem        := txtMesaOrigem.Text;
    MesaDestino       := txtMesaDestino.Text;
    Codigo            := txtCodigo.Text;
    Descricao         := txtDescricao.Text;
    Aliquota          := txtAliquota.Text;
    Quantidade        := txtQuantidade.Text;
    ValorUnitario     := txtValor.Text;
    ValorAcreDesconto := txtValorAcreDesc.Text;

    // Função de transferência de itens
    iRetorno := Bematech_FIR_TransferenciaItem(MesaOrigem, Codigo, Descricao,
                Aliquota, Quantidade, ValorUnitario, AcrescimoDesconto,
                ValorAcreDesconto, MesaDestino);

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();

end;

procedure TFormTranfItem.btnFecharClick(Sender: TObject);
begin
Close;
end;

end.
