unit UnitUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, EDBNum, DBCtrls, Buttons, Grids,
  DBGrids, DB, IBCustomDataSet, IBTable, SSBaseXP, jpeg;

type
  TfrmUsuario = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    ESSENCIA: TEdit;
    DBEdit1: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    S: TDBEdit;
    C: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIAChange(Sender: TObject);
    procedure TINICIALExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

uses UnitDM;

{$R *.dfm}

procedure TfrmUsuario.BitBtn3Click(Sender: TObject);
begin
c.Clear; 
ESSENCIA.Clear;
DM.TLOGIN.Cancel;
DM.TLOGIN.Close;
Close;
end;

procedure TfrmUsuario.BitBtn1Click(Sender: TObject);
var total:Real;
begin
if dbedit1.Text = '' then
begin
Application.MessageBox('Usuário deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
dbedit1.SetFocus;
end
else
begin
if s.Text = '' then
begin
Application.MessageBox('Senha deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
s.SetFocus;
end
else
begin
if c.Text = '' then
begin
Application.MessageBox('Confirmação de Senha deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
c.SetFocus;
end
end
end;

if (dbedit1.Text <> '') and (s.Text <> '') and (c.Text <> '') then
begin
if (c.Text <> s.Text) then
begin
Application.MessageBox('Confirmação de Senha diferente da senha, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
s.Clear;
s.SetFocus;
c.Clear;
end
else
begin
If Application.MessageBox('Confirma Manutenção de Usuário?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TLOGIN.Post;
DM.TLOGIN.Refresh;
ESSENCIA.Clear;
c.Clear;
end
end
end
end;

procedure TfrmUsuario.FormShow(Sender: TObject);
var total : Real;
begin
ESSENCIA.SetFocus;
DM.TLOGIN.Close;
DM.TLOGIN.Open;
DM.TLOGIN.IndexFieldNames := ('USUARIO');
DM.TLOGIN.Refresh;
DM.TLOGIN.Edit;
end;

procedure TfrmUsuario.ESSENCIAChange(Sender: TObject);
begin
DM.TLOGIN.Locate('USUARIO',ESSENCIA.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmUsuario.TINICIALExit(Sender: TObject);
begin
bitbtn1.Click;
end;


procedure TfrmUsuario.BitBtn4Click(Sender: TObject);
begin
DBEDIT1.SetFocus; 
DM.TLOGIN.Append;
end;

procedure TfrmUsuario.BitBtn2Click(Sender: TObject);
begin
DM.TLOGIN.Cancel; 
end;

procedure TfrmUsuario.BitBtn5Click(Sender: TObject);
begin
if DM.TLOGIN.RecordCount = 1 then
begin
Application.MessageBox('É necessário pelo menos um usuário cadastrado!', 'Informação', mb_Ok + mb_IconExclamation);
essencia.SetFocus;
end
else
begin
If Application.MessageBox('Confirma Exclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TLOGIN.Delete;
dm.TLOGIN.Refresh;
end
end
end;

end.
