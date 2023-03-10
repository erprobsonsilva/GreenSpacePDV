object FProduto: TFProduto
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'Produto'
  ClientHeight = 591
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 43
    Width = 995
    Height = 548
    Align = alClient
    DataSource = DsProduto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 43
    Align = alTop
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 9
      Width = 380
      Height = 25
      DataSource = DsProduto
      TabOrder = 0
    end
    object Button1: TButton
      Left = 672
      Top = 12
      Width = 161
      Height = 25
      Caption = 'Importar dados implanta'#231#227'o'
      Enabled = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DsProduto: TDataSource
    DataSet = dm.DtProduto
    OnStateChange = DsProdutoStateChange
    Left = 944
    Top = 8
  end
  object FdqSequencia: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'select coalesce(max(cod_produto),0) + 1 cod_produto'
      'from produto')
    Left = 880
    Top = 8
  end
end
