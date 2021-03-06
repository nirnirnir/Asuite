unit HotkeyOptionsPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseEntityPage, Vcl.StdCtrls, DKLang;

type
  TfrmHotkeyOptionsPage = class(TfrmBaseEntityPage)
    gbHotkey: TGroupBox;
    cxWindowHotKeyCode: TComboBox;
    cxWindowHotKeyMod: TComboBox;
    cbWindowHotKey: TCheckBox;
    cbMenuHotKey: TCheckBox;
    cxMenuHotKeyCode: TComboBox;
    cxMenuHotKeyMod: TComboBox;
    cbHotKey: TCheckBox;
    DKLanguageController1: TDKLanguageController;
    procedure cbHotKeyClick(Sender: TObject);
    procedure cbWindowHotKeyClick(Sender: TObject);
    procedure cbMenuHotKeyClick(Sender: TObject);
  private
    { Private declarations }
  strict protected
    function GetTitle: string; override;
    function GetImageIndex: Integer; override;
    function InternalLoadData: Boolean; override;
    function InternalSaveData: Boolean; override;
  public
    { Public declarations }
  end;

var
  frmHotkeyOptionsPage: TfrmHotkeyOptionsPage;

implementation

uses
  ulAppConfig, AppConfig;

{$R *.dfm}

{ TfrmHotkeyOptionsPage }

procedure TfrmHotkeyOptionsPage.cbHotKeyClick(Sender: TObject);
begin
  cbWindowHotKey.Enabled := cbHotKey.Checked;
  cbMenuHotKey.Enabled   := cbHotKey.Checked;
end;

procedure TfrmHotkeyOptionsPage.cbMenuHotKeyClick(Sender: TObject);
begin
  cxMenuHotKeyMod.Enabled  := (cbMenuHotKey.Checked) And (cbHotKey.Checked);
  cxMenuHotKeyCode.Enabled := (cbMenuHotKey.Checked) And (cbHotKey.Checked);
end;

procedure TfrmHotkeyOptionsPage.cbWindowHotKeyClick(Sender: TObject);
begin
  cxWindowHotKeyMod.Enabled  := (cbWindowHotKey.Checked) And (cbHotKey.Checked);
  cxWindowHotKeyCode.Enabled := (cbWindowHotKey.Checked) And (cbHotKey.Checked);
end;

function TfrmHotkeyOptionsPage.GetImageIndex: Integer;
begin
  Result := IMAGELARGE_INDEX_Hotkey;
end;

function TfrmHotkeyOptionsPage.GetTitle: string;
begin
  Result := DKLangConstW('msgHotkey');
end;

function TfrmHotkeyOptionsPage.InternalLoadData: Boolean;
begin
  Result := inherited;
  //Hot Keys
  cbHotKey.Checked := Config.HotKey;
  //Window's Hotkey
  cbWindowHotKey.Checked       := Config.WindowHotKey;
  cxWindowHotKeyMod.ItemIndex  := Config.WindowHotKeyMod;
  cxWindowHotKeyCode.ItemIndex := Config.WindowHotKeyCode;
  //Menu's  Hotkey
  cbMenuHotKey.Checked         := Config.MenuHotkey;
  cxMenuHotKeyMod.ItemIndex    := Config.MenuHotKeyMod;
  cxMenuHotKeyCode.ItemIndex   := Config.MenuHotKeyCode;
  //Enable/disable visual components
  cbHotKeyClick(Self);
  cbMenuHotKeyClick(Self);
  cbWindowHotKeyClick(Self);
end;

function TfrmHotkeyOptionsPage.InternalSaveData: Boolean;
begin
  Result := inherited;
  //Hot Keys
  Config.HotKey           := cbHotKey.Checked;
  //Window's Hotkey
  Config.WindowHotKeyCode := cxWindowHotKeyCode.ItemIndex;
  Config.WindowHotKeyMod  := cxWindowHotKeyMod.ItemIndex;
  Config.WindowHotKey     := cbWindowHotKey.Checked;
  //Menu's Hotkey
  Config.MenuHotKeyCode   := cxMenuHotKeyCode.ItemIndex;
  Config.MenuHotKeyMod    := cxMenuHotKeyMod.ItemIndex;
  Config.MenuHotKey       := cbMenuHotKey.Checked;
end;

end.
