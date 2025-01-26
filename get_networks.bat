@echo off

:: Get Current Directory
set "currentDir=%~dp0"

:: change from the admin directory to current directory
cd %currentDir%bin\

:: get all known networks 
netsh wlan show profile name=* key = clear >> networks.txt