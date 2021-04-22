unit AdicaoAliquota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask;

type
  TFormAdicaoAliquota = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;

    Procedure Button2Click(Sender: TObject);
    Procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdicaoAliquota: TFormAdicaoAliquota;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormAdicaoAliquota.Button2Click(Sender: TObject);
  Var iSituacao: Integer;
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

    iSituacao := 0;

    If RadioButton1.Checked = True Then Begin iSituacao := 0 End;
    If RadioButton2.Checked = True Then Begin iSituacao := 1 End;
    
    iRetorno := Bematech_FI_ProgramaAliquota( MaskEdit1.Text, iSituacao );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;
  End;

Procedure TFormAdicaoAliquota.Button1Click(Sender: TObject);
  Begin
Close;
  End;

End.
