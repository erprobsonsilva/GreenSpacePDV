unit UMovimentoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMovimentoEntrada, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDM,
  Vcl.Buttons, uPesquisa;

type
  TFMovimentoVenda = class(TFMovimentoEntrada)
    procedure BtIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentoVenda: TFMovimentoVenda;

implementation

{$R *.dfm}

procedure TFMovimentoVenda.BtIniciarClick(Sender: TObject);
var
  xFbMovimento : TFDQuery;
  xFdQuerySeqMovimento: TFDQuery;
begin
  EdCpfCnpj.Enabled := False;
  EdNome.Enabled := False;
  CbParceria.Enabled := False;

  try
    xFdQuerySeqMovimento := TFDQuery.Create(nil);
    xFdQuerySeqMovimento.Connection := dm.ConnectionPostgres;
    xFdQuerySeqMovimento.SQL.Add(' select coalesce(max(cod_movimento),0) + 1 cod_movimento ');
    xFdQuerySeqMovimento.SQL.Add('   from movimento ');
    xFdQuerySeqMovimento.Open;
    FSequenciaMovimento := xFdQuerySeqMovimento.FieldByName('cod_movimento').AsInteger;

    xFbMovimento := TFDQuery.Create(nil);
    xFbMovimento.Connection := dm.ConnectionPostgres;
    xFbMovimento.SQL.Add(' insert into movimento (cod_movimento, tipo_movimento, cod_entidade, data_movimento, flg_cancelado) ');
    xFbMovimento.SQL.Add('                values (:cod_movimento, :tipo_movimento, :cod_entidade, :data_movimento, :flg_cancelado)');
    xFbMovimento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFbMovimento.ParamByName('tipo_movimento').AsString := 'S';
    xFbMovimento.ParamByName('flg_cancelado').AsString := 'N';

    if EdCodigo.Text <> '' then
      xFbMovimento.ParamByName('cod_entidade').AsInteger := StrToInt(EdCodigo.Text)
    else
    begin
      xFbMovimento.ParamByName('cod_entidade').DataType := ftInteger;
      xFbMovimento.ParamByName('cod_entidade').Clear;
    end;

    xFbMovimento.ParamByName('data_movimento').AsDateTime := Now;
    xFbMovimento.ExecSQL;

  finally
    xFbMovimento.Close;
    FreeAndNil(xFbMovimento);
    xFdQuerySeqMovimento.Close;
    FreeAndNil(xFdQuerySeqMovimento);
  end;

  FdQMovimentoItem.Close;
  FdQMovimentoItem.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
  FdQMovimentoItem.Open;

  FdQMovimentoPagamento.Close;
  FdQMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
  FdQMovimentoPagamento.Open;

  Tsgeral.TabIndex := 1;
  EdCodProduto.SetFocus;
end;

end.
