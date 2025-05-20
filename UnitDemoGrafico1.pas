unit UnitDemoGrafico1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, StdCtrls, Buttons,
  DB, ADODB, TeeFunci, Series, Mask, DBCtrls, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TfrmDemoGrafico1 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBCGrafico: TDBChart;
    BitBtn1: TBitBtn;
    Series1: TPieSeries;
    TeeFunction1: TSubtractTeeFunction;
    DataInicial: TLabel;
    DataFinal: TLabel;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemoGrafico1: TfrmDemoGrafico1;
  var i : integer = 0;  

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure TfrmDemoGrafico1.Timer1Timer(Sender: TObject);
begin
 if i < 360 then
    Series1.Rotate(i+10)
  else
   i := 0;
end;

procedure TfrmDemoGrafico1.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmDemoGrafico1.FormActivate(Sender: TObject);
begin
Timer1.Enabled := True;
end;

procedure TfrmDemoGrafico1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
Timer1.Enabled := False;
end;


procedure TfrmDemoGrafico1.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
end;

end.
