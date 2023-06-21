object Form1: TForm1
  Width = 957
  Height = 902
  Caption = 'web'
  Color = clBlack
  CSSLibrary = cssBootstrap
  ElementClassName = 'overflow-hidden bg-black'
  ElementFont = efCSS
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  object divBackground: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 957
    Height = 902
    ElementID = 'divBackground'
    Align = alClient
    ChildOrder = 1
    Role = ''
    ExplicitHeight = 822
  end
  object divAnimParent: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 100
    Height = 40
    ElementID = 'divAnimParent'
    Role = ''
  end
  object divButtons: TWebHTMLDiv
    Left = 135
    Top = 8
    Width = 814
    Height = 161
    ElementClassName = 'd-none'
    ElementID = 'divButtons'
    ChildOrder = 2
    Role = ''
    object btnMain: TWebButton
      Left = 3
      Top = 3
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-cloud"></i>'
      ChildOrder = 2
      ElementID = 'btnMain'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnMainClick
    end
    object btnScale: TWebButton
      Left = 3
      Top = 42
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-up-down-left-right"></i>'
      ChildOrder = 2
      ElementID = 'btmScale'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnScaleClick
    end
    object btnChange: TWebButton
      Left = 3
      Top = 81
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-shuffle"></i>'
      ChildOrder = 2
      ElementID = 'btnChange'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnChangeClick
    end
    object btnVolume: TWebButton
      Tag = 50
      Left = 3
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-off"></i>'
      ChildOrder = 2
      ElementClassName = 'text-white'
      ElementID = 'btnVolume'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnVolumeClick
    end
    object btnShare: TWebButton
      Left = 123
      Top = 3
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-share text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnShare'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
    end
    object btnDownload: TWebButton
      Left = 249
      Top = 3
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-download text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnDownload'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnDownloadClick
    end
    object btnUpload: TWebButton
      Left = 379
      Top = 3
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-upload text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnUpload'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnUploadClick
    end
    object btnScalePlus: TWebButton
      Left = 123
      Top = 42
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-plus text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnScalePlus'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnScalePlusClick
    end
    object btnFullScreen: TWebButton
      Left = 251
      Top = 42
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-expand text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnFullScreen'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnFullScreenClick
    end
    object btnScaleMinus: TWebButton
      Left = 379
      Top = 42
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-minus text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnScaleMinus'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnScaleMinusClick
    end
    object btnTrash: TWebButton
      Left = 123
      Top = 81
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-trash-can text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnTrash'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnTrashClick
    end
    object btnEdit: TWebButton
      Left = 251
      Top = 81
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-pencil text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnEdit'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnEditClick
    end
    object btnClone: TWebButton
      Left = 379
      Top = 81
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-clone text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnClone'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnCloneClick
    end
    object btnVolumeUp: TWebButton
      Left = 123
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-high pe-none text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeUp'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnVolumeUpClick
    end
    object btnVolumeMute: TWebButton
      Left = 251
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-xmark text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeMute'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnVolumeMuteClick
    end
    object btnVolumeDown: TWebButton
      Left = 379
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-low text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeDown'
      HeightPercent = 100.000000000000000000
      Visible = False
      WidthPercent = 100.000000000000000000
      OnClick = btnVolumeDownClick
    end
    object btnCursor: TWebButton
      Left = 497
      Top = 3
      Width = 96
      Height = 33
      ChildOrder = 2
      ElementClassName = 'pe-none'
      ElementID = 'btnCursor'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnMainClick
    end
  end
  object divShade: TWebHTMLDiv
    Left = 8
    Top = 128
    Width = 121
    Height = 41
    ElementID = 'divShade'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 4
    ElementPosition = epIgnore
    ElementFont = efCSS
    Role = ''
  end
  object divOptions: TWebHTMLDiv
    Left = 8
    Top = 175
    Width = 941
    Height = 706
    ElementClassName = 'resize-drag'
    ElementID = 'divOptions'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 3
    ElementPosition = epIgnore
    ElementFont = efCSS
    Role = ''
    object divOptionsList: TWebHTMLDiv
      Left = 23
      Top = 16
      Width = 170
      Height = 535
      ElementClassName = 'd-flex flex-column justify-content-evenly align-items-center '
      ElementID = 'divOptionsList'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
      object btnOptionsName: TWebButton
        Left = 3
        Top = -1
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-pencil fa-2x"></i>'
        ElementClassName = 'nointeract OptionsButton btn btn-primary YellowR'
        ElementID = 'btnOptionsName'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsNameClick
      end
      object btnOptionsBackground: TWebButton
        Left = 3
        Top = 69
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-palette fa-2x"></i>'
        ChildOrder = 1
        ElementClassName = 'nointeract OptionsButton btn btn-primary BlueR'
        ElementID = 'btnOptionsBackground'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsBackgroundClick
      end
      object btnOptionsImage: TWebButton
        Left = 3
        Top = 139
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-eye fa-2x"></i>'
        ChildOrder = 2
        ElementClassName = 'nointeract OptionsButton btn btn-primary OrangeR'
        ElementID = 'btnOptionsImage'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsImageClick
      end
      object btnOptionsAudio: TWebButton
        Left = 3
        Top = 209
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-music fa-2x"></i>'
        ChildOrder = 3
        ElementClassName = 'nointeract OptionsButton btn btn-primary VioletR'
        ElementID = 'btnOptionsAudio'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsAudioClick
      end
      object btnOptionsOK: TWebButton
        Left = 3
        Top = 349
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-check fa-2x"></i>'
        ChildOrder = 5
        ElementClassName = 'nointeract OptionsButton btn btn-primary GreenR'
        ElementID = 'btnOptionsOK'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsOKClick
      end
      object btnOptionsCancel: TWebButton
        Left = 3
        Top = 419
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-xmark fa-2x"></i>'
        ChildOrder = 6
        ElementClassName = 'nointeract OptionsButton btn btn-primary RedR'
        ElementID = 'btnOptionsCancel'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsCancelClick
      end
      object btnOptionsSettings: TWebButton
        Left = 3
        Top = 279
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-gear fa-2x"></i>'
        ChildOrder = 4
        ElementClassName = 'nointeract OptionsButton btn btn-primary GrayR'
        ElementID = 'btnOptionsSettings'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsSettingsClick
      end
      object divOptionsCursor: TWebHTMLDiv
        Left = 73
        Top = 70
        Width = 93
        Height = 67
        ElementClassName = 'pe-none'
        ElementID = 'divOptionsCursor'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 2
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageControl: TWebPageControl
      Left = 339
      Top = 0
      Width = 607
      Height = 681
      ElementClassName = 'nointeract'
      ElementID = 'pageControl'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      ElementTabClassName = 'nav-link'
      ElementTabActiveClassName = 'nav-link active'
      ElementTabItemClassName = 'nav-item'
      ElementFont = efCSS
      TabIndex = 3
      ShowTabs = False
      TabOrder = 1
      object pageName: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 661
        ElementClassName = 'Page'
        ElementID = 'pageName'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Name'
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object divTitleHolder: TWebHTMLDiv
          Left = 19
          Top = 56
          Width = 400
          Height = 40
          ElementClassName = 'nointeract HexOuter WhiteR mb-3 w-100'
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object editTitle: TWebEdit
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            ElementClassName = 'EditText HexInner Black ps-3 pb-1'
            ElementID = 'editTitle'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object divProjectTitle: TWebHTMLDiv
          Left = 19
          Top = 12
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100 mt-2'
          ElementID = 'divProjectTitle'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelProjectTitle: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Project Title'
            ElementClassName = 'Title HexInner YellowL ps-3 pt-1'
            ElementID = 'labelProjectTitle'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divHexaGongName: TWebHTMLDiv
          Left = 19
          Top = 196
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          ElementID = 'divHexaGongName'
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelHexaGongName: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'HexaGong Name'
            ElementClassName = 'Title HexInner YellowL ps-3 pt-1 '
            ElementID = 'labelHexaGongName'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divHexName: TWebHTMLDiv
          Left = 19
          Top = 242
          Width = 400
          Height = 40
          ElementClassName = 'nointeract HexOuter WhiteR mb-3 w-100'
          ElementID = 'divHexName'
          WidthStyle = ssPercent
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object editHexName: TWebEdit
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            ElementClassName = 'EditText HexInner Black ps-3 pb-1'
            ElementID = 'editHexName'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object divProjectDescription: TWebHTMLDiv
          Left = 19
          Top = 108
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          ElementID = 'divProjectDescription'
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelProjectDescription: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Project Description / Inspiration'
            ElementClassName = 'Title HexInner YellowL ps-3 pt-1 '
            ElementID = 'labelProjectDescription'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divProjDesc: TWebHTMLDiv
          Left = 19
          Top = 152
          Width = 400
          Height = 40
          ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR mb-3 w-100'
          ElementID = 'divProjDesc'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object memoProjDesc: TWebMemo
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            ElementClassName = 'EditMemo HexTallInner Black ps-4 pt-1 '
            ElementID = 'memoProjDesc'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            SelLength = 0
            SelStart = 0
            SpellCheck = False
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object divHexaGongDescription: TWebHTMLDiv
          Left = 19
          Top = 292
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          ElementID = 'divHexaGongDescription'
          WidthStyle = ssPercent
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelHexaGongDescription: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'HexaGong Description / Attribution'
            ElementClassName = 'Title HexInner YellowL ps-3 pt-1 '
            ElementID = 'labelHexaGongDescription'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divHexDesc: TWebHTMLDiv
          Left = 19
          Top = 336
          Width = 400
          Height = 40
          ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR w-100 mb-2'
          ElementID = 'divHexDesc'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 7
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object memoHexDesc: TWebMemo
            Left = 33
            Top = 1
            Width = 300
            Height = 36
            AutoSize = False
            ElementClassName = 'EditMemo HexTallInner Black ps-4 pt-1'
            ElementID = 'memoHexDesc'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            SelLength = 0
            SelStart = 0
            SpellCheck = False
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
      end
      object pageBackground: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 661
        ElementClassName = 'Page'
        ElementID = 'pageBackground'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Background'
        ChildOrder = 1
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object WebHTMLDiv7: TWebHTMLDiv
          Left = 27
          Top = 20
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter BlueR w-100 mt-2'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel5: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Background Color Style'
            ElementClassName = 'Title HexInner RoyalBlueL ps-3 pt-1'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divBackgroundStyles: TWebHTMLDiv
          Left = 27
          Top = 64
          Width = 550
          Height = 40
          ElementClassName = 'HexHolder d-flex flex-row gap-1 mb-3 flex-wrap'
          ElementID = 'divBackgroundStyles'
          HeightStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divOptionsBGRadial: TWebHTMLDiv
            Left = 11
            Top = 0
            Width = 95
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGRadial'
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGRadialClick
            object divOptionsBGRadialLabel: TWebLabel
              Left = 10
              Top = 1
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Radial'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGRadialLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 100.000000000000000000
            end
          end
          object divOptionsBGLinear: TWebHTMLDiv
            Left = 111
            Top = 0
            Width = 93
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGLinear'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGLinearClick
            object divOptionsBGLinearLabel: TWebLabel
              Left = 10
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Linear'
              ChildOrder = 1
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGLinearLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 100.000000000000000000
            end
          end
          object divOptionsBGSolid: TWebHTMLDiv
            Left = 210
            Top = 0
            Width = 86
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGSolid'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGSolidClick
            object divOptionsBGSolidLabel: TWebLabel
              Left = 10
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Solid'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGSolidLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 100.000000000000000000
            end
          end
          object divOptionsBGCustom: TWebHTMLDiv
            Left = 302
            Top = 0
            Width = 105
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGCustom'
            ChildOrder = 3
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGCustomClick
            object divOptionsBGCustomLabel: TWebLabel
              Left = 10
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Custom'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGCustomLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 100.000000000000000000
            end
          end
        end
        object divSelectColor: TWebHTMLDiv
          Left = 27
          Top = 120
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter BlueR w-100 mb-3'
          ElementID = 'divSelectColor'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelSelectColor: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Select Color'
            ElementClassName = 'Title HexInner RoyalBlueL ps-3 pt-1'
            ElementID = 'labelSelectColor'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object divCustomCSSTitle: TWebHTMLDiv
          Left = 27
          Top = 412
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter BlueR w-100'
          ElementID = 'divCustomCSSHolderLabel'
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel22: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Custom CSS Background'
            ElementClassName = 'Title HexInner RoyalBlueL ps-3 pt-1'
            ElementID = 'LabelCustomCSS'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divCustomCSSHolder: TWebHTMLDiv
          Left = 27
          Top = 471
          Width = 400
          Height = 40
          ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR mb-3 w-100'
          ElementID = 'divCustomCSSHolder'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object memoCustomCSS: TWebMemo
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            ElementClassName = 'EditMemo HexTallInner Black ps-4 pt-1 '
            ElementID = 'memoCustomCSS'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            SelLength = 0
            SelStart = 0
            SpellCheck = False
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object divColorPicker1: TWebHTMLDiv
          Left = 27
          Top = 165
          Width = 369
          Height = 148
          ElementClassName = 'nointeract'
          ElementID = 'divColorPicker1'
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
        end
        object divColorPicker2: TWebHTMLDiv
          Left = 27
          Top = 336
          Width = 369
          Height = 70
          ElementClassName = 'mb-2 nointeract mt-3 d-flex gap-2 flex-column'
          ElementID = 'divColorPicker2'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '<div id="divColorRed" style="position:relative;">'
            '  <slX-range '
            '      id="ColorRed" '
            '      max="255"'
            '      class="RGB HexSliderH" '
            '      tooltip="none" '
            
              '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
              'olor-active:maroon; --track-color-inactive: black;"'
            '    > '
            '  </slX-range>'
            
              '  <div id="ThumbRed" class="HexSliderThumb RedW pe-none d-flex j' +
              'ustify-content-center align-items-center"></div>'
            
              '  <div id="BorderRed" class="HexOuter RedR pe-none" style="posit' +
              'ion:absolute; top:2px; height:40px; width: 100%;"></div>'
            '</div>'
            ''
            '<div id="divColorGreen" style="position:relative;">'
            '  <slX-range '
            '      id="ColorGreen" '
            '      max="255"'
            '      class="RGB HexSliderH" '
            '      tooltip="none" '
            
              '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
              'olor-active:darkgreen; --track-color-inactive: black;"'
            '    > '
            '  </slX-range>'
            
              '  <div id="ThumbGreen" class="HexSliderThumb GreenW pe-none d-fl' +
              'ex justify-content-center align-items-center"></div>'
            
              '  <div id="BorderGreen" class="HexOuter GreenR pe-none" style="p' +
              'osition:absolute; top:2px; height:40px; width: 100%;"></div>'
            '</div>'
            ''
            '<div id="divColorBlue" style="position:relative;" class="mb-4">'
            '  <slX-range '
            '      id="ColorBlue" '
            '      max="255"'
            '      class="RGB HexSliderH" '
            '      tooltip="none" '
            
              '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
              'olor-active:navy; --track-color-inactive: black;"'
            '    > '
            '  </slX-range>'
            
              '  <div id="ThumbBlue" class="HexSliderThumb BlueW pe-none d-flex' +
              ' justify-content-center align-items-center"></div>'
            
              '  <div id="BorderBlue" class="HexOuter BlueR pe-none" style="pos' +
              'ition:absolute; top:2px; height:40px; width: 100%;"></div>'
            '</div>'
            '')
          Role = ''
        end
      end
      object pageImage: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 661
        ElementClassName = 'Page'
        ElementID = 'pageImage'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Image'
        ChildOrder = 2
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        ElementPosition = epIgnore
        object divImageSourceLabel: TWebHTMLDiv
          Left = 19
          Top = 3
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter OrangeR w-100 mt-2'
          ElementID = 'divImageSourceLabel'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel6: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Image Source'
            ElementClassName = 'Title HexInner OrangeL ps-3 pt-1'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divImageSources: TWebHTMLDiv
          Left = 19
          Top = 47
          Width = 550
          Height = 40
          ElementClassName = 'HexHolder d-flex flex-row gap-1 mb-3 w-100 flex-wrap'
          ElementID = 'divImageSources'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divImageSourceIcon: TWebHTMLDiv
            Left = 11
            Top = 0
            Width = 82
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divImageSourceIcon'
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divImageSourceIconClick
            object labelImageSourceIcon: TWebLabel
              Left = 26
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Icon'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelImageSourceIcon'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divImageSourceURL: TWebHTMLDiv
            Left = 99
            Top = 0
            Width = 82
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divImageSourceURL'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divImageSourceURLClick
            object labelImageSourceURL: TWebLabel
              Left = 22
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'URL'
              ChildOrder = 1
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelImageSourceURL'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 82.000000000000000000
            end
          end
          object divImageSourceUpload: TWebHTMLDiv
            Left = 187
            Top = 0
            Width = 100
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divImageSourceUpload'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divImageSourceUploadClick
            object labelImageSourceUpload: TWebLabel
              Left = 22
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Upload'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelImageSourceUpload'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divImageSource: TWebHTMLDiv
            Left = 293
            Top = 0
            Width = 148
            Height = 40
            ElementClassName = 'nointeract HexBtnOuter WhiteR flex-grow-1'
            ElementID = 'divImageSource'
            WidthStyle = ssAuto
            ChildOrder = 3
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object editImageSource: TWebEdit
              Left = 30
              Top = 2
              Width = 86
              Height = 36
              ElementClassName = 'EditText HexInner Black ps-3 pb-1'
              ElementID = 'editImageSource'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              WidthStyle = ssPercent
              WidthPercent = 100.000000000000000000
              OnChange = editImageSourceChange
              OnClick = editImageSourceClick
            end
          end
        end
        object divIconPicker: TWebHTMLDiv
          Left = 19
          Top = 93
          Width = 550
          Height = 195
          ElementID = 'divIconPicker'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          Visible = False
          object divIconInterface: TWebHTMLDiv
            Left = 18
            Top = 51
            Width = 399
            Height = 40
            ElementClassName = 'HexHolder d-flex flex-row gap-1 w-100 '
            ElementID = 'divIconInterface'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divIconSearch: TWebHTMLDiv
              Left = 93
              Top = 0
              Width = 148
              Height = 40
              ElementClassName = 'order-1 nointeract HexBtnOuter WhiteR flex-grow-1'
              ElementID = 'divIconSearch'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object editIconSearch: TWebEdit
                Left = 7
                Top = 3
                Width = 84
                Height = 36
                ElementClassName = 'EditText HexInner Black ps-3 pb-1 text-white'
                ElementID = 'editIconSearch'
                ElementFont = efCSS
                ElementPosition = epRelative
                HeightPercent = 100.000000000000000000
                WidthStyle = ssPercent
                WidthPercent = 100.000000000000000000
                OnChange = btnIconSearchClick
              end
              object btnIconSearchEditCancel: TWebButton
                Left = 105
                Top = 0
                Width = 40
                Height = 40
                Caption = '<i class="fa-solid fa-xmark"></i>'
                ChildOrder = 4
                ElementClassName = 'EditCancel'
                ElementID = 'btnIconSearchEditCancel'
                ElementFont = efCSS
                ElementPosition = epIgnore
                HeightStyle = ssAuto
                HeightPercent = 100.000000000000000000
                WidthStyle = ssAuto
                WidthPercent = 100.000000000000000000
                OnClick = btnIconSearchEditCancelClick
              end
            end
            object btnIconOK: TWebButton
              Left = 268
              Top = 0
              Width = 40
              Height = 40
              Caption = '<i class="fa-solid fa-check"></i>'
              ChildOrder = 3
              ElementClassName = 'order-3 nointeract OptionsSmallButton btn btn-primary GreenRS'
              ElementID = 'btnIconOK'
              ElementFont = efCSS
              ElementPosition = epRelative
              Enabled = False
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnIconOKClick
            end
            object btnIconCancel: TWebButton
              Left = 318
              Top = 0
              Width = 40
              Height = 40
              Caption = '<i class="fa-solid fa-xmark"></i>'
              ChildOrder = 4
              ElementClassName = 'order-4 nointeract OptionsSmallButton btn btn-primary RedRS'
              ElementID = 'btnIconCancel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnIconCancelClick
            end
            object btnIconSearch: TWebButton
              Left = 3
              Top = 0
              Width = 40
              Height = 40
              Caption = '<i class="fa-solid fa-magnifying-glass"></i>'
              ChildOrder = 3
              ElementClassName = 'order-0 nointeract OptionsSmallButton btn btn-primary OrangeRS'
              ElementID = 'btnIconSearch'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnIconSearchClick
            end
          end
          object divIconSearchLabel: TWebHTMLDiv
            Left = 19
            Top = 5
            Width = 398
            Height = 40
            ElementClassName = 'HexOuter OrangeR w-100'
            ElementID = 'divIconSearchLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelIconSearch: TWebLabel
              Left = 30
              Top = 1
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Icon Search'
              ElementClassName = 'Title HexInner OrangeL ps-3 pt-1'
              ElementID = 'labelIconSearch'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
          end
          object divIconInfo: TWebHTMLDiv
            Left = 18
            Top = 97
            Width = 400
            Height = 40
            ElementClassName = 'HexOuter OrangeR w-100'
            ElementID = 'divIconInfo'
            WidthStyle = ssPercent
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelIconInfo: TWebLabel
              Left = 26
              Top = 2
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Results'
              ElementClassName = 'text-white HexInner Black ps-3 pt-1'
              ElementID = 'labelIconInfo'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
          end
          object divResultsOuter: TWebHTMLDiv
            Left = 18
            Top = 143
            Width = 399
            Height = 42
            ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR w-100 mb-2'
            ElementID = 'divResultsOuter'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            ChildOrder = 3
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divResultsInner: TWebHTMLDiv
              Left = 31
              Top = 6
              Width = 338
              Height = 24
              ElementClassName = 
                'justify-content-center p-3 gap-3 text-white d-flex flex-row flex' +
                '-wrap nointeract HexTallInner Black w-100 mb-2'
              ElementID = 'divResultsInner'
              HeightStyle = ssAuto
              WidthStyle = ssPercent
              ChildOrder = 7
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
          end
        end
        object divImageAdjustments: TWebHTMLDiv
          Left = 19
          Top = 294
          Width = 550
          Height = 307
          ElementID = 'divImageAdjustments'
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divImageAdjustmentsLabel: TWebHTMLDiv
            Left = 18
            Top = 3
            Width = 398
            Height = 40
            ElementClassName = 'HexOuter OrangeR w-100'
            ElementID = 'divImageAdjustmentsLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelImageAdjustments: TWebLabel
              Left = 30
              Top = 2
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Adjustments'
              ElementClassName = 'Title HexInner OrangeL ps-3 pt-1'
              ElementID = 'labelImageAdjustments'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
            object btnImageReset: TWebButton
              Left = 303
              Top = 0
              Width = 80
              Height = 40
              Caption = 'Reset'
              ChildOrder = 4
              ElementClassName = 'BtnReset text-black me-3'
              ElementID = 'btnImageReset'
              ElementFont = efCSS
              ElementPosition = epIgnore
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnImageResetClick
            end
          end
          object divImageEditor: TWebHTMLDiv
            Left = 18
            Top = 47
            Width = 529
            Height = 250
            ElementClassName = 'nointeract ms-1 overflow-hidden'
            ElementID = 'divImageEditor'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divAdjWidthHolder: TWebHTMLDiv
              Left = 80
              Top = 2
              Width = 345
              Height = 40
              ElementID = 'divAdjWidthHolder'
              ChildOrder = 1
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjWidth" style="position:relative;">'
                '  <slX-range '
                '      id="AdjWidth" '
                '      min="-200"'
                '      max="400"'
                '      value="100"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-a' +
                  'ctive-offset: 0%; --track-color-active:darkorange; --track-color' +
                  '-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbWidth" class="HexSliderThumb OrangeW pe-none d-f' +
                  'lex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderWidth" class="HexOuter OrangeR pe-none" style="' +
                  'position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjSkewXHolder: TWebHTMLDiv
              Left = 80
              Top = 41
              Width = 345
              Height = 40
              ElementID = 'divAdjSkewXHolder'
              ChildOrder = 5
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjSkewX" style="position:relative;">'
                '  <slX-range '
                '      id="AdjSkewX" '
                '      min="-90"'
                '      max="90"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbSkewX" class="HexSliderThumb OrangeW pe-none d-f' +
                  'lex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderSkewX" class="HexOuter OrangeR pe-none" style="' +
                  'position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjRotateHolder: TWebHTMLDiv
              Left = 50
              Top = 197
              Width = 390
              Height = 40
              ElementID = 'divAdjRotateHolder'
              ChildOrder = 3
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjRotate" style="position:relative;">'
                '  <slX-range '
                '      id="AdjRotate" '
                '      min="-180"'
                '      max="180"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbRotate" class="HexSliderThumb OrangeW pe-none d-' +
                  'flex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderRotate" class="HexOuter OrangeR pe-none" style=' +
                  '"position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjShiftXHolder: TWebHTMLDiv
              Left = 80
              Top = 151
              Width = 348
              Height = 40
              ElementID = 'divAdjShiftXHolder'
              ChildOrder = 7
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjShiftX" style="position:relative;">'
                '  <slX-range '
                '      id="AdjShiftX" '
                '      value="100"'
                '      max="200"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbShiftX" class="HexSliderThumb OrangeW pe-none d-' +
                  'flex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderShiftX" class="HexOuter OrangeR pe-none" style=' +
                  '"position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjHeightHolder: TWebHTMLDiv
              Left = 4
              Top = 38
              Width = 40
              Height = 185
              ElementID = 'divAdjHeightHolder'
              ChildOrder = 4
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjHeight" style="position:relative;">'
                '  <slX-range '
                '      id="AdjHeight" '
                '      min="-200"'
                '      max="400"'
                '      value="100"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbHeight" class="HexSliderThumb OrangeW pe-none d-' +
                  'flex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderHeight" class="HexOuter OrangeR pe-none" style=' +
                  '"position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjSkewYHolder: TWebHTMLDiv
              Left = 44
              Top = 56
              Width = 40
              Height = 121
              ElementID = 'divAdjSkewYHolder'
              ChildOrder = 8
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjSkewY" style="position:relative;">'
                '  <slX-range '
                '      id="AdjSkewY" '
                '      min="-90"'
                '      max="90"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbSkewY" class="HexSliderThumb OrangeW pe-none d-f' +
                  'lex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderSkewY" class="HexOuter OrangeR pe-none" style="' +
                  'position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjOpacityHolder: TWebHTMLDiv
              Left = 477
              Top = 24
              Width = 40
              Height = 193
              ElementID = 'divAdjOpacityHolder'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjOpacity" style="position:relative;">'
                '  <slX-range '
                '      id="AdjOpacity" '
                '      value="100"'
                '      max="100"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbOpacity" class="HexSliderThumb OrangeW pe-none d' +
                  '-flex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderOpacity" class="HexOuter OrangeR pe-none" style' +
                  '="position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divAdjShiftYHolder: TWebHTMLDiv
              Left = 431
              Top = 64
              Width = 40
              Height = 105
              ElementID = 'divAdjShiftYHolder'
              ChildOrder = 6
              ElementFont = efCSS
              HTML.Strings = (
                '<div id="divAdjShiftY" style="position:relative;">'
                '  <slX-range'
                '      id="AdjShiftY" '
                '      value="100"'
                '      max="200"'
                '      class="RGB HexSliderH" '
                '      tooltip="none" '
                
                  '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                  'olor-active:darkorange; --track-color-inactive: black;"'
                '    > '
                '  </slX-range>'
                
                  '  <div id="ThumbShiftY" class="HexSliderThumb OrangeW pe-none d-' +
                  'flex justify-content-center align-items-center"></div>'
                
                  '  <div id="BorderShiftY" class="HexOuter OrangeR pe-none" style=' +
                  '"position:absolute; top:2px; height:40px; width: 100%;"></div>'
                '</div>')
              Role = ''
            end
            object divImagePreview: TWebHTMLDiv
              Left = 90
              Top = 87
              Width = 306
              Height = 58
              ElementClassName = 
                'overflow-visible d-flex justify-content-center align-items-cente' +
                'r'
              ElementID = 'divImagePreview'
              ChildOrder = 8
              ElementFont = efCSS
              Role = ''
              object divImageBG: TWebHTMLDiv
                Left = 17
                Top = 0
                Width = 96
                Height = 39
                ElementClassName = 'pe-none d-flex justify-content-center align-items-center'
                ElementID = 'divImageBG'
                ElementFont = efCSS
                Role = ''
              end
              object divImage: TWebHTMLDiv
                Left = 207
                Top = 3
                Width = 96
                Height = 39
                ElementClassName = 'text-white d-flex justify-content-center align-items-center'
                ElementID = 'divImage'
                ChildOrder = 1
                ElementFont = efCSS
                Role = ''
              end
              object divImageFG: TWebHTMLDiv
                Left = 128
                Top = 3
                Width = 73
                Height = 39
                ElementClassName = 'pe-none d-flex justify-content-center align-items-center'
                ElementID = 'divImageFG'
                ChildOrder = 2
                ElementFont = efCSS
                Role = ''
              end
            end
          end
        end
      end
      object pageAudio: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 661
        ElementClassName = 'Page'
        ElementID = 'pageAudio'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Audio'
        ChildOrder = 3
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object divAudoSourceLabel: TWebHTMLDiv
          Left = 19
          Top = 8
          Width = 400
          Height = 40
          ElementClassName = 'order-0 HexOuter VioletR w-100 mt-2'
          ElementID = 'divAudoSourceLabel'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelAudioSource: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Audio Source'
            ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
            ElementID = 'labelAudioSource'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divAudioSources: TWebHTMLDiv
          Left = 19
          Top = 52
          Width = 550
          Height = 40
          ElementClassName = 'order-1 HexHolder d-flex flex-row gap-1 w-100 flex-wrap'
          ElementID = 'divAudioSources'
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divAudioClip: TWebHTMLDiv
            Left = 11
            Top = 0
            Width = 90
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'order-0 HexBtnOuter WhiteR nointeract'
            ElementID = 'divAudioClip'
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioClipClick
            object labelAudioClip: TWebLabel
              Left = 26
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Clips'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelAudioClip'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 80.000000000000000000
            end
          end
          object divAudioURL: TWebHTMLDiv
            Left = 120
            Top = -3
            Width = 82
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'order-1 HexBtnOuter WhiteR nointeract'
            ElementID = 'divAudioURL'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioURLClick
            object labelAudioURL: TWebLabel
              Left = 22
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'URL'
              ChildOrder = 1
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelAudioURL'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 82.000000000000000000
            end
          end
          object divAudioUpload: TWebHTMLDiv
            Left = 235
            Top = 0
            Width = 100
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'order-2 HexBtnOuter WhiteR nointeract'
            ElementID = 'divAudioUpload'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioUploadClick
            object labelAudioUpload: TWebLabel
              Left = 22
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Upload'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelAudioUpload'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 80.000000000000000000
            end
          end
          object divAudioRecord: TWebHTMLDiv
            Left = 341
            Top = 0
            Width = 100
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'order-3 HexBtnOuter WhiteR nointeract'
            ElementID = 'divAudioRecord'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioRecordClick
            object labelAudioRecord: TWebLabel
              Left = 24
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Record'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelAudioRecord'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 80.000000000000000000
            end
          end
          object divAudioSet: TWebHTMLDiv
            Left = 447
            Top = 0
            Width = 75
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'order-4 HexBtnOuter WhiteR nointeract'
            ElementID = 'divAudioSet'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioSetClick
            object labelAudioSet: TWebLabel
              Left = 18
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Set'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelAudioSet'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssAuto
              WidthPercent = 80.000000000000000000
            end
          end
        end
        object divAudioSource: TWebHTMLDiv
          Left = 19
          Top = 98
          Width = 342
          Height = 40
          ElementClassName = 'order-2 nointeract HexOuter WhiteR mb-1'
          ElementID = 'divAudioSource'
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object editAudioSource: TWebEdit
            Left = 30
            Top = 2
            Width = 86
            Height = 36
            ElementClassName = 'EditText HexInner Black ps-3 pb-1'
            ElementID = 'editAudioSource'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
            OnChange = editAudioSourceChange
            OnClick = editAudioSourceClick
          end
        end
        object divAudioClips: TWebHTMLDiv
          Left = 19
          Top = 141
          Width = 548
          Height = 95
          ElementClassName = 'order-3'
          ElementID = 'divAudioClips'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          Visible = False
          object divAudioPresetListLabel: TWebHTMLDiv
            Left = 16
            Top = 3
            Width = 400
            Height = 40
            ElementClassName = 'HexOuter VioletR w-100 mt-2'
            ElementID = 'divAudioClipsListLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelAudioClipsList: TWebLabel
              Left = 30
              Top = 2
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Select Clip'
              ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
              ElementID = 'labelAudioClipsList'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
          end
          object divAudioClipTableHolder: TWebHTMLDiv
            Left = 16
            Top = 44
            Width = 529
            Height = 45
            ElementClassName = 'nointeract HexOuter WhiteR w-100 mb-2'
            ElementID = 'divAudioClipTableHolder'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divAudioClipTable: TWebHTMLDiv
              Left = 13
              Top = 3
              Width = 473
              Height = 38
              ElementClassName = 'HexTallInner Black'
              ElementID = 'divAudioClipTable'
              HeightStyle = ssAuto
              WidthStyle = ssPercent
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
          end
        end
        object divAudioAdjustments: TWebHTMLDiv
          Left = 19
          Top = 492
          Width = 548
          Height = 155
          ElementClassName = 'order-5'
          ElementID = 'divAudioAdjustments'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divAudioAdjustmentsLabel: TWebHTMLDiv
            Left = 16
            Top = 3
            Width = 400
            Height = 40
            ElementClassName = 'HexOuter VioletR w-100 mt-2'
            ElementID = 'divAudioAdjustmentsLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelAudioAdjustments: TWebLabel
              Left = 30
              Top = 2
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Adjustments'
              ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
              ElementID = 'labelAudioAdjustments'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
            object btnAudioReset: TWebButton
              Left = 311
              Top = 0
              Width = 80
              Height = 40
              Caption = 'Reset'
              ChildOrder = 4
              ElementClassName = 'BtnReset text-black me-3'
              ElementID = 'btnAudioReset'
              ElementFont = efCSS
              ElementPosition = epIgnore
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnAudioResetClick
            end
          end
          object divAudioWaveformHolder: TWebHTMLDiv
            Left = 16
            Top = 46
            Width = 529
            Height = 73
            Cursor = crHandPoint
            ElementClassName = 'nointeract HexOuter WhiteR w-100 '
            ElementID = 'divAudioWaveformHolder'
            WidthStyle = ssPercent
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divAudioWaveformHolderClick
            object divAudioWaveformContainer: TWebHTMLDiv
              Left = 22
              Top = 2
              Width = 372
              Height = 72
              ElementClassName = 'HexTallInner Black pe-none'
              ElementID = 'divAudioWaveformContainer'
              WidthStyle = ssPercent
              ChildOrder = 1
              ElementFont = efCSS
              Role = ''
              object divAudioWaveform: TWebHTMLDiv
                Left = 25
                Top = 2
                Width = 112
                Height = 68
                ElementClassName = 'pe-none'
                ElementID = 'divAudioWaveform'
                WidthStyle = ssPercent
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
              object divAudioStart: TWebHTMLDiv
                Left = 143
                Top = -4
                Width = 112
                Height = 70
                ElementClassName = 'pe-none'
                ElementID = 'divAudioStart'
                WidthStyle = ssPercent
                ChildOrder = 1
                ElementPosition = epIgnore
                ElementFont = efCSS
                Role = ''
              end
              object divAudioEnd: TWebHTMLDiv
                Left = 257
                Top = -4
                Width = 112
                Height = 70
                ElementClassName = 'pe-none'
                ElementID = 'divAudioEnd'
                WidthStyle = ssPercent
                ChildOrder = 1
                ElementPosition = epIgnore
                ElementFont = efCSS
                Role = ''
              end
            end
          end
          object divAudioParams: TWebHTMLDiv
            Left = 16
            Top = 121
            Width = 369
            Height = 29
            ElementClassName = 'mb-2 nointeract d-flex gap-2 flex-column'
            ElementID = 'divAudioParams'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            ChildOrder = 4
            ElementPosition = epRelative
            ElementFont = efCSS
            HTML.Strings = (
              '<div id="divGain" style="position:relative;">'
              '  <slX-range '
              '      id="SliderGain" '
              '      value="100"'
              '      max="200"'
              '      class="RGB HexSliderH" '
              '      tooltip="none" '
              
                '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                'olor-active:purple; --track-color-inactive: black;"'
              '    > '
              '  </slX-range>'
              
                '  <div id="ThumbGain" class="HexSliderThumb VioletW pe-none d-fl' +
                'ex justify-content-center align-items-center"></div>'
              
                '  <div id="BorderGain" class="HexOuter VioletR pe-none" style="p' +
                'osition:absolute; top:2px; height:40px; width: 100%;"></div>'
              '</div>'
              ''
              '<div id="divTrimStart" style="position:relative;">'
              '  <slX-range '
              '      id="SliderStart" '
              '      value="0"'
              '      max="100"'
              '      class="RGB HexSliderH" '
              '      tooltip="none" '
              
                '      style="--track-height: 36px; --thumb-size: 33px; --track-c' +
                'olor-active:purple; --track-color-inactive: black;"'
              '    > '
              '  </slX-range>'
              
                '  <div id="ThumbStart" class="HexSliderThumb VioletW pe-none d-f' +
                'lex justify-content-center align-items-center"></div>'
              
                '  <div id="BorderStart" class="HexOuter VioletR pe-none" style="' +
                'position:absolute; top:2px; height:40px; width: 100%;"></div>'
              '</div>'
              ''
              '<div id="divTrimEnd" style="position:relative;">'
              '  <slX-range '
              '      id="SliderEnd" '
              '      value="0"'
              '      max="100"'
              '      class="RGB HexSliderH" '
              '      tooltip="none" '
              
                '      style="transform: rotate(180deg); --track-height: 36px; --' +
                'thumb-size: 33px; --track-color-active:purple; --track-color-ina' +
                'ctive: black;"'
              '    > '
              '  </slX-range>'
              
                '  <div id="ThumbEnd" class="HexSliderThumb VioletW pe-none d-fle' +
                'x justify-content-center align-items-center"></div>'
              
                '  <div id="BorderEnd" class="HexOuter VioletR pe-none" style="po' +
                'sition:absolute; top:2px; height:40px; width: 100%;"></div>'
              '</div>')
            Role = ''
          end
        end
        object divAudioRecording: TWebHTMLDiv
          Left = 19
          Top = 242
          Width = 548
          Height = 88
          ElementClassName = 'order-4'
          ElementID = 'divAudioAdjustments'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          Visible = False
          object divAudioRecordingLabel: TWebHTMLDiv
            Left = 16
            Top = 3
            Width = 400
            Height = 40
            ElementClassName = 'HexOuter VioletR w-100 mt-2'
            ElementID = 'divAudioRecordingLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelAudioRecording: TWebLabel
              Left = 30
              Top = 1
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Record Audio'
              ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
              ElementID = 'labelAudioRecording'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
          end
          object WebCamera1: TWebCamera
            Left = 314
            Top = 44
            Width = 154
            Height = 40
            HeightStyle = ssAuto
            WidthStyle = ssAuto
          end
          object divAudioControls: TWebHTMLDiv
            Left = 16
            Top = 44
            Width = 292
            Height = 40
            ElementClassName = 'order-1 HexHolder d-flex flex-row gap-1 w-100 flex-wrap'
            ElementID = 'divAudioControls'
            WidthStyle = ssPercent
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divAudioRecordStart: TWebHTMLDiv
              Left = 3
              Top = 0
              Width = 90
              Height = 40
              Cursor = crHandPoint
              ElementClassName = 'order-0 HexBtnOuter WhiteR nointeract'
              ElementID = 'divAudioRecordStart'
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              OnClick = divAudioRecordStartClick
              object labelAudioRecordStart: TWebLabel
                Left = 26
                Top = 2
                Width = 100
                Height = 36
                AutoSize = False
                Caption = 'Start'
                ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
                ElementID = 'labelAudioRecordStart'
                ElementFont = efCSS
                HeightPercent = 100.000000000000000000
                HTMLType = tSPAN
                Layout = tlCenter
                WidthStyle = ssAuto
                WidthPercent = 80.000000000000000000
              end
            end
            object divAudioRecordStop: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 82
              Height = 40
              Cursor = crHandPoint
              ElementClassName = 'order-1 HexBtnOuter RedR nointeract'
              ElementID = 'divAudioRecordStop'
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              Visible = False
              OnClick = divAudioRecordStopClick
              object labelAudioRecordStop: TWebLabel
                Left = 26
                Top = 3
                Width = 100
                Height = 36
                AutoSize = False
                Caption = 'Stop'
                ChildOrder = 1
                ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
                ElementID = 'labelAudioRecordStop'
                ElementFont = efCSS
                HeightPercent = 100.000000000000000000
                HTMLType = tSPAN
                Layout = tlCenter
                WidthStyle = ssAuto
                WidthPercent = 82.000000000000000000
              end
            end
          end
        end
        object divAudioSets: TWebHTMLDiv
          Left = 19
          Top = 343
          Width = 548
          Height = 143
          ElementClassName = 'order-3'
          ElementID = 'divAudioSets'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          Visible = False
          object divAudioSetsLabel: TWebHTMLDiv
            Left = 16
            Top = 3
            Width = 400
            Height = 40
            ElementClassName = 'HexOuter VioletR w-100 mt-2'
            ElementID = 'divAudioSetsLabel'
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object labelAudioSets: TWebLabel
              Left = 30
              Top = 2
              Width = 300
              Height = 36
              AutoSize = False
              Caption = 'Select HexaGongs'
              ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
              ElementID = 'labelAudioSets'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthStyle = ssPercent
              WidthPercent = 80.000000000000000000
            end
          end
          object divAudioSetsTableHolder: TWebHTMLDiv
            Left = 16
            Top = 95
            Width = 529
            Height = 45
            ElementClassName = 'nointeract HexOuter WhiteR w-100 mb-2'
            ElementID = 'divAudioSetsTableHolder'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divAudioSetsTable: TWebHTMLDiv
              Left = 13
              Top = 3
              Width = 473
              Height = 38
              ElementClassName = 'HexTallInner bg-black Black'
              ElementID = 'divAudioSetsTable'
              HeightStyle = ssAuto
              WidthStyle = ssPercent
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
          end
          object divSetStyle: TWebHTMLDiv
            Left = 16
            Top = 49
            Width = 401
            Height = 40
            ElementClassName = 'HexHolder d-flex flex-row gap-1 flex-wrap'
            ElementID = 'divSetStyle'
            WidthStyle = ssPercent
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divSeries: TWebHTMLDiv
              Left = 16
              Top = 0
              Width = 95
              Height = 40
              Cursor = crHandPoint
              ElementClassName = 'HexBtnOuter WhiteR nointeract'
              ElementID = 'divSeries'
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              OnClick = divSeriesClick
              object labelSeries: TWebLabel
                Left = 26
                Top = 2
                Width = 100
                Height = 36
                AutoSize = False
                Caption = 'Series'
                ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
                ElementID = 'labelSeries'
                ElementFont = efCSS
                HeightPercent = 100.000000000000000000
                HTMLType = tSPAN
                Layout = tlCenter
                WidthStyle = ssAuto
                WidthPercent = 80.000000000000000000
              end
            end
            object divParallel: TWebHTMLDiv
              Left = 136
              Top = 0
              Width = 110
              Height = 40
              Cursor = crHandPoint
              ElementClassName = 'HexBtnOuter WhiteR nointeract'
              ElementID = 'divParallel'
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              OnClick = divParallelClick
              object labelParallel: TWebLabel
                Left = 12
                Top = 1
                Width = 60
                Height = 36
                AutoSize = False
                Caption = 'Parallel'
                ChildOrder = 1
                ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
                ElementID = 'labelParallel'
                ElementFont = efCSS
                HeightPercent = 100.000000000000000000
                HTMLType = tSPAN
                Layout = tlCenter
                WidthStyle = ssAuto
                WidthPercent = 110.000000000000000000
              end
            end
          end
        end
      end
      object pageSettings: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 661
        ElementClassName = 'Page'
        ElementID = 'pageSettings'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Settings'
        ChildOrder = 4
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object divSettingsBGETitle: TWebHTMLDiv
          Left = 19
          Top = 12
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter GrayR w-100 mt-2'
          ElementID = 'divSettingsBGETitle'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelSettingsBGETitle: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Background Elements'
            ElementClassName = 'Title HexInner GrayL ps-3 pt-1'
            ElementID = 'labelSettingsBGETitle'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divCORSProxy: TWebHTMLDiv
          Left = 19
          Top = 116
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter GrayR w-100 mt-2'
          ElementID = 'divCORSProxy'
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelCORSProxy: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'CORS Proxy'
            ElementClassName = 'Title HexInner GrayL ps-3 pt-1'
            ElementID = 'labelCORSProxy'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divSettingsBGEChoices: TWebHTMLDiv
          Left = 19
          Top = 58
          Width = 401
          Height = 40
          ElementClassName = 'HexHolder d-flex flex-row gap-1 mb-3 flex-wrap'
          ElementID = 'divSettingsBGEChoices'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divOptionsBGENone: TWebHTMLDiv
            Left = 16
            Top = 0
            Width = 90
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGENone'
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGENoneClick
            object labelOptionsBGENone: TWebLabel
              Left = 26
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'None'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelOptionsBGENone'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divOptionsBGESix: TWebHTMLDiv
            Left = 112
            Top = 0
            Width = 62
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGESix'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGESixClick
            object labelOptionsBGESix: TWebLabel
              Left = 18
              Top = 2
              Width = 60
              Height = 36
              AutoSize = False
              Caption = '6'
              ChildOrder = 1
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelOptionsBGESix'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 100.000000000000000000
            end
          end
          object divOptionsBGETwelve: TWebHTMLDiv
            Left = 213
            Top = 0
            Width = 72
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGETwelve'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGETwelveClick
            object labelOptionsBGETwelve: TWebLabel
              Left = 22
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = '12'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelOptionsBGETwelve'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divOptionsBGEEighteen: TWebHTMLDiv
            Left = 305
            Top = 0
            Width = 72
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divOptionsBGEEighteen'
            ChildOrder = 3
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divOptionsBGEEighteenClick
            object labelOptionsBGEEighteen: TWebLabel
              Left = 22
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = '18'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelOptionsBGEEighteen'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
        end
        object divProxyHolder: TWebHTMLDiv
          Left = 19
          Top = 160
          Width = 569
          Height = 40
          ElementClassName = 'HexHolder d-flex flex-row gap-1 mb-3 w-100 flex-wrap'
          ElementID = 'divProxyHolder'
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divProxyDefault: TWebHTMLDiv
            Left = 11
            Top = 0
            Width = 103
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divProxyDefault'
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divProxyDefaultClick
            object labelProxyDefault: TWebLabel
              Left = 26
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Default'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelProxyDefault'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divProxyCustom: TWebHTMLDiv
            Left = 208
            Top = 0
            Width = 103
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divProxyCustom'
            ChildOrder = 2
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divProxyCustomClick
            object labelProxyCustom: TWebLabel
              Left = 22
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Custom'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelProxyCustom'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divProxyNone: TWebHTMLDiv
            Left = 120
            Top = 0
            Width = 90
            Height = 40
            Cursor = crHandPoint
            ElementClassName = 'HexBtnOuter WhiteR nointeract'
            ElementID = 'divProxyNone'
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            OnClick = divProxyNoneClick
            object labelProxyNone: TWebLabel
              Left = 23
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'None'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'labelProxyNone'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              HTMLType = tSPAN
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divProxy: TWebHTMLDiv
            Left = 317
            Top = 0
            Width = 148
            Height = 40
            ElementClassName = 'nointeract HexBtnOuter WhiteR flex-grow-1'
            ElementID = 'divProxy'
            WidthStyle = ssAuto
            ChildOrder = 3
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object editProxy: TWebEdit
              Left = 30
              Top = 2
              Width = 86
              Height = 36
              ElementClassName = 'EditText HexInner Black ps-3 '
              ElementID = 'editProxy'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              WidthStyle = ssPercent
              WidthPercent = 100.000000000000000000
              OnChange = editProxyChange
            end
          end
        end
        object divAboutHexaGongs: TWebHTMLDiv
          Left = 19
          Top = 226
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter GrayR w-100 mt-2'
          ElementID = 'divAboutHexaGongs'
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelAboutHexaGongs: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'About HexaGongs'
            ElementClassName = 'Title HexInner GrayL ps-3 pt-1'
            ElementID = 'labelAboutHexaGongs'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTMLType = tSPAN
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object divAboutHexaGongsHolder: TWebHTMLDiv
          Left = 19
          Top = 270
          Width = 399
          Height = 42
          ElementClassName = 'nointeract HexOuter WhiteR w-100 mb-2'
          ElementID = 'divAboutHexaGongsHolder'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divAboutHexaGongsContent: TWebHTMLDiv
            Left = 31
            Top = 6
            Width = 338
            Height = 24
            ElementClassName = 
              'p-3 text-white nointeract HexTallInner Black w-100 mb-1 text-wra' +
              'p'
            ElementID = 'divAboutHexaGongsContent'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            ChildOrder = 7
            ElementPosition = epRelative
            ElementFont = efCSS
            HTML.Strings = (
              '<p>'
              
                '  The HexaGongs project was creaed as part of a blog series on d' +
                'eveloping bespoke web interfaces using '
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="https://www.tmssoftware.com/site/tmswebcore.asp">'
              '    TMS WEB Core</a>. '
              '  The first post in that series can be found '
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="https://www.tmssoftware.com/site/blog.asp?post=1106">'
              '    here</a>.  '
              
                '  The project also serves as a showcase for other TMS WEB Core c' +
                'apabilities, '
              
                '  such as being able to make use of the Web Audio AP along with ' +
                'a host of other JavaScript libraries.'
              '</p>'
              '<p>'
              
                '  More information about the project, including the full source ' +
                'code, can also be found on '
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="https://github.com/500Foods/HexaGongs">'
              '    GitHub</a>.'
              
                'If you find this project interesting, helpful, or useful, please' +
                ' consider direclty supporting these efforts financially via the ' +
                'Buy Me a Pizza link below. '
              '</p>'
              '<p class="text-center mt-4">'
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="mailto:concierge@hexagongs.com">'
              '    <i class="fa-solid fa-envelope fa-2x pe-3"></i>'
              '  </a>'
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="https://www.buymeacoffee.com/andrewsimard500">'
              
                '     <img style="margin-top: -15px;" src="https://www.actorious.' +
                'com/img/pizza_promo.png" width="45">'
              '  </a>'
              
                '  <a style="text-decoration: none; color: gray;" target="_blank"' +
                ' href="https://github.com/500Foods/HexaGongs">'
              '    <i class="fa-brands fa-github fa-2x ps-3 pe-3"></i>'
              '  </a>'
              '</p>')
            Role = ''
          end
        end
      end
    end
    object divOptionsBGBorder: TWebHTMLDiv
      Left = 195
      Top = 16
      Width = 121
      Height = 171
      ElementClassName = 'HexOuter'
      ElementID = 'divOptionsBGBorder'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
      object divOptionsBG: TWebHTMLDiv
        Left = 21
        Top = 71
        Width = 84
        Height = 65
        ElementClassName = 'HexTallInner'
        ElementID = 'divOptionsBG'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 2
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
    end
  end
  object tmrStartup: TWebTimer
    Interval = 100
    OnTimer = tmrStartupTimer
    Left = 40
    Top = 48
  end
  object WebOpenDialog1: TWebOpenDialog
    OnGetFileAsText = WebOpenDialog1GetFileAsText
    OnGetFileAsBase64 = WebOpenDialog1GetFileAsBase64
    OnGetFileAsArrayBuffer = WebOpenDialog1GetFileAsArrayBuffer
    Left = 80
    Top = 96
  end
  object WebHttpRequest1: TWebHttpRequest
    Left = 88
    Top = 48
  end
  object WebMediaCapture1: TWebMediaCapture
    Capture = mctAudio
    Camera = WebCamera1
    SmoothingTimeConstant = 0.900000000000000000
    OnStopCapture = WebMediaCapture1StopCapture
    Left = 40
    Top = 95
  end
end
