unit UnitConsultaProduto1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, Grids, DBGrids;

type
  TfrmConsultaProduto1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    quantidade: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    Label5: TLabel;
    pecas: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    produto: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    comp: TComboBox;
    larg: TComboBox;
    exp: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Gauge2: TGauge;
    DBNavigator1: TDBNavigator;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure produtoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto1: TfrmConsultaProduto1;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}



procedure TfrmConsultaProduto1.BitBtn3Click(Sender: TObject);
var total, total2 : Real;
begin
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
      else
      begin
    If comp.Text = '' then
      Begin
          Application.MessageBox('Comprimento deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          comp.SetFocus;
      end
      else
      begin
    If larg.Text = '' then
      Begin
          Application.MessageBox('Largura deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          larg.SetFocus;
      end
      else
      begin
    If exp.Text = '' then
      Begin
          Application.MessageBox('Expessura deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          exp.SetFocus;
      end
      end
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '')and (comp.Text <> '')and (larg.Text <> '')and (exp.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];

        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text)+ 'and COMPRIMENTO = ' + (comp.Text)+ 'and LARGURA = ' + (larg.Text)+ 'and EXPESSURA = ' + (exp.Text)+ 'and SITUACAO = ' + '0';
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        pecas.Caption := '0';
        quantidade.Caption := '0,0000';
        end
        else
        total := 0;
        total2 := 0;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
Gauge2.Progress:=Gauge2.Progress + 1;
        total := DM.TESDISCRIMINACAO['QUANTIDADE'] + total;
        total2 := DM.TESDISCRIMINACAO['TOTALM3'] + total2;
        DM.TESDISCRIMINACAO.Next;
        end;
        pecas.Caption := FormatCurr('#0',total);
        quantidade.Caption := FormatCurr('#0.0000',total2);
gauge2.Visible := false;
        end;
end;
end;

procedure TfrmConsultaProduto1.BitBtn1Click(Sender: TObject);
begin
quantidade.Caption := '';
pecas.Caption := '';

DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;
DM.TESDISCRIMINACAO.Close;
Edit1.Clear;
Edit2.Clear;
Close;
end;





procedure TfrmConsultaProduto1.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmConsultaProduto1.produtoClick(Sender: TObject);
begin
EDIT2.Text := DM.TProduto['GRAUIND'];
end;

procedure TfrmConsultaProduto1.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmConsultaProduto1.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaProduto1.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;



procedure TfrmConsultaProduto1.FormShow(Sender: TObject);
begin
 DM.TsubProdutos.Open;
 DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
 DM.TEssencia.Open;
 DM.TEssencia.IndexFieldNames := 'ESSENCIA';
end;

end.
