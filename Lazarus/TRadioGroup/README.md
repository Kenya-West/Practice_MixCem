#  TRadioGroup

В этом уроке мы научимся создавать приложения, в которых используются несколько форм.
Кроме того  мы изучим новый компонент TRadioGroup для создания групп переключателей. Научимся применять условный оператор для анализа состояния переключателей.
Для начала вам нужно перейти на страницу Новый компонент и ознакомиться с назначением и свойствами компонента  TRadioGroup.

## Инструкция
### Откройте Lazarus

####Добавление новой формы
Компонент форма является объектом, отсутствующим на палитре компонентов. Чтобы добавить новую форму в проект, нужно выбрать команду Файл  – Создать форму или  щелкнуть кнопку Создать  форму на панели инструментов.

![] (http://imgur.com/Ry45Ktd)

Появится новая пустая форма. Называться она будет Form2, а соответствующий ей файл с исходными текстами добавиться в Редактор кода на новую вкладку Unit2.

![] (http://imgur.com/N58bBCt)

После добавления новой формы, проект нужно сохранить.
Для показа форм  можно использовать один из двух методов: Show или ShowModal.
Метод Show предназначен  для показа формы в обычном окне,  а ShowModal – для показа формы в модальном окне.
Различие между этими двумя видами окон состоит в том, что между обычными окнами можно перемещаться произвольным способом, а перейти в другое окно из модального окна можно только после его закрытия.

####Показ формы как модального окна

Чтобы вызвать форму в обычном окне используют ее метод Show. Он показывает форму, перемещает ее на передний план экрана и делает активной.
В примере показан вызов формы Form3 в обычном  окне после щелчка на кнопке Button1.

    procedure TForm1.Button1Click(Sender: TObject);
    
    begin
    
        Form2.Show;
        
    end;

####Показ формы как модального окна

Чтобы вызвать форму в модальном окне, надо использовать метод ShowMoal. Переключиться из модального окна на другие окна не удастся, пока оно не будет закрыто.
Пример показа формы Form3 в модальном окне после щелчка на кнопке Button2.

    procedure TForm1.Button2Click(Sender: TObject);
    
    begin
    
        Form3.ShowModal;
        
    end;

Модальные окна хорошо подходят для задания всевозможных настроек, выполнения ввода промежуточных значений, отображения результатов.
Теперь у нас есть все необходимое, для того чтобы создать свое первое приложение с несколькими формами.

###Проект «Три формы»

Задание. Создать приложение с тремя формами: Главная, Опции и О программе. Форму Опции вызывать в обычном окне. Для вызова формы О программе использовать модальное окно.
На рисунке показаны главная форма и подформы нашего нового проекта.

![] (http://imgur.com/usFsiHD)

![] (http://imgur.com/v0mL564)

![] (http://imgur.com/mWnwLVw)

#####Ход выполнения проекта

1. Создайте новое приложение, сохраните файлы проекта в папке «Три формы».

2. Разместите на форме Form1  3 кнопки, измените свойства объектов в соответствии с таблицей.

<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td valign="top" width="197">Компонент</td>
<td valign="top" width="196">Свойство</td>
<td valign="top" width="197">Значение</td>
</tr>
<tr>
<td valign="top" width="197">Форма</td>
<td valign="top" width="196">Name<br>
Caption</td>
<td valign="top" width="197">frmGeneral<br>
Главная</td>
</tr>
<tr>
<td valign="top" width="197">Кнопка 1</td>
<td valign="top" width="196">Caption</td>
<td valign="top" width="197">Опции</td>
</tr>
<tr>
<td valign="top" width="197">Кнопка 2</td>
<td valign="top" width="196">Caption</td>
<td valign="top" width="197">О программе</td>
</tr>
<tr>
<td valign="top" width="197">Кнопка 3</td>
<td valign="top" width="196">Caption</td>
<td valign="top" width="197">Закрыть</td>
</tr>
</tbody>
</table>

3. Создайте формуForm2. Для этого выберите в меню Файл команду Создать форму. На экране появиться новая форма Form2, в редакторе кода –  новая вкладка Unit2.

4. Установите на форме компонент RadioGroup  для выбора цвета, надпись, поле вывода, две кнопки. Настройте свойства объектов в соответствии с таблицей.

<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td valign="top" width="213">Компонент</td>
<td valign="top" width="213">Свойство</td>
<td valign="top" width="213">Значение</td>
</tr>
<tr>
<td valign="top" width="213">Форма</td>
<td valign="top" width="213">Name<br>
Caption</td>
<td valign="top" width="213">frmOptions<br>
Опции</td>
</tr>
<tr>
<td valign="top" width="213">RadioGroup</td>
<td valign="top" width="213">Caption<br>
Items</td>
<td valign="top" width="213">Цвет главной формы<br>
Ввести список</td>
</tr>
<tr>
<td valign="top" width="213">Label1</td>
<td valign="top" width="213">Caption</td>
<td valign="top" width="213">Заголовок главного окна</td>
</tr>
<tr>
<td valign="top" width="213">Edit1</td>
<td valign="top" width="213">Text</td>
<td valign="top" width="213">Пусто</td>
</tr>
<tr>
<td valign="top" width="213">Button1<br>
Button2</td>
<td valign="top" width="213">CaptionCaption</td>
<td valign="top" width="213">ОК<br>
Выход</td>
</tr>
</tbody>
</table>

После размещения  на форме компонента TradioGroup, входящие в него переключатели задаются перечислением их названий. Эти названия вводятся в свойство Items.
Так как требуется ввести не одну строку, а несколько, для их ввода предусмотрен специальный редактор, который вызывается щелчком на специальной кнопке "• • •" Специальная кнопка открывает редактор списка, расположенной справа в строке, описывающей свойство Items.
На рисунке ниже показан редактор списка для ввода названий переключателей.

![] (http://imgur.com/g4EGF1r)

5. Создайте еще одну форму – Form3, выбрав команду Файл-Создать форму. На экране появиться новая форма Form3 а в редакторе кода –  новая вкладка Unit3.

6. Разместите на Form3 объекты Надпись и Кнопка. Настройте свойства объектов.

<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td valign="top" width="198">Компонент</td>
<td valign="top" width="196">Свойство</td>
<td valign="top" width="197">Значение</td>
</tr>
<tr>
<td valign="top" width="198">Форма</td>
<td valign="top" width="196">Name<br>
Caption</td>
<td valign="top" width="197">frmAbout<br>
О программе</td>
</tr>
<tr>
<td valign="top" width="198">Button1</td>
<td valign="top" width="196">Caption</td>
<td valign="top" width="197">Выход</td>
</tr>
</tbody>
</table>

7. Программный код для формы Главная (модуль Unit1) В модуле Unit1 в разделе Implementation необходимо записать директиву uses:

    uses Unit2, Unit3;
    
Это необходимо для того чтобы модули Unit2, Unit3 форм Опции и О программе были видимы в главном модуле Unit1.

8. Написать обработчики событий для кнопок формы Главная. Первая кнопка формы Главная (кнопка Опции) вызывает форму Опции в обычном окне с помощью метода Show.

    procedure TfrmGeneral.Button1Click(Sender: TObject);
    begin
    frmOptions.Show;
    end;
    
9. Первая кнопка формы Главная  (кнопка О программе) вызывает форму О программе в модальном окне с помощью метода  ShowModal.,/p>

    procedure TfrmGeneral.Button2Click(Sender: TObject);
    begin
    frmAbout.ShowModal;
    end;
    
10. Третья кнопка формы Главная (Кнопка ОК) закрывает главное окно.

    procedure TfrmGeneral.Button3Click(Sender: TObject);
    begin
    Close;
    end;
    
11. Открываем программный код формы Опции (модуль Unit2).В модуле Unit2 в разделе implementation  записать директиву uses:

    uses Unit1;
    
Это необходимо для того чтобы главный модуль Unit1 формы Главная был видим в этом модуле.

12. Создать обработчик загрузки формы Опции, в который записать программный код, передающий текст заголовка главной формы в поле Edit1.
    
    procedure TFrmOptions.FormCreate(Sender: TObject);
    begin
    frmOptions.Edit1.text:=frmGeneral.Caption;
    end;
    
13. Кнопка ОК формы Опции. По щелчку на этой кнопке будет происходить изменение цвета главной формы.

    procedure TFrmOptions.Button1Click(Sender: TObject);
    begin
    if radioGroup1.ItemIndex=0 then frmGeneral.color:=clWhite;
    if radioGroup1.ItemIndex=1 then frmGeneral.color:=clRed;
    if radioGroup1.ItemIndex=2 then frmGeneral.color:=clBlue;
    if radioGroup1.ItemIndex=3 then frmGeneral.color:=clGreen;
    end;
    
14. Кнопка Закрыть формы Опции. По щелчку на этой кнопке закрывается окно Опции.
    procedure TFrmOptions.Button2Click(Sender: TObject);
    begin
    close;
    end;
    
15. Переходим в программный код формы О программе (модуль Unit3).В модуле Unit3 в разделе implementation записать директиву uses.
    
    uses Unit1;
    
Модуль Unit1 формы Главная должен был видим в этом модуле.

16. Кнопка ОК формы О программе закрывает окно.

    procedure TfrmAbout.Button1Click(Sender: TObject);
    begin
    Close;
    end;
    
17. Проект готов. Сохраните проект и проверьте его работу.

-----

В этом уроке мы создали приложение состоящее из трех форм, использовали разные методы для вызова форм: простое окно и модальное окно.
В нашем приложении мы впервые применили компонент RadioGroup (Группа переключателей), использовали условный оператор для обработки выбора пользователя.