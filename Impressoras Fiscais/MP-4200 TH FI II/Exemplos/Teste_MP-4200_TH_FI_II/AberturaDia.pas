unit AberturaDia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmAberturaDoDia = class(TForm)
    Label1: TLabel;
    txtValor: TEdit;
    Label2: TLabel;
    txtFormaPagamento: TEdit;
    cmdOK: TButton;
    cmdCancelar: TButton;
    procedure cmdOKClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAberturaDoDia: TfrmAberturaDoDia;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmAberturaDoDia.cmdOKClick(Sender: TObject);
  var iRetorno : integer;
  begin
    iRetorno := Bematech_FI_AberturaDoDia(txtValor.Text, txtFormaPagamento.Text);
    frmPrincipal.Analisa_iRetorno;
    frmPrincipal.Retorno_Impressora;
  end;

procedure TfrmAberturaDoDia.cmdCancelarClick(Sender: TObject);
  begin
Close;
  end;

end.
