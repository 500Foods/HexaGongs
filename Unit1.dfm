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
    object btnVolume: TWebButton
      Left = 40
      Top = 189
      Width = 96
      Height = 33
      Caption = '<i class="fa-solid fa-volume-off text-white"></i>'
      ChildOrder = 2
      ElementID = 'btnVolume'
      ElementPosition = epIgnore
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
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
  object btnMain: TWebButton
    Left = 40
    Top = 72
    Width = 96
    Height = 33
    Caption = '<i class="fa-solid fa-cloud text-white"></i>'
    ChildOrder = 2
    ElementID = 'btnMain'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object divButtons: TWebHTMLDiv
    Left = 128
    Top = 8
    Width = 113
    Height = 49
    ElementClassName = 'd-none'
    ElementID = 'divButtons'
    ChildOrder = 3
    Role = ''
  end
  object btnScale: TWebButton
    Left = 40
    Top = 111
    Width = 96
    Height = 33
    Caption = '<i class="fa-solid fa-up-down-left-right text-white"></i>'
    ChildOrder = 2
    ElementID = 'btmScale'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnChange: TWebButton
    Left = 40
    Top = 150
    Width = 96
    Height = 33
    Caption = '<i class="fa-solid fa-shuffle text-white"></i>'
    ChildOrder = 2
    ElementID = 'btnChange'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object tmrStartup: TWebTimer
    OnTimer = tmrStartupTimer
    Left = 280
    Top = 312
  end
end
