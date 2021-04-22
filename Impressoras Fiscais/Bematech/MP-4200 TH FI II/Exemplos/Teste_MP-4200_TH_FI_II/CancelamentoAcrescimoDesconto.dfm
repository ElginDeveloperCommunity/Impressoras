object frmCancelamentoAcrescimoDesconto: TfrmCancelamentoAcrescimoDesconto
  Left = 196
  Top = 152
  Width = 354
  Height = 176
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
    Width = 225
    Height = 129
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 64
      Width = 26
      Height = 13
      Caption = 'Item:'
      Visible = False
    end
    object optAcrescimo: TRadioButton
      Left = 32
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Acréscimo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object optDesconto: TRadioButton
      Left = 120
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Desconto'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 120
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '001'
      Visible = False
    end
  end
  object cmdOK: TButton
    Left = 248
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
    TabOrder = 1
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 248
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
    TabOrder = 2
    OnClick = cmdCancelarClick
  end
end
