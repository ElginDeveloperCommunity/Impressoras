unit AtivaDesativaVendaUmaLinha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmAtivaDesativaVendaUmaLinha = class(TForm)
    GroupBox1: TGroupBox;
    RadioButtonAtiva: TRadioButton;
    RadioButtonDesativa: TRadioButton;
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
  frmAtivaDesativaVendaUmaLinha: TfrmAtivaDesativaVendaUmaLinha;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmAtivaDesativaVendaUmaLinha.cmdOKClick(Sender: TObject);
var iFlag: integer;
begin
   if ( frmAtivaDesativaVendaUmaLinha.Caption = 'Ativa/Desativa Alinhamento à Esquerda MFD' ) then
      begin
         if RadioButtonAtiva.Checked = true then
            iFlag := 1
         else
            iFlag := 0;

         iRetorno := Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag );
       end;
   if ( frmAtivaDesativaVendaUmaLinha.Caption = 'Ativa/Desativa Tecla ON/OFF Line MFD' ) then
      begin
         if RadioButtonAtiva.Checked = true then
            iFlag := 1
         else
            iFlag := 0;

         iRetorno := Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag );
       end;

   frmPrincipal.Analisa_iRetorno();
   frmPrincipal.Retorno_Impressora();
end;

procedure TfrmAtivaDesativaVendaUmaLinha.cmdCancelarClick(Sender: TObject);
begin
   frmAtivaDesativaVendaUmaLinha.Close;
end;

end.
