object FormDatePecker: TFormDatePecker
  Left = 314
  Top = 241
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Pick a date'
  ClientHeight = 201
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = -8
    Top = 0
    Width = 233
    Height = 162
    Date = 37777
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 176
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
end
