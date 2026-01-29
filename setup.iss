[Setup]
AppName=Peak by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\Peak
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\peak\output
OutputBaseFilename=Peak_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=peak.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\peak\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\peak\peak.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\peak\peak.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
; Name: "{userdesktop}\Peak"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\peak.ico"; Comment: "Lanzador de Peak"; WorkingDir: "{app}"

; Acceso directo en el menú de inicio dentro de la carpeta StormGamesStudios
Name: "{commonprograms}\StormGamesStudios\Peak"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\peak.ico"; Comment: "Lanzador de Peak"; WorkingDir: "{app}"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Peak"; Filename: "{uninstallexe}"; IconFilename: "{app}\peak.ico"; Comment: "Desinstalar Peak"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Peak"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Peak"; Flags: nowait postinstall skipifsilent
