object frmIniciaFechamentoCupomMFD: TfrmIniciaFechamentoCupomMFD
  Left = 196
  Top = 151
  BorderStyle = bsSingle
  Caption = 'Inicia Fechamento Cupom MFD'
  ClientHeight = 205
  ClientWidth = 364
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
    Left = 8
    Top = 8
    Width = 97
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object optAcrescimo: TRadioButton
      Left = 16
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Acréscimo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object optDesconto: TRadioButton
      Left = 16
      Top = 88
      Width = 73
      Height = 17
      Caption = 'Desconto'
      TabOrder = 1
    end
    object optAmbos: TRadioButton
      Left = 16
      Top = 144
      Width = 57
      Height = 17
      Caption = 'Ambos'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 112
    Top = 8
    Width = 137
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 80
      Width = 94
      Height = 13
      Caption = 'Valor do Acréscimo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 120
      Width = 91
      Height = 13
      Caption = 'Valor do Desconto:'
    end
    object optPercentual: TRadioButton
      Left = 16
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Percentual'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object optValor: TRadioButton
      Left = 16
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Valor'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 16
      Top = 96
      Width = 105
      Height = 21
      TabOrder = 2
      Text = '00,00'
    end
    object Edit2: TEdit
      Left = 16
      Top = 136
      Width = 105
      Height = 21
      TabOrder = 3
      Text = '00,00'
    end
  end
  object cmdOK: TButton
    Left = 264
    Top = 16
    Width = 89
    Height = 25
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 264
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = cmdCancelarClick
  end
end
