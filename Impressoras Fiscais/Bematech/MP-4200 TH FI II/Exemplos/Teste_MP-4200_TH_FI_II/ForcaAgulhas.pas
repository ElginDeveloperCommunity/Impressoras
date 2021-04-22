unit ForcaAgulhas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormForcaAgulhas = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
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
  FormForcaAgulhas: TFormForcaAgulhas;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

Procedure TFormForcaAgulhas.Button1Click(Sender: TObject);
  Var iForca: Integer;
  Begin
    iForca := 2;

    If RadioButton1.Checked = True Then Begin iForca := 1 End;
    If RadioButton2.Checked = True Then Begin iForca := 2 End;
    If RadioButton3.Checked = True Then Begin iForca := 3 End;
    iRetorno := Bematech_FI_ForcaImpactoAgulhas( iForca );
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
Close;
  End;

Procedure TFormForcaAgulhas.Button2Click(Sender: TObject);
  Begin
Close;
  End;

End.
