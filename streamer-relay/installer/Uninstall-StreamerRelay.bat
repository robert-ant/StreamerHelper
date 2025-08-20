@echo off
setlocal

set /p USER_ID=Enter your user ID (e.g. user1):

powershell -ExecutionPolicy Bypass -File uninstall_streamer_relay.ps1 -USER_ID "%USER_ID%"

pause
