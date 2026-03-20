# developed by the man himself, ruebendias
# shoutout Github and Cloudflare for free hosting

# -----------------------------
# Friendly message like MAS
# -----------------------------
if (-not $args) {
    Write-Host ''
    Write-Host 'Need help? Check our homepage: ' -NoNewline
    Write-Host 'https://software.rueben.xyz' -ForegroundColor Green
    Write-Host ''
}

# -----------------------------
# Generate random temp filename
# -----------------------------
$temp = Join-Path $env:TEMP ("unlocker_" + [guid]::NewGuid() + ".bat")

# -----------------------------
# Download the .bat
# -----------------------------
try {
    Invoke-WebRequest "https://cdn.rueben.xyz/content/unlockercli/app/unlocker-beta.bat" -OutFile $temp
} catch {
    Write-Host "Download failed!" -ForegroundColor Red
    exit
}

if (!(Test-Path $temp)) {
    Write-Host "Failed to create temp BAT file!" -ForegroundColor Red
    exit
}

# -----------------------------
# Run the .bat as admin via CMD
# -----------------------------
Start-Process cmd.exe -ArgumentList "/c `"$temp`"" -Verb RunAs -Wait

# -----------------------------
# Cleanup
# -----------------------------
Remove-Item $temp -Force -ErrorAction SilentlyContinue

Write-Host "`Exited." -ForegroundColor Cyan
