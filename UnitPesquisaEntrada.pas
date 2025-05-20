unit UnitPesquisaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmPesquisa = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure s(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaToros, UnitREntrada1,
  UnitfrmFunrural, UnitEntradaSerrada, UnitREntrada3, UnitRRomaneioToros,
  UnitEntradaTorosNF, Unitromaneiotoro;



{$R *.dfm}

procedure TfrmPesquisa.BitBtn2Click(Sender: TObject);
begin
if frmEntradaSerrada.Tag = 1 then
begin
      frmEntradaSerrada.nota.Text := '0';
      DM.QFornecedor.Close;
      Close;
      end
      else
begin
if frmREntrada1.Tag = 1 then
begin
      frmrEntrada1.nota1.Text := '0';
      DM.QFornecedor.Close;
      Close;
      end
      else
begin
begin
if frmREntrada3.Tag = 1 then
begin
      frmREntrada3.nota1.Text := '0';
      DM.QFornecedor.Close;
      Close;
end;
end;
end;
end;
end;

procedure TfrmPesquisa.Edit1Change(Sender: TObject);
begin
DM.QFornecedor.Locate('NOMEFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa.s(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QFornecedor.Open;
Edit1.SetFocus;
Edit1.Clear;
Panel2.Caption := '' + intTostr(DM.QFornecedor.RecordCount);
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
               Open;
    end
end;

procedure TfrmPesquisa.BitBtn1Click(Sender: TObject);
begin
if frmEntradaSerrada.Tag = 1 then
begin
      frmEntradaSerrada.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmEntradaSerrada.DBEdit6.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmEntradaSerrada.nota.SetFocus;
      end
      else
begin
if frmREntrada1.Tag = 1 then
begin
      frmrEntrada1.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmrEntrada1.EDIT1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmrEntrada1.nota1.SetFocus;
      end
      else
begin
if frmREntrada3.Tag = 1 then
begin
      frmREntrada3.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmREntrada3.EDIT1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmREntrada3.nota1.SetFocus;
end;
end;
end;
end;

procedure TfrmPesquisa.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
    with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by CODIGOFORNECEDOR');
               Open;
               end;
               end;

begin
if ComboBox1.ItemIndex = 1 then
    begin
    with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
               Open;
               end;
               end;
end;
end;

procedure TfrmPesquisa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;

end.
