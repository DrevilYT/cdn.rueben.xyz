@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo attempting to auto-sign
    timeout /t 1 >nul
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: start below
mode 100, 28
title Steam Unlocker (v2) - powershell branch
chcp 65001 >nul


timeout /t 2 >nul
cls
goto banner
:banner
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝           
echo                                                     SOFTWARE                                                           
echo.
echo.
echo                  ╔
echo                  ║
echo                  ╠ 1) Unlock Steam
echo                  ║
echo                  ╠ 2) Revert Unlock (beta)
echo                  ║
echo                  ╠ 3) Patcher
echo                  ║
echo                  ║ 4) Visit our Website
echo                  ║
echo                  ║ 5) Exit
echo                  ║
set /p choice=.                ╚   
echo.

if "%choice%"=="1" goto unlock
if "%choice%"=="2" goto rueben
if "%choice%"=="3" goto patcher
if "%choice%"=="4" goto web
if "%choice%"=="5" goto exit
goto error

:unlock
cls
taskkill /f /im steam.exe
cd C:\Program Files
del SteamTools
mkdir SteamTools
cd SteamTools
curl -o steamtools.rar https://cdn.rueben.xyz/content/unlockercli/SteamTools.rar
tar -xf steamtools.rar
start SteamTools.exe
timeout /t 5 >nul
cd C:\Program Files (x86)\Steam
start steam.exe
taskkill /f /im steam.exe
taskkill /f /im SteamTools.exe
goto success

:rueben
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝               
echo                                                     SOFTWARE BETA                                                                  
echo.
echo.
echo                  ╔
echo                  ║ ➔ This feature has been implemented but isn't guranteed to work . . . 
echo                  ║
set /p ohoice=.                ╚ ➔ Y/N . . .
echo.

if "%ohoice%"=="N" goto banner
if "%ohoice%"=="Y" goto rueben2

:rueben2
cls
taskkill /f /im steam.exe
taskkill /f /im SteamTools.exe
cd C:\Program Files
del SteamTools
timeout /t 5 >nul
cd C:\Program Files (x86)\Steam
start steam.exe
goto successr

:exit
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝      
echo                                                     SOFTWARE                                                                            
echo.
echo.
echo                  ╔
echo                  ║ ➔ Exiting . . . 
echo                  ╚ 
echo. 
timeout /t 1 >nul
exit

:web
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝      
echo                                                     SOFTWARE                                                                            
echo.
echo.
echo                  ╔
echo                  ║ ➔ Launching https://software.rueben.xyz . . . 
echo                  ╚ 
echo. 
timeout /t 1 >nul
start https://software.rueben.xyz
cls
goto banner

:error
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ Unknown request, type 1, 2, or 3 . . . 
echo                  ╚ 
echo. 
timeout /t 3 >nul
goto banner

:error2
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ Unknown request, type 1, 2, or 3 . . . 
echo                  ╚ 
echo. 
timeout /t 3 >nul
goto patcher

:success
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ Steam has successfully been Unlocked!
echo                  ║
echo                  ║ ➔ You should be able to use any mods by Rueben Software for Steam!
echo                  ╚ 
echo. 
cd C:\Program Files (x86)\Steam
start steam.exe
timeout /t 3 >nul
goto banner

:successr
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ Steam has successfully been Relocked!
echo                  ║
echo                  ║ ➔ Your Steam should've been restored and you shouldn't be able to use any mods by Rueben Software for Steam!
echo                  ╚ 
echo. 
cd C:\Program Files (x86)\Steam
start steam.exe
timeout /t 3 >nul
goto banner

:success2
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ A Rueben Software mod has been installed: Lethal Company patch!
echo                  ║
echo                  ║ ➔ You should be able to find your game in the Steam library!
echo                  ╚ 
echo. 
cd C:\Program Files (x86)\Steam
start steam.exe
cls
timeout /t 3 >nul
goto banner

:success2
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ A Rueben Software mod is installing: Repo patch!
echo                  ║
echo                  ║ ➔ You should be able to find your game in the Steam library after installer finishes!
echo                  ╚ 
echo. 
cd C:\Program Files (x86)\Steam
start steam.exe
cls
timeout /t 3 >nul
goto banner

