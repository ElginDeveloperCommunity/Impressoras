object frmEfetuaFormaPagamentoTextoOpcional: TfrmEfetuaFormaPagamentoTextoOpcional
  Left = 309
  Top = 275
  Width = 315
  Height = 237
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Efetua Forma Pagamento com Texto Opcional'
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
    Left = 16
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Forma de Pagamento:'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 75
    Height = 13
    Caption = 'Texto Opcional:'
  end
  object txtForma: TEdit
    Left = 16
    Top = 24
    Width = 137
    Height = 21
    MaxLength = 16
    TabOrder = 0
  end
  object txtValor: TEdit
    Left = 16
    Top = 72
    Width = 97
    Height = 21
    MaxLength = 14
    TabOrder = 1
  end
  object txtTexto: TMemo
    Left = 16
    Top = 120
    Width = 177
    Height = 73
    MaxLength = 80
    TabOrder = 2
  end
  object cmdOK: TButton
    Left = 208
    Top = 16
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 208
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = cmdCancelarClick
  end
end
