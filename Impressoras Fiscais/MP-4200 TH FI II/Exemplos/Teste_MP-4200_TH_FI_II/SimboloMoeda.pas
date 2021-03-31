unit SimboloMoeda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormSimboloMoeda = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;

    Procedure Button2Click(Sender: TObject);
    Procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSimboloMoeda: TFormSimboloMoeda;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormSimboloMoeda.Button2Click(Sender: TObject);
  Begin
    frmPrincipal.label4.Enabled       := False;  // Renova os Labels
    frmPrincipal.label5.Enabled       := False;
    frmPrincipal.label6.Enabled       := False;
    frmPrincipal.label7.Enabled       := False;
    frmPrincipal.label8.Enabled       := False;
    frmPrincipal.label9.Enabled       := False;
    frmPrincipal.label10.Enabled      := False;
    frmPrincipal.label11.Enabled      := False;
    frmPrincipal.label12.Enabled      := False;
    frmPrincipal.label13.Enabled      := False;
    frmPrincipal.label14.Enabled      := False;
    frmPrincipal.label15.Enabled      := False;
    frmPrincipal.label16.Enabled      := False;
    frmPrincipal.label17.Enabled      := False;
    frmPrincipal.label18.Enabled      := False;
    frmPrincipal.label19.Enabled      := False;
    frmPrincipal.RadioButton1.Checked := False;

    iRetorno := Bematech_FI_AlteraSimboloMoeda( Edit1.Text );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;
  End;

Procedure TFormSimboloMoeda.Button1Click(Sender: TObject);
  Begin
Close;
  End;

End.




