unit UnitEntradaTorosNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin;

type
  TfrmEntradaTorosNF = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    nota: TEvDBZeroEdit;
    Label4: TLabel;
    data: TEvDBDateEdit;
    Label3: TLabel;
    saida: TEvDBDateEdit;
    Label33: TLabel;
    maskedit1: TMaskEdit;
    Label34: TLabel;
    hora: TDBEdit;
    GroupBox3: TGroupBox;
    transportador: TDBEdit;
    Label10: TLabel;
    frete: TDBComboBox;
    Label11: TLabel;
    placa: TDBEdit;
    Label12: TLabel;
    placauf: TDBComboBox;
    Label13: TLabel;
    cnpjcpf: TDBEdit;
    Label14: TLabel;
    endereco: TDBEdit;
    Label20: TLabel;
    municipio: TDBLookupComboBox;
    Label21: TLabel;
    uf: TDBEdit;
    Label22: TLabel;
    ie: TDBEdit;
    Label23: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    numero: TEvDBZeroEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    pesoliquido: TEvDBNumEdit;
    especie: TDBEdit;
    marca: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    totalproduto: TEvDBNumEdit;
    Label32: TLabel;
    bcicms: TEvDBNumEdit;
    Label26: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    valicms: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    EvDBNumEdit11: TEvDBNumEdit;
    totalnota: TEvDBNumEdit;
    bcfunrural: TEvDBNumEdit;
    valfunrural: TEvDBNumEdit;
    Label45: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    aliqicms: TEvDBNumEdit;
    aliqfunrural: TEvDBNumEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel1: TBevel;
    quantidade: TEvDBNumEdit;
    Label35: TLabel;
    Label25: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Label31: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEDIT6: TEvDBZeroEdit;
    fornecedor1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    nota1: TSpinEditXP;
    BitBtn13: TBitBtn;
    fornecedor: TDBEdit;
    Label7: TLabel;
    inscricao: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure quantidadeExit(Sender: TObject);
    procedure municipioExit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure horaChange(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pesoliquidoExit(Sender: TObject);
    procedure aliqicmsExit(Sender: TObject);
    procedure aliqfunruralExit(Sender: TObject);
    procedure EvDBNumEdit10Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure nota1Change(Sender: TObject);
    procedure maskedit1Exit(Sender: TObject);
    procedure maskedit1Change(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure saidaEnter(Sender: TObject);
    procedure totalnotaEnter(Sender: TObject);
    procedure bcfunruralEnter(Sender: TObject);
    procedure notaEnter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaTorosNF: TfrmEntradaTorosNF;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaTorosProdutosNF;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmEntradaTorosNF.BitBtn4Click(Sender: TObject);
begin
DM.QFornecedor.Open;
if DM.QFornecedor.RecordCount = 0 then
begin
DM.QFornecedor.Close;
Application.MessageBox('Não há Fornecedor(es) Cadastrado(s), Verifíque!', 'Entrada', mb_Ok + mb_IconExclamation);
end
else
begin
DM.QFornecedor.Close;
DM.T_EntradaNF.Open;
DM.T_EntradaNF.Append;
DM.QMunicipio.Open;
frmPesquisa.ShowModal;
end;
end;

procedure TfrmEntradaTorosNF.BitBtn5Click(Sender: TObject);
begin
DM.Q_EntradaNF.Open;
if DM.Q_EntradaNF.RecordCount = 0 then
begin
DM.Q_EntradaNF.Close;
Application.MessageBox('Não há Lançamento(s) para ser(em) Excluido(s)!', 'Exclusão', mb_Ok + mb_IconInformation);
end
else
begin
BitBtn7.Visible := True;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Visible := False;
DM.QFornecedor.Open;
  with DM.QFornecedor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
      Open;
PageControl1.ActivePage := TabSheet2;
fornecedor1.SetFocus;
    end;
end
end;

procedure TfrmEntradaTorosNF.BitBtn1Click(Sender: TObject);
begin
	if fornecedor.Text='' then
   	begin
         Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         fornecedor.SetFocus;
    end
    else
begin
	if nota.Text='000000' then
   	begin
         Application.MessageBox('Numero da Nota Fiscal deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         nota.SetFocus;
    end
    else
begin
	if data.EditText = '' then
   	begin
         Application.MessageBox('Data de Emissão deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         data.SetFocus;
    end
    else
begin
	if saida.EditText = '' then
   	begin
         Application.MessageBox('Data da Saida deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         saida.SetFocus;
    end
    else
begin
	if transportador.Text='' then
   	begin
         Application.MessageBox('Transportador deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         transportador.SetFocus;
    end
    else
begin
	if totalproduto.Text='' then
   	begin
         Application.MessageBox('Valor Total dos Produtos deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         totalproduto.SetFocus;
    end
    else
begin
	if totalnota.Text='' then
   	begin
         Application.MessageBox('Valor Total da Nota deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         totalnota.SetFocus;
    end;
    end;
    end;
    end;
    end;
    end;
    end;

if (fornecedor.Text <> '')and (nota.Text <> '') and (data.Text <> '') and (saida.Text <> '')and (transportador.Text <> '')and (totalproduto.Text <> '')and (totalnota.Text <> '') then
begin
If Application.MessageBox('Confirma a Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      DM.T_EntradaNF.Post;
      If Application.MessageBox('Continua Lançamento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      bitbtn9.Enabled := false;
      bitbtn10.Enabled := false;
      bitbtn11.Enabled := false;
      bitbtn12.Enabled := false;
      DM.T_EntradaNF.Append;
      DBGrid2.Visible := False;
      DBGrid3.Visible := True;
      DM.T_discriminacaoNF.Close;
      frmPesquisa.ShowModal;
      end
      else
      begin
      DM.T_EntradaNF.Close;
      DM.T_discriminacaoNF.Close;
      DM.QFornecedor.Close;
      DM.QEssencia.Close;
      DM.QMunicipio.Close;
      BitBtn4.Enabled := True;
      BitBtn5.Enabled := True;
      BitBtn6.Enabled := True;
      Close;
      end;
      end;
nota.SetFocus;
end;
end;

procedure TfrmEntradaTorosNF.BitBtn2Click(Sender: TObject);
begin
if DM.T_DiscriminacaoNF.RecordCount <> 0 then
begin
Application.MessageBox('Para cancelamento deste lançamento, exclua primeiro o(s) produto(s) informado(s)!', 'Lançamento', mb_Ok + mb_IconError);
bitbtn9.SetFocus;
end
else
begin
DM.T_EntradaNF.Cancel;
DM.T_EntradaNF.Close;
DM.T_discriminacaoNF.Cancel;
DM.T_discriminacaoNF.Close;
DM.QFornecedor.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
BitBtn12.Enabled := false;
BitBtn9.Enabled := false;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
Transportador.SetFocus;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
end;
end;

procedure TfrmEntradaTorosNF.BitBtn3Click(Sender: TObject);
begin
nota1.Clear;
DM.T_EntradaNF.Close;
DM.T_discriminacaoNF.Close;
DM.T_EntradaNF1.Close;
DM.T_discriminacaoNF1.Close;
DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
Close;
end;

procedure TfrmEntradaTorosNF.FormShow(Sender: TObject);
begin
Self.Tag := 1;
DM.T_EntradaNF.Close;
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
transportador.SetFocus;
end;

procedure TfrmEntradaTorosNF.BitBtn7Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn13.Visible := False;
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Visible := True;
DM.QFornecedor.Close;
DM.T_EntradaNF1.Close;
DM.T_DiscriminacaoNF1.Close;
transportador.SetFocus;
end;

procedure TfrmEntradaTorosNF.TabSheet1Show(Sender: TObject);
begin
BitBtn7.Visible := False;
BitBtn13.Visible := False;
BitBtn6.Visible := True;
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
DM.QFornecedor.Close;
DM.T_EntradaNF1.Close;
DM.T_DiscriminacaoNF1.Close;
transportador.SetFocus;
end;

procedure TfrmEntradaTorosNF.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaTorosNF.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaTorosNF.DBEdit4Exit(Sender: TObject);
begin
bitbtn1.Click; 
end;

procedure TfrmEntradaTorosNF.TabSheet2Show(Sender: TObject);
begin
nota1.Clear;
BitBtn6.Visible := False;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn7.Visible := True;
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

procedure TfrmEntradaTorosNF.quantidadeExit(Sender: TObject);
begin
if length (quantidade.Text) < 7 then
exit
else
Application.MessageBox('Quantidade inválida, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
quantidade.SetFocus;
quantidade.Clear;
end;


procedure TfrmEntradaTorosNF.municipioExit(Sender: TObject);
begin
if municipio.Text = '' then
begin
uf.Text := '';
end
else
begin
uf.Text := DM.QMunicipio['SIG_UF'];
end;
end;

procedure TfrmEntradaTorosNF.BitBtn8Click(Sender: TObject);
begin
if fornecedor1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
fornecedor1.SetFocus;
end;

if (fornecedor1.Text <> '') then
begin
   if (fornecedor1.text <> '') and (nota1.Text <> '') then
   begin
   DM.T_EntradaNF1.Filtered := False;
   DM.T_EntradaNF1.Close;
   DM.T_EntradaNF1.Filter := 'RAZAO_SOCIAL = ' + QuotedStr(fornecedor1.Text) + ' and NF_NUMERO = ' + QuotedStr(nota1.Text);
   DM.T_EntradaNF1.Filtered := True;
   DM.T_EntradaNF1.Open;
   DM.T_EntradaNF1.IndexFieldNames := ('NF_NUMERO');

   BitBtn13.Visible := True;
      if DM.T_EntradaNF1.RecordCount = 0 then
      begin
      DM.T_EntradaNF1.Close;
      DM.T_DiscriminacaoNF1.Close;
      Application.MessageBox('Não há Nota Fiscal para vizualizar com os critérios informados!', 'Informação', mb_Ok + mb_IconError);
      fornecedor1.SetFocus;
      BitBtn13.Visible := False;
      end
      else
      begin
   DM.T_DiscriminacaoNF1.Filtered := False;
   DM.T_DiscriminacaoNF1.Close;
   DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(nota1.Text);
   DM.T_DiscriminacaoNF1.Filtered := True;
   DM.T_DiscriminacaoNF1.Open;
   end
   end;
   end;

   if (fornecedor1.text <> '') and (nota1.Text = '') then
   begin
   DM.T_EntradaNF1.Filtered := False;
   DM.T_EntradaNF1.Close;
   DM.T_EntradaNF1.Filter := 'RAZAO_SOCIAL = ' + QuotedStr(fornecedor1.Text);
   DM.T_EntradaNF1.Filtered := True;
   DM.T_EntradaNF1.Open;
   DM.T_EntradaNF1.IndexFieldNames := ('NF_NUMERO');

   BitBtn13.Visible := True;
      if DM.T_EntradaNF1.RecordCount = 0 then
      begin
      DM.T_EntradaNF1.Close;
      DM.T_DiscriminacaoNF1.Close;
      Application.MessageBox('Não há Nota Fiscal para vizualizar com os critérios informados!', 'Informação', mb_Ok + mb_IconError);
      fornecedor1.SetFocus;
      BitBtn13.Visible := False;
      end
      else
      begin
   DM.T_DiscriminacaoNF1.Filtered := False;
   DM.T_DiscriminacaoNF1.Close;
   DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.T_DiscriminacaoNF1.Filtered := True;
   DM.T_DiscriminacaoNF1.Open;
   end
   end;
end;


procedure TfrmEntradaTorosNF.BitBtn9Click(Sender: TObject);
var total, total1 : Real;
begin
If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.T_discriminacaoNF.Delete;
   total := 0;
   total1 := 0;

   DM.T_discriminacaoNF.Filtered := False;
   DM.T_discriminacaoNF.Close;
   DM.T_discriminacaoNF.Filter := 'NFNUMERO = ' + (nota.Text);
   DM.T_discriminacaoNF.Filtered := True;
   DM.T_discriminacaoNF.Open;

   DM.T_discriminacaoNF.Prior;
   while not DM.T_discriminacaoNF.Eof do
     begin
        total := DM.T_discriminacaoNF['VALTOTAL'] + total ;
        total1 := DM.T_discriminacaoNF['QUANTIDADE'] + total1 ;
        DM.T_discriminacaoNF.Next;
     end;
    frmEntradaTorosNF.totalproduto.text := FormatCurr('#0.00',total);
    frmEntradaTorosNF.quantidade.text := FormatCurr('#0.000',total1);
end
else
fornecedor1.SetFocus;
end;

procedure TfrmEntradaTorosNF.horaChange(Sender: TObject);
begin
MASKEDIT1.Text := hora.Text;
end;

procedure TfrmEntradaTorosNF.BitBtn10Click(Sender: TObject);
begin
DM.T_discriminacaoNF.Next;
end;

procedure TfrmEntradaTorosNF.BitBtn11Click(Sender: TObject);
begin
DM.T_discriminacaoNF.Prior;
end;

procedure TfrmEntradaTorosNF.pesoliquidoExit(Sender: TObject);
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
DM.T_discriminacaoNF.Open;
DM.T_discriminacaoNF.Append;
frmEntradaTorosProdutosNF.DBEDIT3.Text := DBEDit6.Text;
frmEntradaTorosProdutosNF.DBEDIT4.Text := nota.Text;
frmEntradaTorosProdutosNF.DBEDIT6.Text := fornecedor.Text;
frmEntradaTorosProdutosNF.DBEDIT7.Text := DBEDIT1.Text;
frmEntradaTorosProdutosNF.DBEDIT8.Text := inscricao.Text;
frmEntradaTorosProdutosNF.Show;
frmEntradaTorosProdutosNF.DBEDIT1.SetFocus;
end
else
totalnota.SetFocus;
end;
end;




procedure TfrmEntradaTorosNF.aliqicmsExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= bcicms.Value;
      vn2:= aliqicms.Value;
      vsoma := vn1 * vn2/100;
      valicms.Text := FloatToStr(vsoma);

end;

procedure TfrmEntradaTorosNF.aliqfunruralExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= bcfunrural.Value;
      vn2:= aliqfunrural.Value;
      vsoma := vn1 * vn2/100;
      valfunrural.Text := FloatToStr(vsoma);

end;

procedure TfrmEntradaTorosNF.EvDBNumEdit10Exit(Sender: TObject);
begin
DM.T_discriminacaoNF.Filtered := False;
DM.T_discriminacaoNF.Filter := 'NFNUMERO = ' + (nota.Text);
DM.T_discriminacaoNF.Filtered := True;

if DM.T_discriminacaoNF.RecordCount = 0 then
begin
Application.MessageBox('Deve-se informar pelo menos 01(um) produto para esta Nota Fiscal!', 'Informação', mb_Ok + mb_IconError);
end
else
BITBTN1.Click;
end;

procedure TfrmEntradaTorosNF.BitBtn6Click(Sender: TObject);
begin
DM.Q_EntradaNF.Open;
if DM.Q_EntradaNF.RecordCount = 0 then
begin
DM.Q_EntradaNF.Close;
Application.MessageBox('Não há Lançamento(s) para ser(em) pesquisado(s)!', 'Pesquisa', mb_Ok + mb_IconInformation);
end
else
begin
BitBtn7.Visible := True;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Visible := False;
DM.QFornecedor.Open;
  with DM.QFornecedor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
      Open;
PageControl1.ActivePage := TabSheet2;
fornecedor1.SetFocus;
    end;
end
end;

procedure TfrmEntradaTorosNF.nota1Exit(Sender: TObject);
begin
bitbtn8.setfocus;
end;

procedure TfrmEntradaTorosNF.DBGrid1Exit(Sender: TObject);
begin
fornecedor1.SetFocus;
end;

procedure TfrmEntradaTorosNF.nota1Change(Sender: TObject);
begin
if Length (nota1.Text) > 6 then
begin
Application.MessageBox('Quantidade de digitos informados excedeu o permitindo, Verifique!', 'Informação', mb_Ok + mb_IconError);
nota1.SetFocus;
nota1.Clear;
end;
end;

procedure TfrmEntradaTorosNF.maskedit1Exit(Sender: TObject);
begin
if MaskEdit1.Text = '' then
begin
exit;
end;

if Length (hora.Text) < 4 then
begin
Application.MessageBox('Hora Informada Inválida, Verifique!', 'Informação', mb_Ok + mb_IconError);
MaskEdit1.SetFocus;
MaskEdit1.Clear;
end
else
exit;
end;

procedure TfrmEntradaTorosNF.maskedit1Change(Sender: TObject);
begin
hora.Text := MASKEDIT1.Text;
end;

procedure TfrmEntradaTorosNF.BitBtn12Click(Sender: TObject);
begin
DM.QProduto.Open;
DM.T_discriminacaoNF.Open;
DM.T_discriminacaoNF.Append;
frmEntradaTorosProdutosNF.DBEDIT3.Text := DBEDit6.Text;
frmEntradaTorosProdutosNF.DBEDIT4.Text := nota.Text;
frmEntradaTorosProdutosNF.DBEDIT6.Text := fornecedor.Text;
frmEntradaTorosProdutosNF.DBEDIT7.Text := DBEDIT1.Text;
frmEntradaTorosProdutosNF.DBEDIT8.Text := inscricao.Text;
frmEntradaTorosProdutosNF.Show;
frmEntradaTorosProdutosNF.DBEDIT1.SetFocus;
end;

procedure TfrmEntradaTorosNF.BitBtn13Click(Sender: TObject);
begin
if DM.T_EntradaNF1.RecordCount = 0 then
begin
Application.MessageBox('Não há Lançamento(s) para ser(em) excluído(s)!', 'Pesquisa', mb_Ok + mb_IconError);
bitbtn3.SetFocus;
end
else
begin
If Application.MessageBox('Confirma Exclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    tbDBDeleteAll(DM.T_DiscriminacaoNF1);
    DM.T_EntradaNF1.Delete;
    DM.T_EntradaNF1.Refresh;
    if DM.T_discriminacaoNF1.RecordCount <> 0 then
    begin
    DM.T_DiscriminacaoNF1.Filtered := False;
    DM.T_DiscriminacaoNF1.Close;
    DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
    DM.T_DiscriminacaoNF1.Filtered := True;
    DM.T_DiscriminacaoNF1.Open;
    end
    else
    begin
DBGrid1.SetFocus;
end;
end;
end;
end;


procedure TfrmEntradaTorosNF.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;

procedure TfrmEntradaTorosNF.saidaEnter(Sender: TObject);
begin
saida.Text := DATA.Text;
end;

procedure TfrmEntradaTorosNF.totalnotaEnter(Sender: TObject);
begin
totalnota.Text := totalproduto.Text;
end;

procedure TfrmEntradaTorosNF.bcfunruralEnter(Sender: TObject);
begin
bcfunrural.Text := totalproduto.Text;
end;

procedure TfrmEntradaTorosNF.notaEnter(Sender: TObject);
begin
if fornecedor.Text = '' then
begin
BitBtn12.Enabled := False;
BitBtn9.Enabled := False;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;
end
else
begin
BitBtn12.Enabled := True;
end;
end;



procedure TfrmEntradaTorosNF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   DM.T_DiscriminacaoNF1.Filtered := False;
   DM.T_DiscriminacaoNF1.Close;
   DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.T_DiscriminacaoNF1.Filtered := True;
   DM.T_DiscriminacaoNF1.Open;
end;

procedure TfrmEntradaTorosNF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   DM.T_DiscriminacaoNF1.Filtered := False;
   DM.T_DiscriminacaoNF1.Close;
   DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.T_DiscriminacaoNF1.Filtered := True;
   DM.T_DiscriminacaoNF1.Open;
end;

procedure TfrmEntradaTorosNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmEntradaTorosNF.DBGrid1CellClick(Column: TColumn);
begin
   DM.T_DiscriminacaoNF1.Filtered := False;
   DM.T_DiscriminacaoNF1.Close;
   DM.T_DiscriminacaoNF1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.T_DiscriminacaoNF1.Filtered := True;
   DM.T_DiscriminacaoNF1.Open;
end;

end.
