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
    // Fun��o para incluir a cidade e o favorecido no arquivo ini
    iRetorno := Bematech_FI_IncluiCidadeFavorecido( cCidade, cFavorecido );

    // Procedure que analisa o retorno da fun��o
    frmPrincipal.Analisa_iRetorno();

    // Como essa fun��o trabalha com o arquivo de inicializa��o
    // BemaFI32.ini e n�o manda comando nenhum para a impressora
    // N�O se deve chamar a fun��o para ler o retorno da impressora.
    // Se a fun��o de leitura do retorno da impressora for chamada
    // ser� retornado o status referente ao �ltimo comando enviado
    // � impressoara

    // Fecha o form
Close;
end;
end.
