@echo off
setlocal
set "FLOWMETER_VERSION=v1.0.0"
cd /d "%~dp0"
set "LOG=%~dp0FlowMeter.startup-error.log"
if exist "%LOG%" del /q "%LOG%"

set "PS=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"
if exist "%SystemRoot%\Sysnative\WindowsPowerShell\v1.0\powershell.exe" set "PS=%SystemRoot%\Sysnative\WindowsPowerShell\v1.0\powershell.exe"
echo Starting FlowMeter %FLOWMETER_VERSION% with 64-bit Windows PowerShell...
"%PS%" -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; try { & '%~dp0FlowMeter.FirstVersion.ps1' } catch { $_ | Format-List * -Force | Out-String | Set-Content -LiteralPath '%~dp0FlowMeter.startup-error.log' -Encoding UTF8; Write-Host ''; Write-Host 'FlowMeter startup failed. Error saved to FlowMeter.startup-error.log.' -ForegroundColor Red; Write-Host ($_ | Out-String) -ForegroundColor Yellow; exit 1 }"
set "RC=%ERRORLEVEL%"

if not "%RC%"=="0" (
  echo.
  echo FlowMeter failed to start. The error window and log file are being kept for diagnosis.
  if exist "%LOG%" type "%LOG%"
  echo.
  pause
)
endlocal
