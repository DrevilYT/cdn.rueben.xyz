@echo off
title Rux Uninstaller
setlocal

REM Check for Admin privileges using NET SESSION
NET SESSION >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (
    GOTO run_elevated
) ELSE (
    GOTO elevate_script
)

:elevate_script
    ECHO Starting elevation...
    REM Launch the script using PowerShell with the 'runas' verb
    PowerShell Start-Process -FilePath "%~f0" -Verb RunAs
    EXIT /B

:run_elevated
REM --- Your Elevated Commands Go Below This Line ---
ECHO Running with Administrator privileges...
ECHO Current directory is: %CD%
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
echo                    → Welcome to the Rux Uninstaller
echo                    → Press any key to completely remove RuxOS
echo                    → Your data will be safe and untouched
pause >nul
chcp 437 >nul
powershell.exe -Command "$wshell = New-Object -ComObject Wscript.Shell; $wshell.Popup('Remove Rux? no going back after this!', 0, 'Rux Uninstaller', 64)"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rux Uninstaller', 'Removing Rux in the background', [System.Windows.Forms.ToolTipIcon]::None)}"
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
echo                    → Unregistering RuxKey and removing Rux protocols . . .
echo.
echo.
cd c:\Windows\Rux
start disable-brand.bat
start disable-rcpanel.bat
start disable-rc.bat
start returnwall.bat
cd c:\windows
del Rux
regedit.exe /s ruxremove.reg
del ruxremove.reg
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
echo                    → Rux successfully removed
echo                    → RuxKey successfully deactivated
echo.
echo.
chcp 437 >nul
cd %UserProfile%\Desktop
del RuxPanel.lnk
powershell.exe -Command "$wshell = New-Object -ComObject Wscript.Shell; $wshell.Popup('Rux removed successfully! Your system is no longer activated and secured with RuxKey.', 0, 'Rux Uninstaller', 64)"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Rux Uninstaller', 'Success', [System.Windows.Forms.ToolTipIcon]::None)}"
chcp 65001 >nul
cls
exit