#  Смена картинок
## Инструкция
### Откройте Lazarus
1. Откройте Lazarus. Перед вами будет запущена IDE Lazarus
![] (http://i.imgur.com/auecrPM.png)
2. Переместите два компонента TImage на окно "Form1" с окна "Компоненты", расположите их рядом
3. Затем в поле Picture загрузите по зеленому и красному рисунку со скачанного репозитория
![] (http://i.imgur.com/RaKukLW.png)
4. На форме будет два TImage, один зеленый, другой красный. Назначьте в свойстве Name имя каждому из компонентов: зеленому - "green", красному - "red"
5. В окне редактора исходного кода добавим код от этих компонентов:
* Два раза щелкните на каждом компоненте, откроется процедура типа:

    procedure TForm1.Image1Click(Sender: TObject);
    
    procedure TForm1.Image2Click(Sender: TObject);
    
![] (http://i.imgur.com/Wmossod.png)
* В коде между `begin ... end` напишите функцию, скрывающую соседнюю кнопку.
6. Попробуйте это самостоятельно. Если не получится, то в процедуре для "red" напишите код:

    red.Visible:=false;
    
    green.Visible:=true; 

Точно такой же код, но с обратными значениями, пишется в процедуре для "green".

Теперь при нажатии на одну из кнопок другая скрывается. Наложите кнопки друг на друга так, чтобы красная была вверху. Если она вдруг не наверху, то выровняйте её: правой кнопкой контекстного меню -> выровнять -> на передний план