unit UnitSobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, CJVLinkLabel, Registry, jpeg, CJVScrollLabel;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CJVLinkLabel1: TCJVLinkLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    label13: TCJVScrollLabel;
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
  procedure ValidarBasedeDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation
type
{ Declara um tipo registro }
TFicha = record
Nome: string[40];
Nome1: string[100];
end;

{$R *.dfm}

procedure TfrmSobre.FormShow(Sender: TObject);
begin
MessageBeep(0);
end;


Procedure TfrmSobre.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoDados',chave);
    Label13.Caption := (Chave);
end;

procedure TfrmSobre.Image2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSobre.FormCreate(Sender: TObject);
var
Reg: TRegistry;
Ficha: TFicha;
begin
//ValidarBasedeDados1;
Reg := TRegistry.Create;
try
{ Define a chave-raiz do registro }
Reg.RootKey := HKEY_CURRENT_USER;
{ Se existir a chave (path)... }
if Reg.KeyExists('Software\HF Softwares\Sismad') then
begin
{ Abre a chave (path) }
Reg.OpenKey('Software\HF Softwares\Sismad', false);
{ Se existir o valor... }
if Reg.ValueExists('banco') then
begin
{ Lê os dados }
Reg.ReadBinaryData('banco', Ficha, SizeOf(Ficha));
label13.CaptionScroll := Ficha.Nome + ':' + Ficha.Nome1 + '                                                             ';
end else
end else
finally
Reg.Free;
END;
end;

procedure TfrmSobre.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSobre.FormClick(Sender: TObject);
begin
Close;
end;

end.

