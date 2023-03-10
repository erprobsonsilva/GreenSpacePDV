object dm: Tdm
  Left = 0
  Top = 0
  Caption = 'Data Modulo'
  ClientHeight = 414
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ConnectionBalanca: TFDConnection
    Params.Strings = (
      'Database=C:\Sistema GrenSpace\Thunder_implanta'#231#227'o.mdb'
      'ConnectionDef=Access_Demo')
    Left = 40
    Top = 88
  end
  object ConnectionPostgres: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=postgres'
      'Server=127.0.0.1'
      'DriverID=PG')
    Connected = True
    Left = 144
    Top = 16
  end
  object DtProduto: TFDTable
    Active = True
    IndexFieldNames = 'cod_produto'
    Connection = ConnectionPostgres
    TableName = 'produto'
    Left = 232
    Top = 16
    object DtProdutocod_produto: TFMTBCDField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object DtProdutocod_balanca: TFMTBCDField
      DisplayLabel = 'C'#243'digo Balan'#231'a'
      FieldName = 'cod_balanca'
      Origin = 'cod_balanca'
      Precision = 15
      Size = 0
    end
    object DtProdutocod_barra: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_barra'
      Origin = 'cod_barra'
      Size = 200
    end
    object DtProdutodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object DtProdutoquantidade: TBCDField
      DisplayLabel = 'Qtd. Estoq'
      DisplayWidth = 10
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 3
    end
    object DtProdutopreco: TBCDField
      DisplayLabel = 'Pre'#231'o Venda'
      DisplayWidth = 10
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 15
      Size = 2
    end
    object DtProdutonome: TWideStringField
      DisplayLabel = 'Nome Balan'#231'a'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 22
    end
    object DtProdutotp_unidade_medida: TWideStringField
      DisplayLabel = 'Unid. Medida'
      FieldName = 'tp_unidade_medida'
      Origin = 'tp_unidade_medida'
      Size = 3
    end
    object DtProdutocod_barra_caixa: TWideStringField
      DisplayLabel = 'C'#243'd. Barra Caixa'
      DisplayWidth = 20
      FieldName = 'cod_barra_caixa'
      Origin = 'cod_barra_caixa'
      Size = 200
    end
  end
  object DtEntidade: TFDTable
    Active = True
    IndexFieldNames = 'cod_entidade'
    Connection = ConnectionPostgres
    TableName = 'entidade'
    Left = 296
    Top = 16
    object DtEntidadecod_entidade: TFMTBCDField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_entidade'
      Origin = 'cod_entidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object DtEntidadenome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 22
    end
    object DtEntidadecpf_cnpj: TWideStringField
      DisplayLabel = 'Cpf ou Cnpj'
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 16
    end
    object DtEntidadeflg_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'flg_cliente'
      Origin = 'flg_cliente'
      Size = 1
    end
    object DtEntidadeflg_fornecedor: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'flg_fornecedor'
      LookupKeyFields = 'S,N'
      Origin = 'flg_fornecedor'
      Size = 1
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Sistema GrenSpace\libpq.dll'
    Left = 40
    Top = 16
  end
end
