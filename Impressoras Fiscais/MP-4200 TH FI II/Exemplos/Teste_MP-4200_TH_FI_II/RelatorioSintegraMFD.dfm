object frmRelatorioSintegraMFD: TfrmRelatorioSintegraMFD
  Left = 198
  Top = 151
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório Sintegra MFD'
  ClientHeight = 405
  ClientWidth = 541
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
    Left = 24
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
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Mês:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 64
    Width = 25
    Height = 13
    Caption = 'Ano:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 74
    Height = 13
    Caption = 'Razão Social:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 160
    Width = 55
    Height = 13
    Caption = 'Endereço:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 216
    Top = 160
    Width = 47
    Height = 13
    Caption = 'Número:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 208
    Width = 82
    Height = 13
    Caption = 'Complemento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 144
    Top = 208
    Width = 37
    Height = 13
    Caption = 'Bairro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 256
    Width = 41
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 192
    Top = 256
    Width = 23
    Height = 13
    Caption = 'CEP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 24
    Top = 304
    Width = 52
    Height = 13
    Caption = 'Telefone:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 160
    Top = 304
    Width = 24
    Height = 13
    Caption = 'FAX:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 24
    Top = 352
    Width = 108
    Height = 13
    Caption = 'Pessoa de Contato:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 16
    Width = 233
    Height = 193
    Caption = ' Escolha os registros a serem gerados '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object Check60M: TCheckBox
      Left = 24
      Top = 32
      Width = 161
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 60 M (Mestre)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object Check60A: TCheckBox
      Left = 24
      Top = 56
      Width = 153
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 60 A (Analítico)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object Check60D: TCheckBox
      Left = 24
      Top = 80
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 60 D (Diário)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object Check60I: TCheckBox
      Left = 24
      Top = 104
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 60 I (Item)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object Check60R: TCheckBox
      Left = 24
      Top = 128
      Width = 169
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 60 R (Resumo Mensal)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object Check75: TCheckBox
      Left = 24
      Top = 152
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tipo 75'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
  end
  object txtNomeArquivo: TEdit
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'SINTEGRA.TXT'
  end
  object txtMes: TEdit
    Left = 24
    Top = 80
    Width = 41
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '01'
  end
  object txtAno: TEdit
    Left = 72
    Top = 80
    Width = 57
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '2004'
  end
  object txtRazaoSocial: TEdit
    Left = 24
    Top = 128
    Width = 257
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'BEMATECH S/A'
  end
  object txtEndereco: TEdit
    Left = 24
    Top = 176
    Width = 185
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'Estrada de Santa Cândida'
  end
  object txtNumero: TEdit
    Left = 216
    Top = 176
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '263'
  end
  object txtEmpresa: TEdit
    Left = 24
    Top = 224
    Width = 113
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'Empresa'
  end
  object txtBairro: TEdit
    Left = 144
    Top = 224
    Width = 137
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'Santa Cândida'
  end
  object txtCidade: TEdit
    Left = 24
    Top = 272
    Width = 161
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = 'Curitiba'
  end
  object txtCEP: TEdit
    Left = 192
    Top = 272
    Width = 89
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '82630490'
  end
  object txtTelefone: TEdit
    Left = 24
    Top = 320
    Width = 129
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '41 351-270'
  end
  object txtFAX: TEdit
    Left = 160
    Top = 320
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '41 351-2863'
  end
  object txtContato: TEdit
    Left = 24
    Top = 368
    Width = 153
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'Fulano de Tal'
  end
  object cmdOK: TButton
    Left = 367
    Top = 313
    Width = 121
    Height = 28
    Caption = '&OK'
    TabOrder = 14
    OnClick = cmdOKClick
  end
  object cmdCancelar: TButton
    Left = 367
    Top = 353
    Width = 121
    Height = 28
    Caption = '&Cancelar'
    TabOrder = 15
    OnClick = cmdCancelarClick
  end
end
