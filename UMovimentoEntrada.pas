unit UMovimentoEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UDM, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.CheckLst, Vcl.DBGrids, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, UPesquisa, URelatorioVendaFiscal;

type
  TFMovimentoEntrada = class(TForm)
    Tsgeral: TPageControl;
    TsMovimento: TTabSheet;
    Panel1: TPanel;
    EdCodigo: TEdit;
    EdNome: TEdit;
    TsItem: TTabSheet;
    EdCodProduto: TEdit;
    Label1: TLabel;
    EdNomeProduto: TEdit;
    EdQuantidade: TEdit;
    Label2: TLabel;
    TsPagamento: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    EdTotalCompra: TEdit;
    Label5: TLabel;
    EdValorTroco: TEdit;
    Label6: TLabel;
    EdValorPagamento: TEdit;
    EdValorCompraItem: TEdit;
    Label7: TLabel;
    BtFinalizarItem: TButton;
    Label8: TLabel;
    EdValorSaldo: TEdit;
    EdPrecoProduto: TEdit;
    Label9: TLabel;
    DbGridItem: TDBGrid;
    LbFornecedor: TLabel;
    Label10: TLabel;
    EdUnidadeMedida: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdDataFabricacao: TDateTimePicker;
    EdDataValidade: TDateTimePicker;
    BtAdicionarProduto: TButton;
    DsMovimentoItem: TDataSource;
    DbGridPagamento: TDBGrid;
    DsMovimentoPagamento: TDataSource;
    BtFinalizar: TButton;
    CbTipoPagamento: TComboBox;
    Label14: TLabel;
    EdPrecoUnit: TEdit;
    FdQMovimentoItem: TFDQuery;
    BtCompra: TButton;
    FdQMovimentoItemcodigo: TWideStringField;
    FdQMovimentoItemnome: TWideStringField;
    FdQMovimentoItemquantidade: TBCDField;
    FdQMovimentoItempreco_unitario: TBCDField;
    FdQMovimentoItempreco: TBCDField;
    FdQMovimentoItemtp_unidade_medida: TWideStringField;
    FdQMovimentoItemcod_item_movimento: TFMTBCDField;
    FdQMovimentoItemcod_movimento: TFMTBCDField;
    FdQMovimentoItemflg_cancelado: TWideStringField;
    FdQMovimentoPagamento: TFDQuery;
    FdQMovimentoPagamentoflg_troco: TWideStringField;
    FdQMovimentoPagamentoflg_cancelado: TWideStringField;
    FdQMovimentoPagamentovalor: TBCDField;
    FdQMovimentoPagamentocod_pagamento: TFMTBCDField;
    FdQMovimentoPagamentocod_movimento: TFMTBCDField;
    EdCpfCnpj: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    CbParceria: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    EdPErDesc: TEdit;
    Label19: TLabel;
    EdTotalItens: TEdit;
    EdTotalSemDesc: TEdit;
    Label20: TLabel;
    Panel2: TPanel;
    Label21: TLabel;
    Panel3: TPanel;
    Label23: TLabel;
    Panel4: TPanel;
    Label25: TLabel;
    FdQMovimentoPagamentotp_pagamento: TWideStringField;
    BtConsultaProduto: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    EdCpfCnpjEntidade: TEdit;
    EdNomeEntidade: TEdit;
    CbParceriaEntidade: TComboBox;
    BtNovoClienteEntidade: TButton;
    procedure EdCodigoExit(Sender: TObject);
    procedure BtIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtFinalizarItemClick(Sender: TObject);
    procedure EdCodProdutoExit(Sender: TObject);
    procedure EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProdutoChange(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtAdicionarProdutoClick(Sender: TObject);
    procedure EdValorPagamentoChange(Sender: TObject);
    procedure EdValorPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtFinalizarClick(Sender: TObject);
    procedure TsgeralChanging(Sender: TObject; var AllowChange: Boolean);
    procedure TsgeralChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdPrecoProdutoChange(Sender: TObject);
    procedure EdQuantidadeChange(Sender: TObject);
    procedure CbTipoPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorPagamentoEnter(Sender: TObject);
    procedure DbGridItemDblClick(Sender: TObject);
    procedure DbGridItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGridPagamentoDblClick(Sender: TObject);
    procedure DbGridPagamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdCpfCnpjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbParceriaExit(Sender: TObject);
    procedure CbParceriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdUnidadeMedidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataFabricacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPrecoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataValidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtConsultaProdutoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BtNovoClienteEntidadeClick(Sender: TObject);
    procedure EdCpfCnpjEntidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeEntidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbParceriaEntidadeExit(Sender: TObject);
    procedure EdCpfCnpjEntidadeExit(Sender: TObject);
    procedure EdCpfCnpjExit(Sender: TObject);
    procedure CbParceriaEntidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeEntidadeExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarProduto;
    procedure InserirProduto;
    procedure AtualizarEntidade;
    procedure AtualizarPagamento;
    procedure InserirPagamento;
    procedure CancelarItem;
    procedure CalculaTotalCompra;
    procedure InserirTroco(ACodMovimento: Integer);
    procedure CancelarPagamento;
    procedure CancelarCupom;
    procedure CadastrarCliente(aCpfCnpj, aNome : String; aParceria : integer);
    procedure IniciaClienteNovo;

    procedure ValidaEntidade;

    Procedure LimpaCampos;

    procedure LimpaCampoProduto;
    procedure PesquisaProduto;
    procedure CalculaPrecoUnitario;

    procedure ConsultaPreco;
  public
    { Public declarations }
    FSequenciaMovimento : integer;
    FParceria : Integer;
  end;

var
  FMovimentoEntrada: TFMovimentoEntrada;

implementation

{$R *.dfm}

procedure TFMovimentoEntrada.BtIniciarClick(Sender: TObject);
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
    xFbMovimento.SQL.Add(' insert into movimento (cod_movimento, tipo_movimento, cod_entidade, data_movimento, FLG_CANCELADO) ');
    xFbMovimento.SQL.Add('                values (:cod_movimento, :tipo_movimento, :cod_entidade, :data_movimento, :FLG_CANCELADO)');
    xFbMovimento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFbMovimento.ParamByName('tipo_movimento').AsString := 'E';
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

procedure TFMovimentoEntrada.Button1Click(Sender: TObject);
begin
  CancelarCupom;
end;

procedure TFMovimentoEntrada.Button5Click(Sender: TObject);
begin
  PesquisaProduto;
end;

procedure TFMovimentoEntrada.Button6Click(Sender: TObject);
begin
  IniciaClienteNovo;
end;

procedure TFMovimentoEntrada.BtNovoClienteEntidadeClick(Sender: TObject);
begin
  EdCpfCnpjEntidade.Enabled  := True;
  EdNomeEntidade.Enabled     := True;
  CbParceriaEntidade.Enabled := True;
  EdCpfCnpjEntidade.SetFocus;
end;

procedure TFMovimentoEntrada.BtFinalizarClick(Sender: TObject);
var
  RelatorioVendaFiscal : TFRelatorioVendaFiscal;
begin
  if (StrToFloat(EdValorSaldo.Text) > 0)  then
  begin
    ShowMessage('Valor total a pagar n?o bate com o total da compra!');
    CbTipoPagamento.SetFocus;
    Exit;
  end;

//  if MessageDlg('Deseja relamente excluir do cupom?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
//  begin
    Try
      RelatorioVendaFiscal := TFRelatorioVendaFiscal.Create(nil);
      RelatorioVendaFiscal.FdGeral.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
      RelatorioVendaFiscal.RLReport2.Preview;
    Finally
      FreeAndNil(RelatorioVendaFiscal);
    End;
  //end;
  LimpaCampos;
end;

procedure TFMovimentoEntrada.CadastrarCliente(aCpfCnpj, aNome : String; aParceria : integer);
var
  xFdQuery, xFdQuerySeqEntidade, xFdQueryInsert: TFDQuery;
begin
  if ((Tsgeral.TabIndex = 0) and ((EdCpfCnpj.Text <> '') and (EdNome.Text <> '')) or
   ((Tsgeral.TabIndex <> 0) and (EdCpfCnpjEntidade.Text <> '') and (EdNomeEntidade.Text <> ''))) then
  begin
    try
      xFdQuerySeqEntidade := TFDQuery.Create(nil);
      xFdQuerySeqEntidade.Connection := dm.ConnectionPostgres;
      xFdQueryInsert := TFDQuery.Create(nil);
      xFdQueryInsert.Connection := dm.ConnectionPostgres;

      xFdQuery := TFDQuery.Create(nil);
      xFdQuery.Connection := dm.ConnectionPostgres;
      xFdQuery.SQL.Add(' select * ');
      xFdQuery.SQL.Add('   from entidade ');
      xFdQuery.SQL.Add('  where cpf_cnpj = :cpf_cnpj ');
      xFdQuery.ParamByName('cpf_cnpj').AsString := aCpfCnpj;
      xFdQuery.Open;

      if xFdQuery.IsEmpty then
      begin
        xFdQuerySeqEntidade.SQL.Add(' select coalesce(max(cod_entidade),0) + 1 cod_entidade ');
        xFdQuerySeqEntidade.SQL.Add('   from entidade ');
        xFdQuerySeqEntidade.Open;

        xFdQueryInsert.SQL.Add('INSERT INTO entidade( ');
        xFdQueryInsert.SQL.Add('         cod_entidade, nome, cpf_cnpj, flg_cliente, flg_fornecedor, parceria) ');
        xFdQueryInsert.SQL.Add(' VALUES (:cod_entidade, :nome, :cpf_cnpj, :flg_cliente, :flg_fornecedor, :parceria) ');
        xFdQueryInsert.ParamByName('cod_entidade').AsInteger  := xFdQuerySeqEntidade.FieldByName('cod_entidade').AsInteger;
        xFdQueryInsert.ParamByName('nome').AsString           := aNome;
        xFdQueryInsert.ParamByName('cpf_cnpj').AsString       := aCpfCnpj;
        xFdQueryInsert.ParamByName('flg_cliente').AsString    := 'S';
        xFdQueryInsert.ParamByName('flg_fornecedor').AsString := 'N';
        xFdQueryInsert.ParamByName('parceria').AsInteger := aParceria;

        xFdQueryInsert.ExecSQL;
        EdCodigo.Text := IntToStr(xFdQuerySeqEntidade.FieldByName('cod_entidade').AsInteger);
      end
      else
      begin
      begin
        xFdQueryInsert.SQL.Add('UPDATE entidade SET ');
        xFdQueryInsert.SQL.Add('         nome = :nome, ');
        xFdQueryInsert.SQL.Add('         parceria = :parceria ');
        xFdQueryInsert.SQL.Add(' WHERE cod_entidade = :cod_entidade ');
        xFdQueryInsert.ParamByName('cod_entidade').AsInteger  := xFdQuery.FieldByName('cod_entidade').AsInteger;
        xFdQueryInsert.ParamByName('nome').AsString           := aNome;
        xFdQueryInsert.ParamByName('parceria').AsInteger := aParceria;

        xFdQueryInsert.ExecSQL;
        EdCodigo.Text := IntToStr(xFdQuery.FieldByName('cod_entidade').AsInteger);
      end;
      end;
    finally
      FreeAndNil(xFdQueryInsert);
      FreeAndNil(xFdQuerySeqEntidade);
      FreeAndNil(xFdQuery);
    end;
  end;
end;

procedure TFMovimentoEntrada.CalculaPrecoUnitario;
begin
  if (StrToFloat(EdPrecoProduto.Text) > 0) and  (StrToFloat(EdQuantidade.Text) > 0) then
    EdPrecoUnit.Text := FormatFloat('#0.00', StrToFloat(EdPrecoProduto.Text) / StrToFloat(EdQuantidade.Text))
  else
    EdPrecoUnit.Text := '0';
end;

procedure TFMovimentoEntrada.CalculaTotalCompra;
var
  xFdQuery: TFDQuery;
begin
  try
    xFdQuery := TFDQuery.Create(nil);
    xFdQuery.Connection := dm.ConnectionPostgres;
    xFdQuery.SQL.Add(' select sum(coalesce(preco,0)) valor_total_compra ');
    xFdQuery.SQL.Add('   from movimento_item ');
    xFdQuery.SQL.Add('  where cod_movimento = :cod_movimento ');
    xFdQuery.SQL.Add('    and flg_cancelado = :flg_cancelado ');
    xFdQuery.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFdQuery.ParamByName('flg_cancelado').AsString := 'N';
    xFdQuery.Open;

    EdTotalItens.Text := FormatFloat('#0.00', xFdQuery.FieldByName('valor_total_compra').AsFloat);
    EdTotalSemDesc.Text := FormatFloat('#0.00', xFdQuery.FieldByName('valor_total_compra').AsFloat);


    if FParceria = 1 then
    begin
      EdValorCompraItem.Text := FormatFloat('#0.00', xFdQuery.FieldByName('valor_total_compra').AsFloat -
            ((xFdQuery.FieldByName('valor_total_compra').AsFloat / 100) * 5));
      EdPErDesc.Text := '5%';
    end
    else
    begin
      EdValorCompraItem.Text := FormatFloat('#0.00', xFdQuery.FieldByName('valor_total_compra').AsFloat);
      EdPErDesc.Text := '0%';
    end;

    EdTotalCompra.Text := EdValorCompraItem.Text;
    EdValorTroco.Text := '0';
  finally
    xFdQuery.Close;
    xFdQuery.Free;
  end;

  try
    xFdQuery := TFDQuery.Create(nil);
    xFdQuery.Connection := dm.ConnectionPostgres;
    xFdQuery.SQL.Add(' select sum(coalesce(valor,0)) valor_saldo_compra ');
    xFdQuery.SQL.Add('   from movimento_pagamento ');
    xFdQuery.SQL.Add('  where cod_movimento = :cod_movimento ');
    xFdQuery.SQL.Add('    and flg_cancelado = :flg_cancelado ');
    xFdQuery.SQL.Add('    and flg_troco = :flg_troco ');
    xFdQuery.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFdQuery.ParamByName('flg_cancelado').AsString := 'N';
    xFdQuery.ParamByName('flg_troco').AsString := 'N';
    xFdQuery.Open;

    EdValorSaldo.Text := FormatFloat('#0.00', StrToFloat(EdValorCompraItem.Text) -  xFdQuery.FieldByName('valor_saldo_compra').AsFloat);
    EdValorTroco.Text := '0';
  finally
    xFdQuery.Close;
    xFdQuery.Free;
  end;

  FdQMovimentoItem.Close;
  FdQMovimentoItem.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
  FdQMovimentoItem.Open;
end;

procedure TFMovimentoEntrada.CancelarCupom;
var
  xFbMovimentoCupom : TFDQuery;
begin
  if (FSequenciaMovimento > 0) then
  begin
    if MessageDlg('Deseja relamente excluir do cupom?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      xFbMovimentoCupom := TFDQuery.Create(nil);
      xFbMovimentoCupom.Connection := dm.ConnectionPostgres;
      xFbMovimentoCupom.SQL.Add(' UPDATE movimento SET ');
      xFbMovimentoCupom.SQL.Add('         FLG_CANCELADO     = :FLG_CANCELADO ');
      xFbMovimentoCupom.SQL.Add('  WHERE COD_MOVIMENTO      = :COD_MOVIMENTO ');

      xFbMovimentoCupom.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
      xFbMovimentoCupom.ParamByName('FLG_CANCELADO').AsString := 'S';
      xFbMovimentoCupom.ExecSQL;
      LimpaCampos;
    end;
  end
  else
    ShowMessage('Nenhum cupom aberto!' + #13 + ' Para cancelar um cupom j? finalizado, usar o monitor de cupom fiscal.')
end;

procedure TFMovimentoEntrada.CancelarItem;
Var
  xFbMovimentoItem : TFDQuery;
begin
  if MessageDlg('Deseja relamente excluir o item?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    xFbMovimentoItem := TFDQuery.Create(nil);
    xFbMovimentoItem.Connection := dm.ConnectionPostgres;
    xFbMovimentoItem.SQL.Add(' UPDATE movimento_item SET ');
    xFbMovimentoItem.SQL.Add('         FLG_CANCELADO     = :FLG_CANCELADO ');
    xFbMovimentoItem.SQL.Add('  WHERE COD_MOVIMENTO      = :COD_MOVIMENTO ');
    xFbMovimentoItem.SQL.Add('    and  COD_ITEM_MOVIMENTO = :COD_ITEM_MOVIMENTO ');

    xFbMovimentoItem.ParamByName('cod_item_movimento').AsInteger := DbGridItem.DataSource.DataSet.FieldByName('COD_ITEM_MOVIMENTO').AsInteger;
    xFbMovimentoItem.ParamByName('cod_movimento').AsInteger := DbGridItem.DataSource.DataSet.FieldByName('COD_MOVIMENTO').AsInteger;
    xFbMovimentoItem.ParamByName('FLG_CANCELADO').AsString := 'S';
    xFbMovimentoItem.ExecSQL;

    CalculaTotalCompra;
  end;
end;

procedure TFMovimentoEntrada.CancelarPagamento;
Var
  xFbMovimentoPagamento : TFDQuery;
begin
if MessageDlg('Deseja relamente excluir o pagamento?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    xFbMovimentoPagamento := TFDQuery.Create(nil);
    xFbMovimentoPagamento.Connection := dm.ConnectionPostgres;
    xFbMovimentoPagamento.SQL.Add(' UPDATE movimento_pagamento SET ');
    xFbMovimentoPagamento.SQL.Add('         FLG_CANCELADO = :FLG_CANCELADO ');
    xFbMovimentoPagamento.SQL.Add('  WHERE COD_MOVIMENTO  = :COD_MOVIMENTO ');
    xFbMovimentoPagamento.SQL.Add('    and COD_PAGAMENTO  = :COD_PAGAMENTO ');

    xFbMovimentoPagamento.ParamByName('COD_PAGAMENTO').AsInteger := DbGridPagamento.DataSource.DataSet.FieldByName('COD_PAGAMENTO').AsInteger;
    xFbMovimentoPagamento.ParamByName('cod_movimento').AsInteger := DbGridPagamento.DataSource.DataSet.FieldByName('COD_MOVIMENTO').AsInteger;
    xFbMovimentoPagamento.ParamByName('FLG_CANCELADO').AsString := 'S';
    xFbMovimentoPagamento.ExecSQL;
    CalculaTotalCompra;

    FdQMovimentoPagamento.Close;
    FdQMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    FdQMovimentoPagamento.Open;

    FreeAndNil(xFbMovimentoPagamento);

    CbTipoPagamento.SetFocus;
  end;
end;

procedure TFMovimentoEntrada.CbParceriaEntidadeExit(Sender: TObject);
begin
  CadastrarCliente(EdCpfCnpjEntidade.Text, EdNomeEntidade.Text, CbParceriaEntidade.ItemIndex);
  AtualizarEntidade;
  EdCpfCnpjEntidade.Enabled  := False;
  EdNomeEntidade.Enabled     := False;
  CbParceriaEntidade.Enabled := False;
end;

procedure TFMovimentoEntrada.CbParceriaEntidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
  begin
    EdCodProduto.SetFocus;
  end;
end;

procedure TFMovimentoEntrada.CbParceriaExit(Sender: TObject);
begin
  CadastrarCliente(EdCpfCnpj.Text, EdNome.Text, CbParceria.ItemIndex);
  AtualizarEntidade;
end;

procedure TFMovimentoEntrada.CbParceriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
  begin
    BtCompra.SetFocus;
  end;
end;

procedure TFMovimentoEntrada.CbTipoPagamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
  begin
    EdValorPagamento.SetFocus;
    EdValorPagamento.SelectAll;
  end;
end;

procedure TFMovimentoEntrada.ConsultaPreco;
var
  xPesquisa : TFPesquisa;
begin
  xPesquisa := TFPesquisa.Create(nil);
  xPesquisa.BtConfirmar.Visible := false;
  xPesquisa.ShowModal;
  FreeAndNil(xPesquisa);
end;

procedure TFMovimentoEntrada.DbGridPagamentoDblClick(Sender: TObject);
begin
  CancelarPagamento;
end;

procedure TFMovimentoEntrada.DbGridPagamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FdQMovimentoPagamentoflg_cancelado.AsString='S' then {substituir pela sua condi??o}
    TDBGrid(Sender).Canvas.Font.Color:=clRed
      else TDBGrid(Sender).Canvas.Font.Color:=clBlack;

  DbGridPagamento.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFMovimentoEntrada.DbGridItemDblClick(Sender: TObject);
begin
  CancelarItem;
end;

procedure TFMovimentoEntrada.DbGridItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FdQMovimentoItemflg_cancelado.AsString='S' then {substituir pela sua condi??o}
    TDBGrid(Sender).Canvas.Font.Color:=clRed
      else TDBGrid(Sender).Canvas.Font.Color:=clBlack;

  DbGridItem.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFMovimentoEntrada.AtualizarEntidade;
var
  xFdQuery: TFDQuery;
begin
  EdNome.Text := '';
  if (((EdCodigo.Text = '') and (Tsgeral.TabIndex = 0)) or ((EdCpfCnpjEntidade.Text = '') and (Tsgeral.TabIndex = 1))) then
  begin
    BtCompra.SetFocus;
    exit;
  end;

  try
    xFdQuery := TFDQuery.Create(nil);
    xFdQuery.Connection := dm.ConnectionPostgres;
    xFdQuery.SQL.Add(' select * ');
    xFdQuery.SQL.Add('   from entidade ');
    xFdQuery.SQL.Add('  where ((cod_entidade = :cod_entidade) ');
    xFdQuery.SQL.Add('     or (cpf_cnpj = :cpf_cnpj)) ');
    if (Tsgeral.TabIndex = 0) then
    begin
      if (length(EdCodigo.Text) < 10) then
      begin
        xFdQuery.ParamByName('cod_entidade').AsInteger := StrToInt(EdCodigo.Text);
      end
      else
      begin
        xFdQuery.ParamByName('cod_entidade').DataType := ftInteger;
        xFdQuery.ParamByName('cod_entidade').Clear;
      end;
      xFdQuery.ParamByName('cpf_cnpj').AsString := EdCodigo.Text;
    end
    else
    begin
      if (length(EdCpfCnpjEntidade.Text) < 10) then
      begin
        xFdQuery.ParamByName('cod_entidade').AsInteger := StrToInt(EdCpfCnpjEntidade.Text);
      end
      else
      begin
        xFdQuery.ParamByName('cod_entidade').DataType := ftInteger;
        xFdQuery.ParamByName('cod_entidade').Clear;
      end;
      xFdQuery.ParamByName('cpf_cnpj').AsString := EdCpfCnpjEntidade.Text;
    end;

    xFdQuery.Open;

    if xFdQuery.IsEmpty then
    begin
      if (Tsgeral.TabIndex = 0) then
      begin
        if (StrToInt(EdCodigo.Text) > 0) then
        begin
          ShowMessage('Cliente n?o cadastrado!');
          EdCodigo.SetFocus;
          Exit;
        end;
      end
      else
      begin
        if (StrToInt(EdCpfCnpjEntidade.Text) > 0) then
        begin
          ShowMessage('Cliente n?o cadastrado!');
          EdCodProduto.SetFocus;
          Exit;
        end;
      end;
    end
    else
    begin
      EdCodigo.Text := xFdQuery.FieldByName('cod_entidade').AsString;
      EdNome.Text := xFdQuery.FieldByName('nome').AsString;
      EdCpfCnpjEntidade.Text := xFdQuery.FieldByName('cod_entidade').AsString;
      EdNomeEntidade.Text := xFdQuery.FieldByName('nome').AsString;
      EdCpfCnpj.Text := xFdQuery.FieldByName('cpf_cnpj').AsString;
      FParceria := xFdQuery.FieldByName('parceria').AsInteger;
      CbParceria.ItemIndex := FParceria;
      CbParceriaEntidade.ItemIndex := FParceria;
    end;

  finally
    xFdQuery.Close;
    FreeAndNil(xFdQuery);
  end;

  if (Tsgeral.TabIndex = 0) then
    BtCompra.SetFocus
  else
    EdCodProduto.SetFocus;
end;

procedure TFMovimentoEntrada.AtualizarPagamento;
begin
  if (EdValorPagamento.text = '') and (StrToInt(EdValorPagamento.text) = 0) then
  begin
    ShowMessage('Informe um valor valido!');
    exit;
  end;

  if (StrToFloat(EdValorSaldo.Text) - StrToFloat(EdValorPagamento.Text)) < 0 then
  begin
    EdValorTroco.Text := FormatFloat('#0.00', StrToFloat(EdValorSaldo.Text) - StrToFloat(EdValorPagamento.Text));
  end
  else
  begin
    EdValorTroco.Text := FormatFloat('#0.00', 0);
  end;
end;

procedure TFMovimentoEntrada.AtualizarProduto;
var
  xFdQuery: TFDQuery;
  xCodigo: String;
begin
  if (length(EdCodProduto.Text) = 13) and (copy(EdCodProduto.Text,0,1) = '2') then
    xCodigo := copy(EdCodProduto.Text,2,4)
  else
    xCodigo := EdCodProduto.Text;

  EdNomeProduto.Text := '';
  if xCodigo = '' then
  begin
    exit;
  end;

  try
    xFdQuery := TFDQuery.Create(nil);
    xFdQuery.Connection := dm.ConnectionPostgres;
    xFdQuery.SQL.Add(' select * ');
    xFdQuery.SQL.Add('   from produto ');
    if (Length(xCodigo) < 6) then
    begin
      xFdQuery.SQL.Add('   where ((cod_produto = :cod_produto) ');
      xFdQuery.SQL.Add('     or (cod_balanca = :cod_balanca)) ');
      xFdQuery.ParamByName('cod_produto').AsInteger := StrToInt(xCodigo);
      xFdQuery.ParamByName('cod_balanca').AsInteger := StrToInt(xCodigo);
    end
    else
    begin
      xFdQuery.SQL.Add('   where ((cod_barra = :cod_barra) ');
      xFdQuery.SQL.Add('     or (cod_barra_caixa = :cod_barra_caixa)) ');
      xFdQuery.ParamByName('cod_barra').AsString := xCodigo;
      xFdQuery.ParamByName('cod_barra_caixa').AsString := xCodigo;
    end;
    xFdQuery.Open;

    if xFdQuery.IsEmpty then
    begin
      ShowMessage('Produto n?o cadastrado!');
      exit;
    end
    else
    begin
      EdNomeProduto.Text := xFdQuery.FieldByName('descricao').AsString;
      if (length(EdCodProduto.Text) = 13) and (copy(EdCodProduto.Text,0,1) = '2') then
        EdQuantidade.Text := FormatFloat('#0.000', StrToFloat(copy(EdCodProduto.Text,7,4) +
                                                              ',' + copy(EdCodProduto.Text,11,2)) /
                                                                xFdQuery.FieldByName('preco').AsFloat);

      EdPrecoProduto.Text := FormatFloat('#0.00', (xFdQuery.FieldByName('preco').AsFloat * StrToFloat(EdQuantidade.Text)));
      EdUnidadeMedida.Text := xFdQuery.FieldByName('tp_unidade_medida').AsString;
    end;

    EdCodProduto.Text := xFdQuery.FieldByName('cod_produto').AsString;
  finally
    xFdQuery.Close;
    FreeAndNil(xFdQuery);
  end;

  if EdDataFabricacao.Visible then
    EdDataFabricacao.SetFocus
  else
    BtAdicionarProduto.Click;
end;

procedure TFMovimentoEntrada.BtAdicionarProdutoClick(Sender: TObject);
begin
  if EdCodProduto.Text = '' then
  begin
    ShowMessage('Produto n?o Informado!');
    EdCodProduto.SetFocus;
    exit;
  end;

  if EdUnidadeMedida.Text = '' then
  begin
    ShowMessage('UM n?o Informado!');
    EdUnidadeMedida.SetFocus;
    exit;
  end;

  if EdQuantidade.Text = '' then
  begin
    ShowMessage('Quantidade n?o Informado!');
    EdQuantidade.SetFocus;
    exit;
  end;

  if EdPrecoProduto.Text = '' then
  begin
    ShowMessage('Pre?o n?o Informado!');
    EdPrecoProduto.SetFocus;
    exit;
  end;

  InserirProduto;
  CalculaTotalCompra;
end;

procedure TFMovimentoEntrada.BtConsultaProdutoClick(Sender: TObject);
begin
  ConsultaPreco;
end;

procedure TFMovimentoEntrada.BtFinalizarItemClick(Sender: TObject);
begin
  if EdValorCompraItem.Text = '' then
  begin
    ShowMessage('Informe os Produtos da Compra!');
    EdCodProduto.SetFocus;
    exit;
  end;

  Tsgeral.TabIndex := 2;
  CbTipoPagamento.SetFocus;
end;

procedure TFMovimentoEntrada.EdCpfCnpjEntidadeExit(Sender: TObject);
begin
  ValidaEntidade;
end;

procedure TFMovimentoEntrada.EdCpfCnpjEntidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdNomeEntidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdCpfCnpjExit(Sender: TObject);
begin
  ValidaEntidade;
end;

procedure TFMovimentoEntrada.EdCodigoExit(Sender: TObject);
begin
  if EdCodigo.Text = '' then
  begin
    exit;
  end;

  if (Length(EdCodigo.Text) < 10) then
  begin
    if StrToInt(EdCodigo.Text) = 0 then
    begin
      EdCpfCnpj.Enabled := True;
      EdNome.Enabled := True;
      CbParceria.Enabled := True;
      EdCpfCnpj.SetFocus;
    end;
  end
  else
  begin
    AtualizarEntidade;
  end;
end;

procedure TFMovimentoEntrada.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
  begin
    AtualizarEntidade;
  end;
end;

procedure TFMovimentoEntrada.EdCodProdutoChange(Sender: TObject);
begin
  if UpperCase(EdCodProduto.Text) = 'X' then
    EdCodProduto.Text := '';
end;

procedure TFMovimentoEntrada.EdCodProdutoExit(Sender: TObject);
begin
  AtualizarProduto;
end;

procedure TFMovimentoEntrada.EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 113 then
  begin
    if (Tsgeral.TabIndex = 1) then
      PesquisaProduto
    else
      ConsultaPreco;
  end;

  if key = 88 then // Tecla X
  begin
    EdQuantidade.Text := EdCodProduto.Text;
    EdCodProduto.Text := '';
  end;

  if key = 70 then // Tecla F
  begin
    BtFinalizarItem.Click;
  end;

  if key = 13 then // Tecla Enter
  begin
    AtualizarProduto;
  end;
end;

procedure TFMovimentoEntrada.EdCpfCnpjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdNome.SetFocus;
end;

procedure TFMovimentoEntrada.EdDataFabricacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdUnidadeMedida.SetFocus;
end;

procedure TFMovimentoEntrada.EdDataValidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    BtAdicionarProduto.SetFocus;
end;

procedure TFMovimentoEntrada.EdNomeEntidadeExit(Sender: TObject);
begin
  CbParceriaEntidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdNomeEntidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    CbParceriaEntidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdNomeExit(Sender: TObject);
begin
  CbParceriaEntidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    CbParceria.SetFocus;
end;

procedure TFMovimentoEntrada.EdPrecoProdutoChange(Sender: TObject);
begin
  if EdPrecoProduto.Text = '' then
    EdPrecoProduto.Text := '0';

  EdPrecoUnit.Text := FormatFloat('#0.00', StrToFloat(EdPrecoProduto.Text) / StrToFloat(EdQuantidade.Text));
end;

procedure TFMovimentoEntrada.EdPrecoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdDataValidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdQuantidadeChange(Sender: TObject);
begin
  if EdQuantidade.Text = '' then
    EdQuantidade.Text := '0';

  CalculaPrecoUnitario;
end;

procedure TFMovimentoEntrada.EdQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdPrecoProduto.SetFocus;
end;

procedure TFMovimentoEntrada.EdUnidadeMedidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
    EdQuantidade.SetFocus;
end;

procedure TFMovimentoEntrada.EdValorPagamentoChange(Sender: TObject);
begin
  if (EdValorPagamento.Text = '') or (StrToFloat(EdValorSaldo.Text) <= 0) or (StrToFloat(EdValorPagamento.Text) = 0)  then
  begin
    EdValorPagamento.Text := '0';
    EdValorPagamento.SelectAll;
  end;

  AtualizarPagamento;
end;

procedure TFMovimentoEntrada.EdValorPagamentoEnter(Sender: TObject);
begin
  if (EdValorPagamento.Text = '') or (StrToFloat(EdValorPagamento.Text) = 0) then
    EdValorPagamento.Text := EdValorSaldo.text;

  EdValorPagamento.SelectAll;
end;

procedure TFMovimentoEntrada.EdValorPagamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then // Tecla Enter
  begin

    if StrToFloat(EdValorPagamento.Text) = 0 then
    begin
      if StrToFloat(EdValorSaldo.Text) <= 0 then
      begin
        BtFinalizar.SetFocus;
        exit;
      end;

      ShowMessage('Favor informar o valor');
      exit;
    end;

    InserirPagamento;
    EdValorPagamento.Text := EdValorSaldo.text;
    if StrToFloat(EdValorSaldo.Text) > 0 then
    begin
      CbTipoPagamento.SetFocus;
    end
    else
      BtFinalizar.SetFocus;
  end;
end;

procedure TFMovimentoEntrada.FormCreate(Sender: TObject);
begin
  EdValorCompraItem.Text := '0';
  EdPrecoUnit.Text := '0';
  EdPrecoProduto.Text := '0';
end;

procedure TFMovimentoEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then  //Tecla F1
  begin
    if (Tsgeral.TabIndex = 1) then
      BtNovoClienteEntidade.Click
    else
      IniciaClienteNovo;
  end;

  if key = 67 then
  begin
    CancelarCupom;
  end;

  if key = 113 then
  begin
    if (Tsgeral.TabIndex = 1) then
      PesquisaProduto
    else
      ConsultaPreco;
  end;
end;

procedure TFMovimentoEntrada.FormShow(Sender: TObject);
begin
  Tsgeral.TabIndex := 0;
  EdCodigo.SetFocus;
end;

procedure TFMovimentoEntrada.IniciaClienteNovo;
begin
  EdCodigo.Text := '0';
  EdCpfCnpj.Enabled := True;
  EdNome.Enabled := True;
  CbParceria.Enabled := True;
  EdCpfCnpj.SetFocus;
end;

procedure TFMovimentoEntrada.InserirPagamento;
var
  xFbMovimentoPagamento : TFDQuery;
  xFdQuerySeqMovimentoPagamento: TFDQuery;
begin
  try
    xFdQuerySeqMovimentoPagamento := TFDQuery.Create(nil);
    xFdQuerySeqMovimentoPagamento.Connection := dm.ConnectionPostgres;
    xFdQuerySeqMovimentoPagamento.SQL.Add(' select coalesce(max(cod_pagamento),0) + 1 cod_pagamento ');
    xFdQuerySeqMovimentoPagamento.SQL.Add('   from movimento_pagamento ');
    xFdQuerySeqMovimentoPagamento.SQL.Add('  where cod_movimento = :cod_movimento ');
    xFdQuerySeqMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFdQuerySeqMovimentoPagamento.Open;

    xFbMovimentoPagamento := TFDQuery.Create(nil);
    xFbMovimentoPagamento.Connection := dm.ConnectionPostgres;
    xFbMovimentoPagamento.SQL.Add(' INSERT INTO movimento_pagamento( ');
    xFbMovimentoPagamento.SQL.Add('        cod_pagamento, cod_movimento, tp_pagamento, valor, flg_troco, flg_cancelado) ');
    xFbMovimentoPagamento.SQL.Add(' VALUES (:cod_pagamento, :cod_movimento, :tp_pagamento, :valor, :flg_troco, :flg_cancelado) ');

    xFbMovimentoPagamento.ParamByName('cod_pagamento').AsInteger := xFdQuerySeqMovimentoPagamento.FieldByName('cod_pagamento').AsInteger;
    xFbMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFbMovimentoPagamento.ParamByName('tp_pagamento').AsInteger := CbTipoPagamento.ItemIndex;
    xFbMovimentoPagamento.ParamByName('valor').AsFloat := StrToFloat(EdValorPagamento.Text);
    xFbMovimentoPagamento.ParamByName('flg_troco').AsString := 'N';
    xFbMovimentoPagamento.ParamByName('flg_cancelado').AsString := 'N';

    xFbMovimentoPagamento.ExecSQL;

    FdQMovimentoPagamento.Close;
    FdQMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    FdQMovimentoPagamento.Open;

    if StrToFloat(EdValorTroco.Text) <> 0 then
      InserirTroco(xFdQuerySeqMovimentoPagamento.FieldByName('cod_pagamento').AsInteger);

    EdValorSaldo.Text := FormatFloat('#0.00', StrToFloat(EdValorSaldo.Text) - StrToFloat(EdValorPagamento.Text));
  finally
    xFdQuerySeqMovimentoPagamento.Close;
    FreeAndNil(xFdQuerySeqMovimentoPagamento);
    xFbMovimentoPagamento.Close;
    FreeAndNil(xFbMovimentoPagamento);
  end;
end;

procedure TFMovimentoEntrada.InserirProduto;
var
  xFbMovimentoItem : TFDQuery;
  xFdQuerySeqMovimentoItem: TFDQuery;
begin
  EdCodProduto.SetFocus;
  try
    xFdQuerySeqMovimentoItem := TFDQuery.Create(nil);
    xFdQuerySeqMovimentoItem.Connection := dm.ConnectionPostgres;
    xFdQuerySeqMovimentoItem.SQL.Add(' select coalesce(max(cod_item_movimento),0) + 1 cod_item_movimento ');
    xFdQuerySeqMovimentoItem.SQL.Add('   from movimento_item ');
    xFdQuerySeqMovimentoItem.SQL.Add('  where cod_movimento = :cod_movimento ');
    xFdQuerySeqMovimentoItem.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFdQuerySeqMovimentoItem.Open;

    xFbMovimentoItem := TFDQuery.Create(nil);
    xFbMovimentoItem.Connection := dm.ConnectionPostgres;
    xFbMovimentoItem.SQL.Add(' INSERT INTO movimento_item( ');
    xFbMovimentoItem.SQL.Add('         cod_item_movimento, cod_movimento, cod_produto, preco_unitario, preco, quantidade, ');
    xFbMovimentoItem.SQL.Add('         tp_unidade_medida, data_validade, data_fabricacao, flg_cancelado) ');
    xFbMovimentoItem.SQL.Add(' VALUES (:cod_item_movimento, :cod_movimento, :cod_produto, :preco_unitario, :preco, :quantidade, ');
    xFbMovimentoItem.SQL.Add('         :tp_unidade_medida, :data_validade, :data_fabricacao, :flg_cancelado)');

    xFbMovimentoItem.ParamByName('cod_item_movimento').AsInteger := xFdQuerySeqMovimentoItem.FieldByName('cod_item_movimento').AsInteger;
    xFbMovimentoItem.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFbMovimentoItem.ParamByName('cod_produto').AsInteger := StrToInt(EdCodProduto.Text);
    xFbMovimentoItem.ParamByName('preco_unitario').AsFloat := StrToFloat(EdPrecoUnit.Text);
    xFbMovimentoItem.ParamByName('preco').AsFloat := StrToFloat(EdPrecoProduto.Text);
    xFbMovimentoItem.ParamByName('quantidade').AsFloat := StrToFloat(EdQuantidade.Text);
    xFbMovimentoItem.ParamByName('tp_unidade_medida').AsString := EdUnidadeMedida.Text;
    xFbMovimentoItem.ParamByName('data_validade').AsDate := EdDataValidade.Date;
    xFbMovimentoItem.ParamByName('data_fabricacao').AsDate := EdDataFabricacao.Date;
    xFbMovimentoItem.ParamByName('flg_cancelado').AsString := 'N';

    xFbMovimentoItem.ExecSQL;
    LimpaCampoProduto;
  finally
    xFdQuerySeqMovimentoItem.Close;
    FreeAndNil(xFdQuerySeqMovimentoItem);
    xFbMovimentoItem.Close;
    FreeAndNil(xFbMovimentoItem);
  end;
end;

procedure TFMovimentoEntrada.InserirTroco(ACodMovimento: Integer);
var
  xFbMovimentoPagamento : TFDQuery;
  xFdQuerySeqMovimentoPagamento: TFDQuery;
begin
  try
    xFdQuerySeqMovimentoPagamento := TFDQuery.Create(nil);
    xFdQuerySeqMovimentoPagamento.Connection := dm.ConnectionPostgres;
    xFdQuerySeqMovimentoPagamento.SQL.Add(' select coalesce(max(cod_pagamento),0) + 1 cod_pagamento ');
    xFdQuerySeqMovimentoPagamento.SQL.Add('   from movimento_pagamento ');
    xFdQuerySeqMovimentoPagamento.SQL.Add('  where cod_movimento = :cod_movimento ');
    xFdQuerySeqMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFdQuerySeqMovimentoPagamento.Open;

    xFbMovimentoPagamento := TFDQuery.Create(nil);
    xFbMovimentoPagamento.Connection := dm.ConnectionPostgres;
    xFbMovimentoPagamento.SQL.Add(' INSERT INTO movimento_pagamento( ');
    xFbMovimentoPagamento.SQL.Add('        cod_pagamento, cod_movimento, tp_pagamento, valor, flg_troco, flg_cancelado, cod_pagamento_troco) ');
    xFbMovimentoPagamento.SQL.Add(' VALUES (:cod_pagamento, :cod_movimento, :tp_pagamento, :valor, :flg_troco, :flg_cancelado, :cod_pagamento_troco) ');

    xFbMovimentoPagamento.ParamByName('cod_pagamento').AsInteger := xFdQuerySeqMovimentoPagamento.FieldByName('cod_pagamento').AsInteger;
    xFbMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    xFbMovimentoPagamento.ParamByName('tp_pagamento').AsInteger := 0;
    xFbMovimentoPagamento.ParamByName('valor').AsFloat := StrToFloat(EdValorTroco.Text);
    xFbMovimentoPagamento.ParamByName('flg_troco').AsString := 'S';
    xFbMovimentoPagamento.ParamByName('flg_cancelado').AsString := 'N';
    xFbMovimentoPagamento.ParamByName('cod_pagamento_troco').AsInteger := ACodMovimento;
    xFbMovimentoPagamento.ExecSQL;

    FdQMovimentoPagamento.Close;
    FdQMovimentoPagamento.ParamByName('cod_movimento').AsInteger := FSequenciaMovimento;
    FdQMovimentoPagamento.Open;

  finally
    xFdQuerySeqMovimentoPagamento.Close;
    FreeAndNil(xFdQuerySeqMovimentoPagamento);
    xFbMovimentoPagamento.Close;
    FreeAndNil(xFbMovimentoPagamento);
  end;
end;

procedure TFMovimentoEntrada.LimpaCampoProduto;
begin
  EdCodProduto.Text := '';
  EdNomeProduto.Text := '';
  CbParceria.ItemIndex := 0;
  EdCpfCnpj.Text := '';
  EdQuantidade.Text := '1';
  EdPrecoProduto.Text := '0,00';
  EdDataFabricacao.Date := now;
  EdDataValidade.Date := now;
  EdPErDesc.Text := '0%';
  EdValorCompraItem.Text := '0';
end;

procedure TFMovimentoEntrada.LimpaCampos;
begin

  LimpaCampoProduto;
  EdCodigo.Text := '';
  FSequenciaMovimento := 0;
  FParceria := 0;
  Tsgeral.TabIndex := 0;
  EdCodigo.SetFocus;
  EdNome.Text := '';
  EdCpfCnpjEntidade.Text := '';
  EdNomeEntidade.Text := '';
  CbParceriaEntidade.ItemIndex := 0;
end;

procedure TFMovimentoEntrada.PesquisaProduto;
var
  xPesquisa : TFPesquisa;
begin
  xPesquisa := TFPesquisa.Create(nil);
  xPesquisa.PesquisaProduto(EdCodigo.Text);
  if (xPesquisa.ShowModal > 0) then
  begin
    EdCodProduto.Text := IntToStr(xPesquisa.ModalResult);
    AtualizarProduto;
  end
  else
    EdCodigo.Text := '';

  FreeAndNil(xPesquisa);
end;

procedure TFMovimentoEntrada.TsgeralChange(Sender: TObject);
begin
  if (FSequenciaMovimento > 0) and (Tsgeral.TabIndex = 0) then
  begin
    Tsgeral.TabIndex := 1;
  end;
end;

procedure TFMovimentoEntrada.TsgeralChanging(Sender: TObject;
  var AllowChange: Boolean);
begin

  if (FSequenciaMovimento = 0) then
  begin
    AllowChange := False;
    exit;
  end;

  if (StrToFloat(EdValorCompraItem.Text) = 0) and (FSequenciaMovimento > 0) then
  begin
    AllowChange := False;
    exit;
  end;
end;

procedure TFMovimentoEntrada.ValidaEntidade;
var
  xFdQuery: TFDQuery;
begin
  EdNome.Text := '';
  if (((EdCodigo.Text = '') and (Tsgeral.TabIndex = 0)) or ((EdCpfCnpjEntidade.Text = '') and (Tsgeral.TabIndex = 1))) then
  begin
    BtCompra.SetFocus;
    exit;
  end;

  try
    xFdQuery := TFDQuery.Create(nil);
    xFdQuery.Connection := dm.ConnectionPostgres;
    xFdQuery.SQL.Add(' select * ');
    xFdQuery.SQL.Add('   from entidade ');
    xFdQuery.SQL.Add('  where ((cod_entidade = :cod_entidade) ');
    xFdQuery.SQL.Add('     or (cpf_cnpj = :cpf_cnpj)) ');
    if (Tsgeral.TabIndex = 0) then
    begin
      if (length(EdCodigo.Text) < 10) then
      begin
        xFdQuery.ParamByName('cod_entidade').AsInteger := StrToInt(EdCodigo.Text);
      end
      else
      begin
        xFdQuery.ParamByName('cod_entidade').DataType := ftInteger;
        xFdQuery.ParamByName('cod_entidade').Clear;
      end;
      xFdQuery.ParamByName('cpf_cnpj').AsString := EdCpfCnpj.Text;
    end
    else
    begin
      if (length(EdCpfCnpjEntidade.Text) < 10) then
      begin
        xFdQuery.ParamByName('cod_entidade').AsInteger := StrToInt(EdCpfCnpjEntidade.Text);
      end
      else
      begin
        xFdQuery.ParamByName('cod_entidade').DataType := ftInteger;
        xFdQuery.ParamByName('cod_entidade').Clear;
      end;
      xFdQuery.ParamByName('cpf_cnpj').AsString := EdCpfCnpjEntidade.Text;
    end;

    xFdQuery.Open;

    if not xFdQuery.IsEmpty then
    begin
      EdCodigo.Text := xFdQuery.FieldByName('cod_entidade').AsString;
      EdNome.Text := xFdQuery.FieldByName('nome').AsString;
      EdCpfCnpjEntidade.Text := xFdQuery.FieldByName('cod_entidade').AsString;
      EdNomeEntidade.Text := xFdQuery.FieldByName('nome').AsString;
      EdCpfCnpj.Text := xFdQuery.FieldByName('cpf_cnpj').AsString;
      FParceria := xFdQuery.FieldByName('parceria').AsInteger;
      CbParceria.ItemIndex := FParceria;
      CbParceriaEntidade.ItemIndex := FParceria;
    end;

  finally
    xFdQuery.Close;
    FreeAndNil(xFdQuery);
  end;

  if (Tsgeral.TabIndex = 0) then
    EdNome.SetFocus
  else
    EdNomeEntidade.SetFocus;
end;

end.
