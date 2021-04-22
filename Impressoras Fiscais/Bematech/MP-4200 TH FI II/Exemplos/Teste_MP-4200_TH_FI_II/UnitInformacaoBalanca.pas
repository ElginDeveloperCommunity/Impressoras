unit UnitInformacaoBalanca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormBalanca = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PesoTxt: TEdit;
    PrecoKiloTxt: TEdit;
    TotalTxt: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Inicializa(var buffer : string; len : integer);
  public
    { Public declarations }
  end;

  function Bematech_FI_InfoBalanca(port: string; model: integer; peso : string; precoKilo : string;total : string): Integer; StdCall; External 'BEMAFI32.DLL';
var
  FormBalanca: TFormBalanca;

implementation

{$R *.DFM}

procedure TFormBalanca.Button1Click(Sender: TObject);
var
  porta : string;
  model : integer;
  peso, preco, total, msg : string;
  ret : integer;

begin
  IF radiobutton1.Checked then
    porta := 'COM1'
  ELSE IF radiobutton2.Checked then
    porta := 'COM2'
  ELSE IF radiobutton3.Checked then
    porta := 'COM3'
  ELSE IF radiobutton4.checked then
    porta := 'COM4'
  ELSE IF radiobutton5.checked then
    porta := 'COM5'
  ELSE IF radiobutton6.checked then
    porta := 'COM6'
  ELSE IF radiobutton7.checked then
    porta := 'COM7'
  ELSE IF radiobutton8.checked then
    porta := 'COM8';



  IF radiobutton9.checked then
    model := 1
  else
    model := 2;



  Inicializa(peso,20);

  Inicializa(preco,20);

  Inicializa(total,20);


  ret := Bematech_FI_InfoBalanca(porta,model,peso,preco,total);

  if ret = 1  then
    begin
      PesoTxt.Text := peso    ;
      PrecoKiloTxt.Text := preco ;
      TotalTxt.Text := total      ;
    end
  else
    begin
      case ret of
         0: msg := 'Erro de Comunicação';
        -1: msg := 'Erro de execução';
        -2: msg := 'Erro de parâmetros';
        -3: msg := 'Peso instável';
        -4: msg := 'Peso excedido';
        -5:
          if model = 1 then
            msg := 'Peso Negativo'
          else
            msg := 'Balança em alivio de prato';
      end;
      ShowMessage (msg);
    end


end;


procedure TFormBalanca.Inicializa(var buffer: string; len: integer);
begin
  SetLength(buffer,len);
  while ( len > 0 ) do
  begin
    buffer[len] := #0;
    dec (len);
  end
end;

end.
