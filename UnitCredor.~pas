unit UnitCredor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ;

type
  TfrmCredor = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit1: TMaskEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBComboBox1: TDBComboBox;
    Panel13: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel11: TPanel;
    Panel16: TPanel;
    MaskEdit4: TMaskEdit;
    EvCheckCNPJ1: TEvCheckCNPJ;
    EvCheckCPF1: TEvCheckCPF;
    Panel5: TPanel;
    MaskEdit5: TMaskEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel17: TPanel;
    DBComboBox3: TDBComboBox;
    ImageList1: TImageList;
    DBEDIT11: TDBLookupComboBox;
    UF: TDBEdit;
    DBEdit3: TDBEdit;
    Panel18: TPanel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    DBEdit12: TDBEdit;
    MaskEdit2: TMaskEdit;
    Panel19: TPanel;
    DBEdit10: TDBEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure MaskEdit20Change(Sender: TObject);
    procedure DBEdit12Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure DBComboBox3Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure DBEDIT11Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure UFEnter(Sender: TObject);
    procedure MaskEdit20Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCredor: TfrmCredor;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure TfrmCredor.BitBtn4Click(Sender: TObject);
begin
BitBtn4.Enabled := False;
PageControl1.ActivePage := TabSheet1;
BitBtn5.Enabled := False;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
DBComboBox3.SetFocus;
DM.TCredor.Append;
end;

