unit UnitConsultaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids;

type
  TfrmConsultaProducao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    data: TEvDateEdit;
    Label5: TLabel;
    data1: TEdit;
    CheckBox1: TCheckBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure dataEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProducao: TfrmConsultaProducao;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmConsultaProducao.BitBtn3Click(Sender: TObject);
var total, total2 : Real;
begin
   if data.DateText = '00/00/0000' then
      Begin
          Application.MessageBox('Data deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          data.SetFocus;
      end;

if (Data.dateText <> '00/00/0000') then
begin
   if (Data.DateText <> '00/00/0000') and (essencia.Text = '') then
   begin
        Data1.Text := ConverteData(Data.DateText);
        DM.TPRODUCAO.Filtered := False;
        DM.TPRODUCAO.Close;
        DM.TPRODUCAO.Filter := 'DATA = ' + QuotedStr(data1.Text);
        DM.TPRODUCAO.Filtered := True;
        DM.TPRODUCAO.Open;

        if DM.TPRODUCAO.RecordCount = 0 then
        begin
        ESTOQUE.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TPRODUCAO.First;
        while not DM.TPRODUCAO.Eof  do
        begin
        total2 := DM.TPRODUCAO['QSERRADA'] + total2;
        DM.TPRODUCAO.Next;
        ESTOQUE.Caption := FormatCurr('#0.0000',total2);
        end;
        end;

   if (Data.dateText <> '00/00/0000') and (essencia.Text <> '') then
   begin
        Data1.Text := ConverteData(Data.DateText);
        DM.TPRODUCAO.Filtered := False;
        DM.TPRODUCAO.Close;
        DM.TPRODUCAO.Filter := 'DATA = ' + QuotedStr(data1.Text) + ' and CODIGOESSENCIA = ' + (edit1.Text);
        DM.TPRODUCAO.Filtered := True;
        DM.TPRODUCAO.Open;

        if DM.TPRODUCAO.RecordCount = 0 then
        begin
        ESTOQUE.Caption := '0,0000';
        end
        else
        total := 0;
        DM.TPRODUCAO.First;
        while not DM.TPRODUCAO.Eof  do
        begin
        total := DM.TPRODUCAO['QSERRADA'] + total;
        DM.TPRODUCAO.Next;
        ESTOQUE.Caption := FormatCurr('#0.0000',total);
        end;
        end;
end;
end;

procedure TfrmConsultaProducao.BitBtn1Click(Sender: TObject);
begin
DM.TPRODUCAO.Filtered := False;
DM.TEssencia.Filtered := False;
DM.TPRODUCAO.Close;
DM.TEssencia.Close;
Essencia.Enabled := False;
ESTOQUE.Caption := '';
Close;
end;

procedure TfrmConsultaProducao.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaProducao.FormShow(Sender: TObject);
begin
data.Clear;
data.SetFocus; 
end;

procedure TfrmConsultaProducao.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
begin
DM.TEssencia.Open;
Essencia.Enabled := True;
DM.TEssencia.IndexFieldNames := 'ESSENCIA';
end
else
begin
DM.TEssencia.Close;
Essencia.Enabled := False;
end
end;

procedure TfrmConsultaProducao.EssenciaEnter(Sender: TObject);
begin
essencia.DropDown; 
end;

procedure TfrmConsultaProducao.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;

end.
