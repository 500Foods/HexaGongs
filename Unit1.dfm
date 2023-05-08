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
    ElementClassName = 'bg-black'
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
end
