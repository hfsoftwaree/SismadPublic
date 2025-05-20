unit UnitConsultaESerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, EDateEd, Grids, DBGrids;

type
  TfrmConsultaESerrada = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Tipo: TRadioGroup;
    Edit1: TEdit;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    produto: TDBLookupComboBox;
    Gauge2: TGauge;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    pecas: TLabel;
    procedure TipoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure produtoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaESerrada: TfrmConsultaESerrada;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}
procedure TfrmConsultaESerrada.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Produto.Enabled := True;
            Essencia.Enabled := True;
        end;
     1: Begin
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Produto.Enabled := True;
            Essencia.Enabled := False;
        end;
     2: Begin
            DM.TsubProdutos.Close;
            DM.TEssencia.close;
            Produto.Enabled := False;
            Essencia.Enabled := False;
        end;
   end
end;

procedure TfrmConsultaESerrada.BitBtn3Click(Sender: TObject);
var total, total1, total2, total3  : Real;
begin
   if Tipo.ItemIndex = -1 then
      Begin
          Application.MessageBox('Tipo de Consulta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
      end;

if (Tipo.ItemIndex <> -1) then
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end
      else
      begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text)+ 'and SITUACAO = ' + '0';
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        PECAS.Caption := '0';
        ESTOQUE.Caption := '0,0000';
        end
        else
        total3 := 0;
        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESDISCRIMINACAO['TOTALM3'] + total3;
        DM.TESDISCRIMINACAO.Next;
        end;
        ESTOQUE.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := intTostr(DM.TESDISCRIMINACAO.RecordCount);
        gauge2.Visible := false;
        end;
        end;

      1: Begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text)+ 'and SITUACAO = ' + '0';
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        PECAS.Caption := '0';
        estoque.Caption := '0,0000';
        end
        else
        total3 := 0;
        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESDISCRIMINACAO['TOTALM3'] + total3;
        DM.TESDISCRIMINACAO.Next;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := intTostr(DM.TESDISCRIMINACAO.RecordCount);
        gauge2.Visible := false;
        end;
        end;

     2: Begin
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'SITUACAO = ' + '0';
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        PECAS.Caption := '0';
        estoque.Caption := '0,0000';
        end
        else
        begin
        total3 := 0;
        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESDISCRIMINACAO['TOTALM3'] + total3;
        DM.TESDISCRIMINACAO.Next;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := intTostr(DM.TESDISCRIMINACAO.RecordCount);
        gauge2.Visible := false;
        end;
     end;
end;
end;
end;

procedure TfrmConsultaESerrada.BitBtn1Click(Sender: TObject);
begin
DM.QEssencia.Close;
DM.TEssencia.Cancel;
DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;
DM.TSaida_Discriminacao.Close;
DM.TESDISCRIMINACAO.Close;
Tipo.ItemIndex := -1;
ESTOQUE.Caption := '';
PECAS.Caption := '';
produto.Enabled := false;
produto.ListFieldIndex := 0;
essencia.ListFieldIndex := 0;
Edit1.Clear;
Edit2.Clear;
Close;
end;





procedure TfrmConsultaESerrada.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmConsultaESerrada.produtoClick(Sender: TObject);
begin
EDIT2.Text := DM.TProduto['GRAUIND'];
end;

procedure TfrmConsultaESerrada.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmConsultaESerrada.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaESerrada.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;

end.
