object frmLimparBD: TfrmLimparBD
  Left = 313
  Top = 271
  Width = 457
  Height = 333
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Limpeza de Banco de Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 297
    TabOrder = 0
    object CJVBlinkLabel1: TCJVBlinkLabel
      Left = 1
      Top = 1
      Width = 439
      Height = 32
      FontOn.Charset = ANSI_CHARSET
      FontOn.Color = clLime
      FontOn.Height = -32
      FontOn.Name = 'Courier New'
      FontOn.Style = [fsBold]
      FontOff.Charset = ANSI_CHARSET
      FontOff.Color = clBackground
      FontOff.Height = -21
      FontOff.Name = 'Courier New'
      FontOff.Style = [fsBold]
      Blink = True
      Interval = 400
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = '>>> ATEN'#199#195'O <<<'
      Color = clBackground
      ParentColor = False
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 255
      Width = 439
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 80
        Top = 2
        Width = 145
        Height = 37
        Cursor = crHandPoint
        Caption = 'Executar Limpeza'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 224
        Top = 2
        Width = 145
        Height = 37
        Cursor = crHandPoint
        Caption = 'Retornar'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object RichEdit1: TRichEdit
      Left = 1
      Top = 33
      Width = 439
      Height = 222
      TabStop = False
      Align = alClient
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Utilize esta op'#231#227'o para apagar todos os '
        'registros do banco de dados de uma '#250'nica '
        'vez, com exce'#231#227'o da tabela de Ess'#234'ncia, '
        'Produtos, Sub-Produtos e Munic'#237'pios, mas '
        'lembre-se que uma vez executado n'#227'o ser'#225
        'mais poss'#237'vel a restaura'#231#227'o dos lan'#231'amen-'
        'tos a menos que haja uma C'#243'pia de Segu-'
        'ran'#231'a do Sistema, para maiores informa'#231#245'es'
        'ou em caso de duvidas entre em contato com '
        'o Administrador do Sistema.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
end
