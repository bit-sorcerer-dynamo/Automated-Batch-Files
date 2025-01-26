@echo off

:: check for admin rights
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0%' -Verb RunAs"
    exit
)

echo You Have Admin rights
pause