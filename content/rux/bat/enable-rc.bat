@echo off
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

cd /d C:\windows\rux
regedit.exe /s enable-rc-menu.reg
taskkill /f /im explorer.exe
start explorer.exe

ECHO Registry modification complete.
exit