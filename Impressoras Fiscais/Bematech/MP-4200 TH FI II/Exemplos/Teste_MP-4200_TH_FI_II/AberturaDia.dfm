object frmAberturaDoDia: TfrmAberturaDoDia
  Left = 345
  Top = 305
  Width = 245
  Height = 132
  Caption = 'Abertura do Dia'
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
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 104
    Height = 13
    Caption = 'Forma de Pagamento:'
  end
  object txtValor: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtFormaPagamento: TEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cmdOK: TButton
    Left = 152
    Top = 40
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 152
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = cmdCancelarClick
  end
end
