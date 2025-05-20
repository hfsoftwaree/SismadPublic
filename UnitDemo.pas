unit UnitDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, EDateEd, jpeg, Grids, DBGrids,
  Gauges, CJVBlinkLabel, DBCtrls;

type
  TfrmDemo = class(TForm)
    Panel1: TPanel;
    Tipo: TRadioGroup;
    Label1: TLabel;
    ESTOQUE: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DataInicial1: TEvDateEdit;
    GroupBox3: TGroupBox;
    DataFinal1: TEvDateEdit;
    DataInicial: TEdit;
    DataFinal: TEdit;
    Image1: TImage;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    QUANTIDADE: TLabel;
    Gauge1: TGauge;
    Label7: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    pecas: TLabel;
    compra: TDBNavigator;
    venda: TDBNavigator;
    Label5: TLabel;
    nota: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure TipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemo: TfrmDemo;

implementation

uses UnitDM, UnitDemoGrafico, UnitDemoGrafico1;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmDemo.BitBtn3Click(Sender: TObject);
var total2, total3, total4, total5, total6 : Real;
var vn, vn1, vn2, vn3, vsoma, vsoma1 : real;
begin
  if DataInicial1.dateText = '00/00/0000' then
  begin
  Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  DataInicial1.SetFocus;
  end
  else
  begin
  if DataFinal1.dateText = '00/00/0000' then
  begin
  Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  DataFinal1.SetFocus;
  end;
  end;

