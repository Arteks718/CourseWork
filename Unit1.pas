unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    Button2: TButton;
    Edit5: TEdit;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    Button6: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Button10: TButton;
    Button11: TButton;
    ts1: TTabSheet;
    dbgrd1: TDBGrid;
    ts2: TTabSheet;
    dbgrd2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    btn3: TButton;
    Panel5: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    btn7: TButton;
    btn8: TButton;
    Panel6: TPanel;
    ts3: TTabSheet;
    dbgrd3: TDBGrid;
    Panel7: TPanel;
    lbl3: TLabel;
    lbl7: TLabel;
    Edit10: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Button14: TButton;
    Button3: TButton;
    Button5: TButton;
    Button12: TButton;
    Button13: TButton;
    Button15: TButton;
    Button22: TButton;
    Panel3: TPanel;
    Labellbl2: TLabel;
    Labellbl8: TLabel;
    Edit6: TEdit;
    Edit9: TEdit;
    Button20: TButton;
    Button17: TButton;
    Button21: TButton;
    Panel8: TPanel;
    Labellbl1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Buttonbtn12: TButton;
    Buttonbtn13: TButton;
    Button23: TButton;
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Buttonbtn12Click(Sender: TObject);
    procedure Buttonbtn13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2, Unit5, Unit6, Unit7, Unit9;

{$R *.dfm}

procedure TForm1.Button18Click(Sender: TObject);
begin
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='0';
DBLookupComboBox1.KeyValue:=1;
Button1.Visible:=true;
Button4.Visible:=false;
Panel2.Visible:=true;

end;

procedure TForm1.Button19Click(Sender: TObject);
begin
{  Edit1.Text:=DBGrid1.Fields[2].AsString;
  Edit3.Text:=DBGrid1.Fields[3].AsString;
  Edit4.Text:=DBGrid1.Fields[4].AsString;
DataModule1.ADOTVirobnik.Locate('Категорія',DBGrid1.Fields[1].AsString,[loCaseInsensitive, loPartialKey]);
DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSVirobnik.DataSet.Fields[1].AsString);

Button1.Visible:=false;
Button4.Visible:=True;

Panel2.Visible:=true;
}
  Edit1.Text:=DBGrid1.Fields[2].AsString;
  Edit3.Text:=DBGrid1.Fields[4].AsString;
  Edit4.Text:=DBGrid1.Fields[3].AsString;
  DataModule1.ADOQVirobnik.Locate('Категорія', DBGrid1.Fields[1].AsString,[loCaseInsensitive, loPartialKey]);
  DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSVirobnik.DataSet.Fields[0].AsString);
DBLookupComboBox1.KeyValue:=1;
Button1.Visible:=false;
Button4.Visible:=true;
Panel2.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM Товар Where (Товар.Код_товара = '+DBGrid1.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin

DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товар.Код_товара, Виробник.Категорія, Товар.Назва, Товар.Ціна, Товар.Характеристики ' +
' FROM Виробник INNER JOIN Товар ON Виробник.[Код_виробника] = Товар.[Код_виробника]';
DataModule1.ADOQTovari.Open;

DateTimePicker1.Date:= now;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule1.ADOQPersonal.Insert;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if  DataModule1.ADOQPersonal.Modified then
 DataModule1.ADOQPersonal.Post;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 DataModule1.ADOQPersonal.Delete;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE Товар SET Товар.Назва = "'+Edit1.Text+'", Товар.Код_виробника = '+IntToStr(DBLookupComboBox1.KeyValue)+', Товар.Характеристики = "'+Edit3.Text+'", Товар.Ціна = '+Edit4.Text+' '
+' WHERE (((Товар.Код_товара)='+DBGrid1.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);


