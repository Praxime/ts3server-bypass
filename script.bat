@echo off
title Hosts Modifier - Tea-speak blacklist fix

net session >nul 2>&1
if %errorLevel% neq 0 (
echo [!] Requesting administrator privileges...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"Start-Process '%~f0' -Verb RunAs"
exit /b
)

cls
echo ============================================
echo        HOSTS FILE MODIFIER UTILITY
echo ============================================
echo.

set "HOSTS_PATH=%SystemRoot%\System32\drivers\etc\hosts"
set "BACKUP_PATH=%SystemRoot%\System32\drivers\etc\hosts.bak"

echo [+] Creating backup...
copy "%HOSTS_PATH%" "%BACKUP_PATH%" >nul
echo [+] Backup saved.
echo.

echo.>>"%HOSTS_PATH%"

call :AddIfNotExists 127.0.0.1 accounting.teamspeak.com
call :AddIfNotExists 127.0.0.1 blacklist.teamspeak.com
call :AddIfNotExists 127.0.0.1 blacklist2.teamspeak.com

echo.
echo [+] Operation completed.
echo.
echo --------------------------------------------
echo   Script made by Praxime
echo --------------------------------------------
echo.
pause
exit /b

:AddIfNotExists
set "LINE=%*"

findstr /x /c:"%LINE%" "%HOSTS_PATH%" >nul
if %errorLevel% neq 0 (
>>"%HOSTS_PATH%" echo %LINE%
echo [+] Added: %LINE%
) else (
echo [=] Already exists: %LINE%
)
exit /b
