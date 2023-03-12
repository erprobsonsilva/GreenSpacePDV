unit URelatorioVendaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Udm, Vcl.ExtCtrls,
  RLPreviewForm;

type
  TFRelatorioVendaFiscal = class(TForm)
    DsGeral: TDataSource;
    FdGeral: TFDQuery;
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLBand6: TRLBand;
    RLBand8: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    FdGeralcod_item_movimento: TFMTBCDField;
    FdGeralcodigo: TWideStringField;
    FdGeralnome: TWideStringField;
    FdGerallength: TIntegerField;
    FdGeralquantidade: TBCDField;
    FdGeralpreco_unitario: TBCDField;
    FdGeralpreco: TBCDField;
    FdGeraltp_unidade_medida: TWideStringField;
    FdGeralflg_cancelado: TWideStringField;
    RLSystemInfo1: TRLSystemInfo;
    RLBand1: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel1: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioVendaFiscal: TFRelatorioVendaFiscal;

implementation

{$R *.dfm}

procedure TFRelatorioVendaFiscal.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  FdGeral.Close;
  FdGeral.Open;
  if FdGeral.RecordCount > 0 then
    RLReport2.PageSetup.PaperHeight := (RLReport2.PageSetup.PaperHeight + ((RLBand6.Height / 3.80) * (FdGeral.RecordCount -1)))
end;

end.
