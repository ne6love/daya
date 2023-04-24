unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
 var a: array [0..8] of real; i:integer;
begin
  for i :=0 to 8 do
  a[i] :=StrTOFloat(Memo1.Lines[i]);
  for i:=0 to 8 do
a[i]:=a[i]+17;
  Memo2.Clear;
  for i:=0 to 8 do
  Memo2.Lines.Append (FloatToStr (a[i]));

end;

end.

