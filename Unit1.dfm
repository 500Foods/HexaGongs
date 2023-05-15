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
    Left = 144
    Top = 16
    Width = 657
    Height = 249
    ElementClassName = 'd-none'
    ElementID = 'divButtons'
    ChildOrder = 3
    Role = ''
    object btnMain: TWebButton
      Left = 40
      Top = 72
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
      Left = 40
      Top = 111
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
      Left = 40
      Top = 150
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
      Left = 40
      Top = 189
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
      Left = 160
      Top = 72
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-share text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnShare'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnDownload: TWebButton
      Left = 288
      Top = 72
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-download text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnDownload'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnUpload: TWebButton
      Left = 416
      Top = 72
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-upload text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnUpload'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnScalePlus: TWebButton
      Left = 160
      Top = 111
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
      Left = 288
      Top = 111
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-expand text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnFullScreen'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnScaleMinus: TWebButton
      Left = 416
      Top = 111
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
      Left = 160
      Top = 150
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-trash-can text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnTrash'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnEdit: TWebButton
      Left = 288
      Top = 150
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
      Left = 416
      Top = 150
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-clone text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnClone'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnVolumeUp: TWebButton
      Left = 160
      Top = 189
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-high text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeUp'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnVolumeMute: TWebButton
      Left = 288
      Top = 189
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-xmark text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeMute'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnVolumeDown: TWebButton
      Left = 416
      Top = 189
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-low text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolumeDown'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object btnCursor: TWebButton
      Left = 534
      Top = 72
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
    Left = 48
    Top = 360
    Width = 849
    Height = 337
    ElementClassName = 'resize-drag'
    ElementID = 'divOptions'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ChildOrder = 3
    ElementPosition = epIgnore
    Role = ''
    object divOptionsList: TWebHTMLDiv
      Left = 16
      Top = 16
      Width = 121
      Height = 305
      ElementClassName = 'd-flex flex-column justify-content-evenly align-items-center '
      ElementID = 'divOptionsList'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ElementPosition = epIgnore
      Role = ''
      object btnOptionsName: TWebButton
        Left = 22
        Top = 15
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-pencil fa-2x"></i>'
        ElementClassName = 'nointeract OptionButton btn btn-primary'
        ElementID = 'btnOptionsName'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsNameClick
      end
      object btnOptionsBackground: TWebButton
        Left = 22
        Top = 49
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-palette fa-2x"></i>'
        ChildOrder = 1
        ElementClassName = 'nointeract OptionButton btn btn-primary'
        ElementID = 'btnOptionsBackground'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsBackgroundClick
      end
      object btnOptionsImage: TWebButton
        Left = 22
        Top = 85
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-eye fa-2x"></i>'
        ChildOrder = 2
        ElementClassName = 'nointeract OptionButton btn btn-primary'
        ElementID = 'btnOptionsImage'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsImageClick
      end
      object btnOptionsAudio: TWebButton
        Left = 22
        Top = 119
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-music fa-2x"></i>'
        ChildOrder = 3
        ElementClassName = 'nointeract OptionButton btn btn-primary'
        ElementID = 'btnOptionsAudio'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsAudioClick
      end
      object btnOptionsOK: TWebButton
        Left = 22
        Top = 233
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-check fa-2x"></i>'
        ChildOrder = 5
        ElementClassName = 'nointeract OptionButton btn btn-success'
        ElementID = 'btnOptionsOK'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsOKClick
      end
      object btnOptionsCancel: TWebButton
        Left = 22
        Top = 269
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-xmark fa-2x"></i>'
        ChildOrder = 6
        ElementClassName = 'nointeract OptionButton btn btn-danger'
        ElementID = 'btnOptionsCancel'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsCancelClick
      end
      object btnOptionsSettings: TWebButton
        Left = 22
        Top = 175
        Width = 64
        Height = 64
        Caption = '<i class="fa-solid fa-gear fa-2x"></i>'
        ChildOrder = 4
        ElementClassName = 'nointeract OptionButton btn btn-secondary'
        ElementID = 'btnOptionsSettings'
        ElementFont = efCSS
        ElementPosition = epIgnore
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnOptionsSettingsClick
      end
    end
    object pageControl: TWebPageControl
      Left = 331
      Top = 3
      Width = 422
      Height = 300
      ElementClassName = 'nointeract'
      ElementID = 'pageControl'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      TabIndex = 0
      ShowTabs = False
      TabOrder = 1
      object pageName: TWebTabSheet
        Left = 0
        Top = 20
        Width = 422
        Height = 280
        ElementClassName = 'Page'
        ElementID = 'pageName'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Caption = 'Name'
        ElementPosition = epIgnore
        object WebLabel1: TWebLabel
          Left = 3
          Top = 16
          Width = 73
          Height = 33
          AutoSize = False
          Caption = 'Project Title'
          HeightPercent = 100.000000000000000000
          Visible = False
          WidthPercent = 100.000000000000000000
        end
        object divTitleHolder: TWebHTMLDiv
          Left = 3
          Top = 39
          Width = 329
          Height = 81
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
          Visible = False
          object editTitle: TWebEdit
            Left = 16
            Top = 19
            Width = 257
            Height = 22
            ElementClassName = 'ps-3'
            ElementID = 'editTitle'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            Text = 'editTitle'
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
        end
      end
      object pageBackground: TWebTabSheet
        Left = 0
        Top = 20
        Width = 422
        Height = 280
        ElementClassName = 'Page'
        ElementID = 'pageBackground'
        Caption = 'Background'
        ChildOrder = 1
      end
      object pageImage: TWebTabSheet
        Left = 0
        Top = 20
        Width = 422
        Height = 280
        ElementClassName = 'Page'
        ElementID = 'pageImage'
        Caption = 'Image'
        ChildOrder = 2
      end
      object pageAudio: TWebTabSheet
        Left = 0
        Top = 20
        Width = 422
        Height = 280
        ElementClassName = 'Page'
        ElementID = 'pageAudio'
        Caption = 'Audio'
        ChildOrder = 3
      end
      object pageSettings: TWebTabSheet
        Left = 0
        Top = 20
        Width = 422
        Height = 280
        ElementClassName = 'Page'
        ElementID = 'pageSettings'
        Caption = 'Settings'
        ChildOrder = 4
      end
    end
    object divOptionsBG: TWebHTMLDiv
      Left = 143
      Top = 16
      Width = 121
      Height = 73
      ElementID = 'divOptionsBG'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epIgnore
      Role = ''
    end
    object divOptionsBGBorder: TWebHTMLDiv
      Left = 143
      Top = 95
      Width = 121
      Height = 105
      ElementID = 'divOptionsBGBorder'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
    end
    object divOptionsCursor: TWebHTMLDiv
      Left = 143
      Top = 222
      Width = 121
      Height = 99
      ElementID = 'divOptionsCursor'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
    end
  end
  object divShade: TWebHTMLDiv
    Left = 8
    Top = 133
    Width = 121
    Height = 105
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
