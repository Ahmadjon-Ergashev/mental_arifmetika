unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Label2: TLabel;
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;
var q,w,a,i,j,k:byte; s:real; l:boolean;
{$R *.dfm}

procedure TForm2.Timer2Timer(Sender: TObject);
begin
if strtoint(label1.caption)<>0 then
label1.Caption:=inttostr(strtoint(label1.caption)-1) else begin
label1.Caption:='Go';timer2.Enabled:=False;timer1.Enabled:=True;end;
label1.Left:=(form2.Width div 2)-(400*length(label1.Caption)div 2);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin  s:=0;i:=0;l:=false;
q:=strtoint(form1.ComboBox1.text);w:=strtoint(form1.ComboBox2.text);
timer1.interval:=strtoint(form1.combobox3.text);
label1.Top:=(form2.Height div 2)-300;
label1.Left:=(form2.Width div 2)-(400*length(label1.Caption)div 2);
a:=form1.combobox4.itemindex;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin  randomize;l:=not l;
 if l then label1.Font.Color:=clgreen else label1.Font.Color:=clred;
if i<w then begin
j:=random(q);inc(j); k:=random(a+1); sleep(50);
case k of
0: begin label1.Caption:='+'+inttostr(j);s:=s+j;end;
1: begin label1.caption:='-'+inttostr(j);s:=s-j;end;
2: begin label1.caption:='*'+inttostr(j);s:=s*j;end;
3: begin label1.caption:=':'+inttostr(j);s:=s/j;end;end;
label1.Left:=(form2.Width div 2)-(400*length(label1.Caption)div 2);end else
begin timer1.Enabled:=false;
label2.Caption:=floattostr(s);form2.Hide;form3.show;
form1.sskinmanager1.SkinName:=form1.sskinmanager1.InternalSkins.Items[0].Name;
label1.Caption:='3';
end;inc(i);
end;

end.
