object FPesquisa: TFPesquisa
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'FPesquisa'
  ClientHeight = 658
  ClientWidth = 1339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1339
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 92
      Width = 181
      Height = 24
      Caption = 'Nome/C'#243'digo barra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 60
      Width = 181
      Height = 24
      Caption = 'Pesquisa de Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtPesquisa: TButton
      Left = 545
      Top = 88
      Width = 128
      Height = 35
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtPesquisaClick
    end
    object EdNome: TEdit
      Left = 194
      Top = 90
      Width = 345
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EdNomeKeyDown
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1337
      Height = 32
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label23: TLabel
        Left = 14
        Top = 1
        Width = 333
        Height = 24
        Caption = '[Enter] : Pesquisa e Adiciona Produto'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 1339
    Height = 343
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DbGridItem: TDBGrid
      Left = 1
      Top = 1
      Width = 1337
      Height = 341
      Align = alClient
      DataSource = DsPEsquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = DbGridItemKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 488
    Width = 1339
    Height = 170
    Align = alBottom
    TabOrder = 2
    object BtConfirmar: TButton
      Left = 7
      Top = 5
      Width = 113
      Height = 35
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtConfirmarClick
    end
    object Button3: TButton
      Left = 126
      Top = 5
      Width = 113
      Height = 35
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object FDQPesquisa: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'select * '
      '  from produto p'
      ' where ((upper(p.descricao) like upper(:descricao))'
      '    or (upper(p.nome) like upper(:nome))'
      '    or (upper(p.cod_barra) like upper(:cod_barra)))')
    Left = 920
    Top = 40
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Value = '%coca%'
      end
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = #39'%coca%'#39
      end
      item
        Name = 'COD_BARRA'
        DataType = ftString
        ParamType = ptInput
        Value = #39'%%'#39
      end>
    object FDQPesquisacod_produto: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object FDQPesquisacod_balanca: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'cod_balanca'
      Origin = 'cod_balanca'
      Precision = 15
      Size = 0
    end
    object FDQPesquisadescricao: TWideStringField
      DisplayWidth = 30
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object FDQPesquisapreco: TBCDField
      FieldName = 'preco'
      Origin = 'preco'
      DisplayFormat = 'R$ #,,0.00'
      Precision = 15
      Size = 2
    end
    object FDQPesquisaquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      DisplayFormat = '#,,0.000'
      Precision = 15
      Size = 3
    end
    object FDQPesquisacod_barra: TWideStringField
      FieldName = 'cod_barra'
      Origin = 'cod_barra'
      Size = 200
    end
  end
  object DsPEsquisa: TDataSource
    DataSet = FDQPesquisa
    Left = 840
    Top = 40
  end
end
