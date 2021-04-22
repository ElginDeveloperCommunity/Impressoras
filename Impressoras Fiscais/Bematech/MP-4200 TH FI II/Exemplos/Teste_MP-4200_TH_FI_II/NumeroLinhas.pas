unit NumeroLinhas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFormNumeroLinhas = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNumeroLinhas: TFormNumeroLinhas;

implementation

uses UnitDeclaracoes, Principal;

{$R *.DFM}

Procedure TFormNumeroLinhas.Button1Click(Sender: TObject);
Begin
   if Caption = 'Espaço entre Linhas' then
      begin
         iRetorno := Bematech_FI_EspacoEntreLinhas( StrToInt( Edit1.Text ) );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else
      begin
         iRetorno := Bematech_FI_AutenticacaoMFD( Edit2.Text, Edit3.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
Close;
End;

Procedure TFormNumeroLinhas.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
