unit UnitSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, ComCtrls, EAppProt, CJVLinkLabel, WinSkinData, Registry;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses UnitDM;


{$R *.DFM}
procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
Self.Close;
end;

end.
