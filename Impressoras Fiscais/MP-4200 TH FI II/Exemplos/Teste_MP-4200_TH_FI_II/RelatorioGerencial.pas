unit RelatorioGerencial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmRelatorioGerencial = class(TForm)
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
  frmRelatorioGerencial: TfrmRelatorioGerencial;

implementation

uses Principal, UnitDeclaracoes;


{$R *.DFM}

Procedure TfrmRelatorioGerencial.Button1Click(Sender: TObject);
Begin
   if frmRelatorioGerencial.Caption = 'Relatório Gerencial' then
      iRetorno := Bematech_FI_RelatorioGerencial( Memo1.Text );
//   else
//      iRetorno := Bematech_FI_RelatorioGerencialTEF( Memo1.Text );

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
End;

Procedure TfrmRelatorioGerencial.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
