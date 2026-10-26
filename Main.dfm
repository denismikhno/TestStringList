object MainForm: TMainForm
  Left = 674
  Top = 312
  Caption = 'TestStringList'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object mmoCitiesList: TMemo
    Left = 168
    Top = 40
    Width = 281
    Height = 265
    TabOrder = 0
  end
  object btnList: TButton
    Left = 168
    Top = 360
    Width = 75
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082
    TabOrder = 1
    OnClick = btnListClick
  end
  object btnSort: TButton
    Left = 374
    Top = 360
    Width = 75
    Height = 25
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = btnSortClick
  end
end
