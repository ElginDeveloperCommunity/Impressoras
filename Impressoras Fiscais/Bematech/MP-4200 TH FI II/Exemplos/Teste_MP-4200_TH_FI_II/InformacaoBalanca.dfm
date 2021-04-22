object FormBalanca: TFormBalanca
  Left = 247
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Informação da Balança'
  ClientHeight = 202
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 16
    Width = 32
    Height = 13
    Caption = 'PESO '
  end
  object Label2: TLabel
    Left = 224
    Top = 64
    Width = 66
    Height = 13
    Caption = 'PREÇO/KILO'
  end
  object Label3: TLabel
    Left = 224
    Top = 112
    Width = 35
    Height = 13
    Caption = 'TOTAL'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 185
    Height = 113
    Caption = 'Porta Serial'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 16
      Top = 16
      Width = 57
      Height = 17
      Caption = 'COM1'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 40
      Width = 57
      Height = 17
      Caption = 'COM2'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 64
      Width = 57
      Height = 17
      Caption = 'COM3'
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 16
      Top = 88
      Width = 57
      Height = 17
      Caption = 'COM4'
      TabOrder = 3
    end
    object RadioButton5: TRadioButton
      Left = 96
      Top = 16
      Width = 57
      Height = 17
      Caption = 'COM5'
      TabOrder = 4
    end
    object RadioButton6: TRadioButton
      Left = 96
      Top = 40
      Width = 57
      Height = 17
      Caption = 'COM6'
      TabOrder = 5
    end
    object RadioButton7: TRadioButton
      Left = 96
      Top = 64
      Width = 57
      Height = 17
      Caption = 'COM7'
      TabOrder = 6
    end
    object RadioButton8: TRadioButton
      Left = 96
      Top = 88
      Width = 57
      Height = 17
      Caption = 'COM8'
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 136
    Width = 185
    Height = 57
    Caption = 'Modelo'
    TabOrder = 1
    object RadioButton9: TRadioButton
      Left = 16
      Top = 24
      Width = 49
      Height = 17
      Caption = 'BP'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton10: TRadioButton
      Left = 96
      Top = 24
      Width = 49
      Height = 17
      Caption = 'CS'
      TabOrder = 1
    end
  end
  object PesoTxt: TEdit
    Left = 224
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object PrecoKiloTxt: TEdit
    Left = 224
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object TotalTxt: TEdit
    Left = 224
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 232
    Top = 167
    Width = 105
    Height = 25
    Caption = 'Busca'
    TabOrder = 5
    OnClick = Button1Click
  end
end
