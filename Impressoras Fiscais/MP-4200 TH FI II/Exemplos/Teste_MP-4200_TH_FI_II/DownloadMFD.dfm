object frmDownload: TfrmDownload
  Left = 196
  Top = 149
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 333
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 99
    Height = 13
    Caption = 'Nome do Arquivo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNomeArquivo: TEdit
    Left = 16
    Top = 32
    Width = 169
    Height = 21
    Color = clInfoBk
    TabOrder = 0
    Text = 'DOWNLOAD.MFD'
  end
  object grupoTipoDownload: TGroupBox
    Left = 16
    Top = 64
    Width = 481
    Height = 193
    Caption = ' Tipo de Download '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 320
      Top = 33
      Width = 40
      Height = 13
      Caption = 'Usuário:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 202
      Top = 33
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 202
      Top = 57
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object radioCOO: TRadioButton
      Left = 16
      Top = 32
      Width = 73
      Height = 17
      Cursor = crHandPoint
      Caption = 'Por COO'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = radioCOOClick
    end
    object radioData: TRadioButton
      Left = 16
      Top = 56
      Width = 73
      Height = 17
      Cursor = crHandPoint
      Caption = 'Por Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = radioDataClick
    end
    object radioTotal: TRadioButton
      Left = 16
      Top = 80
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = radioTotalClick
    end
    object txtCOOInicial: TEdit
      Left = 96
      Top = 30
      Width = 96
      Height = 21
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 3
      Text = '1'
    end
    object txtCOOFinal: TEdit
      Left = 216
      Top = 30
      Width = 96
      Height = 21
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 4
      Text = '1'
    end
    object txtUsuario: TEdit
      Left = 368
      Top = 30
      Width = 81
      Height = 21
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 5
      Text = '1'
    end
    object dataInicial: TDateTimePicker
      Left = 96
      Top = 55
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 0.414622673597478
      Time = 0.414622673597478
      Color = clMenu
      DateFormat = dfShort
      DateMode = dmComboBox
      Enabled = False
      Kind = dtkDate
      ParseInput = False
      TabOrder = 6
    end
    object dataFinal: TDateTimePicker
      Left = 216
      Top = 55
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 38245.4146226736
      Time = 38245.4146226736
      Color = clMenu
      DateFormat = dfShort
      DateMode = dmComboBox
      Enabled = False
      Kind = dtkDate
      ParseInput = False
      TabOrder = 7
    end
    object checkTXT: TCheckBox
      Left = 16
      Top = 112
      Width = 241
      Height = 17
      Caption = 'Gerar dados da MFD em formato TXT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object checkRTF: TCheckBox
      Left = 16
      Top = 136
      Width = 233
      Height = 17
      Caption = 'Gerar dados da MFD em formato RTF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object checkMDB: TCheckBox
      Left = 16
      Top = 160
      Width = 233
      Height = 17
      Caption = 'Gerar dados da MFD em formato MDB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object Button1: TButton
    Left = 400
    Top = 264
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
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 296
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
    TabOrder = 3
    OnClick = Button2Click
  end
end
