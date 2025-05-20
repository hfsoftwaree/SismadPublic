unit UnitRepSaida1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepSaida1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    NF: TQRDBText;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    QRDBText5: TQRDBText;
    TENTRADACODDISCRIMINACAO: TIntegerField;
    TENTRADACODIGOFORNECEDOR: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAUNIDADE: TIBStringField;
    TENTRADAQUANTIDADE: TFloatField;
    TENTRADAVALUNITARIO: TFloatField;
    TENTRADAVALTOTAL: TFloatField;
    TENTRADAALIQICMS: TFloatField;
    TENTRADACODIGOPRODUTO: TFloatField;
    TENTRADASITUACAO_TRIBUTARIA: TIBStringField;
    TENTRADATOTALPRODUTO: TFloatField;
    TENTRADADATALANCAMENTO: TDateTimeField;
    TENTRADANFNUMERO: TFloatField;
    TENTRADAESSENCIATIPO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADAFORNECEDOR: TIBStringField;
    TENTRADAINSCRICAO: TIBStringField;
    TENTRADACOMPRIMENTO: TFloatField;
    TENTRADALARGURA: TFloatField;
    TENTRADAEXPESSURA: TFloatField;
    TENTRADATOTALM3: TFloatField;
    TENTRADAFORMAPAGTO: TIBStringField;
    TENTRADAPRAZO: TFloatField;
    TENTRADADESCONTO: TFloatField;
    TENTRADACODVENDEDOR: TFloatField;
    TENTRADAVENDEDOR: TIBStringField;
    TENTRADAPLAQUETA: TFloatField;
    TENTRADACOLUMN7: TIBStringField;
    QRLabel11: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    FORNECEDOR: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    CIDADE: TQRLabel;
    ENDERECO: TQRLabel;
    QRLabel22: TQRLabel;
    CNPJ1: TQRLabel;
    QRLabel25: TQRLabel;
    BAIRRO: TQRLabel;
    QRLabel29: TQRLabel;
    FONE: TQRLabel;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    OBS: TQRRichText;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel19: TQRLabel;
    DFECHAMENTO: TDataSource;
    TFECHAMENTO: TIBTable;
    TFECHAMENTOCODIGOLANCAMENTO: TIntegerField;
    TFECHAMENTOCODIGOCLIENTE: TFloatField;
    TFECHAMENTONF: TFloatField;
    TFECHAMENTODATA: TDateTimeField;
    TFECHAMENTOQTDE_PRODUTOS: TFloatField;
    TFECHAMENTOTOTALM3: TFloatField;
    TFECHAMENTOVAL_TOT_PRODUTOS: TFloatField;
    TFECHAMENTOFORMAPAGAMENTO: TIBStringField;
    TFECHAMENTODESCONTO: TFloatField;
    TFECHAMENTOVAL_TOT_NOTA: TFloatField;
    TFECHAMENTOPRAZO: TIntegerField;
    TFECHAMENTOPARCELA1: TDateTimeField;
    TFECHAMENTOPARCELA2: TDateTimeField;
    TFECHAMENTOMOEDA: TIBStringField;
    TFECHAMENTONUMEROPARCELAS: TFloatField;
    TFECHAMENTOINTERVALOPARCELAS: TFloatField;
    QRDBText14: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepSaida1: TRepSaida1;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepSaida1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
TFECHAMENTO.Close; 
end;

procedure TRepSaida1.FormShow(Sender: TObject);
begin
DM.QManutencao.Open; 
end;

end.
