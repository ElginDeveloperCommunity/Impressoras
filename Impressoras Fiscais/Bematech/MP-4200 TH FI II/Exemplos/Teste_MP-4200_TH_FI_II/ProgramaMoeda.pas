unit ProgramaMoeda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormProgramaMoeda = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    cNomeMoeda : string;
  public
    { Public declarations }
  end;

var
  FormProgramaMoeda: TFormProgramaMoeda;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}


// Sai do form
procedure TFormProgramaMoeda.Button1Click(Sender: TObject);
begin
     Edit1.Text := ' ';
     iControle := 0;
Close;
end;

// ------------- Programa o Nome da Moeda ---------------//

procedure TFormProgramaMoeda.Button2Click(Sender: TObject);
    var Valor   : String;
        Mensagem: String;
        iConta  : integer;


begin

    cNomeMoeda := Edit1.Text;
    Mensagem   := '';

     // reserva 14 bytes para a variável
     For iConta := 1 To 15 Do Begin Valor := Valor + ' ' End;

    // leitura do valor da forma de pagamento
    if (Caption = 'Leitura do Valor da Forma de Pagamento') then
    begin
        iRetorno := Bematech_FI_ValorFormaPagamento( Edit1.Text, Valor );
        Valor := copy( Valor, 1, 12 ) + ',' + copy( Valor, 13, 2 );
        Mensagem := 'Valor da forma de pagamento ' + '"' + Edit1.Text + '": ' + Valor;
    end

    // leitura do valor do totalizador nao fiscal
    else if (Caption = 'Leitura do Valor do Totalizador não Fiscal') then
    begin
        iRetorno := Bematech_FI_ValorTotalizadorNaoFiscal( Edit1.Text, Valor );
        Valor := copy( Valor, 1, 12 ) + ',' + copy( Valor, 13, 2 );
        Mensagem := 'Valor do totalizador ' + '"'+ Edit1.Text + '": ' + Valor;
    end


    // programação da moeda no singular
    else if iControle = 1 then
        iRetorno := Bematech_FI_ProgramaMoedaSingular( cNomeMoeda )

    // programação da moeda no Plural
    else
        iRetorno := Bematech_FI_ProgramaMoedaPlural( cNomeMoeda );

    if ( iRetorno = 1 ) and ( Mensagem <>'' ) then
        // mostra a informação lida
        ShowMessage( Mensagem );

    // Procedure que analisa o retorno da função
    frmPrincipal.Analisa_iRetorno();

    // Procedure que analisa o retorno da Impressora
    frmPrincipal.Retorno_Impressora();

    // Fecha o form
     Edit1.Text := ' ';
     iControle := 0;
Close;
end;

end.
