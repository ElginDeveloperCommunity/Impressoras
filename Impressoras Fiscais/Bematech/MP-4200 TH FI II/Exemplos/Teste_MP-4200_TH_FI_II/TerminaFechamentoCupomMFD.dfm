object frmMensagemPromocionalMFD: TfrmMensagemPromocionalMFD
  Left = 195
  Top = 149
  Width = 537
  Height = 385
  Caption = 'Termina Fechamento do Cupom com Código de Barras MFD'
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
    Top = 16
    Width = 138
    Height = 13
    Caption = 'Mensagem Promocional:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 288
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Altura:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 360
    Top = 16
    Width = 103
    Height = 13
    Caption = 'Correção de Erros:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label5: TLabel
    Left = 472
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Colunas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtMensagem: TEdit
    Left = 16
    Top = 32
    Width = 265
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 384
    ParentFont = False
    TabOrder = 0
    Text = 'Obrigado, volte sempre !!!'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 64
    Width = 281
    Height = 185
    Caption = ' Tipo do Código de Barras '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 136
      Width = 41
      Height = 13
      Caption = 'Código:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object radioEAN13: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'EAN 13'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = radioEAN13Click
    end
    object radioEAN8: TRadioButton
      Left = 104
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'EAN 8'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = radioEAN8Click
    end
    object radioCODABAR: TRadioButton
      Left = 192
      Top = 24
      Width = 81
      Height = 17
      Cursor = crHandPoint
      Caption = 'CODABAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = radioCODABARClick
    end
    object radioPDF: TRadioButton
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'PDF417'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = radioPDFClick
    end
    object radioITF: TRadioButton
      Left = 104
      Top = 48
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'ITF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = radioITFClick
    end
    object radioCODE128: TRadioButton
      Left = 192
      Top = 48
      Width = 73
      Height = 17
      Cursor = crHandPoint
      Caption = 'CODE128'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = radioCODE128Click
    end
    object radioCODE39: TRadioButton
      Left = 16
      Top = 72
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'CODE39'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = radioCODE39Click
    end
    object radioISBN: TRadioButton
      Left = 104
      Top = 72
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'ISBN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = radioISBNClick
    end
    object radioMSI: TRadioButton
      Left = 192
      Top = 72
      Width = 49
      Height = 17
      Cursor = crHandPoint
      Caption = 'MSI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = radioMSIClick
    end
    object radioPLESSEY: TRadioButton
      Left = 16
      Top = 96
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'PLESSEY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = radioPLESSEYClick
    end
    object radioUPCA: TRadioButton
      Left = 104
      Top = 96
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'UPCA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = radioUPCAClick
    end
    object radioUPCE: TRadioButton
      Left = 192
      Top = 96
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'UPCE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = radioUPCEClick
    end
    object txtCodigo: TEdit
      Left = 16
      Top = 152
      Width = 249
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Text = '123456789012'
    end
  end
  object txtAltura: TEdit
    Left = 288
    Top = 32
    Width = 65
    Height = 21
    Hint = 'entre 1 e 255'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '100'
  end
  object GroupBox2: TGroupBox
    Left = 304
    Top = 64
    Width = 209
    Height = 105
    Caption = ' Largura '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object radioFinas: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Barras Finas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object radioMedias: TRadioButton
      Left = 16
      Top = 48
      Width = 145
      Height = 17
      Cursor = crHandPoint
      Caption = 'Barras Médias (Default)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
    object radioGrossas: TRadioButton
      Left = 16
      Top = 72
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Barras Grossas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 304
    Top = 176
    Width = 209
    Height = 137
    Caption = ' Posição do Númeral do Código '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object radioNaoImprime: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Não Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object radioAcima: TRadioButton
      Left = 16
      Top = 48
      Width = 153
      Height = 17
      Cursor = crHandPoint
      Caption = 'Imprimir Acima do Código'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object radioAbaixo: TRadioButton
      Left = 16
      Top = 72
      Width = 153
      Height = 17
      Cursor = crHandPoint
      Caption = 'Imprimir Abaixo do Código'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object radioAmbos: TRadioButton
      Left = 16
      Top = 96
      Width = 185
      Height = 17
      Cursor = crHandPoint
      Caption = 'Imprimir Acima e Abaixo do Código'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 256
    Width = 281
    Height = 57
    Caption = ' Fonte '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object radioNormal: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Normal'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object radioCondensado: TRadioButton
      Left = 128
      Top = 24
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Condensado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object txtCorrecaoErros: TEdit
    Left = 360
    Top = 32
    Width = 49
    Height = 21
    Hint = 'entre 0 e 8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = '5'
  end
  object txtColunas: TEdit
    Left = 472
    Top = 32
    Width = 41
    Height = 21
    Hint = 'entre 0 e 30'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Text = '3'
  end
  object cmdOK: TButton
    Left = 424
    Top = 320
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 328
    Top = 320
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = cmdCancelarClick
  end
end
