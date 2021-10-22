unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, Buttons, StdCtrls, XPMan, Menus;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    sSkinManager1: TsSkinManager;
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Yordam1: TMenuItem;
    Aftor1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Aftor1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
sskinmanager1.SkinName:=sskinmanager1.InternalSkins.Items[2].Name;
combobox1.ItemIndex:=0;combobox2.ItemIndex:=4;
combobox3.ItemIndex:=30;combobox4.ItemIndex:=0;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form1.Hide;form2.show;form2.timer2.enabled:=true;
form2.FormCreate(sender);
sskinmanager1.SkinName:=sskinmanager1.InternalSkins.Items[1].Name;
end;

procedure TForm1.Aftor1Click(Sender: TObject);
begin
aboutbox.show;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
form1.Close;
end;

end.
