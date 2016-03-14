unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmOptions }

  TfrmOptions = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

uses Unit1;

{$R *.lfm}

{ TfrmOptions }

procedure TfrmOptions.FormCreate(Sender: TObject);
begin

end;

procedure TfrmOptions.Button1Click(Sender: TObject);
begin
  if radioGroup1.ItemIndex=0 then frmGeneral.color:=clWhite;
  if radioGroup1.ItemIndex=1 then frmGeneral.color:=clRed;
  if radioGroup1.ItemIndex=2 then frmGeneral.color:=clBlue;
  if radioGroup1.ItemIndex=3 then frmGeneral.color:=clGreen;

  frmGeneral.Caption:=Edit1.Text ;
end;

procedure TfrmOptions.Button2Click(Sender: TObject);
begin
  close;
end;

end.

