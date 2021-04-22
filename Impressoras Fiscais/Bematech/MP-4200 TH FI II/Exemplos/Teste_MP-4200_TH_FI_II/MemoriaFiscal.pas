unit MemoriaFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask;

type
  TFormMemoriaFiscal = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    optCompleta: TRadioButton;
    optSimplificada: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemoriaFiscal: TFormMemoriaFiscal;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormMemoriaFiscal.Button1Click(Sender: TObject);
var cParametro3:string;
Begin
   if Caption = 'Leitura da Memória Fiscal por Datas' then
      begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalData( pchar( MaskEdit1.Text ), pchar( MaskEdit2.Text));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
   if Caption = 'Leitura da Memória Fiscal por Datas MFD' then
      begin
         if optCompleta.Checked = true then
            cParametro3 := 'c'
         else
            cParametro3 := 's';
         iRetorno := Bematech_FI_LeituraMemoriaFiscalDataMFD( pchar( MaskEdit1.Text ), pchar( MaskEdit2.Text ), pchar( cParametro3));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
   if Caption = 'Leitura da Memória Fiscal Serial por Datas MFD' then
      begin
         if optCompleta.Checked = true then
            cParametro3 := 'c'
         else
            cParametro3 := 's';
         iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialDataMFD( pchar( MaskEdit1.Text ), pchar( MaskEdit2.Text ), pchar( cParametro3));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
         Application.MessageBox( 'RETORNO.TXT criado com sucesso !', 'Atenção', MB_IconInformation + MB_OK );
      end;
Close;
End;

Procedure TFormMemoriaFiscal.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
