object FormCarne: TFormCarne
  Left = 274
  Top = 99
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Impressão de Carnê'
  ClientHeight = 253
  ClientWidth = 516
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
  object TabbedNotebook1: TTabbedNotebook
    Left = 8
    Top = 8
    Width = 497
    Height = 209
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Info Geral'
      object Label1: TLabel
        Left = 16
        Top = 17
        Width = 26
        Height = 13
        Caption = 'Titulo'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 41
        Height = 13
        Caption = 'RG/CPF'
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 53
        Height = 13
        Caption = 'Texto Livre'
      end
      object Label6: TLabel
        Left = 224
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Número de vias'
      end
      object Label7: TLabel
        Left = 224
        Top = 64
        Width = 87
        Height = 13
        Caption = 'Número do cupom'
      end
      object TitleTxt: TEdit
        Left = 80
        Top = 8
        Width = 129
        Height = 21
        MaxLength = 20
        TabOrder = 0
      end
      object TextoTxt: TMemo
        Left = 80
        Top = 112
        Width = 129
        Height = 49
        Lines.Strings = (
          '')
        MaxLength = 200
        TabOrder = 3
      end
      object IdTxt: TEdit
        Left = 80
        Top = 72
        Width = 129
        Height = 21
        MaxLength = 20
        TabOrder = 2
      end
      object ClientTxt: TEdit
        Left = 80
        Top = 40
        Width = 129
        Height = 21
        MaxLength = 30
        TabOrder = 1
      end
      object ComboVias: TComboBox
        Left = 336
        Top = 8
        Width = 49
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          '1'
          '2'
          ' ')
      end
      object CupomTxt: TEdit
        Left = 320
        Top = 56
        Width = 65
        Height = 21
        MaxLength = 10
        TabOrder = 5
        Text = '0'
      end
      object RadioGroupAssina: TRadioGroup
        Left = 224
        Top = 104
        Width = 113
        Height = 57
        Caption = 'Mostra Assinatura'
        Items.Strings = (
          'Não'
          'Sim')
        TabOrder = 6
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Parcelas'
      object Label5: TLabel
        Left = 10
        Top = 16
        Width = 55
        Height = 13
        Caption = 'Quantidade'
      end
      object ComboParcelas: TComboBox
        Left = 80
        Top = 8
        Width = 49
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24')
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 40
        Width = 225
        Height = 137
        Caption = 'Valores'
        TabOrder = 1
        object ButtonDel: TButton
          Left = 160
          Top = 104
          Width = 57
          Height = 20
          Caption = 'Remove'
          TabOrder = 0
          OnClick = ButtonDelClick
        end
        object EditParcela: TEdit
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 1
        end
        object ButtonAdd: TButton
          Left = 168
          Top = 16
          Width = 43
          Height = 20
          Caption = 'Add'
          TabOrder = 2
          OnClick = ButtonAddClick
        end
        object ListBoxValues: TListBox
          Left = 8
          Top = 48
          Width = 145
          Height = 81
          ItemHeight = 13
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 248
        Top = 24
        Width = 233
        Height = 153
        Caption = 'Datas'
        TabOrder = 2
        object Button1: TButton
          Left = 168
          Top = 16
          Width = 43
          Height = 20
          Caption = 'Pick...'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 160
          Top = 120
          Width = 57
          Height = 20
          Caption = 'Remove'
          TabOrder = 1
          OnClick = Button2Click
        end
        object EditDate: TEdit
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object Button3: TButton
          Left = 168
          Top = 40
          Width = 43
          Height = 20
          Caption = 'Add'
          TabOrder = 3
          OnClick = Button3Click
        end
        object ListBoxDates: TListBox
          Left = 8
          Top = 56
          Width = 145
          Height = 89
          ItemHeight = 13
          TabOrder = 4
        end
      end
    end
  end
  object ButtonEnvia: TButton
    Left = 432
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Envia'
    TabOrder = 1
    OnClick = ButtonEnviaClick
  end
end
