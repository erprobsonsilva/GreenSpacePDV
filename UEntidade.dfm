object FEntidade: TFEntidade
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'Cadastro de Entidade'
  ClientHeight = 610
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 43
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 995
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 9
      Width = 380
      Height = 25
      DataSource = DsEntidade
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 43
    Width = 1042
    Height = 567
    Align = alClient
    DataSource = DsEntidade
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FdqSequencia: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'select coalesce(max(cod_entidade),0) + 1 cod_entidade'
      'from entidade')
    Left = 904
    Top = 8
  end
  object DsEntidade: TDataSource
    DataSet = dm.DtEntidade
    OnStateChange = DsEntidadeStateChange
    Left = 824
    Top = 8
  end
end
