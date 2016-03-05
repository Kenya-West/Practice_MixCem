#  Смена картинок
## Инструкция
### Откройте Lazarus
1. Откройте Lazarus. Перед вами будет запущена IDE Lazarus
![] (http://i.imgur.com/auecrPM.png)
2. Переместите два компонента TImage на окно "Form1" с окна "Компоненты", расположите их рядом
3. Затем в поле Picture загрузите по зеленому и красному рисунку со скачанного репозитория
![] (http://i.imgur.com/RaKukLW.png)
4. На форме будет два TImage, один зеленый, другой красный. В окне редактора исходного кода добавим код от этих компонентов:
4. 1. Два раза щелкните на каждом компоненте, откроется процедура типа:
`procedure TForm1.Image1Click(Sender: TObject);`
`procedure TForm1.Image2Click(Sender: TObject);`
![] (http://i.imgur.com/Wmossod.png)