unit UnitRSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmRSaida = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DataInicial1: TEvDateEdit;
    DataFinal1: TEvDateEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    DataInicial: TEdit;
    DataFinal: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRSaida: TfrmRSaida;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRSaida.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure TfrmRSaida.BitBtn2Click(Sender: TObject);
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  RepSaida.TENTRADA.Filtered:=False;
  RepSaida.TENTRADA.Close;
  RepSaida.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(DataInicial.Text) + ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal.Text);
  RepSaida.TENTRADA.Filtered:=True;
  RepSaida.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepSaida.TENTRADA.RecordCount = 0 then
begin
RepSaida.TENTRADA.Filtered:=False;
RepSaida.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'NF_NUMERO';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'DATA_EMISSAO';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'RAZAO_SOCIAL';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Preview;
end;
end;
end;
end;
end;
end;

procedure TfrmRSaida.BitBtn1Click(Sender: TObject);
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  RepSaida.TENTRADA.Filtered:=False;
  RepSaida.TENTRADA.Close;
  RepSaida.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(DataInicial.Text) + ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal.Text);
  RepSaida.TENTRADA.Filtered:=True;
  RepSaida.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepSaida.TENTRADA.RecordCount = 0 then
begin
RepSaida.TENTRADA.Filtered:=False;
RepSaida.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'NF_NUMERO';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'DATA_EMISSAO';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepSaida.TENTRADA.IndexFieldNames := 'RAZAO_SOCIAL';
RepSaida.PI.Caption := DataInicial1.text;
RepSaida.PF.Caption := DataFinal1.text;
RepSaida.QuickRep1.Print;
end;
end;
end;
end;
end;
end;


procedure TfrmRSaida.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
end;

procedure TfrmRSaida.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmRSaida.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

end.