if (DataInicial1.dateText <> '00/00/0000') and (DataFinal1.dateText <> '00/00/0000') then
begin
    if Tipo.ItemIndex = 0 then
    begin
        DataInicial.Text := ConverteData(DataInicial1.DateText);
        DataFinal.Text := ConverteData(DataFinal1.DateText);

        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= '+ QuotedStr(DataFinal.Text);
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        Application.MessageBox('Não há demonstrativo a ser vizualizado com os critérios informados, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
        end
        else
        total2 := 0;
        total3 := 0;
        gauge1.Visible := true;
        gauge1.MaxValue := 0;
        Gauge1.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        Gauge1.Progress:=Gauge1.Progress + 1;
        total2 := DM.TESDISCRIMINACAO['TOTALM3'] + total2;
        total3 := DM.TESDISCRIMINACAO['VALTOTAL'] + total3;
        DM.TESDISCRIMINACAO.Next;
        end;
        QUANTIDADE.Caption := FormatCurr('#0.0000',total2);
        ESTOQUE.Caption := FormatCurr('#0.00',total3);
        pecas.Caption := intTostr(DM.TESDISCRIMINACAO.RecordCount);
        gauge1.Visible := false;
        end
        else
begin
    if Tipo.ItemIndex = 1 then
    begin
        DataInicial.Text := ConverteData(DataInicial1.DateText);
        DataFinal.Text := ConverteData(DataFinal1.DateText);

        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.TSaida_Discriminacao.Filter :='DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= '+ QuotedStr(DataFinal.Text);
        DM.TSaida_Discriminacao.Filtered := True;
        DM.TSaida_Discriminacao.Open;

        if DM.TSaida_Discriminacao.RecordCount = 0 then
        begin
        Application.MessageBox('Não há demonstrativo a ser vizualizado com os critérios informados, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
        end
        else
        total2 := 0;
        total4 := 0;
        gauge1.Visible := true;
        gauge1.MaxValue := 0;
        Gauge1.MaxValue:= DM.TSaida_discriminacao.RecordCount;
        DM.TSaida_discriminacao.First;
        while not DM.TSaida_discriminacao.Eof  do
        begin
        Gauge1.Progress:=Gauge1.Progress + 1;
        total2 := DM.TSaida_discriminacao['TOTALM3'] + total2;
        total4 := DM.TSaida_discriminacao['VALTOTAL'] + total4;
        DM.TSaida_discriminacao.Next;
        end;
        QUANTIDADE.Caption := FormatCurr('#0.0000',total2);
        ESTOQUE.Caption := FormatCurr('#0.00',total4);
        pecas.Caption := intTostr(DM.TSaida_discriminacao.RecordCount);
        gauge1.Visible := false;
        end;

        DM.TSAIDAFECHAMENTO.Filtered := False;
        DM.TSAIDAFECHAMENTO.Close;
        DM.TSAIDAFECHAMENTO.Filter := 'DATA >= ' + QuotedStr(DataInicial.Text) + ' and DATA <= '+ QuotedStr(DataFinal.Text);
        DM.TSAIDAFECHAMENTO.Filtered := True;
        DM.TSAIDAFECHAMENTO.Open;

        total5 := 0;
        DM.TSAIDAFECHAMENTO.First;
        while not DM.TSAIDAFECHAMENTO.Eof  do
        begin
        total5 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'] + total5;
        DM.TSAIDAFECHAMENTO.Next;
        end;
        nota.Caption := FormatCurr('#0.00',total5);
        end;
        end;
end;

procedure TfrmDemo.BitBtn1Click(Sender: TObject);
begin
label5.Visible := false;
nota.Visible := false;
DM.TEntrada_Discriminacao.Filtered := False;
DM.TEntrada_Discriminacao.Close;
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TSAIDAFECHAMENTO.Filtered := False;
        DM.TSAIDAFECHAMENTO.Close;

DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
QUANTIDADE.Caption := '';
pecas.Caption := '';
nota.Caption := '';
close;
end;

procedure TfrmDemo.FormShow(Sender: TObject);
begin
tipo.ItemIndex := 0;
datainicial1.Clear;
datafinal1.Clear;
ESTOQUE.Caption := '';
end;

procedure TfrmDemo.BitBtn2Click(Sender: TObject);
var total2 : Real;
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
    if Tipo.ItemIndex = 0 then
    begin
        DataInicial.Text := ConverteData(DataInicial1.DateText);
        DataFinal.Text := ConverteData(DataFinal1.DateText);

        DM.TEntrada_Discriminacao.Filtered := False;
        DM.TEntrada_Discriminacao.Close;
        DM.TEntrada_Discriminacao.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= '+ QuotedStr(DataFinal.Text);
        DM.TEntrada_Discriminacao.Filtered := True;
        DM.TEntrada_Discriminacao.Open;

        if DM.TEntrada_Discriminacao.RecordCount = 0 then
        begin
        Application.MessageBox('Não há dados para geração do Gráfico com os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        DataInicial1.SetFocus;
        end
        else
        begin
        frmDemoGrafico.DataInicial.Caption := DataInicial1.Text;
        frmDemoGrafico.DataFinal.Caption := DataFinal1.Text;
        frmDemoGrafico.DBCGrafico.Title.Text.Text := '...::: Demonstrativo de Compras :::...';
        frmDemoGrafico.ShowModal;
        end;
        end;

    if Tipo.ItemIndex = 1 then
    begin
        DataInicial.Text := ConverteData(DataInicial1.DateText);
        DataFinal.Text := ConverteData(DataFinal1.DateText);

        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.TSaida_Discriminacao.Filter :='DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= '+ QuotedStr(DataFinal.Text);
        DM.TSaida_Discriminacao.Filtered := True;
        DM.TSaida_Discriminacao.Open;

        if DM.TSaida_Discriminacao.RecordCount = 0 then
        begin
        Application.MessageBox('Não há dados para geração do Gráfico com os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        DataInicial1.SetFocus;
        end
        else
        begin
        frmDemoGrafico1.DataInicial.Caption := DataInicial1.Text;
        frmDemoGrafico1.DataFinal.Caption := DataFinal1.Text;
        frmDemoGrafico1.DBCGrafico.Title.Text.Text := '...::: Demonstrativo de Vendas :::...';
        frmDemoGrafico1.ShowModal;
        end;
        end;
        end;
end;

procedure TfrmDemo.DataInicial1Enter(Sender: TObject);
begin
DataInicial1.Text := DateToStr(now);
end;

procedure TfrmDemo.DataFinal1Enter(Sender: TObject);
begin
DataFinal1.Text := DateToStr(now);
end;

procedure TfrmDemo.TipoClick(Sender: TObject);
begin
if tipo.ItemIndex = 0 then
begin
label5.Visible := false;
nota.Visible := false;
compra.Visible := true;
venda.Visible := false;
dbgrid3.Visible := True;
dbgrid4.Visible := False;
DM.TEntrada_Discriminacao.Filtered := False;
DM.TEntrada_Discriminacao.Close;
DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.Close;
ESTOQUE.Caption := '';
QUANTIDADE.Caption := '';
pecas.Caption := '';
nota.Caption := '';
end
else
begin
if tipo.ItemIndex = 1 then
begin
label5.Visible := true;
nota.Visible := true;
compra.Visible := false;
venda.Visible := true;
dbgrid3.Visible := False;
dbgrid4.Visible := True;
DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
ESTOQUE.Caption := '';
QUANTIDADE.Caption := '';
pecas.Caption := '';
nota.Caption := '';
end
end
end;

end.
