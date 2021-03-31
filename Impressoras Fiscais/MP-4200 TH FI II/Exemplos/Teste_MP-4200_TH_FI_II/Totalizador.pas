unit Totalizador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTotalizador = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;

    Procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTotalizador: TFormTotalizador;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormTotalizador.Button2Click(Sender: TObject);
Begin
   if Caption = 'Totalizador Parcial' then
      begin
         iRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( StrToInt( Edit1.Text ), Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else
      begin
         iRetorno := Bematech_FI_NomeiaRelatorioGerencialMFD( Edit1.Text, Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
Close;
End;

Procedure TFormTotalizador.Button1Click(Sender: TObject);
  Begin
Close;
  End;

End.
