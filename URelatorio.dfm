object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  Caption = 'FRelatorio'
  ClientHeight = 748
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DsGeral
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Vendas do dia.'
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 53
      Cursor = crHandPoint
      BandType = btHeader
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 88
        Height = 16
        Align = faLeftTop
        Caption = 'vida.a.granel'
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 88
        Top = 0
        Width = 502
        Height = 16
        Align = faClientTop
        Info = itTitle
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 590
        Top = 0
        Width = 128
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.:'
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 22
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 75
        Height = 16
        Align = faTopOnly
        DataField = 'cod_produto'
        DataSource = DsGeral
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 104
        Top = 0
        Width = 36
        Height = 16
        Align = faTopOnly
        DataField = 'nome'
        DataSource = DsGeral
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 324
        Top = 0
        Width = 67
        Height = 16
        Align = faTopOnly
        DataField = 'quantidade'
        DataSource = DsGeral
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 590
        Top = 0
        Width = 36
        Height = 16
        Align = faTopOnly
        DataField = 'preco'
        DataSource = DsGeral
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 96
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 648
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Text = 'Data:'
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 578
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = 'Hora:'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 91
      Width = 718
      Height = 32
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 13
        Width = 49
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 104
        Top = 13
        Width = 41
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 590
        Top = 13
        Width = 38
        Height = 16
        Caption = 'Valor'
      end
      object RLLabel5: TRLLabel
        Left = 324
        Top = 13
        Width = 78
        Height = 16
        Caption = 'Quantidade'
      end
    end
  end
  object FdGeral: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      
        'select p.cod_produto, p.nome, sum(mi.quantidade) quantidade, sum' +
        '(mi.preco) preco'
      '  from movimento m,'
      '       movimento_item mi,'
      '       produto p'
      ' where m.cod_movimento = mi.cod_movimento'
      '   and mi.cod_produto = p.cod_produto'
      '   and data_movimento = CURRENT_DATE -1'
      ' group by p.cod_produto, p.nome')
    Left = 824
    Top = 72
  end
  object DsGeral: TDataSource
    DataSet = FdGeral
    Left = 824
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 816
    Top = 408
  end
end
