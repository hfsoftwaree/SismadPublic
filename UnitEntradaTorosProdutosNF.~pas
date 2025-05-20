unit UnitEntradaTorosProdutosNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, SSBaseXP, SSEdit;

type
  TfrmEntradaTorosProdutosNF = class(TForm)
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
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
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
    DBEdit5: TDBEdit;
    SITUACAO: TDBEdit;
    EDITDATA: TEvDBDateEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaTorosProdutosNF: TfrmEntradaTorosProdutosNF;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaTorosNF;

{$R *.dfm}

procedure TfrmEntradaTorosProdutosNF.BitBtn3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmEntradaTorosProdutosNF.BitBtn1Click(Sender: TObject);
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if DBComboBox1.Text='' then
   	begin
         Application.MessageBox('Unidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         DBComboBox1.SetFocus;
    end
    else
begin
	if QUANTIDADE.Text='0,0000' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         QUANTIDADE.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (DBComboBox1.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
        SITUACAO.Text := '0';
        DM.T_discriminacaoNF.Post;
          If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
          mb_YesNo + mb_ICONQUESTION) = idYes then
          begin
          DM.T_discriminacaoNF.Append;
          EDITDATA.Text := frmEntradaTorosNF.data.Text;
          DBEDIT3.Text := frmEntradaTorosNF.DBEDit6.Text;
          DBEDIT4.Text := frmEntradaTorosNF.nota.Text;
          DBEDIT6.Text := frmEntradaTorosNF.FORNECEDOR.Text;
          DBEDIT7.Text := frmEntradaTorosNF.DBEDIT1.Text;
          DBEDIT8.Text := frmEntradaTorosNF.INSCRICAO.Text;
          DBEDIT1.SetFocus;
          end
          else
          begin
          close;
          end;
        end;
        end;
end;

procedure TfrmEntradaTorosProdutosNF.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= QUANTIDADE.Value;
      vn2:= VALUNITARIO.Value;
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
end;

procedure TfrmEntradaTorosProdutosNF.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmEntradaTorosProdutosNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1 : Real;
begin
   DM.T_DiscriminacaoNF.Filtered := False;
   DM.T_DiscriminacaoNF.Close;
   DM.T_DiscriminacaoNF.Filter := 'NFNUMERO = ' + (frmEntradaToros.nota.Text);
   DM.T_DiscriminacaoNF.Filtered := True;
   DM.T_DiscriminacaoNF.Open;

begin
   if DM.T_DiscriminacaoNF.RecordCount <> 0 then
   begin
   frmEntradaTorosNF.DBGrid3.Visible := False;
   frmEntradaTorosNF.DBGrid2.Visible := True;
   frmEntradaTorosNF.BitBtn9.Enabled := True;
   frmEntradaTorosNF.BitBtn10.Enabled := True;
   frmEntradaTorosNF.BitBtn11.Enabled := True;

   total := 0;
   total1 := 0;
   DM.T_DiscriminacaoNF.First;
   while not DM.T_DiscriminacaoNF.Eof do
     begin
        total := DM.T_DiscriminacaoNF['VALTOTAL'] + total ;
        total1 := DM.T_DiscriminacaoNF['QUANTIDADE'] + total1 ;
        DM.T_DiscriminacaoNF.Next;
     end;
    frmEntradaTorosNF.totalproduto.text := FormatCurr('#0.00',total);
    frmEntradaTorosNF.quantidade.text := FormatCurr('#0.000',total1);
   end;
end;
end;

procedure TfrmEntradaTorosProdutosNF.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmEntradaTorosProdutosNF.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmEntradaTorosProdutosNF.FormShow(Sender: TObject);
begin
EDITDATA.Text := frmEntradaTorosNF.data.Text;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end
end;

end.
