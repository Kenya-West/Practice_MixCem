unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, ButtonPanel, MMSystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    red: TImage;
    green: TImage;

    procedure greenClick(Sender: TObject);
    procedure redClick(Sender: TObject);
    procedure ShowFuckingLamp (Sender: TObject);


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

procedure TForm1.ShowFuckingLamp(Sender: TObject);
var y: integer;
begin

end;

procedure TForm1.redClick(Sender: TObject);
begin
  red.Visible:=false;
  green.Visible:=true;
end;

procedure TForm1.greenClick(Sender: TObject);
begin
  red.Visible:=true;
  green.Visible:=false;
end;

end.

