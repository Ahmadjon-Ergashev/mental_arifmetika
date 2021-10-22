unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, acPNG, ExtCtrls, XPMan, Buttons;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    XPManifest1: TXPManifest;
    SpeedButton11: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if edit1.text=form2.label2.Caption then showmessage('topdingiz');
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
image1.Hide;image2.Hide;
image3.Hide;image4.Hide;
end;

procedure TForm3.SpeedButton12Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'0';
end;

procedure TForm3.SpeedButton13Click(Sender: TObject);
begin
if pos(',',edit1.Text)=0 then edit1.Text:=edit1.Text+',';
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'1';
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'2';
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'3';
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'4';
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'5';
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'6';
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'7';
end;

procedure TForm3.SpeedButton10Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'9';
end;
procedure TForm3.SpeedButton9Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'8';
end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
begin
form3.hide;form1.show;
form1.sskinmanager1.SkinName:=form1.sskinmanager1.InternalSkins.Items[2].Name;
edit1.Clear;speedbutton1.Enabled:=true;
speedbutton11.Enabled:=false; form3.FormCreate(sender);
label1.Caption:='';
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin speedbutton11.enabled:=true;
if edit1.text=form2.Label2.Caption then
begin image2.hide; image1.show; image4.Show;image3.Hide;
label1.Caption:='Qoyil, Barakalla!!!';
end else
begin image2.show; image1.Hide; image4.Hide;image3.show;
label1.Caption:='Qaytadan harakat qilib ko''ring?!';
end;
 speedbutton1.Enabled:=false;
end;



procedure TForm3.SpeedButton14Click(Sender: TObject);
var s:string;
begin s:=edit1.text;
if pos('-',edit1.Text)=0 then edit1.text:='-'+edit1.text else begin
delete(s,1,1);
edit1.Text:=s;end;
end;

end.
