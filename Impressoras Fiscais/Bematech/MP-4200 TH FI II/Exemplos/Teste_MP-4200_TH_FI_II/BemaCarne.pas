unit BemaCarne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Tabnotbk;

type
  TFormCarne = class(TForm)
    ButtonEnvia: TButton;
    TabbedNotebook1: TTabbedNotebook;
    TitleTxt: TEdit;
    Label1: TLabel;
    TextoTxt: TMemo;
    IdTxt: TEdit;
    ClientTxt: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboVias: TComboBox;
    Label7: TLabel;
    CupomTxt: TEdit;
    RadioGroupAssina: TRadioGroup;
    ComboParcelas: TComboBox;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ButtonDel: TButton;
    Button1: TButton;
    Button2: TButton;
    EditParcela: TEdit;
    EditDate: TEdit;
    ButtonAdd: TButton;
    Button3: TButton;
    ListBoxDates: TListBox;
    ListBoxValues: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonEnviaClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
  function Bematech_FI_ImpressaoCarne ( titulo, parcela, datas :string;
    quantidade :integer; texto, cliente, rg, cupom : string;
    vias, assina: integer ) : integer; StdCall; External 'BEMAFI32.DLL';

var
  FormCarne: TFormCarne;

implementation

uses DatePecker;

{$R *.DFM}

procedure TFormCarne.Button1Click(Sender: TObject);
var
  date : string;
begin
  with TFormDatePecker.Create(self) do
    begin
      if  ShowModal = mrOK then
        date := FormatDateTime('dd/mm/yyyy',MonthCalendar1.Date);

      free;
    end;
  EditDate.Text := date;


end;

procedure TFormCarne.Button3Click(Sender: TObject);

begin


  if ListBoxDates.Items.Count < (ComboParcelas.ItemIndex+1)  then
    if Length(EditDate.Text) <> 0 then
      with ListBoxDates do
      begin
        Items.Add(EditDate.Text)
      end;

end;

procedure TFormCarne.Button2Click(Sender: TObject);
begin

  ListBoxDates.Items.Delete(ListBoxDates.ItemIndex );
end;

procedure TFormCarne.ButtonAddClick(Sender: TObject);

begin

    if ListBoxValues.Items.Count < (ComboParcelas.ItemIndex+1)  then
      if Length(EditParcela.Text) <> 0 then
        with ListBoxValues do
        begin
            Items.Add(EditParcela.Text)
        end;



end;

procedure TFormCarne.ButtonDelClick(Sender: TObject);
begin
  ListBoxValues.Items.Delete(ListBoxValues.ItemIndex );
end;

procedure TFormCarne.FormCreate(Sender: TObject);
begin
  ComboParcelas.ItemIndex := 0;
  RadioGroupAssina.ItemIndex := 0;
  ComboVias.ItemIndex := 0;
end;

procedure TFormCarne.ButtonEnviaClick(Sender: TObject);
var
  i, cupom, assina : integer;
  parcelas, datas, msg : string;
begin


  datas := ListBoxDates.Items.Strings[0];
  for i := 1 to ListBoxDates.Items.Count-1 do
    datas := datas + ';' + ListBoxDates.Items.Strings[i] ;

  parcelas := ListBoxValues.Items.Strings[0];
  for i := 1 to ListBoxValues.Items.Count-1 do
    parcelas := parcelas + ';' + ListBoxValues.Items.Strings[i];

  cupom := StrToInt(CupomTxt.Text);

  assina:= RadioGroupAssina.ItemIndex;

  i := Bematech_FI_ImpressaoCarne(PChar(TitleTxt.Text),PChar(parcelas),Pchar(datas),
        ComboParcelas.ItemIndex+1 , PChar(TextoTxt.Text), PChar(ClientTxt.Text), Pchar(IdTxt.Text),
        CupomTxt.Text, ComboVias.ItemIndex+1,assina);

  if i <> 1 then
  begin
    case i of
     0: msg := 'Erro de Comunicação';
     -1: msg := 'Erro de execução';
     -2: msg := 'Erro de parâmetros';
      end;

    ShowMessage (msg);
  end





end;

end.
