object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 810
  Top = 231
  Height = 524
  Width = 495
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bd.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 72
  end
  object ADOQTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072', '#1042#1080#1088#1086#1073#1085#1080#1082'.'#1050#1072#1090#1077#1075#1086#1088#1110#1103', '#1058#1086#1074#1072#1088'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088'.' +
        #1062#1110#1085#1072', '#1058#1086#1074#1072#1088'.'#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
      
        'FROM '#1042#1080#1088#1086#1073#1085#1080#1082' INNER JOIN '#1058#1086#1074#1072#1088' ON '#1042#1080#1088#1086#1073#1085#1080#1082'.['#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072'] = '#1058#1086#1074 +
        #1072#1088'.['#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072'];')
    Left = 136
    Top = 8
  end
  object DataSTovari: TDataSource
    DataSet = ADOQTovari
    Left = 256
    Top = 16
  end
  object ADOQProdazhi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1091', '#1058#1086#1074#1072#1088'.'#1053#1072#1079#1074#1072', '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091', '#1055#1077#1088#1089#1086#1085#1072#1083'.' +
        #1055#1030#1041', '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', ['#1055#1088#1086#1076#1072#1078#1072']!['#1050#1110#1083#1100#1082#1110#1089#1090#1100']*['#1058#1086#1074#1072#1088']!['#1062#1110#1085#1072'] AS ' +
        #1057#1091#1084#1072
      
        'FROM '#1063#1077#1082' INNER JOIN (('#1042#1080#1088#1086#1073#1085#1080#1082' INNER JOIN '#1058#1086#1074#1072#1088' ON '#1042#1080#1088#1086#1073#1085#1080#1082'.'#1050#1086#1076'_' +
        #1074#1080#1088#1086#1073#1085#1080#1082#1072' = '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072') INNER JOIN ('#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN' +
        ' '#1055#1088#1086#1076#1072#1078#1072' ON '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088'] = '#1055#1088#1086#1076#1072#1078#1072'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077 +
        #1088']) ON '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072' = '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072') ON '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091' = ' +
        #1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1095#1077#1082#1091';')
    Left = 136
    Top = 72
  end
  object DataSProdazhi: TDataSource
    DataSet = ADOQProdazhi
    Left = 256
    Top = 72
  end
  object ADOQCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091', '#1063#1077#1082'.'#1044#1072#1090#1072', Sum(['#1055#1088#1086#1076#1072#1078#1072']!['#1050#1110#1083#1100#1082#1110#1089#1090#1100']*['#1058#1086#1074#1072#1088']' +
        '!['#1062#1110#1085#1072']) AS '#1057#1091#1084#1072
      
        'FROM '#1063#1077#1082' INNER JOIN ('#1058#1086#1074#1072#1088' INNER JOIN '#1055#1088#1086#1076#1072#1078#1072' ON '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088 +
        #1072' = '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072') ON '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091' = '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1095#1077#1082#1091
      'GROUP BY '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091', '#1063#1077#1082'.'#1044#1072#1090#1072';')
    Left = 136
    Top = 248
  end
  object DataSVirobnik: TDataSource
    DataSet = ADOQVirobnik
    Left = 256
    Top = 128
  end
  object DataSPersonal: TDataSource
    DataSet = ADOQPersonal
    Left = 256
    Top = 192
  end
  object DataSCheck: TDataSource
    DataSet = ADOQCheck
    Left = 256
    Top = 248
  end
  object ADOQWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 312
  end
  object DataSWork: TDataSource
    DataSet = ADOQWork
    Left = 256
    Top = 312
  end
  object ADOQVirobnik: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1042#1080#1088#1086#1073#1085#1080#1082'.'#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072', '#1042#1080#1088#1086#1073#1085#1080#1082'.'#1050#1072#1090#1077#1075#1086#1088#1110#1103', '#1042#1080#1088#1086#1073#1085#1080#1082'.['#1052#1110#1089 +
        #1090#1086'/'#1082#1088#1072#1111#1085#1072']'
      'FROM '#1042#1080#1088#1086#1073#1085#1080#1082';')
    Left = 136
    Top = 128
  end
  object ADOQPersonal: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088'], '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1055#1030#1041'], '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1055#1086#1089 +
        #1072#1076#1072'], '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1058#1077#1083#1077#1092#1086#1085'], '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1040#1076#1088#1077#1089#1072']'
      'FROM '#1055#1077#1088#1089#1086#1085#1072#1083';')
    Left = 136
    Top = 192
  end
  object ADOQCheckRep: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1091', '#1063#1077#1082'.'#1044#1072#1090#1072', '#1058#1086#1074#1072#1088'.'#1053#1072#1079#1074#1072', '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1110#1083#1100#1082 +
        #1110#1089#1090#1100', '#1055#1088#1086#1076#1072#1078#1072'.'#1062#1110#1085#1072', '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1055#1030#1041', '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1095#1077#1082#1091', '#1058#1086#1074#1072#1088'.'#1062#1110#1085#1072
      
        'FROM '#1063#1077#1082' INNER JOIN (('#1042#1080#1088#1086#1073#1085#1080#1082' INNER JOIN '#1058#1086#1074#1072#1088' ON '#1042#1080#1088#1086#1073#1085#1080#1082'.'#1050#1086#1076'_' +
        #1074#1080#1088#1086#1073#1085#1080#1082#1072' = '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072') INNER JOIN ('#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN' +
        ' '#1055#1088#1086#1076#1072#1078#1072' ON '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088'] = '#1055#1088#1086#1076#1072#1078#1072'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077 +
        #1088']) ON '#1058#1086#1074#1072#1088'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072' = '#1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072') ON '#1063#1077#1082'.'#1050#1086#1076'_'#1095#1077#1082#1091' = ' +
        #1055#1088#1086#1076#1072#1078#1072'.'#1050#1086#1076'_'#1095#1077#1082#1091';')
    Left = 136
    Top = 424
  end
  object DataSCheckRep: TDataSource
    DataSet = ADOQCheckRep
    Left = 256
    Top = 424
  end
  object ADOQEnter: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088'], '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1055#1030#1041
      'FROM '#1055#1077#1088#1089#1086#1085#1072#1083
      'WHERE ((('#1055#1077#1088#1089#1086#1085#1072#1083'.'#1055#1086#1089#1072#1076#1072')="'#1052#1077#1085#1077#1076#1078#1077#1088'"));')
    Left = 136
    Top = 376
  end
  object DataSEnter: TDataSource
    DataSet = ADOQEnter
    Left = 256
    Top = 384
  end
end