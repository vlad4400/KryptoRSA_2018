object formRSA: TformRSA
  Left = 181
  Top = 125
  Width = 882
  Height = 537
  Caption = 'CryptoRSA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object boxGenerator: TGroupBox
    Left = 384
    Top = 8
    Width = 449
    Height = 145
    Caption = 'Generation Randoms digits'
    TabOrder = 0
    object Edit6: TEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit6'
    end
    object Edit1: TEdit
      Left = 72
      Top = 108
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'result'
    end
    object Button1: TButton
      Left = 296
      Top = 24
      Width = 137
      Height = 25
      Caption = 'Generate RandSeeds'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit7: TEdit
      Left = 72
      Top = 84
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'max'
    end
    object Button4: TButton
      Left = 296
      Top = 56
      Width = 137
      Height = 25
      Caption = 'Set RandSeeds'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 208
      Top = 104
      Width = 137
      Height = 25
      Caption = 'generate randseeds'
      TabOrder = 5
      OnClick = Button5Click
    end
    object Edit16: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Edit16'
    end
    object Edit25: TEdit
      Left = 24
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'Edit25'
    end
    object Edit26: TEdit
      Left = 152
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'Edit26'
    end
  end
  object boxConstructModule: TGroupBox
    Left = 384
    Top = 160
    Width = 473
    Height = 73
    Caption = 'Construction to degreee by module'
    TabOrder = 1
    object Label4: TLabel
      Left = 149
      Top = 52
      Width = 20
      Height = 13
      Caption = 'mod'
    end
    object Edit2: TEdit
      Left = 8
      Top = 44
      Width = 97
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object Edit3: TEdit
      Left = 96
      Top = 20
      Width = 97
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object Edit4: TEdit
      Left = 192
      Top = 44
      Width = 97
      Height = 21
      TabOrder = 2
      Text = '1'
    end
    object bequiv: TButton
      Left = 302
      Top = 40
      Width = 75
      Height = 25
      Caption = '='
      TabOrder = 3
      OnClick = bequivClick
    end
    object Edit5: TEdit
      Left = 392
      Top = 44
      Width = 73
      Height = 21
      TabOrder = 4
      Text = '0'
    end
  end
  object boxSimplicity: TGroupBox
    Left = 384
    Top = 240
    Width = 257
    Height = 81
    Caption = 'Check Simplicity by Lemon test'
    TabOrder = 2
    object Label1: TLabel
      Left = 152
      Top = 24
      Width = 27
      Height = 13
      Caption = '         '
    end
    object Edit15: TEdit
      Left = 8
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '17'
    end
    object Button7: TButton
      Left = 46
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 1
      WordWrap = True
      OnClick = Button7Click
    end
  end
  object boxEvklid: TGroupBox
    Left = 384
    Top = 328
    Width = 241
    Height = 161
    Caption = 'Evklid'
    TabOrder = 3
    object Edit13: TEdit
      Left = 16
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'd'
    end
    object Edit11: TEdit
      Left = 16
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'e'
    end
    object Edit12: TEdit
      Left = 16
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'fn'
    end
    object Edit14: TEdit
      Left = 16
      Top = 124
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'y'
    end
    object Button2: TButton
      Left = 142
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 4
      WordWrap = True
      OnClick = Button2Click
    end
  end
  object boxGcd: TGroupBox
    Left = 664
    Top = 336
    Width = 177
    Height = 145
    Caption = 'Gcd'
    TabOrder = 4
    object Label6: TLabel
      Left = 18
      Top = 60
      Width = 7
      Height = 13
      Caption = 'C'
    end
    object Label5: TLabel
      Left = 18
      Top = 28
      Width = 7
      Height = 13
      Caption = 'B'
    end
    object Edit8: TEdit
      Left = 32
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit9: TEdit
      Left = 32
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit10: TEdit
      Left = 32
      Top = 108
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button6: TButton
      Left = 54
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 3
      OnClick = Button6Click
    end
  end
  object boxRSA: TGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 473
    Caption = 'RSA'
    TabOrder = 5
    object Label10: TLabel
      Left = 50
      Top = 204
      Width = 12
      Height = 13
      Caption = 'd='
    end
    object Label7: TLabel
      Left = 50
      Top = 132
      Width = 12
      Height = 13
      Caption = 'n='
    end
    object Label8: TLabel
      Left = 46
      Top = 156
      Width = 21
      Height = 13
      Caption = 'f(n)='
    end
    object Label9: TLabel
      Left = 50
      Top = 180
      Width = 12
      Height = 13
      Caption = 'e='
    end
    object Label11: TLabel
      Left = 64
      Top = 396
      Width = 34
      Height = 13
      Caption = 'Source'
    end
    object Label12: TLabel
      Left = 48
      Top = 420
      Width = 48
      Height = 13
      Caption = 'Encrypted'
    end
    object Label13: TLabel
      Left = 48
      Top = 444
      Width = 49
      Height = 13
      Caption = 'Decrypted'
    end
    object generate_p: TButton
      Left = 56
      Top = 56
      Width = 75
      Height = 25
      Caption = 'generate p'
      TabOrder = 0
      OnClick = generate_pClick
    end
    object Button9: TButton
      Left = 198
      Top = 56
      Width = 75
      Height = 25
      Caption = 'generate q'
      TabOrder = 1
      OnClick = Button9Click
    end
    object p_edit: TEdit
      Left = 56
      Top = 32
      Width = 75
      Height = 21
      TabOrder = 2
      Text = '1'
    end
    object Edit17: TEdit
      Left = 198
      Top = 32
      Width = 75
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object Button10: TButton
      Left = 56
      Top = 88
      Width = 75
      Height = 25
      Caption = 'generate keys'
      TabOrder = 4
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 32
      Top = 256
      Width = 113
      Height = 25
      Caption = 'save keys to files'
      TabOrder = 5
      OnClick = Button11Click
    end
    object Edit18: TEdit
      Left = 72
      Top = 128
      Width = 129
      Height = 21
      TabOrder = 6
    end
    object Edit19: TEdit
      Left = 72
      Top = 152
      Width = 129
      Height = 21
      TabOrder = 7
    end
    object Edit20: TEdit
      Left = 72
      Top = 176
      Width = 129
      Height = 21
      TabOrder = 8
    end
    object Edit21: TEdit
      Left = 72
      Top = 200
      Width = 129
      Height = 21
      TabOrder = 9
    end
    object Edit22: TEdit
      Left = 120
      Top = 392
      Width = 121
      Height = 21
      TabOrder = 10
      Text = '666'
    end
    object Edit23: TEdit
      Left = 120
      Top = 416
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'Edit23'
    end
    object Edit24: TEdit
      Left = 120
      Top = 440
      Width = 121
      Height = 21
      TabOrder = 12
      Text = 'Edit24'
    end
    object Button12: TButton
      Left = 254
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 13
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 32
      Top = 288
      Width = 217
      Height = 25
      Caption = 'encrypt (from source.txt to encrypted.txt)'
      TabOrder = 14
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 30
      Top = 320
      Width = 219
      Height = 25
      Caption = 'decrypt (from source.txt to encrypted.txt)'
      TabOrder = 15
      OnClick = Button14Click
    end
    object Panel1: TPanel
      Left = 24
      Top = 368
      Width = 305
      Height = 17
      Caption = 'For test'
      TabOrder = 16
    end
  end
end
