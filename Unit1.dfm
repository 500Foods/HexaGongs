object Form1: TForm1
  Width = 861
  Height = 641
  Caption = 'overflow-hidden'
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  object divBackground: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 861
    Height = 641
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
    Left = 56
    Top = 344
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
      Caption = '<i class="fa-solid fa-cloud text-white"></i>'
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
      Caption = '<i class="fa-solid fa-up-down-left-right text-white"></i>'
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
      Caption = '<i class="fa-solid fa-shuffle text-white"></i>'
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
      Caption = '<i class="fa-solid fa-volume-off text-white"></i>'
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
  end
  object tmrStartup: TWebTimer
    Interval = 100
    OnTimer = tmrStartupTimer
    Left = 40
    Top = 64
  end
end
