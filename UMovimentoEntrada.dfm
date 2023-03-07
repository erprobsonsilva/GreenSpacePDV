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
          Top = 146
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
        object Label15: TLabel
          Left = 375
          Top = 146
          Width = 89
          Height = 24
          Caption = 'Cpf / Cnpj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 566
          Top = 146
          Width = 52
          Height = 24
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 1023
          Top = 146
          Width = 72
          Height = 24
          Caption = 'Parceria'
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
          Left = 566
          Top = 176
          Width = 451
          Height = 32
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = EdNomeKeyDown
        end
        object BtCompra: TButton
          Left = 479
          Top = 256
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
          TabOrder = 3
          OnClick = BtIniciarClick
        end
        object EdCpfCnpj: TEdit
          Left = 375
          Top = 176
          Width = 185
          Height = 32
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EdCpfCnpjKeyDown
        end
        object CbParceria: TComboBox
          Left = 1023
          Top = 176
          Width = 210
          Height = 32
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = 'NENHUM'
          OnExit = CbParceriaExit
          OnKeyDown = CbParceriaKeyDown
          Items.Strings = (
            'NENHUM'
            'IMPACTO ACADEMIA')
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1861
          Height = 32
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object Label21: TLabel
            Left = 13
            Top = 1
            Width = 292
            Height = 24
            Caption = '[Enter] : Avan'#231'a Proximo Campo'
          end
          object Label22: TLabel
            Left = 325
            Top = 1
            Width = 252
            Height = 24
            Caption = '[F1] - Adiconar Novo Cliente'
          end
        end
      end
    end
    object TsItem: TTabSheet
      Caption = 'Item'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 73
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
        Top = 112
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
        Left = 949
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
        Top = 112
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
        Top = 35
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
        Top = 72
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
        Top = 112
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
        Top = 112
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
        Top = 72
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
      object Label18: TLabel
        Left = 697
        Top = 614
        Width = 116
        Height = 24
        Caption = '% Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 404
        Top = 614
        Width = 156
        Height = 24
        Caption = 'Valor Total Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdCodProduto: TEdit
        Left = 152
        Top = 70
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
        Top = 69
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
        Top = 112
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
        Top = 112
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
        Top = 69
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
        Top = 110
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
        Top = 109
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
        Top = 104
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
        Top = 69
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
      object EdPErDesc: TEdit
        Left = 819
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
        TabOrder = 12
      end
      object EdTotalItens: TEdit
        Left = 570
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
        TabOrder = 13
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1863
        Height = 32
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        object Label23: TLabel
          Left = 14
          Top = 1
          Width = 232
          Height = 24
          Caption = '[Enter] : Adiciona Produto'
        end
        object Label24: TLabel
          Left = 282
          Top = 1
          Width = 209
          Height = 24
          Caption = '[F1] - Pesquisa Produto'
        end
      end
    end
    object TsPagamento: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 2
      object Label3: TLabel
        Left = 6
        Top = 47
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
        Left = 699
        Top = 47
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
        Left = 253
        Top = 87
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
        Left = 504
        Top = 87
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
        Left = 9
        Top = 85
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
      object Label20: TLabel
        Left = 419
        Top = 47
        Width = 147
        Height = 24
        Caption = 'Total Sem Desc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdTotalCompra: TEdit
        Left = 830
        Top = 44
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
        Left = 368
        Top = 82
        Width = 121
        Height = 34
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
        Left = 670
        Top = 84
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
        Left = 123
        Top = 84
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
        Left = 3
        Top = 122
        Width = 948
        Height = 319
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
        Left = 723
        Top = 447
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
        Left = 115
        Top = 44
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
      object EdTotalSemDesc: TEdit
        Left = 572
        Top = 44
        Width = 121
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1863
        Height = 38
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object Label25: TLabel
          Left = 3
          Top = 4
          Width = 433
          Height = 24
          Caption = '[Enter] : Proximo Campo e Adiciona Finalizadora'
        end
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
      'select cast ((CASE'
      '       WHEN mp.tp_pagamento = 0 THEN '#39'DINHEIRO'#39
      '       WHEN mp.tp_pagamento = 1 THEN '#39'PIX'#39
      '       WHEN mp.tp_pagamento = 2 THEN '#39'CARTAO CREDITO'#39
      '       WHEN mp.tp_pagamento = 3 THEN '#39'CARTAO DEBITO'#39
      '       END) as Character Varying(100)) tp_pagamento,'
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
    object FdQMovimentoPagamentotp_pagamento: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'tp_pagamento'
      Origin = 'tp_pagamento'
      ReadOnly = True
      Size = 100
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
