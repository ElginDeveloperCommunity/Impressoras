unit TextoImprimir;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmUsaComprovanteNaoFiscalVinculado = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsaComprovanteNaoFiscalVinculado: TfrmUsaComprovanteNaoFiscalVinculado;

implementation

uses Principal, UnitDeclaracoes;


{$R *.DFM}

Procedure TfrmUsaComprovanteNaoFiscalVinculado.Button1Click(Sender: TObject);
Begin
   if Caption = 'Usa Comprovante Não Fiscal Vinculado' then
      begin
          iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( Memo1.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
      end;
      {
   if Caption = 'Usa Comprovante Não Fiscal Vinculado TEF' then
      begin
          iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Memo1.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
      end;
      }
   if Caption = 'Usa Relatório Gerencial MFD' then
      begin
          iRetorno := Bematech_FI_UsaRelatorioGerencialMFD( Memo1.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
      end;
      {
   if Caption = 'Usa Relatório Gerencial MFD TEF' then
      begin
          iRetorno := Bematech_FI_UsaRelatorioGerencialMFDTEF( Memo1.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
      end;
      }
end;

Procedure TfrmUsaComprovanteNaoFiscalVinculado.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
