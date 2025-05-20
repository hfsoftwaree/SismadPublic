unit Unitsubprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum;

type
  Tfrmsubprodutos = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel17: TPanel;
    ImageList1: TImageList;
    Button1: TButton;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsubprodutos: Tfrmsubprodutos;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure Tfrmsubprodutos.BitBtn4Click(Sender: TObject);
begin
BitBtn4.Enabled := False;
PageControl1.ActivePage := TabSheet1;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
DM.TSUBProdutos.Append;
DBEdit2.SetFocus;
end;

procedure Tfrmsubprodutos.BitBtn1Click(Sender: TObject);
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Sub-Produto deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit2.SetFocus;
    end;

if (DBEdit2.Text <> '')  then
begin
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    DM.TSUBProdutoS.Post;
    DM.TSUBProdutoS.Refresh;
    If Application.MessageBox('Continua Cadastramento?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then DM.TSUBProdutoS.Append
  except
    Application.MessageBox('Produto já Cadastrado!', 'Município', mb_Ok + mb_IconExclamation);
  end;
  DBEdit2.SetFocus;
  BitBtn4.Enabled := True;
  BitBtn6.Enabled := True;
  BitBtn3.Enabled := True;
  end
  else
  DBEdit2.SetFocus;
  end
end;

procedure Tfrmsubprodutos.BitBtn2Click(Sender: TObject);
begin
DM.TSUBProdutos.Cancel;
BitBtn4.Enabled := True;
BitBtn6.Enabled := True;
BitBtn3.Enabled := True;
DBEdit2.SetFocus;
end;

procedure Tfrmsubprodutos.BitBtn3Click(Sender: TObject);
begin
DM.TsubProdutos.Close;
Close;
end;

procedure Tfrmsubprodutos.Edit1Change(Sender: TObject);
begin
DM.TSUBProdutoS.Locate('NOMEGRAU',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure Tfrmsubprodutos.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Label1.Caption := 'Cadastro de Produto(s)';
DM.TsubProdutos.Close;
DM.TsubProdutos.Open;
DM.TsubProdutos.IndexName := ('SUBPRODUTO');
end;

procedure Tfrmsubprodutos.BitBtn7Click(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Sub-Produto(s)';
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;

procedure Tfrmsubprodutos.BitBtn6Click(Sender: TObject);
begin
if DM.TsubProdutos.RecordCount = 0 then
begin
Application.MessageBox('Não hà Produto cadastrados para pesquisa!', 'Pesquisa', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end
else
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Sub-Produto(s)';
PageControl1.ActivePage := TabSheet2;
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;
end;

procedure Tfrmsubprodutos.TabSheet1Show(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Sub-Produto(s)';
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;


procedure Tfrmsubprodutos.DBEdit11Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure Tfrmsubprodutos.TabSheet2Show(Sender: TObject);
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Sub-Produto(s)';
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;




procedure Tfrmsubprodutos.DBEdit2Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure Tfrmsubprodutos.Button1Click(Sender: TObject);
begin
DM.TSUBPRODUTOS.Delete ;
end;

end.
