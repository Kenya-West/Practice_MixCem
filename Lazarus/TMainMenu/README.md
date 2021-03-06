#  TMainMenu

Компонент TMainMenu предназначен для добавления к программе главного меню, без которого не обходится практически ни одно из приложений Windows.
Чтобы добавить меню, надо выбрать на панели компонентов Standart (Стандартные) компонент TMainMenu и поместить его на форме в произвольном месте.
Компонент TMainMenu невизуальный, в отличии от визуальных компонентов TEdit и TLabel, в точности соответствующих своему внешнему виду в работающей программе.
Это означает, что хотя он виден на форме как небольшой значок, в окне созданной программы в таком виде он не появится. Представление его на форме в миниатюрном виде просто указывает на наличие в программе объекта, ответственного за меню.

![](http://gospodaretsva.com/wp-content/uploads/2014/01/lz9-1.jpg)

Пункты меню содержатся в свойстве Items. Чтобы начать формирование пунктов меню достаточно дважды щелкнуть по компоненту на форме или нажать на кнопку с многоточием в свойстве Items компонента в окне Свойства. Откроется специальный редактор меню.

![](http://gospodaretsva.com/wp-content/uploads/2014/01/lz9-2.jpg)

Рассмотрим применение нового компанента на конкретном примере.

##Инструкция
###Откройте Lazarus

Задание. Добавить главное меню в созданное Вами ранее приложение Калькулятор. В горизонтальное меню включить названия арифметических действий: «Сложить» и «Разделить».

![](http://gospodaretsva.com/wp-content/uploads/2014/01/lz9-3.jpg)

Ход выполнения проекта
1. Откройте в среде программирования Lazarus проект Калькулятор, созданный в 5 уроке.
2. Поместите компонент  MainMenu на форму.
3. Чтобы начать формирование пунктов меню дважды щелкнуть по компоненту TMainMenu1 на форме или нажмите на кнопку с многоточием в свойстве Items компонента в инспекторе объектов.
На форме в горизонтальном меню появиться первый пункт, который по умолчанию имеет имя New Item1 (Новый Элемент1).  Откроется специальное окно редактора меню.

![](http://gospodaretsva.com/wp-content/uploads/2014/01/lz9-4.jpg)

4. В инспекторе объектов в свойство Caption введите имя первого пункта меню Сложить.
5. Чтобы создать следующий пункт меню, установите курсор на текущий элемент меню и откройте контекстное меню правым щелчком. Выберите “Вставить новый пункт (после)”.

![](http://gospodaretsva.com/wp-content/uploads/2014/01/lz9-5.jpg)

На форме отобразится следующий пункт горизонтального меню.
6. В инспекторе объектов в свойство Caption введите название второго  пункта меню: Разделить.
7. Теперь осталось написать программный код, который будет выполняться при выборе пунктов меню.
Напишем общую для всех пунктов меню процедуру Znak, параметром которой будет символ арифметической операции «+» или «/». Процедура будет  получить числовые значения из полей EditNum1 и EditNum2, производить указанную в качестве параметра операцию и выводить  полученный результат в поле EditResult.
Текст процедуры нужно поместить в раздел Implementation после директивы {$R *.lfm}. 

    procedure Znak(zn:char);
    label metka;
    var result, num1, num2:real;
    begin
        num1:=StrToFloat(form1.editNum1.text);
        num2:=StrToFloat(form1.editNum2.text);
        case zn of
        '+': result:=num1 + num2;
        '/': if num2<> 0 then result:=num1/num2;
        else
            begin
                showMessage('Делить на 0 нельзя!');
                form1.editNum2.text := '';
                form1.editNum2.SetFocus;
                form1.editResult.text := '';
                goto metka;
            end;
        end; // casse
        form1.EditResult.Text := FloatToStr(Result);
        metka:
    end;
    
8. Напишем обработчик для пункта меню Сложить. Для этого дважды щелкните  на данном пункте меню.
Программный код  будет иметь следующий вид:

    procedure TForm1.MenuItem1Click(Sender: TObject);
    begin
        znak('+');
    end;

В программном коде вызывается написанная нами процедура Znak, в которой в качестве фактического параметра передается знак арифметического действия.

9. Напишем обработчик для пункта меню Разделить.

    procedure TForm1.MenuItem1Click(Sender: TObject);
    begin
        znak('/');
    end;
    
10. Проект готов. Проверьте работу приложения. Для этого введите произвольные числа в поля ввода, выберите в горизонтальном меню нужное действие, проверьте результат.