inherited FMovimentoVenda: TFMovimentoVenda
  Caption = 'FMovimentoVenda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Tsgeral: TPageControl
    ActivePage = TsPagamento
    inherited TsMovimento: TTabSheet
      inherited Panel1: TPanel
        inherited Label10: TLabel
          Left = 175
          Top = 122
          Width = 69
          Caption = 'Cliente:'
          ExplicitLeft = 175
          ExplicitTop = 122
          ExplicitWidth = 69
        end
        inherited EdCodigo: TEdit
          Left = 175
          Top = 167
          ExplicitLeft = 175
          ExplicitTop = 167
        end
        inherited EdNome: TEdit
          Left = 366
          Top = 167
          ExplicitLeft = 366
          ExplicitTop = 167
        end
        inherited BtCompra: TButton
          Left = 366
          Top = 238
          ExplicitLeft = 366
          ExplicitTop = 238
        end
      end
    end
    inherited TsItem: TTabSheet
      inherited Label1: TLabel
        Top = 64
        ExplicitTop = 64
      end
      inherited Label2: TLabel
        Left = 831
        Top = 110
        ExplicitLeft = 831
        ExplicitTop = 110
      end
      inherited Label7: TLabel
        Left = 833
        Top = 475
        ExplicitLeft = 833
        ExplicitTop = 475
      end
      inherited Label9: TLabel
        Left = 1017
        Top = 110
        ExplicitLeft = 1017
        ExplicitTop = 110
      end
      inherited Label11: TLabel
        Left = 831
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
        ExplicitLeft = 1021
        ExplicitTop = 66
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
        Top = 108
        Enabled = False
        ExplicitLeft = 886
        ExplicitTop = 108
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
        ExplicitLeft = 1131
        ExplicitTop = 56
      end
    end
    inherited TsPagamento: TTabSheet
      inherited Label3: TLabel
        Left = 42
        ExplicitLeft = 42
      end
      inherited EdValorTroco: TEdit
        Height = 32
        Font.Height = -20
        ExplicitHeight = 32
      end
      inherited DBGrid2: TDBGrid
        Height = 329
      end
      inherited BtFinalizar: TButton
        Top = 559
        ExplicitTop = 559
      end
    end
  end
  inherited FdMovimentoItem: TFDTable
    Left = 492
    Top = 216
  end
  inherited DsMovimentoItem: TDataSource
    Left = 492
    Top = 272
  end
  inherited DsMovimentoPagamento: TDataSource
    Left = 612
    Top = 264
  end
  inherited FdMovimentoPagamento: TFDTable
    Left = 612
    Top = 208
  end
  inherited FdQMovimentoItem: TFDQuery
    Left = 728
    Top = 208
  end
end
