unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls,
  jpeg;

type
  TForm3 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    Edit1: TEdit;
    lbl2: TLabel;
    Edit2: TEdit;
    Panel2: TPanel;
    lbl3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    Panel3: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ud1: TUpDown;
    Button1: TButton;
    grp1: TGroupBox;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button6: TButton;
    Label9: TLabel;
    Panel4: TPanel;
    Label10: TLabel;
    img1: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    Label11: TLabel;
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure N3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  CenaTov, ChekNom, SumChek, TabNom: string;


implementation

uses Unit1, Unit2, Unit4, Unit7, Unit8;

{$R *.dfm}


procedure TForm3.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
  Form4.Show();
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  {DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSEnter.DataSet.Fields[0].AsString);
  DBLookupComboBox1.KeyValue := 1;}
  If  DBLookupComboBox1.KeyValue  = 1 then ShowMessage('������� �����������')
  else
  begin
    lbl3.Caption := '��������: ' + DBLookupComboBox1.Text;
    Panel1.Visible := true;
    Panel2.Visible := true;
    Panel4.Visible := false;
    dbgrd1.Visible :=True;
    N1.Enabled :=true;
    N2.Enabled :=true;
    N3.Enabled :=true;
    N5.Enabled :=true;
    Button1.Enabled :=False;
    Label7.Visible:=True;
    Label8.Visible:=True;
    Label7.Caption:=IntToStr(DBLookupComboBox1.KeyValue);
  end;

end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  Label1.Caption:= DataModule1.DataSTovari.DataSet.Fields[2].AsString;
  Label2.Caption:= DataModule1.DataSTovari.DataSet.Fields[3].AsString;
  Label3.Caption:= DataModule1.DataSTovari.DataSet.Fields[0].AsString;

  Edit3.Text := '1';
  CenaTov:= IntToStr(DataModule1.DataSTovari.DataSet.Fields[3].AsInteger * StrToInt(Edit3.Text));
  Label5.Caption:= '������� '+ CenaTov + ' ���.';

end;

procedure TForm3.N3Click(Sender: TObject);
begin
  If Label6.Caption = '' then begin
    DBLookupComboBox1.KeyValue:=1;
    Panel4.Visible := true;
    Panel1.Visible := false;
    Panel2.Visible := false;
    grp1.Visible:=false;
    Panel3.Visible := false;
    dbgrd1.Visible :=false;
    N1.Enabled :=false;
    N2.Enabled :=false;
    N3.Enabled :=false;
    N5.Enabled :=false;
    Button1.Enabled :=true;
    Form1.Hide();
  end
  else
  ShowMessage('��������� ������ �����������. �������� �������� ���.')
    
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT �����.���_������, ��������.��������, �����.�����, �����.ֳ��, �����.�������������� '
+ 'FROM �������� INNER JOIN ����� ON ��������.[���_���������] = �����.[���_���������] WHERE �����.���_������ LIKE "%'+Edit1.Text+'%" ORDER BY �����.���_������';
DataModule1.ADOQTovari.Open;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
  DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT �����.���_������, ��������.��������, �����.�����, �����.ֳ��, �����.�������������� '
+ 'FROM �������� INNER JOIN ����� ON ��������.[���_���������] = �����.[���_���������] WHERE ��������.�������� LIKE "%'+Edit2.Text+'%" ORDER BY �����.���_������';
DataModule1.ADOQTovari.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  grp1.Visible:=true;
  Panel3.Visible:=true;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ��� ( [����], [��������_����] )  Values (:dt, 0) ';
  DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
  DataModule1.ADOQWork.ExecSQL;

  FormShow(Sender);

  DataModule1.ADOQWork.close;
  DataModule1.ADOQWork.SQL.text:=' select * from ��� order by ���_����';
  DataModule1.ADOQWork.Open;

  DataModule1.ADOQCheck.Last;
  Cheknom:=DataModule1.DataSCheck.DataSet.Fields[0].AsString;
  Label6.Caption:='��� �'+ Cheknom;

  DataModule1.ADOQCheckRep.Close;
  DataModule1.ADOQCheckRep.SQL.Text:= 'SELECT �������.���_�������, ���.����, �����.�����, �������.ʳ������, �������.ֳ��, ��������.ϲ�, �������.���_����, �����.ֳ��'
  + ' FROM ��� INNER JOIN ((�������� INNER JOIN ����� ON ��������.���_��������� = �����.���_���������) INNER JOIN (�������� INNER JOIN ������� ON'
  + ' ��������.[��������� �����] = �������.[��������� �����]) ON �����.���_������ = �������.���_������) ON ���.���_���� = �������.���_����'
  + ' WHERE (((�������.���_����)= '+Cheknom+'))';
  DataModule1.ADOQCheckRep.Open;
  label9.caption:= SumChek;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
  Form1.Show();
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  DataModule1.ADOQCheckRep.Close;
  DataModule1.ADOQCheckRep.SQL.Text:='SELECT �������.���_�������, ���.����, �����.�����, �����.ֳ��, ��������.ϲ�, �������.ʳ������, �������.ֳ��, �������.���_���� '
+' FROM ��� INNER JOIN ((�������� INNER JOIN ����� ON ��������.���_��������� = �����.���_���������) INNER JOIN (�������� INNER JOIN ������� ON ��������.[��������� �����] = �������.[��������� �����]) '
+' ON �����.���_������ = �������.���_������) ON ���.���_���� = �������.���_���� '
+' WHERE (((�������.���_����)='+Cheknom+')) ';
  DataModule1.ADOQCheckRep.Open;
  Form7.QRLabel2.Caption:='����: ' + DateToStr(DateTimePicker1.Date);
  Form7.QRLabel3.Caption:= lbl3.caption;
  Form7.QRLabel1.Caption:= '��� �' + ChekNom;
  Form7.QRLabel12.Caption:= '����� �� ���� ' + Label9.Caption + ' ���';

  Form7.QuickRep1.PreviewModal;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if Label1.Caption = '' then ShowMessage('������� �����')
  else
  begin
    DataModule1.ADOQWork.Close;
    DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO �������(���_������, ���_����, [��������� �����], ʳ������, ֳ��)'
    + ' VALUES('+Label3.Caption+', '+ChekNom+', '+Label7.Caption+', '+Edit3.Text+', '+inttostr(strtoint(Edit3.Text)*strtoint(Label2.Caption))+')';
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
    Label9.Caption := SumChek;
    Form8.Label1.Caption := '����� �� ���� (���): ' + SumChek;

    DataModule1.ADOQWork.Close;
    DataModule1.ADOQWork.SQL.Text:='UPDATE ��� SET ���.[��������_����] = '+SumChek+' WHERE((���.[���_����]) = '+ChekNom+')';
    DataModule1.ADOQWork.ExecSQL;

    FormShow(Sender);
  end;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := now;

  DataModule1.ADOQCheck.close;
  DataModule1.ADOQCheck.SQL.text:=' select * from ��� order by ���_����';
  DataModule1.ADOQCheck.Open;

  SumChek:='';
  DBLookupComboBox1.KeyValue:=1;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
grp1.Visible:= False;
Panel3.Visible:=False;
Label1.Caption:='';
Label2.Caption:='';
Label3.Caption:='';
Label6.Caption:='';
Edit3.Text:='1';
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  Form8.Show();
  Form8.Caption:= '��� ' + ChekNom;
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
  CenaTov:= IntToStr(DataModule1.DataSTovari.DataSet.Fields[3].AsInteger * StrToInt(Edit3.Text));
  Label5.Caption:= '������� '+ CenaTov + ' ���.';
end;

end.
