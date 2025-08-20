param (
    [string]$USER_ID
)

$installDir = "$env:LOCALAPPDATA\streamer-relay"

# Stop & delete process
pm2 delete "streamer-relay-$USER_ID"
pm2 save

# Remove files
if (Test-Path $installDir) {
    Remove-Item -Recurse -Force $installDir
}

Write-Output "Streamer relay uninstalled for $USER_ID."
