unit IniciaFechamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormIniciaFechamento = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIniciaFechamento: TFormIniciaFechamento;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormIniciaFechamento.Button1Click(Sender: TObject);
  Var sAcreDesc, sTipoAcreDesc: String;
  Begin

    // Verifica se é Acréscimo ou Desconto
    // 'A' para Acréscimo
    // 'D' para Desconto

    If RadioButton1.Checked = True Then Begin sAcreDesc := 'A' End;
    If RadioButton2.Checked = True Then Begin sAcreDesc := 'D' End;

    // Verifica o Tipo de Acréscimo ou do Desconto
    // '%' para Percentual
    // '$' para Valor

    If RadioButton3.Checked = True Then Begin sTipoAcreDesc := '%' End;
    If RadioButton4.Checked = True Then Begin sTipoAcreDesc := '$' End;

    if Caption = 'Inicia o Fechamento do Cupom' then
       begin
          iRetorno := Bematech_FI_IniciaFechamentoCupom(sAcreDesc, sTipoAcreDesc, Edit1.Text);
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;

    if Caption = 'Acréscimo/Desconto no Item MFD' then
       begin
          iRetorno := Bematech_FI_AcrescimoDescontoItemMFD( Edit2.Text, sAcreDesc, sTipoAcreDesc, Edit1.Text);
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;

    if Caption = 'Acréscimo/Desconto SubTotal MFD' then
       begin
          iRetorno := Bematech_FI_AcrescimoDescontoSubtotalMFD( sAcreDesc, sTipoAcreDesc, Edit1.Text);
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Acréscimo/Desconto em Subtotal de Recebimento Não Fiscal MFD' then
       begin
          iRetorno := Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( sAcreDesc, sTipoAcreDesc, Edit1.Text);
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
  End;

Procedure TFormIniciaFechamento.Button2Click(Sender: TObject);
  Begin
      Close;
  End;

End.
