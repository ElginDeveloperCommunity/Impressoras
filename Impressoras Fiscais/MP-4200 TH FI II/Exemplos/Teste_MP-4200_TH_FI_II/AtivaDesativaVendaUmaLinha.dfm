object frmAtivaDesativaVendaUmaLinha: TfrmAtivaDesativaVendaUmaLinha
  Left = 195
  Top = 150
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 117
  ClientWidth = 334
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 161
    Height = 81
    TabOrder = 0
    object RadioButtonAtiva: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Ativa'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButtonDesativa: TRadioButton
      Left = 16
      Top = 40
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Desativa'
      TabOrder = 1
    end
  end
  object cmdOK: TButton
    Left = 208
    Top = 24
    Width = 89
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 208
    Top = 56
    Width = 89
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = cmdCancelarClick
  end
end
