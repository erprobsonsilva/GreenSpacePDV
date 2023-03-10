object FRelatorioFiltro: TFRelatorioFiltro
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'Filtro Relat'#243'rios'
  ClientHeight = 483
  ClientWidth = 889
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 889
    Height = 483
    ActivePage = TsProduto
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TsProduto: TTabSheet
      Caption = 'Produto'
      object Label1: TLabel
        Left = 49
        Top = 6
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
        Left = 16
        Top = 45
        Width = 109
        Height = 24
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 27
        Top = 83
        Width = 98
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdNomeProduto: TEdit
        Left = 311
        Top = 3
        Width = 482
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EdCodProduto: TEdit
        Left = 128
        Top = 3
        Width = 177
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = EdCodProdutoExit
        OnKeyDown = EdCodProdutoKeyDown
      end
      object Button2: TButton
        Left = 730
        Top = 373
        Width = 123
        Height = 41
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
      object DtpDataInicio: TDateTimePicker
        Left = 128
        Top = 42
        Width = 177
        Height = 32
        Date = 44990.000000000000000000
        Time = 0.791623101853474500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DtpDataFim: TDateTimePicker
        Left = 128
        Top = 81
        Width = 177
        Height = 32
        Date = 44990.000000000000000000
        Time = 0.791623101853474500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object TsResumoVenda: TTabSheet
      Caption = 'Resumo Venda'
      ImageIndex = 1
      object Label4: TLabel
        Left = 24
        Top = 53
        Width = 109
        Height = 24
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 35
        Top = 91
        Width = 98
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 25
        Top = 15
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
      object DtpInicioVenda: TDateTimePicker
        Left = 136
        Top = 50
        Width = 177
        Height = 32
        Date = 44990.000000000000000000
        Time = 0.791623101853474500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DtpVendaFim: TDateTimePicker
        Left = 136
        Top = 89
        Width = 177
        Height = 32
        Date = 44990.000000000000000000
        Time = 0.791623101853474500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CbTipoPagamento: TComboBox
        Left = 136
        Top = 12
        Width = 297
        Height = 32
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 4
        ParentFont = False
        TabOrder = 2
        Text = 'TODAS AS CONDI'#199#213'ES'
        Items.Strings = (
          'DINHEIRO'
          'PIX'
          'CART'#195'O CREDITO'
          'CART'#195'O D'#201'BITO'
          'TODAS AS CONDI'#199#213'ES')
      end
      object Button1: TButton
        Left = 730
        Top = 373
        Width = 123
        Height = 41
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
end
