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
  DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM Продажа WHERE Код_продажу = '+DBGrid1.Fields[0].AsString+'';
  DataModule1.ADOQWork.ExecSQL;

  DataModule1.ADOQCheckRep.Close;
  DataModule1.ADOQCheckRep.SQL.Text:='SELECT Продажа.Код_продажу, Чек.Дата, Товар.Назва, Продажа.Кількість, Продажа.Ціна, Персонал.ПІБ, Продажа.Код_чеку, Товар.Ціна'
  + ' FROM Чек INNER JOIN ((Виробник INNER JOIN Товар ON Виробник.Код_виробника = Товар.Код_виробника) INNER JOIN (Персонал INNER JOIN Продажа ON Персонал.[Табельний номер] = Продажа.[Табельний номер])'
  + ' ON Товар.Код_товара = Продажа.Код_товара) ON Чек.Код_чеку = Продажа.Код_чеку WHERE((Продажа.Код_чеку)='+Cheknom+')';
  DataModule1.ADOQCheckRep.Open;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:='SELECT Sum(Продажа.[Ціна]) AS [Sum-Сума] FROM Продажа GROUP BY Продажа.[Код_чеку] HAVING (((Продажа.[Код_чеку])= '+ChekNom+'))';
  DataModule1.ADOQWork.Open;
  SumChek := DataModule1.DataSWork.DataSet.Fields[0].AsString;
  Form3.Label9.Caption := SumChek;
  Label1.Caption := 'Сумма по чеку (грн): ' + SumChek;

  if  SumChek='' then SumChek:='0';
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:='UPDATE Чек SET Чек.[Загальна_Сума] = '+SumChek+' WHERE((Чек.[Код_чеку]) = '+ChekNom+')';
  DataModule1.ADOQWork.ExecSQL;

  Form3.FormShow(Sender);
end;

end.
