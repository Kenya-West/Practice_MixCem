# Canvas

В этом уроке мы научимся управлять свойством компонента TImage, а именно - отрисовывая там треугольник

## Инструкция
### Откройте Lazarus

####Добавление компонентов

Расположите на форме Form1 следующие компоненты:

* 6 TEdit
* 1 TImage
* 1 TButton

в следующем порядке:

![](https://dozenthoughts.files.wordpress.com/2012/10/4.png)

####Написание кода

Сделайте так, чтобы при нажатии на кнопку отрисовывался треугольник. Для этого два раза кликните на Button1 на Form1 и впишите следующий код:

    procedure TForm5.Button1Click(Sender: TObject);
        var x1:Integer; x2:Integer; x3:Integer; y1:Integer; y2:Integer; y3:Integer;
    begin
        x1:= StrToInt(Edit1.Text);
        y1:= StrToInt(Edit2.Caption);
        x2:= StrToInt(Edit3.Text);
        y2:= StrToInt(Edit4.Text);
        x3:= StrToInt(Edit5.Text);
        y3:= StrToInt(Edit6.Text);

        Image1.Canvas.Erase;
        Image1.Canvas.pen.Color := clblack;
        Image1.Canvas.LineTo(x1,x1);
        Image1.Canvas.pen.Color := clblue;
        Image1.Canvas.LineTo(x2,y2);
        Image1.Canvas.Pen.Color:=clWhite;
        Image1.Canvas.LineTo(x3,y3);
        Image1.Canvas.Pen.Color:=clRed;
        Image1.Canvas.LineTo(x1,y1);
    end;
    
Попытайтесь скомпилировать проект. Ругается на новые ошибки или есть баги? Исправьте.