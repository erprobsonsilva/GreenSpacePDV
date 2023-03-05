object FMovimentoEntrada: TFMovimentoEntrada
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'Movimento de Entrada de Mercadoria'
  ClientHeight = 709
  ClientWidth = 1871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Tsgeral: TPageControl
    Left = 0
    Top = 0
    Width = 1871
    Height = 709
    ActivePage = TsPagamento
    Align = alClient
    TabOrder = 0
    OnChange = TsgeralChange
    OnChanging = TsgeralChanging
    object TsMovimento: TTabSheet
      Caption = 'Inicial'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1863
        Height = 681
        Align = alClient
        TabOrder = 0
        object Label10: TLabel
          Left = 184
          Top = 131
          Width = 99
          Height = 24
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EdCodigo: TEdit
          Left = 184
          Top = 176
          Width = 185
          Height = 32
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
        end
        object EdNome: TEdit
          Left = 375
          Top = 176
          Width = 586
          Height = 32
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BtCompra: TButton
          Left = 375
          Top = 248
          Width = 354
          Height = 113
          Caption = 'Iniciar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          TabOrder = 2
          OnClick = BtIniciarClick
        end
      end
    end
    object TsItem: TTabSheet
      Caption = 'Item'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 66
        Width = 76
        Height = 24
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 925
        Top = 104
        Width = 38
        Height = 24
        Caption = 'Qtd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 913
        Top = 614
        Width = 128
        Height = 24
        Caption = 'Valor Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1119
        Top = 104
        Width = 108
        Height = 24
        Caption = 'Pre'#231'o Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LbFornecedor: TLabel
        Left = 40
        Top = 19
        Width = 112
        Height = 24
        Caption = 'Fornecedor: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 927
        Top = 61
        Width = 35
        Height = 24
        Caption = 'UM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 40
        Top = 104
        Width = 102
        Height = 24
        Caption = 'Fabrica'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 321
        Top = 104
        Width = 84
        Height = 24
        Caption = 'Validade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 1123
        Top = 61
        Width = 104
        Height = 24
        Caption = 'Pre'#231'o Unit.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdCodProduto: TEdit
        Left = 152
        Top = 58
        Width = 163
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EdCodProdutoChange
        OnExit = EdCodProdutoExit
        OnKeyDown = EdCodProdutoKeyDown
      end
      object EdNomeProduto: TEdit
        Left = 321
        Top = 58
        Width = 600
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object EdQuantidade: TEdit
        Left = 982
        Top = 104
        Width = 121
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '1'
        OnChange = EdQuantidadeChange
      end
      object EdValorCompraItem: TEdit
        Left = 1083
        Top = 611
        Width = 121
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object BtFinalizarItem: TButton
        Left = 1210
        Top = 606
        Width = 146
        Height = 42
        Caption = 'Finalizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtFinalizarItemClick
      end
      object EdPrecoProduto: TEdit
        Left = 1233
        Top = 104
        Width = 121
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = EdPrecoProdutoChange
      end
      object DbGridItem: TDBGrid
        Left = 42
        Top = 152
        Width = 1314
        Height = 448
        DataSource = DsMovimentoItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DbGridItemDrawColumnCell
        OnDblClick = DbGridItemDblClick
      end
      object EdUnidadeMedida: TEdit
        Left = 982
        Top = 58
        Width = 121
        Height = 32
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EdDataFabricacao: TDateTimePicker
        Left = 152
        Top = 102
        Width = 163
        Height = 32
        Date = 44986.000000000000000000
        Time = 0.886556863428268100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EdDataValidade: TDateTimePicker
        Left = 411
        Top = 101
        Width = 163
        Height = 32
        Date = 44986.000000000000000000
        Time = 0.886556863428268100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object BtAdicionarProduto: TButton
        Left = 580
        Top = 96
        Width = 129
        Height = 43
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = BtAdicionarProdutoClick
      end
      object EdPrecoUnit: TEdit
        Left = 1233
        Top = 58
        Width = 121
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
    end
    object TsPagamento: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 2
      object Label3: TLabel
        Left = 48
        Top = 21
        Width = 108
        Height = 24
        Caption = 'Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 592
        Top = 9
        Width = 128
        Height = 24
        Caption = 'Valor Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 611
        Top = 111
        Width = 109
        Height = 24
        Caption = 'Valor Troco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 560
        Top = 161
        Width = 160
        Height = 24
        Caption = 'Valor Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 612
        Top = 56
        Width = 108
        Height = 24
        Caption = 'Valor Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdTotalCompra: TEdit
        Left = 742
        Top = 6
        Width = 121
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EdValorTroco: TEdit
        Left = 742
        Top = 111
        Width = 121
        Height = 41
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EdValorPagamento: TEdit
        Left = 742
        Top = 158
        Width = 121
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = EdValorPagamentoChange
        OnEnter = EdValorPagamentoEnter
        OnKeyDown = EdValorPagamentoKeyDown
      end
      object EdValorSaldo: TEdit
        Left = 742
        Top = 53
        Width = 121
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DbGridPagamento: TDBGrid
        Left = 24
        Top = 216
        Width = 839
        Height = 393
        DataSource = DsMovimentoPagamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DbGridPagamentoDrawColumnCell
        OnDblClick = DbGridPagamentoDblClick
      end
      object BtFinalizar: TButton
        Left = 635
        Top = 644
        Width = 228
        Height = 45
        Caption = 'Finalizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtFinalizarClick
      end
      object CbTipoPagamento: TComboBox
        Left = 192
        Top = 18
        Width = 297
        Height = 32
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'DINHEIRO'
        OnKeyDown = CbTipoPagamentoKeyDown
        Items.Strings = (
          'DINHEIRO'
          'PIX'
          'CART'#195'O CREDITO'
          'CART'#195'O D'#201'BITO')
      end
    end
  end
  object DsMovimentoItem: TDataSource
    DataSet = FdQMovimentoItem
    Left = 620
    Top = 320
  end
  object DsMovimentoPagamento: TDataSource
    DataSet = FdQMovimentoPagamento
    Left = 748
    Top = 320
  end
  object FdQMovimentoItem: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'SELECT M.COD_ITEM_MOVIMENTO,'
      '       M.COD_MOVIMENTO,'
      
        '       coalesce(P.COD_BARRA, CAST(P.COD_BALANCA AS VARCHAR)) COD' +
        'IGO,'
      '       coalesce(P.NOME,P.DESCRICAO) NOME,'
      '       M.QUANTIDADE,'
      '       M.PRECO_UNITARIO,'
      '       M.PRECO,'
      '       M.TP_UNIDADE_MEDIDA,'
      '       M.FLG_CANCELADO'
      '  FROM MOVIMENTO_ITEM M,'
      '       PRODUTO P'
      ' WHERE M.COD_PRODUTO = P.COD_PRODUTO'
      '   AND M.COD_MOVIMENTO = :COD_MOVIMENTO'
      'ORDER BY M.COD_ITEM_MOVIMENTO')
    Left = 624
    Top = 256
    ParamData = <
      item
        Name = 'COD_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FdQMovimentoItemcod_item_movimento: TFMTBCDField
      DisplayLabel = 'Seq.'
      FieldName = 'cod_item_movimento'
      Origin = 'cod_item_movimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object FdQMovimentoItemcodigo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod. Produto'
      DisplayWidth = 10
      FieldName = 'codigo'
      Origin = 'codigo'
      ReadOnly = True
      Size = 8190
    end
    object FdQMovimentoItemnome: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      DisplayWidth = 25
      FieldName = 'nome'
      Origin = 'nome'
      ReadOnly = True
      Size = 8190
    end
    object FdQMovimentoItemquantidade: TBCDField
      DisplayLabel = 'Qtd.'
      DisplayWidth = 7
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 3
    end
    object FdQMovimentoItempreco_unitario: TBCDField
      DisplayLabel = 'P. Unitario'
      DisplayWidth = 7
      FieldName = 'preco_unitario'
      Origin = 'preco_unitario'
      Precision = 15
      Size = 2
    end
    object FdQMovimentoItempreco: TBCDField
      DisplayLabel = 'P. Total'
      DisplayWidth = 7
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 15
      Size = 2
    end
    object FdQMovimentoItemtp_unidade_medida: TWideStringField
      DisplayLabel = 'U.M'
      FieldName = 'tp_unidade_medida'
      Origin = 'tp_unidade_medida'
      Size = 3
    end
    object FdQMovimentoItemcod_movimento: TFMTBCDField
      FieldName = 'cod_movimento'
      Origin = 'cod_movimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object FdQMovimentoItemflg_cancelado: TWideStringField
      FieldName = 'flg_cancelado'
      Origin = 'flg_cancelado'
      Visible = False
      Size = 1
    end
  end
  object FdQMovimentoPagamento: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'select CASE'
      '       WHEN mp.tp_pagamento = 0 THEN '#39'DINHEIRO'#39
      '       WHEN mp.tp_pagamento = 1 THEN '#39'PIX'#39
      '       WHEN mp.tp_pagamento = 2 THEN '#39'CARTAO CREDITO'#39
      '       WHEN mp.tp_pagamento = 3 THEN '#39'CARTAO DEBITO'#39
      '       END tp_pagamentos,'
      '       tp_pagamento,'
      '       mp.valor valor,'
      '       mp.flg_troco,'
      '       mp.flg_cancelado,'
      '       mp.COD_PAGAMENTO,'
      '       m.cod_movimento'
      '  from movimento m,'
      '       movimento_pagamento mp'
      ' where m.cod_movimento = mp.cod_movimento'
      '   and m.cod_movimento = :cod_movimento ')
    Left = 748
    Top = 256
    ParamData = <
      item
        Name = 'COD_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FdQMovimentoPagamentotp_pagamento: TFMTBCDField
      FieldName = 'tp_pagamento'
      Origin = 'tp_pagamento'
      Precision = 15
      Size = 0
    end
    object FdQMovimentoPagamentovalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object FdQMovimentoPagamentoflg_troco: TWideStringField
      DisplayLabel = 'Troco'
      DisplayWidth = 2
      FieldName = 'flg_troco'
      Origin = 'flg_troco'
      Size = 1
    end
    object FdQMovimentoPagamentoflg_cancelado: TWideStringField
      DisplayLabel = 'Cancelado'
      DisplayWidth = 4
      FieldName = 'flg_cancelado'
      Origin = 'flg_cancelado'
      Size = 1
    end
    object FdQMovimentoPagamentocod_pagamento: TFMTBCDField
      FieldName = 'cod_pagamento'
      Origin = 'cod_pagamento'
      Visible = False
      Precision = 15
      Size = 0
    end
    object FdQMovimentoPagamentocod_movimento: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'cod_movimento'
      Origin = 'cod_movimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
  end
end
