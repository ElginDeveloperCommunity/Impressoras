unit AbreCupomMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmAbreCupomMFD = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  frmAbreCupomMFD: TfrmAbreCupomMFD;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmAbreCupomMFD.cmdOKClick(Sender: TObject);
begin
    If Caption = 'Cancela Cupom MFD' Then
       begin
          iRetorno := Bematech_FI_CancelaCupomMFD( Edit1.Text, Edit2.Text, Edit3.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Abre Cupom MFD' Then
       begin
          iRetorno := Bematech_FI_AbreCupomMFD( Edit1.Text, Edit2.Text, Edit3.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Abre Recebimento Não Fiscal MFD' Then
       begin
          iRetorno := Bematech_FI_AbreRecebimentoNaoFiscalMFD( Edit1.Text, Edit2.Text, Edit3.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Cancela Recebimento Não Fiscal MFD' then
       begin
          iRetorno := Bematech_FI_CancelaRecebimentoNaoFiscalMFD( Edit1.Text, Edit2.Text, Edit3.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
    if Caption = 'Estorno Não Fiscal Vinculado MFD' then
       begin
          iRetorno := Bematech_FI_EstornoNaoFiscalVinculadoMFD( Edit1.Text, Edit2.Text, Edit3.Text );
          frmPrincipal.Analisa_iRetorno();
          frmPrincipal.Retorno_Impressora();
       end;
Close;
end;

procedure TfrmAbreCupomMFD.cmdCancelarClick(Sender: TObject);
begin
Close;
end;

end.
