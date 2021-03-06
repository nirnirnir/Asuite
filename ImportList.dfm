object frmImportList: TfrmImportList
  Left = 749
  Top = 202
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Import list'
  ClientHeight = 332
  ClientWidth = 287
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
  object bvl1: TBevel
    Left = 0
    Top = 293
    Width = 287
    Height = 2
    Align = alTop
    Shape = bsBottomLine
  end
  object bvl2: TBevel
    Left = 0
    Top = 49
    Width = 287
    Height = 2
    Align = alTop
    Shape = bsBottomLine
  end
  object btnBack: TButton
    Left = 45
    Top = 301
    Width = 75
    Height = 23
    Caption = '< Back'
    Enabled = False
    TabOrder = 1
    OnClick = btnBackClick
  end
  object btnNext: TButton
    Left = 123
    Top = 301
    Width = 75
    Height = 23
    Caption = 'Next >'
    Default = True
    TabOrder = 2
    OnClick = btnNextClick
  end
  object btnCancel: TButton
    Left = 204
    Top = 301
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object lblTitle: TLabel
      Left = 16
      Top = 8
      Width = 257
      Height = 30
      AutoSize = False
      Caption = 'Select a launcher from which to import list and settings'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
  end
  object pgcImport: TPageControl
    Left = 0
    Top = 51
    Width = 287
    Height = 242
    ActivePage = tsList
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    object tsLaunchers: TTabSheet
      Caption = 'tsLaunchers'
      TabVisible = False
      OnShow = tsLaunchersShow
      object rgrpLauncher: TRadioGroup
        Left = 12
        Top = 38
        Width = 253
        Height = 136
        Caption = 'Launcher'
        ItemIndex = 0
        Items.Strings = (
          'ASuite 2.x'
          'ASuite 1.x'
          'winPenPack Launcher 1.x')
        TabOrder = 0
      end
    end
    object tsSettings: TTabSheet
      Caption = 'tsSettings'
      ImageIndex = 1
      TabVisible = False
      OnShow = tsSettingsShow
      object gbElements: TGroupBox
        Left = 12
        Top = 119
        Width = 253
        Height = 105
        Caption = 'Elements'
        TabOrder = 0
        object cbImportList: TCheckBox
          Left = 16
          Top = 24
          Width = 97
          Height = 17
          Caption = 'List'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cbImportListClick
        end
        object cbImportSettings: TCheckBox
          Left = 16
          Top = 55
          Width = 97
          Height = 17
          Caption = 'Settings'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = cbImportListClick
        end
      end
      object gbFile: TGroupBox
        Left = 12
        Top = 0
        Width = 253
        Height = 105
        Caption = 'Launcher File'
        TabOrder = 1
        object lblFile: TLabel
          Left = 7
          Top = 24
          Width = 107
          Height = 13
          Caption = 'Launcher File location:'
          Color = clBtnFace
          ParentColor = False
        end
        object btnBrowse: TButton
          Left = 164
          Top = 67
          Width = 73
          Height = 22
          Caption = 'Browse...'
          TabOrder = 0
          OnClick = btnBrowseClick
        end
        object edtPathList: TEdit
          Left = 7
          Top = 40
          Width = 230
          Height = 21
          TabOrder = 1
          OnEnter = edtPathListEnter
          OnExit = edtPathListEnter
        end
      end
    end
    object tsList: TTabSheet
      Caption = 'tsItems'
      ImageIndex = 2
      TabVisible = False
      OnShow = tsListShow
      object vstListImp: TVirtualStringTree
        Left = 12
        Top = 3
        Width = 253
        Height = 204
        AnimationDuration = 0
        ClipboardFormats.Strings = (
          'CSV'
          'HTML Format'
          'Plain text'
          'Rich Text Format'
          'Rich Text Format Without Objects'
          'Unicode text'
          'Virtual Tree Data')
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.AutoSizeIndex = 0
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'MS Shell Dlg 2'
        Header.Font.Style = []
        Header.MainColumn = -1
        Header.Options = [hoColumnResize, hoDrag]
        Images = ImagesDM.IcoImages
        ParentFont = False
        TabOrder = 0
        TextMargin = 2
        TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoTristateTracking]
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
        TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
        OnDrawText = vstListImpDrawText
        OnExpanding = vstListImpExpanding
        OnFreeNode = vstListImpFreeNode
        OnGetText = vstListImpGetText
        OnGetImageIndex = vstListImpGetImageIndex
        Columns = <>
      end
      object btnSelectAll: TButton
        Left = 32
        Top = 213
        Width = 105
        Height = 17
        Caption = 'Select all'
        TabOrder = 1
        OnClick = btnSelectAllClick
      end
      object btnDeselectAll: TButton
        Left = 143
        Top = 213
        Width = 105
        Height = 17
        Caption = 'Deselect all'
        TabOrder = 2
        OnClick = btnDeselectAllClick
      end
    end
    object tsProgress: TTabSheet
      Caption = 'tsProgress'
      ImageIndex = 3
      TabVisible = False
      OnShow = tsProgressShow
      object lblItems: TLabel
        Left = 12
        Top = 120
        Width = 153
        Height = 13
        Caption = 'Processing items (%d%%): %d'
      end
      object imgList: TImage
        Left = 12
        Top = 88
        Width = 17
        Height = 18
      end
      object lblList: TLabel
        Left = 35
        Top = 88
        Width = 16
        Height = 13
        Caption = 'List'
        Layout = tlCenter
      end
      object lblLauncher: TLabel
        Left = 12
        Top = 16
        Width = 87
        Height = 13
        Caption = 'From %s launcher'
      end
      object imgSettings: TImage
        Left = 12
        Top = 59
        Width = 17
        Height = 18
      end
      object lblSettings: TLabel
        Left = 35
        Top = 59
        Width = 39
        Height = 13
        Caption = 'Settings'
        Layout = tlCenter
      end
      object pbImport: TProgressBar
        Left = 12
        Top = 136
        Width = 245
        Height = 17
        Step = 1
        TabOrder = 0
      end
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 192
    Top = 8
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All list|*.xml;*.sqlite;*.bck;*.sqbck|ASuite 2.x List (*.sqlite,' +
      ' *.sqbck)|*.sqlite;*.sqbck|ASuite 1.x List (*.xml, *.bck)|*.xml;' +
      '*.bck|winPenPack 1.x List (*.xml)|*.xml|PStart 2.x List (*.xml)|' +
      '*.xml'
    Left = 232
    Top = 8
  end
  object DKLanguageController1: TDKLanguageController
    IgnoreList.Strings = (
      '*.Filter'
      'rgrpLauncher.Items'
      'tsLaunchers.*'
      'tsList.*'
      'tsProgress.*'
      'tsSettings.*'
      'vstListImp.*')
    Left = 152
    Top = 8
    LangData = {
      0D0066726D496D706F72744C697374010100000001000000070043617074696F
      6E0120000000040062766C310000040062766C320000070062746E4261636B01
      0100000002000000070043617074696F6E00070062746E4E6578740101000000
      03000000070043617074696F6E00090062746E43616E63656C01010000000400
      0000070043617074696F6E000900706E6C486561646572000008006C626C5469
      746C65010100000005000000070043617074696F6E000900706763496D706F72
      7400000B0074734C61756E636865727300000C00726772704C61756E63686572
      010100000007000000070043617074696F6E000A00747353657474696E677300
      000A006762456C656D656E747301010000000A000000070043617074696F6E00
      0C006362496D706F72744C69737401010000000B000000070043617074696F6E
      0010006362496D706F727453657474696E677301010000000C00000007004361
      7074696F6E000600676246696C6501010000000D000000070043617074696F6E
      0007006C626C46696C6501010000000E000000070043617074696F6E00090062
      746E42726F77736501010000000F000000070043617074696F6E000B00656474
      506174684C6973740000060074734C69737400000A007673744C697374496D70
      00000C0062746E53656C656374416C6C01010000001200000007004361707469
      6F6E000E0062746E446573656C656374416C6C01010000001300000007004361
      7074696F6E000A00747350726F6772657373000008006C626C4974656D730101
      00000015000000070043617074696F6E000700696D674C697374000007006C62
      6C4C697374010100000016000000070043617074696F6E000B006C626C4C6175
      6E63686572010100000017000000070043617074696F6E000B00696D67536574
      74696E677300000B006C626C53657474696E6773010100000018000000070043
      617074696F6E0008007062496D706F727400000C00584D4C446F63756D656E74
      3100000B004F70656E4469616C6F67310000}
  end
end
