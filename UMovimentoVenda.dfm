inherited FMovimentoVenda: TFMovimentoVenda
  Caption = 'FMovimentoVenda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Tsgeral: TPageControl
    inherited TsMovimento: TTabSheet
      inherited Panel1: TPanel
        inherited Label10: TLabel
          Left = 175
          Top = 137
          Width = 69
          Caption = 'Cliente:'
          ExplicitLeft = 175
          ExplicitTop = 137
          ExplicitWidth = 69
        end
        inherited Label15: TLabel
          Left = 366
          Top = 137
          Width = 96
          Caption = 'Cpf / Cnpj:'
          ExplicitLeft = 366
          ExplicitTop = 137
          ExplicitWidth = 96
        end
        inherited Label16: TLabel
          Left = 557
          Top = 137
          Width = 59
          Caption = 'Nome:'
          ExplicitLeft = 557
          ExplicitTop = 137
          ExplicitWidth = 59
        end
        inherited Label17: TLabel
          Left = 1018
          Top = 137
          ExplicitLeft = 1018
          ExplicitTop = 137
        end
        inherited EdCodigo: TEdit
          Left = 175
          Top = 167
          ExplicitLeft = 175
          ExplicitTop = 167
        end
        inherited EdNome: TEdit
          Left = 557
          Top = 167
          ExplicitLeft = 557
          ExplicitTop = 167
        end
        inherited BtCompra: TButton
          Left = 422
          Top = 246
          ExplicitLeft = 422
          ExplicitTop = 246
        end
        inherited EdCpfCnpj: TEdit
          Left = 366
          Top = 167
          ExplicitLeft = 366
          ExplicitTop = 167
        end
        inherited CbParceria: TComboBox
          Left = 1018
          Top = 167
          Enabled = False
          ExplicitLeft = 1018
          ExplicitTop = 167
        end
      end
    end
    inherited TsItem: TTabSheet
      inherited Label2: TLabel
        Left = 831
        Top = 71
        ExplicitLeft = 831
        ExplicitTop = 71
      end
      inherited Label7: TLabel
        Left = 846
        Top = 473
        ExplicitLeft = 846
        ExplicitTop = 473
      end
      inherited Label9: TLabel
        Left = 1017
        Top = 110
        Visible = False
        ExplicitLeft = 1017
        ExplicitTop = 110
      end
      inherited Label11: TLabel
        Left = 831
        Visible = False
        ExplicitLeft = 831
      end
      inherited Label12: TLabel
        Left = 48
        Top = 110
        ExplicitLeft = 48
        ExplicitTop = 110
      end
      inherited Label13: TLabel
        Top = 110
        Visible = False
        ExplicitTop = 110
      end
      inherited Label14: TLabel
        Left = 1021
        Top = 66
        Visible = False
        ExplicitLeft = 1021
        ExplicitTop = 66
      end
      inherited Label18: TLabel
        Left = 584
        Top = 475
        ExplicitLeft = 584
        ExplicitTop = 475
      end
      inherited Label19: TLabel
        Left = 283
        Top = 473
        ExplicitLeft = 283
        ExplicitTop = 473
      end
      inherited EdCodProduto: TEdit
        Width = 177
        ExplicitWidth = 177
      end
      inherited EdNomeProduto: TEdit
        Left = 335
        Width = 482
        ExplicitLeft = 335
        ExplicitWidth = 482
      end
      inherited EdQuantidade: TEdit
        Left = 886
        Top = 69
        Enabled = False
        ExplicitLeft = 886
        ExplicitTop = 69
      end
      inherited EdValorCompraItem: TEdit
        Left = 979
        Top = 472
        ExplicitLeft = 979
        ExplicitTop = 472
      end
      inherited BtFinalizarItem: TButton
        Left = 1106
        Top = 465
        ExplicitLeft = 1106
        ExplicitTop = 465
      end
      inherited EdPrecoProduto: TEdit
        Left = 1131
        Top = 108
        Enabled = False
        Visible = False
        ExplicitLeft = 1131
        ExplicitTop = 108
      end
      inherited DbGridItem: TDBGrid
        Left = 40
        Top = 146
        Width = 1212
        Height = 313
      end
      inherited EdUnidadeMedida: TEdit
        Left = 886
        Enabled = False
        Visible = False
        ExplicitLeft = 886
      end
      inherited EdDataFabricacao: TDateTimePicker
        Top = 108
        ExplicitTop = 108
      end
      inherited EdDataValidade: TDateTimePicker
        Left = 407
        Top = 108
        Visible = False
        ExplicitLeft = 407
        ExplicitTop = 108
      end
      inherited BtAdicionarProduto: TButton
        Left = 576
        Top = 101
        Enabled = False
        Visible = False
        ExplicitLeft = 576
        ExplicitTop = 101
      end
      inherited EdPrecoUnit: TEdit
        Left = 1131
        Top = 56
        Visible = False
        ExplicitLeft = 1131
        ExplicitTop = 56
      end
      inherited EdPErDesc: TEdit
        Left = 706
        Top = 472
        ExplicitLeft = 706
        ExplicitTop = 472
      end
      inherited EdTotalItens: TEdit
        Left = 449
        Top = 470
        ExplicitLeft = 449
        ExplicitTop = 470
      end
    end
    inherited TsPagamento: TTabSheet
      inherited EdValorTroco: TEdit
        Height = 32
        Font.Height = -20
        ExplicitHeight = 32
      end
      inherited DbGridPagamento: TDBGrid
        Width = 948
        Height = 327
      end
      inherited BtFinalizar: TButton
        Top = 465
        ExplicitTop = 465
      end
    end
  end
  inherited DsMovimentoItem: TDataSource
    Left = 492
    Top = 272
  end
  inherited DsMovimentoPagamento: TDataSource
    Left = 612
    Top = 264
  end
  inherited FdQMovimentoItem: TFDQuery
    Left = 728
    Top = 208
  end
end
