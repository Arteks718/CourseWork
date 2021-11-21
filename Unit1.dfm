object Form1: TForm1
  Left = 297
  Top = 265
  Width = 1019
  Height = 479
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1003
    Height = 440
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088#1080
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 995
        Height = 271
        Align = alClient
        DataSource = DataModule1.DataSTovari
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1090#1086#1074#1072#1088#1072
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1072#1090#1077#1075#1086#1088#1110#1103
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 271
        Width = 995
        Height = 66
        Align = alBottom
        Color = 16423593
        TabOrder = 1
        object Label7: TLabel
          Left = 448
          Top = 12
          Width = 153
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1090#1086#1074#1072#1088#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 448
          Top = 36
          Width = 118
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1082#1086#1076#1091' '#1090#1086#1074#1072#1088#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button2: TButton
          Left = 191
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Edit5: TEdit
          Left = 610
          Top = 8
          Width = 223
          Height = 21
          TabOrder = 1
          OnChange = Edit5Change
        end
        object Button16: TButton
          Left = 278
          Top = 24
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button16Click
        end
        object Button18: TButton
          Left = 16
          Top = 24
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 104
          Top = 24
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button19Click
        end
        object Edit2: TEdit
          Left = 610
          Top = 32
          Width = 63
          Height = 21
          TabOrder = 5
        end
        object Button10: TButton
          Left = 680
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 760
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = Button11Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 337
        Width = 995
        Height = 75
        Align = alBottom
        Color = 11908533
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 38
          Height = 13
          Caption = #1053#1072#1079#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 35
          Width = 58
          Height = 13
          Caption = #1042#1080#1088#1086#1073#1085#1080#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 246
          Top = 11
          Width = 98
          Height = 13
          Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 247
          Top = 35
          Width = 100
          Height = 13
          Caption = #1062#1110#1085#1072' '#1079#1072' '#1086#1076#1080#1085#1080#1094#1102
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 360
          Top = 8
          Width = 145
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 360
          Top = 32
          Width = 145
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '0'
        end
        object Button4: TButton
          Left = 528
          Top = 36
          Width = 105
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 648
          Top = 25
          Width = 105
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button6Click
        end
        object Button1: TButton
          Left = 528
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 88
          Top = 32
          Width = 145
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = #1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072
          ListField = #1050#1072#1090#1077#1075#1086#1088#1110#1103
          ListSource = DataModule1.DataSVirobnik
          ParentFont = False
          TabOrder = 6
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 995
        Height = 266
        Align = alClient
        DataSource = DataModule1.DataSPersonal
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1041
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1086#1089#1072#1076#1072
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089#1072
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 266
        Width = 995
        Height = 53
        Align = alBottom
        Color = 16423593
        TabOrder = 1
        object Button7: TButton
          Left = 184
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 96
          Top = 16
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button9Click
        end
        object btn3: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Caption = #1055#1086#1096#1091#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btn3Click
        end
        object Button22: TButton
          Left = 360
          Top = 16
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button22Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 319
        Width = 995
        Height = 93
        Align = alBottom
        Color = 11908533
        TabOrder = 2
        Visible = False
        object lbl4: TLabel
          Left = 16
          Top = 16
          Width = 90
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086'  '#1055#1030#1041':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 16
          Top = 40
          Width = 186
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1090#1072#1073#1077#1083#1100#1085#1080#1084' '#1085#1086#1084#1077#1088#1086#1084':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 112
          Top = 12
          Width = 137
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = Edit8Change
        end
        object Edit7: TEdit
          Left = 208
          Top = 36
          Width = 41
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object btn7: TButton
          Left = 64
          Top = 64
          Width = 75
          Height = 20
          Caption = #1054#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btn7Click
        end
        object btn8: TButton
          Left = 144
          Top = 62
          Width = 75
          Height = 22
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btn8Click
        end
      end
    end
    object ts1: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object dbgrd1: TDBGrid
        Left = 0
        Top = 0
        Width = 993
        Height = 313
        DataSource = DataModule1.DataSProdazhi
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1091
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1095#1077#1082#1091
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1041
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1110#1083#1100#1082#1110#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1091#1084#1072
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 312
        Width = 995
        Height = 100
        Align = alBottom
        Color = 11908533
        TabOrder = 1
        object Labellbl2: TLabel
          Left = 16
          Top = 60
          Width = 146
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1082#1086#1076#1091' '#1087#1088#1086#1076#1072#1078#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Labellbl8: TLabel
          Left = 16
          Top = 20
          Width = 122
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1082#1086#1076#1091' '#1095#1077#1082#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 168
          Top = 16
          Width = 97
          Height = 25
          TabOrder = 0
        end
        object Edit9: TEdit
          Left = 168
          Top = 56
          Width = 97
          Height = 25
          TabOrder = 1
        end
        object Button20: TButton
          Left = 280
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button20Click
        end
        object Button17: TButton
          Left = 280
          Top = 56
          Width = 75
          Height = 25
          Caption = #1054#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button17Click
        end
        object Button21: TButton
          Left = 382
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button21Click
        end
        object Button23: TButton
          Left = 480
          Top = 32
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button23Click
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1042#1080#1088#1086#1073#1085#1080#1082
      ImageIndex = 4
      object dbgrd2: TDBGrid
        Left = 0
        Top = 0
        Width = 993
        Height = 281
        DataSource = DataModule1.DataSVirobnik
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel6: TPanel
        Left = 0
        Top = 280
        Width = 995
        Height = 57
        Align = alBottom
        Color = 16423593
        TabOrder = 1
        object Button12: TButton
          Left = 24
          Top = 16
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 112
          Top = 16
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button13Click
        end
        object Button15: TButton
          Left = 200
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button15Click
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 337
        Width = 995
        Height = 75
        Align = alBottom
        Color = 11908533
        TabOrder = 2
        Visible = False
        object lbl3: TLabel
          Left = 10
          Top = 11
          Width = 59
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 6
          Top = 43
          Width = 79
          Height = 13
          Caption = #1052#1110#1089#1090#1086'/'#1082#1088#1072#1111#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit10: TEdit
          Left = 96
          Top = 40
          Width = 153
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 96
          Top = 8
          Width = 153
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = #1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072
          ListField = #1050#1072#1090#1077#1075#1086#1088#1110#1103
          ListSource = DataModule1.DataSVirobnik
          ParentFont = False
          TabOrder = 1
        end
        object Button14: TButton
          Left = 264
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button14Click
        end
        object Button3: TButton
          Left = 264
          Top = 40
          Width = 105
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1079#1072#1087#1080#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Button5: TButton
          Left = 392
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object ts3: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 2
      object dbgrd3: TDBGrid
        Left = 0
        Top = 0
        Width = 995
        Height = 337
        DataSource = DataModule1.DataSCheck
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel8: TPanel
        Left = 0
        Top = 336
        Width = 995
        Height = 76
        Align = alBottom
        Color = 11908533
        TabOrder = 1
        object Labellbl1: TLabel
          Left = 16
          Top = 12
          Width = 92
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1076#1072#1090#1110': '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateTimePicker1: TDateTimePicker
          Left = 120
          Top = 12
          Width = 201
          Height = 21
          Date = 42659.493448703710000000
          Time = 42659.493448703710000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Buttonbtn12: TButton
          Left = 120
          Top = 40
          Width = 95
          Height = 25
          Caption = 'OK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Buttonbtn12Click
        end
        object Buttonbtn13: TButton
          Left = 224
          Top = 40
          Width = 95
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Buttonbtn13Click
        end
      end
    end
  end
end
