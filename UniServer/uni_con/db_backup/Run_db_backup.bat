@echo off
cls
COLOR B0

TITLE Uniform Server - Run DB_Backup

rem ### working directory current folder 
pushd %~dp0

wscript.exe db_backup.vbs

rem ### restore original working directory
:pause
popd
EXIT
