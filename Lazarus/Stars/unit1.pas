unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PaintBox1: TPaintBox;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }

    procedure Star(x,y: Integer; Size: Integer; Colour: TColor);
    // Получение случайного цвета. A - параметр, определяющий яркость случайного цвета
    function GetRandomColor( A: Integer): TColor;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=true;
  Button2.Visible:=true;
  Button1.Visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  Button2.Visible:=false;
  Button1.Visible:=true;
  PaintBox1.Canvas.Brush.Color:=clDefault;
  PaintBox1.Canvas.Rectangle(0,0,PaintBox1.Width,PaintBox1.Height);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
  // Локальные переменные i и с используются для задания количества и цвета звезд
Var i : Integer;
    c : TColor;
begin
  // Закрашиваем поле для рисования в черный цвет
  PaintBox1.Canvas.Brush.Color:=clBlack;
  PaintBox1.Canvas.Rectangle(0,0,PaintBox1.Width, PaintBox1.Height);
  // Вызываем процедуру Star 100 раз, тем самым рисуя 100 звезд
  for i := 1 to 100 do begin
    // Случайным образом формируем цвет звезды, с помощью функции
    c := GetRandomColor(100);
    // Вызываем процедуру отрисовки звезды с разными случайными параметрами
    Star( Random(PaintBox1.Width), Random(PaintBox1.Height), Random(7)+3, c);
  end;
end;

//Процедура прорисовки звезды с разными параметрами расположения, размера и цвета
procedure TForm1.Star(x, y: Integer; Size: Integer; Colour: TColor);
begin
  // Задаем цвет в соответствии с полученным параметром
  PaintBox1.Canvas.Pen.Color:= Colour;
  PaintBox1.Canvas.Brush.Color:= Colour;
  // Рисуем звезду, используя переданные координаты и размер
  Paintbox1.Canvas.Polygon( [Point(x, y-size),
  Point(x-size div 4, y-size div 4), Point(x-size, y),
  Point(x-size div 4, y+size div 4), Point(x, y+size),
  Point(x+size div 4, y+size div 4), Point(x+size, y),
  Point(x+size div 4, y-size div 4), Point(x, y-size)]);
end;

function TForm1.GetRandomColor( A: Integer): TColor;
begin
 // Проверка на корректность задания параметра A (не больше 255)
 if A > 255 then A := 255;
 // Получение случайного цвета, в зависимости от значения A
 Result := RGBToColor(Random(256-A)+A, Random(256-A)+A, Random(256-A)+A);
end;

end.

