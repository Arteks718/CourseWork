unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit1;

{$R *.dfm}

procedure TForm8.Button2Click(Sender: TObject);
begin
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM ������� WHERE ���_������� = '+DBGrid1.Fields[0].AsString+'';
  DataModule1.ADOQWork.ExecSQL;

  DataModule1.ADOQCheckRep.Close;
  DataModule1.ADOQCheckRep.SQL.Text:='SELECT �������.���_�������, ���.����, �����.�����, �������.ʳ������, �������.ֳ��, ��������.ϲ�, �������.���_����, �����.ֳ��'
  + ' FROM ��� INNER JOIN ((�������� INNER JOIN ����� ON ��������.���_��������� = �����.���_���������) INNER JOIN (�������� INNER JOIN ������� ON ��������.[��������� �����] = �������.[��������� �����])'
  + ' ON �����.���_������ = �������.���_������) ON ���.���_���� = �������.���_���� WHERE((�������.���_����)='+Cheknom+')';
  DataModule1.ADOQCheckRep.Open;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:='SELECT Sum(�������.[ֳ��]) AS [Sum-����] FROM ������� GROUP BY �������.[���_����] HAVING (((�������.[���_����])= '+ChekNom+'))';
  DataModule1.ADOQWork.Open;
  SumChek := DataModule1.DataSWork.DataSet.Fields[0].AsString;
  Form3.Label9.Caption := SumChek;
  Label1.Caption := '����� �� ���� (���): ' + SumChek;

  if  SumChek='' then SumChek:='0';
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:='UPDATE ��� SET ���.[��������_����] = '+SumChek+' WHERE((���.[���_����]) = '+ChekNom+')';
  DataModule1.ADOQWork.ExecSQL;

  Form3.FormShow(Sender);
end;

end.
