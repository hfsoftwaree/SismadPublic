unit UnitVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin, jpeg, EDateEd, SSBaseXP, EDBCombo, SSEdit;

type
  TfrmVenda = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBGrid3: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    totm3: TLabel;
    nota: TSpinEditXP;
    DBEDIT6: TEdit;
    data: TEvDateEdit;
    Label6: TLabel;
    totprod: TLabel;
    Label10: TLabel;
    totvenda: TLabel;
    fornecedor: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    forma: TLabel;
    desconto: TLabel;
    totnota: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn115Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pesoliquidoExit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure notaExit(Sender: TObject);
    procedure EvDateEdit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaToros, UnitEntradaSerradaProdutos,
  UnitPesquisa3, Unitvendaprodutos, Unitvendafechamento;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmVenda.BitBtn4Click(Sender: TObject);
begin
g.Caption := 'Produtos ';
nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
dbedit6.Text:= '';
totprod.caption:= '';
totm3.caption:= '';
totvenda.caption:= '';
forma.Caption := '';
desconto.Caption := '';
totnota.Caption  := '';

DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;

DM.QFornecedor.Open;
if DM.QFornecedor.RecordCount = 0 then
begin
DM.QFornecedor.Close;
Application.MessageBox('Não há Cliente(s) Cadastrado(s), Verifíque!', 'Entrada', mb_Ok + mb_IconExclamation);
end
else
begin
DM.QFornecedor.Close;
DM.QMunicipio.Open;
frmPesquisa3.ShowModal;
end;
end;

procedure TfrmVenda.BitBtn115Click(Sender: TObject);
begin
frmvendafechamento.show;
end;


procedure TfrmVenda.BitBtn2Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Cancel;
DM.TSaida_Discriminacao.Close;
DM.QFornecedor.Close;
DM.QMunicipio.Close;
g.Caption := 'Produtos ';
BitBtn4.Enabled := True;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
   BitBtn5.Enabled := false;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
totprod.caption:= '';
totm3.caption:= '';
totvenda.caption:= '';
 forma.Caption := '';
    desconto.Caption := '';
    totnota.Caption  := '';

end;

procedure TfrmVenda.BitBtn3Click(Sender: TObject);
begin
g.Caption := 'Produtos ';
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;

DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;
DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
dbedit6.Text:= '';
totprod.caption:= '';
totm3.caption:= '';
totvenda.caption:= '';
forma.Caption := '';
desconto.Caption := '';
totnota.Caption  := '';
Close;
end;



procedure TfrmVenda.FormShow(Sender: TObject);
begin
Self.Tag := 1;
bitbtn4.SetFocus;
end;

procedure TfrmVenda.TabSheet1Show(Sender: TObject);
begin
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
DM.QFornecedor.Close;
end;

procedure TfrmVenda.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmVenda.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmVenda.TabSheet2Show(Sender: TObject);
begin
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
DM.QFornecedor.Open;
DM.QFornecedor.Open;
  with DM.QFornecedor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
      Open;
    end;
end;

procedure TfrmVenda.BitBtn10Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Next;
end;

procedure TfrmVenda.BitBtn11Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Prior;
end;

procedure TfrmVenda.pesoliquidoExit(Sender: TObject);
begin
if fornecedor.Text = '' then
   	begin
      exit;
    end
    else
if nota.text = '000000' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
    end;

