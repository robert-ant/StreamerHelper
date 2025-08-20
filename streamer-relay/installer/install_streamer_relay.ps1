param (
    [string]$WEBHOOK_BASE,
    [string]$USER_ID,
    [string]$USER_SECRET
)

# Install PM2 globally if not installed
if (-not (Get-Command pm2 -ErrorAction SilentlyContinue)) {
    npm install -g pm2
}

# Ensure working directory
$installDir = "$env:LOCALAPPDATA\streamer-relay"
if (-not (Test-Path $installDir)) {
    New-Item -ItemType Directory -Force -Path $installDir | Out-Null
}

# Copy relay script
Copy-Item "streamer_relay.js" "$installDir\streamer_relay.js" -Force

# Save config
$config = @{
    WEBHOOK_BASE = $WEBHOOK_BASE
    USER_ID      = $USER_ID
    USER_SECRET  = $USER_SECRET
}
$config | ConvertTo-Json | Set-Content "$installDir\config.json" -Encoding UTF8

# Start process with PM2
pm2 start "$installDir\streamer_relay.js" --name "streamer-relay-$USER_ID" -- "config.json"
pm2 save

Write-Output "Streamer relay installed and running for $USER_ID."
