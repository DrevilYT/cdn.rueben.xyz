@echo off
title Rux: Cosmic Flux Copyright
cd %UserProfile%\AppData\Roaming\Microsoft\Windows\Themes
ren TranscodedWallpaper TranscodedWallpaper_default 2>NUL
curl -s -o TranscodedWallpaper "https://cdn.rueben.xyz/content/rux/bg/rux1.png"
taskkill /f /im explorer.exe
start explorer.exe
exit