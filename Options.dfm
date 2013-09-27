object frmOptions: TfrmOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 325
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TButton
    Left = 367
    Top = 294
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 446
    Top = 294
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object pnlOptionsPage: TPanel
    Left = 191
    Top = 8
    Width = 331
    Height = 280
    TabOrder = 1
  end
  object vstListCategory: TVirtualStringTree
    Left = 8
    Top = 8
    Width = 177
    Height = 280
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.MainColumn = -1
    Images = ImagesDM.LargeIcoImages
    TabOrder = 0
    TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
    OnAddToSelection = vstListCategoryAddToSelection
    OnFreeNode = vstListCategoryFreeNode
    OnGetText = vstListCategoryGetText
    OnGetImageIndex = vstListCategoryGetImageIndex
    OnInitNode = vstListCategoryInitNode
    Columns = <>
  end
  object DKLanguageController1: TDKLanguageController
    Left = 8
    Top = 288
    LangData = {
      0A0066726D4F7074696F6E73010100000001000000070043617074696F6E0104
      000000050062746E4F6B010100000002000000070043617074696F6E00090062
      746E43616E63656C010100000003000000070043617074696F6E000E00706E6C
      4F7074696F6E735061676500000F007673744C69737443617465676F72790000}
  end
end
