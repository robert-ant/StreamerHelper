@echo off
setlocal

set /p WEBHOOK_BASE=Enter the server webhook base URL (e.g. https://yourserver.com):
set /p USER_ID=Enter your user ID (e.g. user1):
set /p USER_SECRET=Enter your secret token (from admin):

powershell -ExecutionPolicy Bypass -File install_streamer_relay.ps1 -WEBHOOK_BASE "%WEBHOOK_BASE%" -USER_ID "%USER_ID%" -USER_SECRET "%USER_SECRET%"

pause
