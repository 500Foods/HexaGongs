object Form1: TForm1
  Width = 957
  Height = 737
  Caption = 'overflow-hidden'
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  object divBackground: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 957
    Height = 737
    ElementID = 'divBackground'
    Align = alClient
    Role = ''
  end
  object divAnimParent: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 100
    Height = 40
    ElementID = 'divAnimParent'
    ChildOrder = 1
    Role = ''
  end
  object divButtons: TWebHTMLDiv
    Left = 135
    Top = 8
    Width = 814
    Height = 161
    ElementClassName = 'd-none'
    ElementID = 'divButtons'
    ChildOrder = 3
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
      WidthPercent = 100.000000000000000000
      OnClick = btnChangeClick
    end
    object btnVolume: TWebButton
      Left = 3
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-off"></i>'
      ChildOrder = 2
      ElementID = 'btnVolume'
      HeightPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
    end
    object btnDownload: TWebButton
      Left = 251
      Top = 3
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-download text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnDownload'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
    end
    object btnVolumeUp: TWebButton
      Left = 123
      Top = 120
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-high text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeUp'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
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
      WidthPercent = 100.000000000000000000
    end
    object btnCursor: TWebButton
      Left = 497
      Top = 3
      Width = 96
      Height = 33
      ChildOrder = 2
      ElementClassName = 'dragswap'
      ElementID = 'btnCursor'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnMainClick
    end
  end
  object divOptions: TWebHTMLDiv
    Left = 8
    Top = 175
    Width = 941
    Height = 554
    ElementClassName = 'resize-drag'
    ElementID = 'divOptions'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 3
    ElementPosition = epIgnore
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
        HeightPercent = 100.000000000000000000
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
      Left = 326
      Top = 3
      Width = 607
      Height = 534
      ElementClassName = 'nointeract'
      ElementID = 'pageControl'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      TabIndex = 1
      ShowTabs = False
      TabOrder = 1
      object pageName: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 514
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
            ElementClassName = 'EditText HexInner Black ps-3 '
            ElementID = 'editTitle'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object WebHTMLDiv1: TWebHTMLDiv
          Left = 19
          Top = 12
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100 mt-2'
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel1: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Project Title'
            ElementClassName = 'Title HexInner OrangeL ps-3 pt-1'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object WebHTMLDiv2: TWebHTMLDiv
          Left = 19
          Top = 196
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel2: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'HexaGong Name'
            ElementClassName = 'Title HexInner OrangeL ps-3 pt-1 '
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object WebHTMLDiv3: TWebHTMLDiv
          Left = 19
          Top = 242
          Width = 400
          Height = 40
          ElementClassName = 'nointeract HexOuter WhiteR mb-3 w-100'
          WidthStyle = ssPercent
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebEdit1: TWebEdit
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            ElementClassName = 'EditText HexInner Black ps-3 '
            ElementID = 'editTitle'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
        end
        object WebHTMLDiv4: TWebHTMLDiv
          Left = 19
          Top = 108
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel3: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Project Description / Inspiration'
            ElementClassName = 'Title HexInner OrangeL ps-3 pt-1 '
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object WebHTMLDiv5: TWebHTMLDiv
          Left = 19
          Top = 152
          Width = 400
          Height = 40
          ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR mb-3 w-100'
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
        object WebHTMLDiv6: TWebHTMLDiv
          Left = 19
          Top = 292
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter YellowR w-100'
          WidthStyle = ssPercent
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel4: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'HexaGong Description / Attribution'
            ElementClassName = 'Title HexInner OrangeL ps-3 pt-1 '
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object memoHexDescHolder: TWebHTMLDiv
          Left = 19
          Top = 336
          Width = 400
          Height = 40
          ElementClassName = 'EditMemoHolder nointeract HexOuter WhiteR w-100 mb-2'
          ElementID = 'memoHexDescHolder'
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
        Height = 514
        ElementClassName = 'Page'
        ElementID = 'pageBackground'
        Caption = 'Background'
        ChildOrder = 1
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
            ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
        object WebHTMLDiv11: TWebHTMLDiv
          Left = 27
          Top = 64
          Width = 401
          Height = 40
          ElementClassName = 'd-flex flex-row gap-1 mb-3'
          ChildOrder = 4
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
              Left = 26
              Top = 2
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Radial'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGRadialLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
          object divOptionsBGLinear: TWebHTMLDiv
            Left = 143
            Top = 0
            Width = 90
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
              Left = 22
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
              Layout = tlCenter
              WidthPercent = 82.000000000000000000
            end
          end
          object divOptionsBGSolid: TWebHTMLDiv
            Left = 259
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
              Left = 22
              Top = 3
              Width = 100
              Height = 36
              AutoSize = False
              Caption = 'Solid'
              ElementClassName = 'Title HexInner Black ps-3 pt-1 pe-none'
              ElementID = 'divOptionsBGSolidLabel'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              Layout = tlCenter
              WidthPercent = 80.000000000000000000
            end
          end
        end
        object WebHTMLDiv12: TWebHTMLDiv
          Left = 27
          Top = 132
          Width = 400
          Height = 40
          ElementClassName = 'HexOuter BlueR w-100 mb-3'
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object WebLabel9: TWebLabel
            Left = 30
            Top = 2
            Width = 300
            Height = 36
            AutoSize = False
            Caption = 'Select Two Colors'
            ElementClassName = 'Title HexInner VioletL ps-3 pt-1'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            Layout = tlCenter
            WidthStyle = ssPercent
            WidthPercent = 80.000000000000000000
          end
        end
      end
      object pageImage: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 514
        ElementClassName = 'Page'
        ElementID = 'pageImage'
        Caption = 'Image'
        ChildOrder = 2
      end
      object pageAudio: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 514
        ElementClassName = 'Page'
        ElementID = 'pageAudio'
        Caption = 'Audio'
        ChildOrder = 3
      end
      object pageSettings: TWebTabSheet
        Left = 0
        Top = 20
        Width = 607
        Height = 514
        ElementClassName = 'Page'
        ElementID = 'pageSettings'
        Caption = 'Settings'
        ChildOrder = 4
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
  object divShade: TWebHTMLDiv
    Left = 8
    Top = 128
    Width = 121
    Height = 41
    ElementID = 'divShade'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 2
    ElementPosition = epIgnore
    ElementFont = efCSS
    Role = ''
  end
  object tmrStartup: TWebTimer
    Interval = 100
    OnTimer = tmrStartupTimer
    Left = 40
    Top = 64
  end
end
