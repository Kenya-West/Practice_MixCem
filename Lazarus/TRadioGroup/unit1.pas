unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmGeneral }

  TfrmGeneral = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmGeneral: TfrmGeneral;

implementation

uses Unit2, Unit3;

{$R *.lfm}

{ TfrmGeneral }

procedure TfrmGeneral.FormCreate(Sender: TObject);
begin

end;

procedure TfrmGeneral.Button1Click(Sender: TObject);
begin
  frmOptions.Show;
end;

procedure TfrmGeneral.Button2Click(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmGeneral.Button3Click(Sender: TObject);
begin
  Close;
end;

end.

