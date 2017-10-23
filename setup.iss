; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LegendsReplay"
#define MyAppVersion "1.5.0"
#define MyAppPublisher "Nobelia"
#define MyAppURL "https://aztorius.github.io/legendsreplay/"
#define MyAppExeName "LegendsReplay.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
;SignTool=signtool
AppId={{D5452558-8032-4532-BFBA-92360596BDBB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
InfoBeforeFile=INFO.txt
LicenseFile=LICENSE
OutputDir=.
OutputBaseFilename=setup-LegendsReplay-{#MyAppVersion}
SetupIconFile=src\icons\logo-executable.ico
Compression=lzma
SolidCompression=yes
ShowComponentSizes=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "ge"; MessagesFile: "compiler:Languages\German.isl"
Name: "nl"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "pt"; MessagesFile: "compiler:Languages\Portuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "startup"; Description: "Automatically start on login"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "LegendsReplay.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "qt.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "icudt54.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "icuin54.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "icuuc54.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "qhttp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "LegendsReplay"; ValueData: """{app}\{#MyAppExeName}"" --silent"; Tasks: startup; Flags: deletevalue uninsdeletevalue noerror
Root: HKCU; Subkey: "Software\Classes\.lor"; ValueType: string; ValueName: ""; ValueData: "LegendsReplay.lor"; Flags: deletevalue uninsdeletevalue noerror
Root: HKCU; Subkey: "Software\Classes\LegendsReplay.lor\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: deletevalue uninsdeletevalue noerror
Root: HKCU; Subkey: "Software\Classes\.lor\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName}"; Flags: deletevalue uninsdeletevalue noerror

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
