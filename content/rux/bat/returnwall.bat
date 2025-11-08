@echo off
title Rux: Copyright
cd %UserProfile%\AppData\Roaming\Microsoft\Windows\Themes
del TranscodedWallpaper
ren TranscodedWallpaper_default TranscodedWallpaper 2>NUL
taskkill /f /im explorer.exe
start explorer.exe
exit