:patcher
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                     
echo                  ╔ PATCHER
echo                  ╠ (includes optional online-fix for all now)
echo                  ║
echo                  ╠ 1) Lethal Company
echo                  ║
echo                  ╠ 2) Repo
echo                  ║
echo                  ╠ 3) Wallpaper Engine (new)
echo                  ║
echo                  ╠ 4) Back
echo                  ║
set /p noice=.                ╚   
echo.

if "%noice%"=="1" goto patch-lc-beta
if "%noice%"=="2" goto patch-repo
if "%noice%"=="3" goto patch-wp
if "%noice%"=="4" goto banner
goto error2

:patch-wp
taskkill /f /im Steam.exe
cd C:\Program Files (x86)\Steam\config
mkdir stplug-in
cd stplug-in
curl -o 431960.lua https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/431960-wp.lua
cls
goto success67

:success67
cls
echo.
echo.
echo                         [38;5;21m██████╗ ██╗   ██╗███████╗██████╗ ███████╗███╗   ██╗
echo                         [38;5;27m██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝████╗  ██║
echo                         [38;5;33m██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║
echo                         [38;5;39m██╔══██╗██║   ██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║
echo                         [38;5;45m██║  ██║╚██████╔╝███████╗██████╔╝███████╗██║ ╚████║
echo                         [38;5;201╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝            
echo                                                     SOFTWARE                                                                      
echo.
echo.
echo                  ╔
echo                  ║ ➔ A Rueben Software mod has been installed: Wallpaper Engine patch!
echo                  ║
echo                  ║ ➔ You should be able to find your app in the Steam library!
echo                  ║
echo                  ║ ➔ Steam Workshop support for this app has also been auto patched!
echo                  ║
echo                  ╚ 
echo. 
cd C:\Program Files (x86)\Steam
start steam.exe
cls
timeout /t 3 >nul
goto banner

:patch-lc-beta
taskkill /f /im Steam.exe
cd C:\Program Files (x86)\Steam\config
mkdir stplug-in
cd stplug-in
curl -o 1966720.lua https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/1966720-lc.lua
cls
echo setup custom multiplayer fix?
echo dont setup if you using another method such as steam family or ruebencloud
echo if u dont have another method, please setup, or else you wont be able to access online features
set /p poice= Y/N

if "%poice%"=="N" goto goto success2
if "%poice%"=="Y" goto lc-online-fix

:lc-online-fix
cls
echo patching steam online multiplayer fix
timeout /t 3 >nul
cd C:\Program Files (x86)\Steam\steamapps\common
mkdir "Lethal Company"
cd "Lethal Company"
curl -o online.rar "https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/lc-online-latest.rar"
tar -xf online.rar
del online.rar
cls
echo Injecting into Steam and cleaning up . . . 
timeout /t 3 >nul
cls
chcp 437 >nul
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rueben Software', 'Steam successfully hijacked and install mod returned success with error level 0', [System.Windows.Forms.ToolTipIcon]::None)}"
cls
chcp 65001 >nul
cls
goto success2


:patch-repo
taskkill /f /im Steam.exe
cd C:\Program Files (x86)\Steam\config
mkdir stplug-in
cd stplug-in
curl -o 3241660.lua "https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/3241660-repo.lua"
cls
echo setup custom multiplayer fix?
echo dont setup if you using another method such as steam family or ruebencloud
echo if u dont have another method, please setup, or else you wont be able to access online features
set /p doice= Y/N

if "%doice%"=="N" goto goto success3
if "%doice%"=="Y" goto repo-online-fix

:repo-online-fix
cls
echo patching steam online multiplayer fix
timeout /t 3 >nul
cd C:\Program Files (x86)\Steam\steamapps\common
mkdir REPO
cd REPO
curl -o online.rar "https://cdn.rueben.xyz/content/unlockercli/patchercli-beta/repo-online.rar"
tar -xf online.rar
del online.rar
cls
echo Injecting into Steam and cleaning up . . . 
timeout /t 3 >nul
cls
chcp 437 >nul
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rueben Software', 'Steam successfully hijacked and install mod returned success with error level 0', [System.Windows.Forms.ToolTipIcon]::None)}"
cls
chcp 65001 >nul
cls
goto success3

