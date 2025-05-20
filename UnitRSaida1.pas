unit UnitRSaida1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmRSaida1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    FORNECEDOR: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    nota1: TSpinEditXP;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit8: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRSaida1: TfrmRSaida1;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepSaida1,
  UnitPesquisa3;


{$R *.dfm}

procedure TfrmRSaida1.BitBtn5Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepSaida1.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'PLAQUETA';
RepSaida1.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
RepSaida1.QuickRep1.Print;
end;
end;
end;
end;
end;
end;

procedure TfrmRSaida1.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmRSaida1.BitBtn4Click(Sender: TObject);
begin
frmPesquisa3.ShowModal;
end;

procedure TfrmRSaida1.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRSaida1.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRSaida1.BitBtn6Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepSaida1.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'PLAQUETA';
RepSaida1.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
RepSaida1.QuickRep1.Preview;
end;
end;
end;
end;
end;
end;

procedure TfrmRSaida1.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
nota1.Text := '0';
Close;
end;

procedure TfrmRSaida1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Tag := 0;
end;

end.
