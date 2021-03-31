unit CidadeFavorecido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormCidadeFavorecido = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    cCidade     : string;
    cFavorecido : string;
  public
    { Public declarations }
  end;

var
  FormCidadeFavorecido: TFormCidadeFavorecido;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormCidadeFavorecido.Button2Click(Sender: TObject);
begin
//     Edit1.Text := ' ';
//     Edit
Close;
end;

procedure TFormCidadeFavorecido.Button1Click(Sender: TObject);
Begin
    // Função para incluir a cidade e o favorecido no arquivo ini
    iRetorno := Bematech_FI_IncluiCidadeFavorecido( cCidade, cFavorecido );

    // Procedure que analisa o retorno da função
    frmPrincipal.Analisa_iRetorno();

    // Como essa função trabalha com o arquivo de inicialização
    // BemaFI32.ini e não manda comando nenhum para a impressora
    // NÃO se deve chamar a função para ler o retorno da impressora.
    // Se a função de leitura do retorno da impressora for chamada
    // será retornado o status referente ao último comando enviado
    // à impressoara

    // Fecha o form
Close;
end;
end.
