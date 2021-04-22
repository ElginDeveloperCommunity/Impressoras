unit DatePecker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons;

type
  TFormDatePecker = class(TForm)
    MonthCalendar1: TMonthCalendar;
    BitBtn1: TBitBtn;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FormDatePecker: TFormDatePecker;

implementation

{$R *.DFM}


end.
