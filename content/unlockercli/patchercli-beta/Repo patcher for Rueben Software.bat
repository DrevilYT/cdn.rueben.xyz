@echo off
title Rueben Software
taskkill /f /im Steam.exe
cd C:\Program Files (x86)\Steam\config
mkdir stplug-in
cd stplug-in
curl -o 3241660.lua "https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/3241660-repo.lua"
cls
echo patching steam online multiplayer fix
timeout /t 3 >nul
cd C:\Program Files (x86)\Steam\steamapps\common
mkdir REPO
cd REPO
curl -o online.rar "https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/repo-online.rar"
tar -xf online.rar
cls
echo Injecting into Steam and cleaning up . . . 
timeout /t 3 >nul
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rueben Software', 'Steam successfully hijacked and install mod returned success with error level 0', [System.Windows.Forms.ToolTipIcon]::None)}"
cd C:\Program Files (x86)\Steam
start steam.exe
exit