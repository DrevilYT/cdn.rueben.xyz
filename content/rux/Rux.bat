::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GGStCLkT6ezo0/6CsVlTXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGStCLkT6ezo09iSumQTR/Y+dIPeyPqLOOVz
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Rux Installer (v1.2)
chcp 65001 >nul
color 5
mode 80, 16
echo.
echo.
echo                            ██████╗ ██╗   ██╗██╗  ██╗
echo                            ██╔══██╗██║   ██║╚██╗██╔╝
echo                            ██████╔╝██║   ██║ ╚███╔╝ 
echo                            ██╔══██╗██║   ██║ ██╔██╗ 
echo                            ██║  ██║╚██████╔╝██╔╝ ██╗
echo                            ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
echo.
echo.
echo                    → Welcome to the Rux Installer
echo                    → Press any key to start the installation
pause >nul
chcp 437 >nul
powershell.exe -Command "$wshell = New-Object -ComObject Wscript.Shell; $wshell.Popup('Start the installation? no going back after this!', 0, 'Rux Installer', 64)"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rux Installer', 'Installation started in the background', [System.Windows.Forms.ToolTipIcon]::None)}"
timeout /t 3 >nul
chcp 65001 >nul
cls
echo.
echo.
echo                            ██████╗ ██╗   ██╗██╗  ██╗
echo                            ██╔══██╗██║   ██║╚██╗██╔╝
echo                            ██████╔╝██║   ██║ ╚███╔╝ 
echo                            ██╔══██╗██║   ██║ ██╔██╗ 
echo                            ██║  ██║╚██████╔╝██╔╝ ██╗
echo                            ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
echo.
echo.
echo                    → Installation in progress . . .
echo.
echo.
cd %UserProfile%\AppData\Roaming\Microsoft\Windows\Themes
ren TranscodedWallpaper TranscodedWallpaper_default 2>NUL
curl -s -o TranscodedWallpaper "https://cdn.rueben.xyz/content/rux/bg/rux1.png"
cd c:/windows
mkdir Rux >NUL 2>&1
cd Rux
curl -s -o RC.reg "https://cdn.rueben.xyz/content/rux/reg/RC-new.reg"
curl -s -o RC-x.reg "https://cdn.rueben.xyz/content/rux/reg/RC-x.reg"
curl -s -o branding.reg "https://cdn.rueben.xyz/content/rux/reg/branding.reg"
curl -s -o branding-x.reg "https://cdn.rueben.xyz/content/rux/reg/branding-x.reg"
curl -s -o disable-rc-menu.reg "https://cdn.rueben.xyz/content/rux/reg/disable-rc-menu.reg"
curl -s -o enable-rc-menu.reg "https://cdn.rueben.xyz/content/rux/reg/enable-rc-menu.reg"
curl -s -o ruxkey.reg "https://cdn.rueben.xyz/content/rux/reg/ruxkey.reg"
curl -s -o ruxinstall.reg "https://cdn.rueben.xyz/content/rux/reg/ruxinstall.reg"
curl -s -o RuxPanel.bat "https://cdn.rueben.xyz/content/rux/bat/RuxPanel.bat"
curl -s -o RuxKey.bat "https://cdn.rueben.xyz/content/rux/bat/RuxKey.bat"
curl -s -o dontmodifyanyfilesplease.txt "https://cdn.rueben.xyz/content/rux/bat/dont%20modify%20any%20files%20please.txt"
curl -s -o enable-rc.bat "https://cdn.rueben.xyz/content/rux/bat/enable-rc.bat"
curl -s -o disable-rc.bat "https://cdn.rueben.xyz/content/rux/bat/disable-rc.bat"
curl -s -o enable-win11.reg "https://cdn.rueben.xyz/content/rux/reg/enable-win11.reg"
curl -s -o disable-win11.reg "https://cdn.rueben.xyz/content/rux/reg/disable-win11.reg"
curl -s -o enable-brand.reg "https://cdn.rueben.xyz/content/rux/reg/enable-brand.reg"
curl -s -o disable-brand.reg "https://cdn.rueben.xyz/content/rux/reg/disable-brand.reg"
curl -s -o enable-brand.bat "https://cdn.rueben.xyz/content/rux/bat/enable-brand.bat"
curl -s -o disable-brand.bat "https://cdn.rueben.xyz/content/rux/bat/disable-brand.bat"
curl -s -o enable-rcpanel.bat "https://cdn.rueben.xyz/content/rux/bat/enable-rcpanel.bat"
curl -s -o disable-rcpanel.bat "https://cdn.rueben.xyz/content/rux/bat/disable-rcpanel.bat"
curl -s -o rux-enable-rcpanel.reg "https://cdn.rueben.xyz/content/rux/reg/rux-enable-rcpanel.reg"
curl -s -o rux-disable-rcpanel.reg "https://cdn.rueben.xyz/content/rux/reg/rux-disable-rcpanel.reg"
curl -s -o Rux.ico "https://cdn.rueben.xyz/content/rux/bg/test.ico"
curl -s -o rux-cf.bat "https://cdn.rueben.xyz/content/rux/bat/rux-cf.bat"
curl -s -o rux-cfx.bat "https://cdn.rueben.xyz/content/rux/bat/rux-cfx.bat"
curl -s -o rux-cf.reg "https://cdn.rueben.xyz/content/rux/reg/rux-cf.reg"
curl -s -o rux-cfx.reg "https://cdn.rueben.xyz/content/rux/reg/rux-cfx.reg"
curl -s -o returnwall.bat "https://cdn.rueben.xyz/content/rux/bat/returnwall.bat"
curl -s -o returnwall.reg "https://cdn.rueben.xyz/content/rux/reg/returnwall.reg"
curl -s -o rux-uninstall.reg "https://cdn.rueben.xyz/content/rux/reg/rux-uninstall.reg"
regedit.exe /s RC.reg
regedit.exe /s branding.reg
regedit.exe /s disable-rc-menu.reg
regedit.exe /s ruxkey.reg
regedit.exe /s ruxinstall.reg
regedit.exe /s enable-win11.reg
regedit.exe /s disable-win11.reg
regedit.exe /s enable-brand.reg
regedit.exe /s disable-brand.reg
regedit.exe /s rux-enable-rcpanel.reg
regedit.exe /s rux-disable-rcpanel.reg
regedit.exe /s rux-cf.reg
regedit.exe /s rux-cfx.reg
regedit.exe /s returnwall.reg
regedit.exe /s rux-uninstall.reg
cd c:\windows
curl -s -o RuxUn.exe "https://cdn.rueben.xyz/content/rux/extra/RuxUn.exe"
curl -s -o ruxremove.reg "https://cdn.rueben.xyz/content/rux/reg/ruxremove.reg"
taskkill /f /im explorer.exe >NUL 2>&1
start explorer.exe
timeout /t 3 >nul
echo.
echo.
echo                            ██████╗ ██╗   ██╗██╗  ██╗
echo                            ██╔══██╗██║   ██║╚██╗██╔╝
echo                            ██████╔╝██║   ██║ ╚███╔╝ 
echo                            ██╔══██╗██║   ██║ ██╔██╗ 
echo                            ██║  ██║╚██████╔╝██╔╝ ██╗
echo                            ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
echo.
echo.
echo                    → Installation completed
echo.
echo.
chcp 437 >nul
powershell "$s=(New-Object -ComObject WScript.Shell).CreateShortcut(\"$HOME\Desktop\RuxPanel.lnk\"); $s.TargetPath='C:\Windows\Rux\RuxPanel.bat'; $s.IconLocation='C:\Windows\Rux\Rux.ico'; $s.Save()"
powershell.exe -Command "$wshell = New-Object -ComObject Wscript.Shell; $wshell.Popup('Installation completed successfully! Your system is now activated and secured with RuxKey.', 0, 'Rux Installer', 64)"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rux Installer', 'Success', [System.Windows.Forms.ToolTipIcon]::None)}"
chcp 65001 >nul
cls
exit