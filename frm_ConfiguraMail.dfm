object frmConfiguraMail: TfrmConfiguraMail
  Left = 381
  Top = 353
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configuracion de Correo electronico'
  ClientHeight = 294
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000008FFF0000000000000000000000000008BFBFFF000000000000000000000
    0008BFBFFBFFB0000000000000000000000BFBFBFFFFFFF00000000000000000
    008FBFBFBFBFBFFFB00000000000000000FBFBF38BFBFFFFFFB0000000000000
    08BFBFB88888BFBFBFFFB000000000000BFBFB83878B8BFFFFFFFFB000000000
    8FBFBFBF38383FB8BFFBFFFFB0000000FBFB83FBFB83FB838BFFFFBFFF700008
    BFBF7838BFBFB87F87BFBFFFFF70000BFBFB8B878B8BFB8B8F838FFBF700008F
    BFBFB8B87838BFB8383F88FF700000FBFB8BFBF3838788FBFBF38BFB700008BF
    B878B8BFBFB83878BFF8FFF700000BFBF38B878BFBFBF37788FBFBF700008FBF
    BFB8B8387FBFBFB838BFFF7000008BFBFBFBFB838B8BFBFBF3FBFB70000077BF
    BFBFB887BF383FBFBFBFB70000000077FBFBFBFBF3FB878B8BFBF70000000000
    77BFBFBFBF38B778BFBF7000000000000077FBFBFBFBFB83FBFB700000000000
    000077BFBFBFBFBFBFB700000000000000000077FBFBFBFBFBF7000000000000
    0000000077BFBFBFBF70000000000000000000000077FBFBFB70000000000000
    00000000000077BFB70000000000000000000000000000777000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFF87FFFFFF01FFFFFE00
    7FFFFC001FFFFC0007FFF80001FFF800007FF000001FF0000007E0000001E000
    0001C0000001C000000380000007800000070000000F0000000F0000001F0000
    001F0000003FC000003FF000007FFC00007FFF0000FFFFC000FFFFF001FFFFFC
    01FFFFFF03FFFFFFC7FFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    000000808000800000008000800080800000C0C0C000808080000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    00000000000000000FB00000000000000BFBF00000000000BFBFBFB000000000
    FB88FBFBF000000FBFBF88BFBFB0000BF88BFB88FB8000BFBFB88FBFB80000FB
    88FBF88BF800088FBF88BFBF800000088BFB88FB80000000088FBFB800000000
    00088BF8000000000000088000000000000000000000FFFF0000F9FF0000F07F
    0000F01F0000E0070000E0010000C0000000C001000080030000800300008007
    0000E0070000F80F0000FE0F0000FF9F0000FFFF0000}
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object SpeedButton1: TSpeedButton
    Left = 240
    Top = 152
    Width = 23
    Height = 22
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'cxGroupBox1'
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 105
    Height = 294
    Width = 502
    object txtDestino: TcxTextEdit
      Left = 115
      Top = 32
      Hint = 
        'Escriba direcciones de correos separados por comas(,)  Ejem. usu' +
        'ario1@ejemplo.com, usuario2@jemplo.com'
      ParentFont = False
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = txtDestinoKeyPress
      Width = 358
    end
    object txtCC: TcxTextEdit
      Left = 115
      Top = 62
      Hint = 
        'Escriba direcciones de correos separados por comas(,)  Ejem. usu' +
        'ario1@ejemplo.com, usuario2@jemplo.com'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = txtCCKeyPress
      Width = 358
    end
    object txtCCO: TcxTextEdit
      Left = 115
      Top = 90
      Hint = 
        'Escriba direcciones de correos separados por comas(,)  Ejem. usu' +
        'ario1@ejemplo.com, usuario2@jemplo.com'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 358
    end
    object txtAsunto: TcxTextEdit
      Left = 115
      Top = 120
      Hint = 'Asunto del Correo Electrinico'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 358
    end
    object txtTexto: TcxMemo
      Left = 115
      Top = 149
      Hint = 'Informacion del Correo electronico'
      Lines.Strings = (
        'txtTexto')
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 89
      Width = 358
    end
    object cmdAcept: TButton
      Left = 296
      Top = 249
      Width = 81
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 5
      OnClick = cmdAceptClick
      OnKeyPress = cmdAceptKeyPress
    end
    object cmdCancelar: TButton
      Left = 397
      Top = 249
      Width = 76
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = cmdCancelarClick
    end
  end
end
