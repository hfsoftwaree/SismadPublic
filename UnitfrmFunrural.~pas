unit UnitfrmFunrural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids;

type
  TfrmFunRural = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    datainicial: TEvDateEdit;
    Label5: TLabel;
    datainicial1: TEdit;
    Image1: TImage;
    DBGrid1: TDBGrid;
    essencia: TEdit;
    BitBtn4: TBitBtn;
    FORNECEDOR: TEdit;
    Label2: TLabel;
    DataFinal: TEvDateEdit;
    DataFinal1: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Bevel3: TBevel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure datainicialEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure DataFinalEnter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunRural: TfrmFunRural;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, UnitPesquisaEntrada;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmFunRural.BitBtn3Click(Sender: TObject);
var total, total2 : Real;
begin
   if datainicial.DateText = '00/00/0000' then
      Begin
          Application.MessageBox('Período Inicial deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          datainicial.SetFocus;
          end
          else
      Begin
   if dataFinal.DateText = '00/00/0000' then
      Begin
          Application.MessageBox('Período Final deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          datafinal.SetFocus;
          end
      end;

if (Datainicial.DateText <> '00/00/0000') and (DataFinal.DateText <> '00/00/0000') then
begin
   if (Datainicial.DateText <> '00/00/0000') and (Datafinal.DateText <> '00/00/0000') and (essencia.Text = '') then
   begin
        Datainicial1.Text := ConverteData(Datainicial.DateText);
        Datafinal1.Text := ConverteData(Datafinal.DateText);
        DM.TENTRADA.Filtered := False;
        DM.TENTRADA.Close;
        DM.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(datainicial1.Text)+ ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal1.Text);
        DM.TENTRADA.Filtered := True;
        DM.TENTRADA.Open;

        if DM.TENTRADA.RecordCount = 0 then
        begin
        ESTOQUE.Caption := '0,00';
        end
        else
        total2 := 0;
        DM.TENTRADA.First;
        while not DM.TENTRADA.Eof  do
        begin
        total2 := DM.TENTRADA['VALOR_FUNRURAL'] + total2;
        DM.TENTRADA.Next;
        ESTOQUE.Caption := FormatCurr('#0.00',total2);
        end;
        end;

   if (Datainicial.DateText <> '00/00/0000') and (Datafinal.DateText <> '00/00/0000') and (essencia.Text <> '') then
   begin
        Datainicial1.Text := ConverteData(Datainicial.DateText);
        Datafinal1.Text := ConverteData(Datafinal.DateText);

        DM.TENTRADA.Filtered := False;
        DM.TENTRADA.Close;
        DM.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(datainicial1.Text)+ ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal1.Text) + ' and CODIGOFORNECEDOR = ' + QuotedStr(essencia.Text);
        DM.TENTRADA.Filtered := True;
        DM.TENTRADA.Open;

        if DM.TENTRADA.RecordCount = 0 then
        begin
        ESTOQUE.Caption := '0,00';
        end
        else
        total := 0;
        DM.TENTRADA.First;
        while not DM.TENTRADA.Eof  do
        begin
        total := DM.TENTRADA['VALOR_FUNRURAL'] + total;
        DM.TENTRADA.Next;
        ESTOQUE.Caption := FormatCurr('#0.00',total);
        end;
        end;
end;
end;

procedure TfrmFunRural.BitBtn1Click(Sender: TObject);
begin
DM.TENTRADA.Filtered := False;
DM.TENTRADA.Close;
ESTOQUE.Caption := '';
essencia.Clear;
fornecedor.Clear;
Close;
end;

procedure TfrmFunRural.FormShow(Sender: TObject);
begin
SELF.Tag := 1;
datainicial.Clear;
datafinal.Clear;
essencia.Clear;
fornecedor.Clear;
datainicial.SetFocus;
end;

procedure TfrmFunRural.datainicialEnter(Sender: TObject);
begin
Datainicial.Text := DateToStr(now);
end;

procedure TfrmFunRural.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
SELF.Tag := 0;
end;

procedure TfrmFunRural.BitBtn4Click(Sender: TObject);
begin
frmPesquisa.ShowModal;
end;

procedure TfrmFunRural.DataFinalEnter(Sender: TObject);
begin
Datafinal.Text := DateToStr(now);
end;

procedure TfrmFunRural.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
begin
bitbtn4.Enabled := True;
end
else
begin
if CheckBox1.Checked = false then
begin
essencia.Enabled := false;
bitbtn4.Enabled := false;
fornecedor.Enabled := false;
essencia.Clear;
fornecedor.Clear;
end
end
end;


end.
