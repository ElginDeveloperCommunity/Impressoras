unit MemoriaFiscalMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormMemoriaFiscalMFD = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    optSimplificada: TRadioButton;
    optCompleta: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemoriaFiscalMFD: TFormMemoriaFiscalMFD;

implementation

uses Principal, UnitDeclaracoes;


{$R *.DFM}

Procedure TFormMemoriaFiscalMFD.Button1Click(Sender: TObject);
var cParametro3:string;
Begin
   if Caption = 'Leitura da Memória Fiscal por Reduções' then
      begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalReducao( Edit1.Text, Edit2.Text);
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
   if Caption = 'Leitura da Memória Fiscal por Reduções MFD' then
      begin
         if optCompleta.Checked = true then
            cParametro3 := 'c'
         else
            cParametro3 := 's';
         iRetorno := Bematech_FI_LeituraMemoriaFiscalReducaoMFD( Edit1.Text, Edit2.Text, pchar( cParametro3));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
      end;
   if Caption = 'Leitura da Memória Fiscal Serial por Reduções MFD' then
      begin
         if optCompleta.Checked = true then
            cParametro3 := 'c'
         else
            cParametro3 := 's';
         iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD( Edit1.Text, Edit2.Text, pchar( cParametro3));
         frmPrincipal.Analisa_iRetorno();
         frmPrincipal.Retorno_Impressora();
         Application.MessageBox( 'RETORNO.TXT criado com sucesso !', 'Atenção', MB_IconInformation + MB_OK );
      end;
Close;
End;

Procedure TFormMemoriaFiscalMFD.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
