unit ProgramaCaracter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormProgramaCaracter = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
    CheckBox71: TCheckBox;
    CheckBox72: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox74: TCheckBox;
    CheckBox75: TCheckBox;
    CheckBox76: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox78: TCheckBox;
    CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;
    CheckBox81: TCheckBox;
    CheckBox82: TCheckBox;
    CheckBox83: TCheckBox;
    CheckBox84: TCheckBox;
    CheckBox85: TCheckBox;
    CheckBox86: TCheckBox;
    CheckBox87: TCheckBox;
    CheckBox88: TCheckBox;
    CheckBox89: TCheckBox;
    CheckBox90: TCheckBox;
    CheckBox91: TCheckBox;
    CheckBox92: TCheckBox;
    CheckBox93: TCheckBox;
    CheckBox94: TCheckBox;
    CheckBox95: TCheckBox;
    CheckBox96: TCheckBox;
    CheckBox97: TCheckBox;
    CheckBox98: TCheckBox;
    CheckBox99: TCheckBox;
    CheckBox100: TCheckBox;
    CheckBox101: TCheckBox;
    CheckBox102: TCheckBox;
    CheckBox103: TCheckBox;
    CheckBox104: TCheckBox;
    CheckBox105: TCheckBox;
    CheckBox106: TCheckBox;
    CheckBox107: TCheckBox;
    CheckBox108: TCheckBox;
    CheckBox109: TCheckBox;
    CheckBox110: TCheckBox;
    CheckBox111: TCheckBox;
    CheckBox112: TCheckBox;
    CheckBox113: TCheckBox;
    CheckBox114: TCheckBox;
    CheckBox115: TCheckBox;
    CheckBox116: TCheckBox;
    CheckBox117: TCheckBox;
    CheckBox118: TCheckBox;
    CheckBox119: TCheckBox;
    CheckBox120: TCheckBox;
    CheckBox121: TCheckBox;
    CheckBox122: TCheckBox;
    CheckBox123: TCheckBox;
    CheckBox124: TCheckBox;
    CheckBox125: TCheckBox;
    CheckBox126: TCheckBox;
    CheckBox127: TCheckBox;
    CheckBox128: TCheckBox;
    CheckBox129: TCheckBox;
    CheckBox130: TCheckBox;
    CheckBox131: TCheckBox;
    CheckBox132: TCheckBox;
    CheckBox133: TCheckBox;
    CheckBox134: TCheckBox;
    CheckBox135: TCheckBox;
    CheckBox136: TCheckBox;
    CheckBox137: TCheckBox;
    CheckBox138: TCheckBox;
    CheckBox139: TCheckBox;
    CheckBox140: TCheckBox;
    CheckBox141: TCheckBox;
    CheckBox142: TCheckBox;
    CheckBox143: TCheckBox;
    CheckBox144: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
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
  FormProgramaCaracter: TFormProgramaCaracter;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TFormProgramaCaracter.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TFormProgramaCaracter.Button2Click(Sender: TObject);
var iCoord      : Integer;
    cCoordenadas: String;
    iRetorno    : Integer;
    sTamanho    : String;
begin

 // Coluna 1
 iCoord := 0;
 if (checkbox1.Checked) = true then begin iCoord := iCoord + 001   end;
 if (checkbox2.Checked) = true then begin iCoord := iCoord + 002   end;
 if (checkbox3.Checked) = true then begin iCoord := iCoord + 004   end;
 if (checkbox4.Checked) = true then begin iCoord := iCoord + 008   end;
 if (checkbox5.Checked) = true then begin iCoord := iCoord + 016  end;
 if (checkbox6.Checked) = true then begin iCoord := iCoord + 032  end;
 if (checkbox7.Checked) = true then begin iCoord := iCoord + 064  end;
 if (checkbox8.Checked) = true then begin iCoord := iCoord + 128 end;
 sTamanho     := IntToStr( Length( IntToStr( iCoord ) ) );
 cCoordenadas := cCoordenadas + ( IntToStr( iCoord ) ) + ',';

 // Coluna2
 iCoord := 0;
 if (checkbox9.Checked)  = true then begin iCoord := iCoord + 1   end;
 if (checkbox10.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox11.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox12.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox13.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox14.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox15.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox16.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna3
 iCoord := 0;
 if (checkbox17.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox18.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox19.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox20.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox21.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox22.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox23.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox24.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna4
 iCoord := 0;
 if (checkbox25.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox26.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox27.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox28.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox29.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox30.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox31.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox32.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna5
 iCoord := 0;
 if (checkbox33.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox34.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox35.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox36.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox37.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox38.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox39.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox40.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna6
 iCoord := 0;
 if (checkbox41.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox42.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox43.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox44.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox45.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox46.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox47.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox48.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna7
 iCoord := 0;
 if (checkbox49.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox50.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox51.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox52.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox53.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox54.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox55.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox56.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna8
 iCoord := 0;
 if (checkbox57.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox58.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox59.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox60.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox61.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox62.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox63.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox64.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna9
 iCoord := 0;
 if (checkbox65.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox66.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox67.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox68.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox69.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox70.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox71.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox72.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna10
 iCoord := 0;
 if (checkbox73.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox74.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox75.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox76.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox77.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox78.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox79.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox80.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna11
 iCoord := 0;
 if (checkbox81.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox82.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox83.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox84.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox85.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox86.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox87.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox88.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna12
 iCoord := 0;
 if (checkbox89.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox90.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox91.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox92.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox93.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox94.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox95.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox96.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna13
 iCoord := 0;
 if (checkbox97.Checked)  = true then begin iCoord := iCoord + 1   end;
 if (checkbox98.Checked)  = true then begin iCoord := iCoord + 2   end;
 if (checkbox99.Checked)  = true then begin iCoord := iCoord + 4   end;
 if (checkbox100.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox101.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox102.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox103.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox104.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna14
 iCoord := 0;
 if (checkbox105.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox106.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox107.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox108.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox109.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox110.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox111.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox112.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna15
 iCoord := 0;
 if (checkbox113.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox114.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox115.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox116.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox117.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox118.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox119.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox120.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna16
 iCoord := 0;
 if (checkbox121.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox122.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox123.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox124.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox125.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox126.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox127.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox128.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna17
 iCoord := 0;
 if (checkbox129.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox130.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox131.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox132.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox133.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox134.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox135.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox136.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + (IntToStr( iCoord )) + ',';

 // Coluna18
 iCoord := 0;
 if (checkbox137.Checked) = true then begin iCoord := iCoord + 1   end;
 if (checkbox138.Checked) = true then begin iCoord := iCoord + 2   end;
 if (checkbox139.Checked) = true then begin iCoord := iCoord + 4   end;
 if (checkbox140.Checked) = true then begin iCoord := iCoord + 8   end;
 if (checkbox141.Checked) = true then begin iCoord := iCoord + 16  end;
 if (checkbox142.Checked) = true then begin iCoord := iCoord + 32  end;
 if (checkbox143.Checked) = true then begin iCoord := iCoord + 64  end;
 if (checkbox144.Checked) = true then begin iCoord := iCoord + 128 end;
 cCoordenadas := cCoordenadas + ( IntToStr( iCoord ) );

 iRetorno := 0;
 iRetorno := Bematech_FI_ProgramaCaracterAutenticacao( cCoordenadas );
 // Procedure que analisa o retorno da função
 frmPrincipal.Analisa_iRetorno();
 // Procedure que analisa o retorno da Impressora
 frmPrincipal.Retorno_Impressora();

end;

end.
