unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var x1:Integer; x2:Integer; x3:Integer; y1:Integer; y2:Integer; y3:Integer;
begin
x1:= StrToInt(Edit1.Text);
y1:= StrToInt(Edit2.Text);
x2:= StrToInt(Edit3.Text);
y2:= StrToInt(Edit4.Text);
x3:= StrToInt(Edit5.Text);
y3:= StrToInt(Edit6.Text);

Image1.Canvas.Erase;
Image1.Canvas.pen.Color := clblack;
Image1.Canvas.LineTo(x1,y1);
Image1.Canvas.pen.Color := clblue;
Image1.Canvas.LineTo(x2,y2);
Image1.Canvas.Pen.Color := clWhite;
Image1.Canvas.LineTo(x3,y3);
Image1.Canvas.Pen.Color := clRed;
Image1.Canvas.LineTo(x1,y1);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

