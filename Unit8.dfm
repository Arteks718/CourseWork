object Form8: TForm8
  Left = 370
  Top = 348
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1075#1083#1103#1076' '#1095#1077#1082#1091
  ClientHeight = 285
  ClientWidth = 1241
  Color = 16423593
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 216
    Width = 158
    Height = 19
    Caption = #1057#1091#1084#1072' '#1087#1086' '#1095#1077#1082#1091' ('#1075#1088#1085')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 1225
    Height = 145
    DataSource = DataModule1.DataSCheckRep
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 176
    Width = 105
    Height = 25
    Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1090#1086#1074#1072#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
end
