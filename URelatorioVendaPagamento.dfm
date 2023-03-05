object FRelatorioVendaPagamento: TFRelatorioVendaPagamento
  Left = 0
  Top = 0
  Caption = 'Relatorio Venda Pagamento'
  ClientHeight = 705
  ClientWidth = 901
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
    Top = 2
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
      object RLDBText3: TRLDBText
        Left = 308
        Top = 0
        Width = 98
        Height = 16
        Align = faTopOnly
        DataField = 'data_movimento'
        DataSource = DsGeral
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 86
        Height = 16
        Align = faTopOnly
        DataField = 'tp_pagamento'
        DataSource = DsGeral
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 140
        Top = 0
        Width = 101
        Height = 16
        Align = faTopOnly
        DataField = 'valor_pagamento'
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
        Width = 41
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel3: TRLLabel
        Left = 140
        Top = 13
        Width = 38
        Height = 16
        Caption = 'Valor'
      end
      object RLLabel5: TRLLabel
        Left = 308
        Top = 13
        Width = 78
        Height = 16
        Caption = 'Data Venda'
      end
    end
  end
  object DsGeral: TDataSource
    DataSet = FdGeral
    Left = 824
    Top = 120
  end
  object FdGeral: TFDQuery
    Connection = dm.ConnectionPostgres
    SQL.Strings = (
      'select '
      #9'CASE'
      #9'WHEN mp.tp_pagamento = 0 THEN '#39'DINHEIRO'#39
      #9'WHEN mp.tp_pagamento = 1 THEN '#39'PIX'#39
      #9'WHEN mp.tp_pagamento = 2 THEN '#39'CART'#195'O CREDITO'#39
      #9'WHEN mp.tp_pagamento = 3 THEN '#39'CART'#195'O D'#201'BITO'#39
      #9'END tp_pagamento,'
      '       m.data_movimento, '
      '       sum(mp.valor) valor_pagamento'
      '  from movimento m,'
      '       movimento_pagamento mp'
      ' where m.cod_movimento = mp.cod_movimento'
      '   and coalesce(mp.flg_cancelado,'#39'N'#39') = '#39'N'#39
      '   and mp.tp_pagamento = coalesce(:tp_pagamento,mp.tp_pagamento)'
      '   and data_movimento >= :data_movimento_ini'
      '   and data_movimento <= :data_movimento_fim'
      ' group by mp.tp_pagamento, m.data_movimento')
    Left = 824
    Top = 72
    ParamData = <
      item
        Name = 'TP_PAGAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'DATA_MOVIMENTO_INI'
        ParamType = ptInput
      end
      item
        Name = 'DATA_MOVIMENTO_FIM'
        ParamType = ptInput
      end>
  end
end
