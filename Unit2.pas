unit Unit2;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQTovari: TADOQuery;
    DataSTovari: TDataSource;
    ADOQProdazhi: TADOQuery;
    DataSProdazhi: TDataSource;
    ADOQCheck: TADOQuery;
    DataSVirobnik: TDataSource;
    DataSPersonal: TDataSource;
    DataSCheck: TDataSource;
    ADOQWork: TADOQuery;
    DataSWork: TDataSource;
    ADOQVirobnik: TADOQuery;
    ADOQPersonal: TADOQuery;
    ADOQCheckRep: TADOQuery;
    DataSCheckRep: TDataSource;
    ADOQEnter: TADOQuery;
    DataSEnter: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
