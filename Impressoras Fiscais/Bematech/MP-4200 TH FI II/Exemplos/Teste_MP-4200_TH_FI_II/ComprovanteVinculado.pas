unit ComprovanteVinculado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormComprovanteVinculado = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprovanteVinculado: TFormComprovanteVinculado;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormComprovanteVinculado.Button1Click(Sender: TObject);
Begin
   if Caption = 'Abre Comprovante Não Fiscal Vinculado' then
      begin
         iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( Edit1.Text, Edit3.Text, Edit2.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end
   else   
      begin
         iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD( Edit1.Text, Edit3.Text, Edit2.Text, Edit4.Text, Edit5.Text, Edit6.Text );
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
Close;
End;

Procedure TFormComprovanteVinculado.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
