unit Unitvendafechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  ENumEd, ToolEdit, CurrEdit, SSBaseXP, SSEdit, DB, IBCustomDataSet,
  IBQuery, EDBDate;

type
  TfrmVendaFechamento = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    DESCONTO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    DBEdit3: TDBEdit;
    Panel13: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    QTDEPROD: TEvDBNumEdit;
    QTDEM3: TEvDBNumEdit;
    VALPRODUTOS: TEvDBNumEdit;
    NOTA: TDBEdit;
    DATA: TDBEdit;
    FORMA: TDBComboBox;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    intparcelas: TDBComboBox;
    Panel5: TPanel;
    parcelas: TDBComboBox;
    parc1: TEvDBDateEdit;
    parc2: TEvDBDateEdit;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DESCONTOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FORMAChange(Sender: TObject);
    procedure parcelasExit(Sender: TObject);
    procedure intparcelasExit(Sender: TObject);
    procedure FORMAEnter(Sender: TObject);
    procedure parcelasEnter(Sender: TObject);
    procedure intparcelasEnter(Sender: TObject);
    procedure FORMAExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaFechamento: TfrmVendaFechamento;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitVenda;

{$R *.dfm}


procedure TfrmVendaFechamento.BitBtn1Click(Sender: TObject);
var vn1, vn2, vsoma, vsoma1 : Real;
begin
	if FORMA.Text='' then
   	begin
         Application.MessageBox('Forma de Pagamento deve ser informada, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
         FORMA.SetFocus;
    end;

if (FORMA.Text <> '') then
begin
If Application.MessageBox('Confirma fechamento da venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  if FORMA.Text = 'À Vista' then
  begin
  if desconto.Text = '0,00' then
  begin
         Application.MessageBox('Desconto deve ser informado, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
         desconto.SetFocus;
         end;

  if (desconto.Text <> '0,00') then
  begin
	if desconto.Text >'5,00' then
   	begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Saída de Madeiras', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);

      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      parcelas.Items.Text := '';
      intparcelas.Items.Text  := '';
      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
      frmvenda.bitbtn3.SetFocus;
    end;
    end;
    end;
    end;
  end;

    if FORMA.Text = 'À Prazo' then
  begin
      VALTOTAL.Text := VALPRODUTOS.Text;
      desconto.Text := '0';
      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      parcelas.Items.Text := '';
      intparcelas.Items.Text  := '';
      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
      frmvenda.bitbtn3.SetFocus;
  end;
end;

procedure TfrmVendaFechamento.DESCONTOExit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TfrmVendaFechamento.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmVendaFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
var format, format1 : Real;
begin
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

    frmvenda.forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
    frmvenda.desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
    frmvenda.totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   end;
   frmvenda.desconto.caption := FormatCurr('#0.00 %',format);
   frmvenda.totnota.caption := FormatCurr('#0.00',format1);
   frmvenda.BitBtn4.Enabled := true;
end;
end;

procedure TfrmVendaFechamento.FormShow(Sender: TObject);
begin
   DM.TSAIDAFECHAMENTO.close;
   DM.TSAIDAFECHAMENTO.Filtered := False;
   DM.TSAIDAFECHAMENTO.Close;
   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + (frmvenda.nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;
   DM.TSAIDAFECHAMENTO.edit;

DBEDIT3.Text := frmvenda.dbedit6.Text;
nota.Text := frmvenda.nota.Text;
data.Text := frmvenda.data.Text;
qtdeprod.Text := frmvenda.totprod.caption;
qtdem3.Text := frmvenda.totm3.caption;
valprodutos.Text := frmvenda.totvenda.caption;
parcelas.Items.Text := '';
intparcelas.Items.Text  := '';
end;




procedure TfrmVendaFechamento.FORMAChange(Sender: TObject);
begin
IF FORMA.Text = 'À Prazo' then
begin
desconto.Text := '0,00';
desconto.Enabled := false;
exit;
end
else
begin
IF FORMA.Text = 'À Vista' then
begin
desconto.Enabled := true;
end;
end;
end;

procedure TfrmVendaFechamento.parcelasExit(Sender: TObject);
begin
intparcelas.Enabled := true;
end;

procedure TfrmVendaFechamento.intparcelasExit(Sender: TObject);
begin
bitbtn1.Click; 
end;

procedure TfrmVendaFechamento.FORMAEnter(Sender: TObject);
begin
FORMA.DroppedDown; 
end;

procedure TfrmVendaFechamento.parcelasEnter(Sender: TObject);
begin
parcelas.DroppedDown; 
end;

procedure TfrmVendaFechamento.intparcelasEnter(Sender: TObject);
begin
intparcelas.DroppedDown; 
end;

procedure TfrmVendaFechamento.FORMAExit(Sender: TObject);
begin
IF FORMA.Text = 'À Prazo' then
begin
desconto.Text := '0,00';
desconto.Enabled := false;
exit;
end
else
begin
IF FORMA.Text = 'À Vista' then
begin
desconto.Enabled := true;
end
end;

end;

end.