panel2.Visible:=False;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='';
FormShow(Sender);
panel2.Visible:=False;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:='INSERT INTO Товар ( [Назва], [Код_виробника], [Характеристики], [Ціна] ) values ("'+Edit1.Text+'", '+IntToStr(DBLookupComboBox1.KeyValue)+', "'+Edit3.Text+'", '+Edit4.Text+')';
DataModule1.ADOQTovari.ExecSQL;

FormShow(sender);

panel2.Visible:=False;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товар.Код_товара, Виробник.Категорія, Товар.Назва, Товар.Ціна, Товар.Характеристики '
+ 'FROM Виробник INNER JOIN Товар ON Виробник.[Код_виробника] = Товар.[Код_виробника] WHERE Товар.Назва LIKE "%'+Edit5.Text+'%" ORDER BY Товар.Код_товара';
DataModule1.ADOQTovari.Open;
end;

procedure TForm1.Buttonbtn12Click(Sender: TObject);
begin

DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:='SELECT Чек.[Код_чеку], Чек.[Дата], Чек.[Загальна_сума] FROM [Чек] WHERE Чек.[Дата]= :dt';
DataModule1.ADOQCheck.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
ShowMessage(DataModule1.ADOQCheck.SQL.Text);
DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Buttonbtn13Click(Sender: TObject);
begin
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:='SELECT Чек.[Код_чеку], Чек.[Дата], Чек.[Загальна_сума] FROM [Чек]';

DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товар.Код_товара, Виробник.Категорія, Товар.Назва, Товар.Ціна, Товар.Характеристики '
+ 'FROM Виробник INNER JOIN Товар ON Виробник.[Код_виробника] = Товар.[Код_виробника] WHERE Товар.Код_товара = '+Edit2.Text+' ORDER BY Товар.Код_товара';
DataModule1.ADOQTovari.Open;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товар.Код_товара, Виробник.Категорія, Товар.Назва, Товар.Ціна, Товар.Характеристики '
+ 'FROM Виробник INNER JOIN Товар ON Виробник.[Код_виробника] = Товар.[Код_виробника] ORDER BY Товар.Код_товара';
DataModule1.ADOQTovari.Open;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
DataModule1.ADOQPersonal.Close;
DataModule1.ADOQPersonal.SQL.Text:= 'SELECT Персонал.[Табельний номер], Персонал.ПІБ, Персонал.Посада, Персонал.Телефон, Персонал.Адреса '
+ 'FROM Персонал WHERE Персонал.ПІБ LIKE "%'+Edit8.Text+'%" ORDER BY Персонал.[Табельний номер]';
DataModule1.ADOQPersonal.Open;
end;

procedure TForm1.btn11Click(Sender: TObject);
begin
Panel7.Visible := True;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule1.ADOQVirobnik.Close;
DataModule1.ADOQVirobnik.SQL.Text:='INSERT INTO Виробник ( [Категорія], [Місто/країна]) values ("'+DBLookupComboBox2.ListField+'", "'+Edit10.Text+'")';
DataModule1.ADOQVirobnik.ExecSQL;

DataModule1.ADOQVirobnik.Close;
DataModule1.ADOQVirobnik.SQL.Text:= 'SELECT Виробник.Код_виробника, Виробник.Категорія, Виробник.[Місто/країна] FROM Виробник';
DataModule1.ADOQVirobnik.Open;

end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  DataModule1.ADOQVirobnik.Insert;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
if  DataModule1.ADOQVirobnik.Modified then
 DataModule1.ADOQVirobnik.Post;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
   DataModule1.ADOQVirobnik.Delete;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
