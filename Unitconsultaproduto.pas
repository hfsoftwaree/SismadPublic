unit Unitconsultaproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids, SSSpin, Gauges;

type
  TfrmConsultaProduto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    valor: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    FORNECEDOR: TEdit;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    nota: TSpinEditXP;
    GroupBox3: TGroupBox;
    Essencia: TDBLookupComboBox;
    Label2: TLabel;
    lancamento: TLabel;
    Label3: TLabel;
    quantidade: TLabel;
    codessencia: TEdit;
    Gauge2: TGauge;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, UnitPesquisa3;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmConsultaProduto.BitBtn3Click(Sender: TObject);
var total, total1 : Real;
begin
   if edit2.Text = '' then
      Begin
          Application.MessageBox('Cliente deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
          bitbtn4.SetFocus;
          end
          else
      begin
   if nota.Text = '0' then
      Begin
          Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
          nota.SetFocus;
          end
          else
      begin
   if essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
          end
      end;
      end;

if (edit2.Text <> '')and (nota.text <> '0')and (essencia.text <>'') then
begin
   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'CODIGOFORNECEDOR =' + QuotedStr(EDIT2.Text)+ 'and NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOESSENCIA = ' + QuotedStr(codessencia.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

begin
   if DM.TSaida_Discriminacao.RecordCount = 0 then
   begin
   lancamento.Caption := '0';
   quantidade.Caption := '0.0000';
   valor.Caption := '0.00';
   end
   else
   total := 0;
   total1 := 0;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= DM.TSaida_discriminacao.RecordCount;
   DM.TSaida_discriminacao.First;
   while not DM.TSaida_discriminacao.Eof do
     begin
Gauge2.Progress:=Gauge2.Progress + 1;
        total := DM.TSaida_discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_discriminacao['VALTOTAL'] + total1 ;
        DM.TSaida_discriminacao.Next;
        lancamento.Caption := '' + intTostr(DM.TSaida_Discriminacao.RecordCount);
     end;
    quantidade.caption := FormatCurr('#0.0000',total);
    valor.caption := FormatCurr('#0.00',total1);
gauge2.Visible := false;
   end;
end;
end;

procedure TfrmConsultaProduto.BitBtn1Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
DM.TEssencia.IndexFieldNames := '';
DM.TEssencia.Close;
edit2.text := '';
fornecedor.text := '';
nota.Text := '0';
   lancamento.Caption := '';
   quantidade.Caption := '';
   valor.Caption := '';
Close;
end;

procedure TfrmConsultaProduto.EssenciaClick(Sender: TObject);
begin
codessencia.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin
Self.Tag := 1;
DM.TEssencia.Open;
DM.TEssencia.IndexFieldNames  := 'ESSENCIA';
bitbtn4.SetFocus;
end;

procedure TfrmConsultaProduto.EssenciaEnter(Sender: TObject);
begin
essencia.DropDown;
end;

procedure TfrmConsultaProduto.BitBtn4Click(Sender: TObject);
begin
frmPesquisa3.ShowModal;
end;

procedure TfrmConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag:= 0;
end;

end.
