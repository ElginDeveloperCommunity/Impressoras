unit DadosSintegra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask;

type
  TfrmDadosSintegra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    txtDataInicio: TMaskEdit;
    txtDataTermino: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosSintegra: TfrmDadosSintegra;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmDadosSintegra.Button1Click(Sender: TObject);
begin
{
  Try
    Screen.Cursor := crHourglass;
    iRetorno := Bematech_FI_DadosSintegra( pchar( txtDataInicio.Text ), pchar( txtDataTermino.Text ) );
    frmPrincipal.Analisa_iRetorno;
    frmPrincipal.Retorno_Impressora;
    if iRetorno = 1 then
      MessageDLG('Verifique o arquivo "retorno.txt"!',mtInformation,[mbOK],0);
  Finally
     Screen.Cursor := crDefault;
  End;
}
end;

procedure TfrmDadosSintegra.Button2Click(Sender: TObject);
begin
   frmDadosSintegra.Close;
end;

end.
