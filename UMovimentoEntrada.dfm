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
    ActivePage = TsItem
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
      object DBGrid2: TDBGrid
        Left = 24
        Top = 216
        Width = 839
        Height = 390
        DataSource = DsMovimentoPagamento
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object BtFinalizar: TButton
        Left = 635
        Top = 612
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
  object FdMovimentoItem: TFDTable
    IndexFieldNames = 'cod_item_movimento;cod_movimento'
    Connection = dm.ConnectionPostgres
    TableName = 'movimento_item'
    Left = 620
    Top = 264
    object FdMovimentoItemcod_movimento: TFMTBCDField
      FieldName = 'cod_movimento'
      Origin = 'cod_movimento'
      Visible = False
      Precision = 15
      Size = 0
    end
    object FdMovimentoItemcod_item_movimento: TFMTBCDField
      DisplayLabel = 'Item'
      FieldName = 'cod_item_movimento'
      Origin = 'cod_item_movimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object FdMovimentoItemcod_produto: TFMTBCDField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      Precision = 15
      Size = 0
    end
    object FdMovimentoItemquantidade: TBCDField
      DisplayLabel = 'Qtd'
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 3
    end
    object FdMovimentoItempreco_unitario: TBCDField
      FieldName = 'preco_unitario'
      Origin = 'preco_unitario'
      Precision = 15
      Size = 2
    end
    object FdMovimentoItempreco: TBCDField
      DisplayLabel = 'Pre'#231'o Total'
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 15
      Size = 2
    end
    object FdMovimentoItemtp_unidade_medida: TWideStringField
      DisplayLabel = 'UM'
      FieldName = 'tp_unidade_medida'
      Origin = 'tp_unidade_medida'
      Size = 3
    end
    object FdMovimentoItemdata_validade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'data_validade'
      Origin = 'data_validade'
    end
    object FdMovimentoItemdata_fabricacao: TDateField
      DisplayLabel = 'Fabrica'#231#227'o'
      FieldName = 'data_fabricacao'
      Origin = 'data_fabricacao'
    end
  end
  object DsMovimentoItem: TDataSource
    DataSet = FdQMovimentoItem
    Left = 620
    Top = 320
  end
  object DsMovimentoPagamento: TDataSource
    DataSet = FdMovimentoPagamento
    Left = 740
    Top = 312
  end
  object FdMovimentoPagamento: TFDTable
    IndexFieldNames = 'cod_pagamento;cod_movimento'
    Connection = dm.ConnectionPostgres
    TableName = 'movimento_pagamento'
    Left = 740
    Top = 256
    object FdMovimentoPagamentocod_pagamento: TFMTBCDField
      DisplayLabel = 'Seq. Pagamento'
      FieldName = 'cod_pagamento'
      Origin = 'cod_pagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object FdMovimentoPagamentocod_movimento: TFMTBCDField
      FieldName = 'cod_movimento'
      Origin = 'cod_movimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object FdMovimentoPagamentotp_pagamento: TFMTBCDField
      DisplayLabel = 'Tipo'
      FieldName = 'tp_pagamento'
      Origin = 'tp_pagamento'
      Precision = 15
      Size = 0
    end
    object FdMovimentoPagamentovalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
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
    Left = 856
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
end
