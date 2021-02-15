object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  ActiveControl = edtNome
  Caption = 'Banco Virtual'
  ClientHeight = 283
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 40
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbTipoConta: TLabel
    Left = 40
    Top = 136
    Width = 67
    Height = 13
    Caption = 'Tipo da Conta'
  end
  object lbSaldo: TLabel
    Left = 248
    Top = 97
    Width = 39
    Height = 19
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbValor: TLabel
    Left = 248
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object edtNome: TEdit
    Left = 40
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object boxTipos: TComboBox
    Left = 40
    Top = 155
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Corrente'
    Items.Strings = (
      'Corrente'
      'Poupan'#231'a'
      'Cart'#227'o')
  end
  object btnSacar: TButton
    Left = 264
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 2
    OnClick = btnSacarClick
  end
  object btnDepositar: TButton
    Left = 369
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 3
    OnClick = btnDepositarClick
  end
  object btnSaldo: TButton
    Left = 474
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Saldo'
    TabOrder = 4
    OnClick = btnSaldoClick
  end
  object btnAbrirConta: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Abrir Conta'
    TabOrder = 5
    OnClick = btnAbrirContaClick
  end
  object edtValor: TEdit
    Left = 248
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '300'
  end
end
