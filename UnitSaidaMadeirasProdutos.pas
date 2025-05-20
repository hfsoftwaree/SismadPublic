unit UnitSaidaMadeirasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  ENumEd, ToolEdit, CurrEdit, SSBaseXP, SSEdit, DB, IBCustomDataSet,
  IBQuery, EDBDate;

type
  TfrmSaidaMadeirasProdutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    CODIGO: TEvDBZeroEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEDIT1: TEvDBZeroEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    ESSENCIATIPO: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Panel14: TPanel;
    SALDO: TEditCurrencyXP;
    PRODUCAO: TEvDBNumEdit;
    EDITDATA: TEvDBDateEdit;
    SAIDA: TEvDBNumEdit;
    TSAIDA: TEditCurrencyXP;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    ESERRADA: TEvDBNumEdit;
    DBEdit9: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    COMPRIMENTO: TEvDBNumEdit;
    LARGURA: TEvDBNumEdit;
    EXPESSURA: TEvDBNumEdit;
    TOTALM3: TEvDBNumEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAExit(Sender: TObject);
    procedure ESSENCIATIPOEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure ESSENCIATIPOClick(Sender: TObject);
    procedure EXPESSURAExit(Sender: TObject);
    procedure QUANTIDADEEnter(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaidaMadeirasProdutos: TfrmSaidaMadeirasProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras;

{$R *.dfm}


procedure TfrmSaidaMadeirasProdutos.BitBtn3Click(Sender: TObject);
begin
DM.TSaida_Discriminacao1.Filtered := False;
DM.TSaida_Discriminacao1.Close;
DM.QProduto.Close;
SALDO.Value := 0;
TSAIDA.Value := 0;
Self.Close;
end;

procedure TfrmSaidaMadeirasProdutos.BitBtn1Click(Sender: TObject);
var vn1, vn2, vsoma : Real;
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Ess�ncia deve ser informada!', 'Lan�amento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Ess�ncia Tipo deve ser informada!', 'Lan�amento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if DBComboBox1.Text='' then
   	begin
         Application.MessageBox('Unidade deve ser informada!', 'Lan�amento', mb_Ok + mb_IconInformation);
         DBComboBox1.SetFocus;
    end
    else
begin
	if QUANTIDADE.Text='0,0000' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lan�amento', mb_Ok + mb_IconInformation);
         QUANTIDADE.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text = '0,00' then
   	begin
         Application.MessageBox('Valor Unit�rio deve ser informado!', 'Lan�amento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end
    else
begin
	if TOTALM3.Value > SALDO.Value then
   	begin
         Application.MessageBox('Total M/3, maior que saldo disponivel, Verifique!', 'Lan�amento', mb_Ok + mb_IconInformation);
         QUANTIDADE.SetFocus;
    end;
    end;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (DBComboBox1.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00') and (TOTALM3.Value <= SALDO.Value)then
begin
If Application.MessageBox('Confirma Lan�amento?', 'Confirma��o',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TSaida_discriminacao.Post;
    If Application.MessageBox('Insere Outro Produto para este Vendedor?', 'Confirma��o',
    mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_discriminacao.Append;
        SALDO.Value := 0;
        TSAIDA.Value := 0;
        EDITDATA.Text := frmSaidaMadeiras.data.Text;
        DBEDIT3.Text := frmSaidaMadeiras.DBEDit6.Text;
        DBEDIT4.Text := frmSaidaMadeiras.nota.Text;
        DBEDIT6.Text := frmSaidaMadeiras.FORNECEDOR.Text;
        DBEDIT8.Text := frmSaidaMadeiras.INSCRICAO.Text;
        DBEDIT1.SetFocus;
        end
        else
        begin
        SALDO.Value := 0;
        TSAIDA.Value := 0;
        DM.TSaida_Discriminacao1.Filtered := False;
        DM.TSaida_Discriminacao1.Close;
        Close;
        end
end
end
else
//DBEDIT1.SetFocus
end;

procedure TfrmSaidaMadeirasProdutos.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (TOTALM3.Value);
      vn2:= (VALUNITARIO.Value);
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
//      StrToFloat
end;

procedure TfrmSaidaMadeirasProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmSaidaMadeirasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1 : Real;
begin
   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + (frmSaidaMadeiras.nota.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

begin
   if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   frmSaidaMadeiras.DBGrid3.Visible := False;
   frmSaidaMadeiras.DBGrid2.Visible := True;
   frmSaidaMadeiras.BitBtn9.Enabled := True;
   frmSaidaMadeiras.BitBtn10.Enabled := True;
   frmSaidaMadeiras.BitBtn11.Enabled := True;

   total := 0;
   total1 := 0;
   DM.TSaida_discriminacao.First;
   while not DM.TSaida_discriminacao.Eof do
     begin
        total := DM.TSaida_discriminacao['VALTOTAL'] + total ;
        total1 := DM.TSaida_discriminacao['TOTALM3'] + total1 ;
        DM.TSaida_discriminacao.Next;
     end;
    frmSaidaMadeiras.totalproduto.text := FormatCurr('#0.00',total);
    frmSaidaMadeiras.quantidade.text := FormatCurr('#0.000',total1);
    frmSaidaMadeiras.totalnota.SetFocus;
   end;
end;
end;

procedure TfrmSaidaMadeirasProdutos.ESSENCIAClick(Sender: TObject);
begin
        DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmSaidaMadeirasProdutos.ESSENCIAExit(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
end;

procedure TfrmSaidaMadeirasProdutos.ESSENCIATIPOEnter(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
end;

procedure TfrmSaidaMadeirasProdutos.FormShow(Sender: TObject);
begin
EDITDATA.Text := frmSaidaMadeiras.data.Text;
with DM.QESSENCIA do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO Order by NOMEGRAU');
               Open;
    end;
end;

procedure TfrmSaidaMadeirasProdutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmSaidaMadeirasProdutos.ESSENCIATIPOClick(Sender: TObject);
var total, total1, total2 : Real;
var vn1, vn2, vn3, vn4, vsoma : Real;
begin
        DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];

        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text) + 'and CODIGOPRODUTO = ' + (DBEdit9.Text);
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        ESERRADA.Text := '0,0000';
        end
        else
        total1 := 0;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        total1 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total1;
        DM.TESDISCRIMINACAO.Next;
        ESERRADA.Text := FloatToStr(total1);
        end;


        DM.TSaida_Discriminacao1.Filtered := False;
        DM.TSaida_Discriminacao1.Close;
        DM.TSaida_Discriminacao1.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text) + 'and CODIGOPRODUTO = ' + (DBEdit9.Text);
        DM.TSaida_Discriminacao1.Filtered := True;
        DM.TSaida_Discriminacao1.Open;

        if DM.TSaida_Discriminacao1.RecordCount = 0 then
        begin
        TSAIDA.Value := 0;
        end
        else
        total2 := 0;
        DM.TSaida_Discriminacao1.First;
        while not DM.TSaida_Discriminacao1.Eof  do
        begin
        total2 := DM.TSaida_Discriminacao1['TOTALM3'] + total2;
        DM.TSaida_Discriminacao1.Next;
        TSAIDA.Value := (total2);
        end;

//        vn1:=0;
        vn2:=0;
        vn3:=0;
        vn4:=0;
        vsoma:=0;
//        vn1:= EINICIAL.Value;
        vn2:= ESERRADA.Value;
        vn3:= PRODUCAO.Value;
        vn4:= TSAIDA.Value;
        vsoma := vn2+vn3-vn4;
        SALDO.Value := vsoma;

end;

procedure TfrmSaidaMadeirasProdutos.EXPESSURAExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma: Real;
begin
if DBCOMBOBOX1.Text = 'M/2' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= StrToFloat(QUANTIDADE.Text);
      vn2:= StrToFloat(COMPRIMENTO.Text);
      vn3:= StrToFloat(LARGURA.Text);
      vsoma := vn1 * vn2 * vn3;
      TOTALM3.Text := FloatToStr(vsoma);
      end
      else
begin
if DBCOMBOBOX1.Text = 'M/3' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= StrToFloat(QUANTIDADE.Text);
      vn2:= StrToFloat(COMPRIMENTO.Text);
      vn3:= StrToFloat(LARGURA.Text);
      vn4:= StrToFloat(EXPESSURA.Text);
      vsoma := vn1 * vn2 * vn3 * vn4;
      TOTALM3.Text := FloatToStr(vsoma);
      end;
end;
end;

procedure TfrmSaidaMadeirasProdutos.QUANTIDADEEnter(Sender: TObject);
begin
QUANTIDADE.Text := '1';
end;

procedure TfrmSaidaMadeirasProdutos.DBComboBox1Change(Sender: TObject);
begin
if DBCOMBOBOX1.Text = 'M/2' then
begin
      TOTALM3.Decimals := 2;
      SALDO.DecimalPlaces := 2;
      SALDO.DisplayFormat := '0.00;-0.00';
      Panel18.Caption := 'Total M/2';
      end
      else
begin
if DBCOMBOBOX1.Text = 'M/3' then
begin
      TOTALM3.Decimals := 4;
      SALDO.DecimalPlaces := 4;
      SALDO.DisplayFormat := '0.0000;-0.0000';
      Panel18.Caption := 'Total M/3';
      end;
      end;
end;

end.
