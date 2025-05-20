unit Unitskin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl, Mask, ToolEdit, WinSkinData, Registry,
  ExtCtrls;

type
  TfrmSkin = class(TForm)
    ListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    DriveComboBox1: TDriveComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  procedure  CapturarPatch(FCaption, FolderName: string);
  procedure  CapturarPatch1(FCaption, FolderName: string);
  procedure ValidarBasedeDados;
  procedure ValidarBasedeDados1;
  public
    { Public declarations }
  end;

var
  frmSkin: TfrmSkin;

implementation

uses UnitPrincipal;



{$R *.dfm}

procedure TfrmSkin.CapturarPatch(FCaption, FolderName: string);
var
  NameBuffer: array[0..MAX_PATH] of Char;
  WindowList: Pointer;
  IniFile: TRegIniFile;
  Result: boolean;
begin
  // Função lógica que recebe dois parâmetros um para o rótulo da caixa de seleção de
  // diretório presente na unit ShlObj declarada acima e o outro por referência retorna
  // uma String com o diretório novo e a escreve na chave correspondente no Registro,
  // mas apenas se selecionar OK na caixa de seleção de diretório.

    FolderName := (Directorylistbox1.Directory) + '\Skin';
    try
      IniFile:=TRegIniFile.Create('Software\HF Softwares');
      IniFile.WriteString('Sismad','CaminhoSkin',FolderName);
//      ValidarBasedeDados;
    finally
      IniFile.Free;
    end;
end;

procedure TfrmSkin.CapturarPatch1(FCaption, FolderName: string);
var
  NameBuffer: array[0..MAX_PATH] of Char;
  WindowList: Pointer;
  IniFile: TRegIniFile;
  Result: boolean;
begin
  // Função lógica que recebe dois parâmetros um para o rótulo da caixa de seleção de
  // diretório presente na unit ShlObj declarada acima e o outro por referência retorna
  // uma String com o diretório novo e a escreve na chave correspondente no Registro,
  // mas apenas se selecionar OK na caixa de seleção de diretório.

    FolderName := ListBox1.FileName;
    try
      IniFile:=TRegIniFile.Create('Software\HF Softwares');
      IniFile.WriteString('Sismad','CaminhoSkin1',FolderName);
//      ValidarBasedeDados;
    finally
      IniFile.Free;
    end;
end;

Procedure TfrmSkin.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Sismad','CaminhoSkin',chave);
    Directorylistbox1.Directory := (Chave);
end;

Procedure TfrmSkin.ValidarBasedeDados1;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Sismad','CaminhoSkin1',chave);
    ListBox1.FileName := (Chave);
end;

procedure TfrmSkin.BitBtn1Click(Sender: TObject);
var Patch: String;
begin
CapturarPatch('',Patch);
CapturarPatch1('',Patch);
Close;
end;

procedure TfrmSkin.ListBox11Click(Sender: TObject);
var
  i : integer;
  CaminhoDasSkins, ss : string;
begin
  i := ListBox1.ItemIndex;
//  ss := Copy(CaminhoDasSkins,1,Pos('*.skn',CaminhoDasSkins)-2)+'\'+ListBox1.items.strings[i];
  Frmprincipal.SKIN.SkinFile := listbox1.FileName;
//  if not Form1.SKIN.Active Then Form1.SKIN.Active := True;
end;

procedure TfrmSkin.FormShow(Sender: TObject);
begin
listbox1.SetFocus;
end;

procedure TfrmSkin.FormCreate(Sender: TObject);
var Patch: String;
begin
directorylistbox1.Directory := (directorylistbox1.Directory) + '\Skin';
//CapturarPatch('',Patch);
//CapturarPatch1('',Patch);
//ValidarBasedeDados;
ValidarBasedeDados1;
end;



end.