procedure TfrmCredor.BitBtn5Click(Sender: TObject);
begin
DM.TCredor.Open;
if DM.TCredor.RecordCount = 0 then
begin
DM.TCredor.Close;
Application.MessageBox('Não hà Clientes para serem Excluídos!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.TCredor.Open;
if DM.TCredor.RecordCount <> 0 then
begin
If Application.MessageBox('Confirma Exclusão deste Cliente?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TCredor.Delete;
DM.TCredor.Refresh;
end;
end;
end;

procedure TfrmCredor.BitBtn1Click(Sender: TObject);
begin
	if DBComboBox3.Text='' then
   	begin
         Application.MessageBox('Tipo de Cliente deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBComboBox3.SetFocus;
    end
    else
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Razão Social/Nome deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit2.SetFocus;
    end
    else
begin
	if DBEdit5.Text='' then
   	begin
         Application.MessageBox('Endereço deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit5.SetFocus;
    end
    else
begin
	if DBEdit8.Text='' then
   	begin
         Application.MessageBox('Bairro deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit8.SetFocus;
    end
    else
begin
	if DBEdit11.Text='' then
   	begin
         Application.MessageBox('Cidade deve ser informada!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit11.SetFocus;
    end
    else
begin
	if MaskEdit1.Text='' then
   	begin
         Application.MessageBox('CEP deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         MaskEdit1.SetFocus;
    end
    end;
    end;
    end;
    end;
    end;

if (DBComboBox3.Text <> '') and (DBEDIT2.Text <> '') and (DBEdit5.Text <> '')and (DBEdit8.Text <> '')and (DBEdit11.Text <> '')and (MaskEdit1.Text <> '') then
begin
if MaskEdit5.Text = '' then DBEdit7.Text := '00000000000';
if DBEdit3.Text = '' then DBEdit3.Text := '00000000000000';
begin
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    if MaskEdit4.Text = '' then DBEdit6.Text := '00000000000000';
    DM.TCredor.Post;
    DM.TCredor.Refresh;
    If Application.MessageBox('Continua Cadastramento?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
    begin
    DM.TCredor.Append;
    DBComboBox3.SetFocus;
    BitBtn4.Enabled := False;
    BitBtn5.Enabled := False;
    BitBtn6.Enabled := False;
    BitBtn3.Enabled := False;
    end
    else
    begin
    BitBtn4.Enabled := True;
    BitBtn5.Enabled := True;
    BitBtn6.Enabled := True;
    BitBtn3.Enabled := True;
    end;
  except
    Application.MessageBox('Cliente já Cadastrado, Verifique!', 'Cliente', mb_Ok + mb_IconExclamation);
  end;
    DBComboBox3.SetFocus;
  end;
  end;
end;
end;

procedure TfrmCredor.BitBtn2Click(Sender: TObject);
begin
DM.TCredor.Cancel;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
BitBtn3.Enabled := True;
DBComboBox3.SetFocus;
end;
 
procedure TfrmCredor.BitBtn3Click(Sender: TObject);
begin
ComboBox1.ItemIndex := 0;
DM.TCredor.Close;
DM.QMunicipio.Close;
Close;
end;

procedure TfrmCredor.Edit1Change(Sender: TObject);
begin
DM.TCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmCredor.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Label1.Caption := 'Cadastro de Clientes';
DM.TCredor.Close;
DM.TCredor.Open;
DM.TCredor.IndexName := ('IND_CREDOR');
DBComboBox3.SetFocus;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DM.QMunicipio.Open;
with DM.QMunicipio do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Municipio Order by NOM_MUNIC');
               Open;
    end
end;

procedure TfrmCredor.BitBtn7Click(Sender: TObject);
begin
ComboBox1.ItemIndex := 0;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';
Label1.Caption := 'Cadastro de Clientes';
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBComboBox3.SetFocus;
end;

procedure TfrmCredor.BitBtn6Click(Sender: TObject);
begin
if DM.TCredor.RecordCount = 0 then
begin
Application.MessageBox('Não hà Clientes cadastrados para execução deste menu!', 'Pesquisa', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end
else
begin
ComboBox1.ItemIndex := 0;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';
DM.TCredor.Last;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: ' + intTostr(DM.TCredor.RecordCount);
DM.TCredor.First;
Label1.Caption := 'Pesquisa de Clientes';
PageControl1.ActivePage := TabSheet2;
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;

end;
end;

procedure TfrmCredor.MaskEdit1Change(Sender: TObject);
begin
DBEdit9.Text := MaskEdit1.Text; 
end;

procedure TfrmCredor.DBEdit9Change(Sender: TObject);
begin
MaskEdit1.Text := DBEdit9.Text; 
end;

procedure TfrmCredor.MaskEdit20Change(Sender: TObject);
begin
DBEdit12.Text := MaskEdit2.Text;
end;

procedure TfrmCredor.DBEdit12Change(Sender: TObject);
begin
MaskEdit2.Text := DBEdit12.Text; 
end;

procedure TfrmCredor.DBEdit13Change(Sender: TObject);
begin
MaskEdit3.Text := DBEdit13.Text;
end;

procedure TfrmCredor.MaskEdit3Change(Sender: TObject);
begin
DBEdit13.Text := MaskEdit3.Text;
end;

procedure TfrmCredor.TabSheet1Show(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Clientes';
DBComboBox3.SetFocus;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
end;

procedure TfrmCredor.MaskEdit4Change(Sender: TObject);
begin
DBEdit6.Text := MaskEdit4.Text; 
end;

procedure TfrmCredor.MaskEdit5Change(Sender: TObject);
begin
DBEdit7.Text := MaskEdit5.Text;
end;

procedure TfrmCredor.DBEdit6Change(Sender: TObject);
begin
MaskEdit4.Text := DBEdit6.Text; 
end;

procedure TfrmCredor.DBEdit7Change(Sender: TObject);
begin
MaskEdit5.Text := DBEdit7.Text;
end;

procedure TfrmCredor.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmCredor.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;



procedure TfrmCredor.DBComboBox3Exit(Sender: TObject);
begin
if DBComboBox3.Text = '2-PESSOA JURÍDICA' then
begin
MaskEdit4.Enabled := True;
DBEdit3.Enabled := True;
MaskEdit5.Clear;
MaskEdit5.Enabled := False;
DBEdit7.Text := '00000000000';
end
else
begin
if DBComboBox3.Text = '1-PESSOA FÍSICA' then
begin
MaskEdit5.Enabled := True;
MaskEdit4.Clear;
MaskEdit4.Enabled := False;
DBEdit3.Enabled := False;
DBEDIT3.Text := '00000000000000';
DBEdit6.Text := '00000000000000';
end;
end;
end;

procedure TfrmCredor.TabSheet2Show(Sender: TObject);
begin
DM.TCredor.Last;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: ' + intTostr(DM.TCredor.RecordCount);
DM.TCredor.First;
Edit1.SetFocus;
BitBtn7.Visible := True;
BitBtn6.Visible := False;
end;



procedure TfrmCredor.TabSheet2Enter(Sender: TObject);
begin
Label1.Caption := 'Pesquisa de Clientes';
ComboBox1.ItemIndex := 0;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';
end;

procedure TfrmCredor.TabSheet1Enter(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Clientes';
ComboBox1.ItemIndex := 0;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';
end;

procedure TfrmCredor.DBEDIT11Enter(Sender: TObject);
begin
DBEDIT11.DropDown; 
end;

procedure TfrmCredor.Button1Click(Sender: TObject);
begin
Panel18.Caption := 'Cliente(s) Cadastrado(s).: ' + intTostr(DM.TCredor.RecordCount);
end;

procedure TfrmCredor.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
DM.TCredor.IndexFieldNames := 'NOMECREDOR';
end;

begin
if ComboBox1.ItemIndex = 1 then
begin
DM.TCredor.IndexFieldNames := 'CIDADE';
end;
end;
end;

procedure TfrmCredor.UFEnter(Sender: TObject);
begin
uf.EditText := DM.QMunicipio['SIG_UF'];
end;

procedure TfrmCredor.MaskEdit20Exit(Sender: TObject);
begin
//IF DBEDIT12.Text = '' THEN
//DBEDIT12.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit3Exit(Sender: TObject);
begin
IF DBEDIT13.Text = '' THEN
DBEDIT13.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit2Change(Sender: TObject);
begin
DBEdit12.Text := MaskEdit2.Text;
end;

procedure TfrmCredor.MaskEdit2Exit(Sender: TObject);
begin
IF DBEDIT12.Text = '' THEN
DBEDIT12.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit1Exit(Sender: TObject);
begin
IF DBEDIT9.Text = '' THEN
DBEDIT9.Text :='00000000';
end;

procedure TfrmCredor.DBEdit10Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

end.