if (fornecedor.Text <> '') and (nota.text <> '000000') then
begin
If Application.MessageBox('Deseja Inserir Produtos Agora?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.QProduto.Open;
DM.TESDISCRIMINACAO.Open;
DM.TESDISCRIMINACAO.Append;
frmEntradaSerradaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmEntradaSerradaProdutos.DBEDIT4.Text := nota.Text;
frmEntradaSerradaProdutos.DBEDIT6.Text := fornecedor.Text;
frmEntradaSerradaProdutos.Show;
frmEntradaSerradaProdutos.DBEDIT1.SetFocus;
end
else

end;
end;

procedure TfrmVenda.BitBtn12Click(Sender: TObject);
begin
if fornecedor.Text = '' then
   	begin
      Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
      frmPesquisa3.ShowModal;
    end
    else
begin
if nota.text = '0' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
      end;
    end;

if (fornecedor.Text <> '') and (nota.text <> '0') then
begin
DM.QProduto.Open;
DM.TSaida_Discriminacao.Open;
DM.TSaida_Discriminacao.Append;
frmVendaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmVendaProdutos.DBEDIT4.Text := nota.Text;
frmVendaProdutos.Showmodal;
//frmVendaProdutos.PLAQUETA.SetFocus;
end
else
nota.SetFocus;
end;

procedure TfrmVenda.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;



procedure TfrmVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;



procedure TfrmVenda.notaExit(Sender: TObject);
var total, total1, total2 : Real;
var format, format1 : Real;
begin
if dbedit6.Text = '' then bitbtn4.Click;

   DM.TSAIDAFECHAMENTO.close;
   DM.TSAIDAFECHAMENTO.Filtered := False;
   DM.TSAIDAFECHAMENTO.Close;
   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + (frmvenda.nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;

begin
   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
   begin
   format := 0;
   format1 := 0;
   format := DM.TSAIDAFECHAMENTO['DESCONTO'];
   format1 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
   desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
   totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   desconto.caption := FormatCurr('#0.00 %',format);
   totnota.caption := FormatCurr('#0.00',format1);
   end
   else
   begin
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
   end;

   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

begin
   if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   DBGrid3.Visible := False;
   DBGrid2.Visible := True;
   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   BitBtn1.Enabled := True;
   BitBtn5.Enabled := True;

   total := 0;
   total1 := 0;
   total2 :=0;

   DM.TSaida_Discriminacao.First;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        total := DM.TSaida_Discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_Discriminacao['QUANTIDADE'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
        DM.TSaida_Discriminacao.Next;
     end;
    totm3.caption := FormatCurr('#0.0000',total);
    totprod.caption := FormatCurr('#0',total1);
    totvenda.caption := FormatCurr('#0.00',total2);
    g.Caption := 'Produtos > ' + (totprod.caption);
    If Application.MessageBox('Já possui lançamento para o numero de Nota Fiscal informado, do Fornecedor selecionado, Deseja Continuar?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        exit;
        end
        else
        begin
        nota.Text := '0';
        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        nota.SetFocus;
        end
     end
end;
    g.Caption := 'Produtos > ' + (totprod.caption);
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := false;
    BitBtn5.Enabled := false;
    totprod.Caption := '';
    totm3.Caption := '';
    totvenda.Caption := '';
end;
end;

procedure TfrmVenda.EvDateEdit1Enter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;



procedure TfrmVenda.BitBtn1Click(Sender: TObject);
var total, total1, total2 : Real;
begin
if DM.TSaida_Discriminacao.RecordCount = 1 then
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'PLAQUETA = ' + QuotedStr(DBEDIT1.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.TESDISCRIMINACAO.Edit;
   DM.TESDISCRIMINACAO['SITUACAO'] := '0';
   DM.TESDISCRIMINACAO.Post;
   DM.TESDISCRIMINACAO.Close;

   DM.TSAIDAFECHAMENTO.Delete;
   DM.TSaida_Discriminacao.Delete;

   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   g.Caption := 'Produtos > ' + intTostr(DM.TSaida_Discriminacao.RecordCount);
   totprod.caption:= '';
   totm3.caption:= '';
   totvenda.caption:= '';
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn1.Enabled := false;
   end
end
else
begin
if DM.TSaida_Discriminacao.RecordCount <> 1 then
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'PLAQUETA = ' + QuotedStr(DBEDIT1.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.TESDISCRIMINACAO.Edit;
   DM.TESDISCRIMINACAO['SITUACAO']:= '0';
   DM.TESDISCRIMINACAO.Post;
   DM.TESDISCRIMINACAO.Close;

   DM.TSaida_Discriminacao.Delete;
   total := 0;
   total1 := 0;
   total2 := 0;

   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   DM.TSaida_Discriminacao.Prior;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        total := DM.TSaida_Discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_Discriminacao['QUANTIDADE'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
        DM.TSaida_Discriminacao.Next;
     end;
    totm3.caption := FormatCurr('#0.0000',total);
    totprod.caption := FormatCurr('#0',total1);
    totvenda.caption := FormatCurr('#0.00',total2);
    g.Caption := 'Produtos > ' + intTostr(DM.TSaida_Discriminacao.RecordCount);
      Application.MessageBox('Fechamento da venda devera ser realizado novamente!', 'Lançamento', mb_Ok + mb_IconInformation);
      frmVendaFechamento.show;
end;
end;
end;
end;

procedure TfrmVenda.BitBtn5Click(Sender: TObject);
begin
frmvendafechamento.show;
end;



end.