DataModule1.ADOQProdazhi.Close;
DataModule1.ADOQProdazhi.SQL.Text:= 'SELECT Продажа.Код_продажу, Товар.Назва, Чек.Код_чеку, Персонал.ПІБ, Продажа.Кількість, [Продажа]![Кількість]*[Товар]![Ціна] AS Сума '
+ 'FROM Чек INNER JOIN ((Виробник INNER JOIN Товар ON Виробник.Код_виробника = Товар.Код_виробника) INNER JOIN '
+ '(Персонал INNER JOIN Продажа ON Персонал.[Табельний номер] = Продажа.[Табельний номер]) ON Товар.Код_товара = Продажа.Код_товара) ON Чек.Код_чеку = Продажа.Код_чеку '
+ 'WHERE Продажа.Код_продажу = '+Edit9.Text+' ORDER BY Продажа.Код_продажу';
DataModule1.ADOQProdazhi.Open;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
DataModule1.ADOQProdazhi.Close;
DataModule1.ADOQProdazhi.SQL.Text:= 'SELECT Продажа.Код_продажу, Товар.Назва, Чек.Код_чеку, Персонал.ПІБ, Продажа.Кількість, [Продажа]![Кількість]*[Товар]![Ціна] AS Сума '
+ 'FROM Чек INNER JOIN ((Виробник INNER JOIN Товар ON Виробник.Код_виробника = Товар.Код_виробника) INNER JOIN '
+ '(Персонал INNER JOIN Продажа ON Персонал.[Табельний номер] = Продажа.[Табельний номер]) ON Товар.Код_товара = Продажа.Код_товара) ON Чек.Код_чеку = Продажа.Код_чеку '
+ 'WHERE Продажа.Код_чеку = '+Edit6.Text+' ORDER BY Продажа.Код_чеку';
DataModule1.ADOQProdazhi.Open;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товар.Код_товара, Виробник.Категорія, Товар.Назва, Товар.Ціна, Товар.Характеристики '
+ 'FROM Виробник INNER JOIN Товар ON Виробник.[Код_виробника] = Товар.[Код_виробника] ORDER BY Товар.Код_товара';
DataModule1.ADOQTovari.Open;

DataModule1.ADOQPersonal.Close;
DataModule1.ADOQPersonal.SQL.Text:= 'SELECT Персонал.[Табельний номер], Персонал.[ПІБ], Персонал.[Посада], Персонал.[Телефон], Персонал.[Адреса] FROM Персонал '
+' ORDER BY Персонал.[Табельний номер]';
DataModule1.ADOQPersonal.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Panel5.Visible:=True;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
DataModule1.ADOQPersonal.Close;
DataModule1.ADOQPersonal.SQL.Text:= 'SELECT Персонал.[Табельний номер], Персонал.[ПІБ], Персонал.[Посада], Персонал.[Телефон], Персонал.[Адреса] FROM Персонал '
+' WHERE Персонал.[Табельний номер] = '+Edit7.Text+' ORDER BY Персонал.[Табельний номер]';
DataModule1.ADOQPersonal.Open;
end;


procedure TForm1.Button21Click(Sender: TObject);
begin
DataModule1.ADOQProdazhi.Close;
DataModule1.ADOQProdazhi.SQL.Text:= 'SELECT Продажа.Код_продажу, Товар.Назва, Чек.Код_чеку, Персонал.ПІБ, Продажа.Кількість, [Продажа]![Кількість]*[Товар]![Ціна] AS Сума '
+ 'FROM Чек INNER JOIN ((Виробник INNER JOIN Товар ON Виробник.Код_виробника = Товар.Код_виробника) INNER JOIN '
+ '(Персонал INNER JOIN Продажа ON Персонал.[Табельний номер] = Продажа.[Табельний номер]) ON Товар.Код_товара = Продажа.Код_товара) ON Чек.Код_чеку = Продажа.Код_чеку ';
DataModule1.ADOQProdazhi.Open;
Edit6.Text:='';
Edit9.Text:='';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Form5.QuickRep1.PreviewModal;
end;


procedure TForm1.Button23Click(Sender: TObject);
begin
  Form6.QuickRep1.PreviewModal;
end;


procedure TForm1.Button22Click(Sender: TObject);
begin
  Form9.QuickRep1.PreviewModal;
end;

end.
