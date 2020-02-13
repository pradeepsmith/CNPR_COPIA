object frmEntregaEquipo: TfrmEntregaEquipo
  Left = 0
  Top = 0
  Caption = 'Entrega de Equipo de Proteccion'
  ClientHeight = 708
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 813
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 813
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        Align = alRight
        ExplicitWidth = 556
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 395
          Height = 31
          ExplicitLeft = 395
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 475
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Tag = 13
          Width = 74
          Height = 31
          ExplicitLeft = 321
          ExplicitWidth = 74
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'Entrega de Equipo de Proteccion'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 33
      Width = 812
    end
    object TsArchivo: TcxTextEdit
      Left = 459
      Top = 6
      Hint = 'Nombre de su archivo.'
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Visible = False
      Width = 36
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 98
    Width = 1370
    Height = 0
    Align = alTop
    TabOrder = 1
    object dxLayoutControl7: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1368
      Height = 6
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object dxLayoutGroup3: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 98
    Width = 1370
    Height = 610
    Align = alClient
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 786
      Height = 608
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 301
        Width = 784
        Height = 306
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object pnlBtn2: TPanel
          Left = 1
          Top = 269
          Width = 782
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 592
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 592
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Left = 13
              Width = 176
              Height = 34
              Align = alRight
              AutoSize = True
              ExplicitLeft = 13
              ExplicitWidth = 176
              ExplicitHeight = 34
              inherited btnPost: TcxButton
                Left = 1
                Top = 1
                Height = 32
                Align = alRight
                OnClick = btnPostClick
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitHeight = 32
              end
              inherited btnCancel: TcxButton
                Left = 88
                Top = 1
                Height = 32
                Align = alRight
                OnClick = btnCancelClick
                ExplicitLeft = 88
                ExplicitTop = 1
                ExplicitHeight = 32
              end
            end
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 782
          Height = 268
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 266
          ClientRectLeft = 2
          ClientRectRight = 780
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 778
              Height = 236
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tsSolicitante: TcxDBTextEdit
                Left = 10000
                Top = 10000
                DataBinding.DataField = 'sSolicito'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 10
                Visible = False
                Width = 340
              end
              object cxCarnet: TcxDBTextEdit
                Left = 113
                Top = 11
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 273
              end
              object cxNombre: TcxDBLookupComboBox
                Left = 113
                Top = 40
                DataBinding.DataField = 'IdPersonal'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Properties.KeyFieldNames = 'IdPersonal'
                Properties.ListColumns = <
                  item
                    FieldName = 'NombreCompleto'
                  end>
                Properties.ListSource = dsDatosPer
                Properties.OnEditValueChanged = cxNombrePropertiesEditValueChanged
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = True
                Style.IsFontAssigned = True
                TabOrder = 1
                OnEnter = EnterControl
                OnExit = cxNombreExit
                OnKeyUp = GlobalKeyUp
                Width = 234
              end
              object cbEdoMaterial: TcxDBComboBox
                Left = 493
                Top = 40
                DataBinding.DataField = 'Estado'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Properties.Items.Strings = (
                  'BUENO'
                  'FUERA DE NORMA')
                Style.HotTrack = False
                TabOrder = 5
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 265
              end
              object edtBotas: TcxDBTextEdit
                Left = 493
                Top = 69
                DataBinding.DataField = 'TallaBotas'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 6
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 265
              end
              object cxTalla: TcxDBTextEdit
                Left = 493
                Top = 98
                DataBinding.DataField = 'TallaOverol'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 7
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 265
              end
              object dFecha: TcxDBDateEdit
                Left = 113
                Top = 98
                DataBinding.DataField = 'FechaEntrega'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 3
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 121
              end
              object cxButton1: TcxButton
                Left = 11
                Top = 127
                Width = 198
                Height = 42
                Caption = 'Confirmacion de Huella'
                TabOrder = 8
                OnClick = cxButton1Click
              end
              object cxImage1: TcxImage
                Left = 215
                Top = 127
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                  000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                  0970485973000000EC000000EC01792871BD0000001974455874536F66747761
                  7265007777772E696E6B73636170652E6F72679BEE3C1A000006384944415458
                  47CD977B4C53571CC7BB4D4D9C3A5E2D5428140A7D604B699182AF196262B298
                  98983D62B2CCB99989D16D3A371DA2422E02E52150050A942A0D502CDC0DE8ED
                  B9E7DE5B7512DDD46D31D3F95C3267A630A7A0661A6696FD73F73B77C510FFD9
                  7621DBBE49C33DE59C5F3FF93DCF55FC2FB53418BEBFA85F10F36841CC0DF0A2
                  DDCF8BD99DBC98D5C189662F279ADAB068706331A3118B3A172B6AEB5831B906
                  89494E24AACB43623C151295252131763723461531E2BC1D4171CEF6E0BD88F9
                  BF16008891C7691300FC7D9B1300933D20FD03B4A05D3067B661B7D18DAF6534
                  E171DD01763CB59EBD96BC9F75AB9DC105916D8AC91E206BD900D2174414F56C
                  960F57990F71A3996DFC5E630B6FB5EE0FCF49804F5A3DCAD6D4864A93AAD0E8
                  FC72B682EC8D9C524C1B80AD4B68B7FAF029830729CDEDD866707334E4C018E4
                  C0AF9003A7536A42EBE22B990400F822A12CD4163936358009E51C11DEB6750B
                  E7CDEEA1B9662F7E1792F06700782FED009390D2C2C668EBD12A48C2AF922AD1
                  A78975489950862EC695A03723C725C906584CD3B3737AF8DB597E9C95D5C117
                  42155C37B4B03A6333B7193C7057D340CFD6D6A1B3DA5A94A3A96483EA0AD4A4
                  A2B04D59826E6BB6D3B32366E403387AF92D393D42AFBD5BC8B6747063A6766C
                  30B5E24D7A37BE947E90B5903D29F5EC1BE0819B3A27364019DE4CA0428B5425
                  A1FE98E2E026C908680A00C2155B20BCC4DAC99F010F48068D1EBCD3D8847301
                  E0FD34175EA7A0E9E792ABD9068D1335A9F785B600409FAA847D31B698B92C19
                  01C94CC2709AA34F18B6F7E0E5B64EFEFA6BF043E643D89DE665120C2DF8427A
                  23EE87243C0921F02655A36C68443FA8287A2E34A247D1D4603494E170D48E50
                  1AB1250B60111DDE9C17100E83FB5BB23BB9228B0FAF841CB86C6AE50BA0137E
                  63A6AFCCD2551F8B822A18D3D6B0990B3DE7662A44F119151542CA52B43A7677
                  D017B52B54486CC902C8FF44389CDB17DE60F70B576D3E6C8356DC61F1F25B4D
                  6D5C192462654623DB0E21780772C0A5A9413B21045BD5FB987A5519530C0075
                  10828D31454C3BB1250F800E9FCDA3F9C5397EFE91F13033CFDAC19D07002B74
                  C2A0DECDBE0C55702EF500CE4FAD436B00002556A1B590847D2A8A7909AA808D
                  D98396451731A7892DB91E1876F4B03A68C58FC91A3C70C7DEC1A9A00F5C3034
                  A23C00184FF4A0E735B5480F55F07DA293590A0067E22864823E7031764F3039
                  FA63E616392B1320FC38FF086FB577F3D70B86866600C06F241101E017632BB7
                  42DF88BF25FB929C037100707F7E05D602C0AD588A7B0166C143D207C00312BC
                  2C00F2A38E80D0022170DB7C47F5300B6E585BC3F10030666C663FC83888DDD2
                  01E8FD00E02449A82E674AA4EF9E922C00072D943902FC593BCDA9E03E5095E5
                  E39B2D5E6EADC9C3316416E89BF0EBD2016A68061946A41F4C00284B194A51E8
                  99091EF890AC65014882B2B2F9B98D0030BCD0732C05002E657AB83550862326
                  179FAA73214AEB12E68307C6FFF400FA9D9C21E358B99731C230FA8E9891E781
                  BEF0EADC00946037FF390901B4E20AE8039F19BDDC0A00B848F61000328092AB
                  D143B2861C18555383A9E439764FA8100002E4591E402FEFC8ED11F2C8408256
                  EC8624BC6AF66135E4C00918461B48ECD35DF82DB2173CF040538EF4A40CE3CB
                  D04EF25DCC6EE644F4AEC102F22C3B048E00B716CA7024BB8BF7DB7C83D10BBC
                  DC4700F0258937246131B9136A1A980C00E8D554A26D899528075AF1DDF81294
                  3DAF78202E62660A003DD896D3C5669A697A1678A014EE03372CEE70B2A1995F
                  0557B2917417CB68EBF0DE946AB40C66C11D52822A0ABD0A39B023624292FC24
                  04D9BAB93590843F02002385A015BF02393006D37049AA0BDBC82C20BD00AE64
                  9D2404A42A22479F684A00F62E9C4B6681A9F3781C24A1074230AC6FC6F9FA26
                  6E40E7C24E320D21093BC9E504004E42081A22479F684A0044308ED783071E58
                  DA719BD5DBAF010F1C85717C0A726054E71C3024D7A2AF93AAD8067249251D31
                  72EC8964014CBE944217CC3277411F3884D74123FAC9D08C9B0BC0D5E90DEC7A
                  08C1151848A64427F227524819392269FAAEE52032112104C7611A2E276BF266
                  44FEA6D4A16D108211B5935391F5644D19E0E91793C99A00204AA90E99238F92
                  A6E5C5643AF54F01EEFDA72FA7FF9E148A3F003023CCA7514B85380000000049
                  454E44AE426082}
                Style.HotTrack = False
                TabOrder = 9
                Height = 43
                Width = 111
              end
              object lcbAlmacen: TcxDBLookupComboBox
                Left = 493
                Top = 11
                DataBinding.DataField = 'IdAlmacen'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Properties.KeyFieldNames = 'IdAlmacen'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_almacen
                Style.HotTrack = False
                TabOrder = 4
                Width = 145
              end
              object cxProyecto: TcxDBLookupComboBox
                Left = 113
                Top = 69
                DataBinding.DataField = 'sNumeroOrden'
                DataBinding.DataSource = dsEntregaEPP
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    Caption = 'Referencia/Proyecto'
                    FieldName = 'sIdFolio'
                  end>
                Properties.ListSource = dsReferencia
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 200
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem7: TdxLayoutItem
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Solicitante'
                Control = tsSolicitante
                ControlOptions.ShowBorder = False
                Index = -1
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'C'#243'digo Personal'
                Control = cxCarnet
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Personal'
                Control = cxNombre
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                Index = 1
                AutoCreated = True
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Estado Material'
                Control = cbEdoMaterial
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                CaptionOptions.Text = 'Talla Botas'
                Control = edtBotas
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                CaptionOptions.Text = 'Talla overol'
                Control = cxTalla
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem1: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha'
                Control = dFecha
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahLeft
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahLeft
                AlignVert = avTop
                Visible = False
                Control = cxImage1
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Almac'#233'n'
                Control = lcbAlmacen
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Orden de Trabajo'
                Control = cxProyecto
                ControlOptions.ShowBorder = False
                Index = 2
              end
            end
            object cxViaEmbarque: TcxDBComboBox
              Left = 0
              Top = 22
              ParentFont = False
              Properties.Items.Strings = (
                'Maritima'
                'Aerea'
                'Terrestre')
              Style.HotTrack = False
              TabOrder = 1
              Width = 2
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 289
        Width = 784
        Height = 12
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 784
        Height = 288
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Requsicion: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellClick = cxView_RequsicionCellClick
          DataController.DataSource = dsEntregaEPP
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = cxView_RequsicionStylesGetContentStyle
          object cxView_RequsicionColumn3: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Options.Editing = False
            Width = 30
          end
          object cxView_RequsicionColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo Personal'
            DataBinding.FieldName = 'SAPID'
            Options.Editing = False
            Width = 80
          end
          object cxView_RequsicionColumn5: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FechaEntrega'
            Options.Editing = False
            Width = 80
          end
          object cxView_RequsicionColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Width = 70
          end
          object cxView_RequsicionColumn13: TcxGridDBColumn
            Caption = 'Orden de Trabajo'
            DataBinding.FieldName = 'sNumeroOrden'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'sNumeroOrden'
            Properties.ListColumns = <
              item
                FieldName = 'sIdFolio'
              end>
            Properties.ListSource = dsReferencia
            Width = 104
          end
          object cxView_RequsicionColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'Puesto'
            Options.Editing = False
            Width = 81
          end
          object cxView_RequsicionColumn11: TcxGridDBColumn
            Caption = 'No. de botas'
            DataBinding.FieldName = 'NoBotas'
            Width = 73
          end
          object cxView_RequsicionColumn9: TcxGridDBColumn
            Caption = 'Talla de Overol'
            DataBinding.FieldName = 'TallaOverol'
            Width = 89
          end
          object cxView_RequsicionColumn7: TcxGridDBColumn
            Caption = 'Talla de Botas'
            DataBinding.FieldName = 'TallaBotas'
            Width = 125
          end
          object cxView_RequsicionColumn4: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'sEstado'
            Options.Editing = False
            Options.Grouping = False
            Width = 72
          end
        end
        object grid_requsicionLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 787
      Top = 1
      Width = 12
      Height = 608
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 799
      Top = 1
      Width = 570
      Height = 608
      Align = alRight
      TabOrder = 2
      Visible = False
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 568
        Height = 606
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 33
          Width = 566
          Height = 524
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabMaterial
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          OnClick = cxPageDetalleClick
          ClientRectBottom = 522
          ClientRectLeft = 2
          ClientRectRight = 564
          ClientRectTop = 29
          object cxTabMaterial: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 61
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 562
              Height = 493
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = cxGridMaterialesExit
              object cxView_Materiales: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsMateriales
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsSelection.MultiSelect = True
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  Caption = 'No. Material'
                  DataBinding.FieldName = 'Codigo'
                  Options.Editing = False
                  Width = 68
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Material'
                  Options.Editing = False
                  Width = 240
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'Cantidad'
                  Width = 47
                end
                object cxView_MaterialesColumn7: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Visible = False
                  Width = 64
                end
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'Fecha Anterior'
                  DataBinding.FieldName = 'FechaAnt'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 64
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
            object CZKEM1: TCZKEM
              Left = 442
              Top = 324
              Width = 120
              Height = 88
              TabOrder = 1
              Visible = False
              ControlData = {00090000670C000018090000}
            end
          end
          object tabInformes: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            TabVisible = False
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 189
              Width = 562
              Height = 304
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 560
                Height = 302
                Align = alClient
                TabOrder = 0
                object cxGrid1DBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'Periodo'
                  Categories.DisplayText = 'Periodo'
                  DiagramColumn.Active = True
                  Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                  object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'TotalSalida'
                    DisplayText = 'Total Requisicion'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBChartView1
                end
              end
            end
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 177
              Width = 562
              Height = 12
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 562
              Height = 177
              Align = alTop
              TabOrder = 2
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 554
                Height = 169
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object opcionImprimir: TcxRadioGroup
                  Left = 10
                  Top = 10
                  Caption = 'Tipo de Reporte'
                  ParentFont = False
                  Properties.Items = <
                    item
                      Caption = 'Imprimir datos filtrados'
                      Value = '1'
                    end
                    item
                      Caption = 'Imprimir datos filtrados con detalles.'
                      Value = '2'
                    end>
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Height = 111
                  Width = 495
                end
                object btnImpInforme: TcxButton
                  Left = 399
                  Top = 127
                  Width = 145
                  Height = 25
                  Caption = 'Imprimir'
                  OptionsImage.ImageIndex = 5
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                end
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem18: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem27: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = btnImpInforme
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
          end
          object cxHistorial: TcxTabSheet
            Caption = 'Historial Epp'
            ImageIndex = 1
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 562
              Height = 493
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsHistorial
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsSelection.MultiSelect = True
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Material'
                  Visible = False
                  GroupIndex = 0
                  Options.Editing = False
                  Width = 250
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  Caption = 'Fecha de  Entrega'
                  DataBinding.FieldName = 'Fecha'
                  Width = 403
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object cxTabReportes: TcxTabSheet
            Caption = 'Reportes'
            ImageIndex = 66
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 562
              Height = 493
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxButton5: TcxButton
                Left = 10
                Top = 10
                Width = 103
                Height = 23
                Caption = 'Historial Epp'
                TabOrder = 0
                OnClick = cxButton5Click
              end
              object cxButton6: TcxButton
                Left = 10
                Top = 39
                Width = 75
                Height = 25
                Caption = 'Entrega de Epp'
                TabOrder = 1
                OnClick = cxButton6Click
              end
              object dxLayoutControl4Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem19: TdxLayoutItem
                Parent = dxLayoutControl4Group_Root
                CaptionOptions.Text = 'cxButton5'
                CaptionOptions.Visible = False
                Control = cxButton5
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem20: TdxLayoutItem
                Parent = dxLayoutControl4Group_Root
                CaptionOptions.Text = 'cxButton6'
                CaptionOptions.Visible = False
                Control = cxButton6
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
        end
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 566
          Height = 32
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Tag = 10
            Left = 241
            Top = 1
            Width = 81
            Height = 30
            Align = alRight
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxNuevoDetalleClick
          end
          object cxEditaDetalle: TcxButton
            Left = 322
            Top = 1
            Width = 81
            Height = 30
            Align = alRight
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxLeyenda2: TcxLabel
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'Materiales'
            ParentColor = False
            ParentFont = False
            Style.Color = clNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHighlight
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clHighlight
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxEliminarDetalle: TcxButton
            Tag = 13
            Left = 403
            Top = 1
            Width = 81
            Height = 30
            Hint = 'Eliminar registro (CTRL + D)'
            Align = alRight
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxEliminarDetalleClick
          end
          object cxImportar: TcxButton
            Left = 484
            Top = 1
            Width = 81
            Height = 30
            Align = alRight
            Caption = 'Importar '
            OptionsImage.ImageIndex = 71
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 4
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 569
          Width = 566
          Height = 36
          Align = alBottom
          TabOrder = 2
          Visible = False
          object cxCancelarDetalle: TcxButton
            Left = 481
            Top = 1
            Width = 84
            Height = 34
            Align = alRight
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxGuardarDetalle: TcxButton
            Left = 394
            Top = 1
            Width = 87
            Height = 34
            Align = alRight
            Caption = 'Guardar'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object cxSplitMaterial: TcxSplitter
          Left = 1
          Top = 557
          Width = 566
          Height = 12
          AlignSplitter = salBottom
          Visible = False
        end
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 76
    Width = 1370
    Height = 22
    Align = alTop
    TabOrder = 3
    Visible = False
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
      Height = 20
      Width = 96
    end
    object progreso: TcxProgressBar
      Left = 97
      Top = 1
      Align = alClient
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      Width = 1272
    end
  end
  object PanelFilter: TPanel
    Left = 0
    Top = 35
    Width = 1370
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1368
      Height = 39
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object Edtfinal: TcxDateEdit
        Left = 280
        Top = 11
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 121
      end
      object cxbtnFiltrar: TcxButton
        Left = 407
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxbtnFiltrarClick
      end
      object edtInicio: TcxDateEdit
        Left = 83
        Top = 11
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object cxButton3: TcxButton
        Left = 488
        Top = 11
        Width = 129
        Height = 25
        Caption = 'Asignar Material'
        OptionsImage.ImageIndex = 51
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
      end
      object cxButton2: TcxButton
        Left = 623
        Top = 11
        Width = 138
        Height = 25
        Caption = 'Confirmar Huella'
        OptionsImage.ImageIndex = 34
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = cxButton2Click
      end
      object cxButton4: TcxButton
        Left = 767
        Top = 11
        Width = 137
        Height = 25
        Caption = 'Limpiar Biometrico'
        OptionsImage.ImageIndex = 72
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = cxButton4Click
      end
      object cxButton7: TcxButton
        Left = 910
        Top = 11
        Width = 131
        Height = 25
        Caption = 'Lista de Personal'
        OptionsImage.ImageIndex = 26
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        OnClick = cxButton7Click
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Fecha Final'
        Control = Edtfinal
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Visible = False
        Control = cxbtnFiltrar
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avClient
        CaptionOptions.Text = 'Fecha Inicio'
        Control = edtInicio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Visible = False
        Control = cxButton3
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = cxButton4
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'cxButton7'
        CaptionOptions.Visible = False
        Control = cxButton7
        ControlOptions.ShowBorder = False
        Index = 5
      end
    end
  end
  object zDatosPer: TUniQuery
    Left = 280
    Top = 304
  end
  object dsDatosPer: TDataSource
    DataSet = zDatosPer
    Left = 368
    Top = 232
  end
  object zEntregaEPP: TUniQuery
    Left = 128
    Top = 224
  end
  object dsEntregaEPP: TDataSource
    DataSet = zEntregaEPP
    Left = 184
    Top = 232
  end
  object zMateriales: TUniQuery
    Connection = connection.Uconnection
    Left = 1123
    Top = 377
  end
  object dsMateriales: TDataSource
    DataSet = zMateriales
    Left = 1155
    Top = 345
  end
  object ds_almacen: TDataSource
    AutoEdit = False
    DataSet = Almacen
    Left = 240
    Top = 198
  end
  object Almacen: TUniQuery
    Connection = connection.Uconnection
    Left = 44
    Top = 252
  end
  object dsReferencia: TDataSource
    AutoEdit = False
    DataSet = QReferencia
    Left = 408
    Top = 192
  end
  object QReferencia: TUniQuery
    Connection = connection.Uconnection
    Left = 335
    Top = 191
  end
  object zEpp: TUniQuery
    Connection = connection.Uconnection
    Left = 653
    Top = 615
  end
  object zConfiguracion: TUniQuery
    Connection = connection.Uconnection
    Left = 1171
    Top = 418
  end
  object zActualizar: TUniQuery
    Connection = connection.Uconnection
    Left = 545
    Top = 195
  end
  object zHistorial: TUniQuery
    Connection = connection.Uconnection
    Left = 1123
    Top = 266
  end
  object dsHistorial: TDataSource
    DataSet = zHistorial
    Left = 1195
    Top = 274
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 135
    Top = 229
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
  end
  object frxReportEpp: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43816.500844699100000000
    ReportOptions.LastChange = 43854.015040671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 1171
    Top = 218
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBDatasetEpp
        DataSetName = 'frxDBDatasetEpp'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 283.464750000000000000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 185.196970000000000000
          Top = 41.574830000000000000
          Width = 389.291590000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREGA DE EQUIPO DE PROTECCION ')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetEpp
        DataSetName = 'frxDBDatasetEpp'
        RowCount = 0
        object frxDBDatasetEppfrxDBDatasetEpp: TfrxMemoView
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetEpp
          DataSetName = 'frxDBDatasetEpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetEpp."Material"]')
          ParentFont = False
        end
        object MemoCant: TfrxMemoView
          Left = 502.677490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetEpp
          DataSetName = 'frxDBDatasetEpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetEpp."Cantidad"]')
          ParentFont = False
        end
        object MemoEpp: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetEpp
          DataSetName = 'frxDBDatasetEpp'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetEpp."Fecha"]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetEpp."IdPersonal"'
        object Memo5: TfrxMemoView
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPersonal
          DataSetName = 'frxDBDatasetPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clHighlight
          HAlign = haCenter
          Memo.UTF8W = (
            
              'SAP ID:[frxDBDatasetEpp."SAPID"]    Personal: [frxDBDatasetEpp."' +
              'Nombre"]     No Botas: [frxDBDatasetEpp."NoBotas"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetEpp."sEstado"'
        object Memo1: TfrxMemoView
          Top = 3.779529999999994000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPersonal
          DataSetName = 'frxDBDatasetPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'Estado de Entrega de EPP: [frxDBDatasetEpp."sEstado"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetEpp."OrdenTrabajo"'
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetEpp
          DataSetName = 'frxDBDatasetEpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatasetEpp."OrdenTrabajo"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDBDatasetEpp: TfrxDBDataset
    UserName = 'frxDBDatasetEpp'
    CloseDataSource = False
    DataSet = zReports
    BCDToCurrency = False
    Left = 1243
    Top = 218
  end
  object zReports: TUniQuery
    Connection = connection.Uconnection
    Left = 1195
    Top = 178
  end
  object zPeronalEpp: TUniQuery
    Connection = connection.Uconnection
    Left = 1091
    Top = 186
  end
  object frxDBDatasetPersonal: TfrxDBDataset
    UserName = 'frxDBDatasetPersonal'
    CloseDataSource = False
    DataSet = zPeronalEpp
    BCDToCurrency = False
    Left = 1051
    Top = 202
  end
end
