unit CancelItemGenerico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFormCancelItemGenerico = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
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
  FormCancelItemGenerico: TFormCancelItemGenerico;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormCancelItemGenerico.Button1Click(Sender: TObject);
Begin
   if Caption = 'Cancelamento de Item Genérico' then
      begin
         iRetorno := Bematech_FI_CancelaItemGenerico( Edit1.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else
      begin
         iRetorno := Bematech_FI_AbreRelatorioGerencialMFD( Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
End;

Procedure TFormCancelItemGenerico.Button2Click(Sender: TObject);
  Begin

Close;
  End;

End.
