@echo off
cls
COLOR B0
rem mode con:cols=50 lines=8
TITLE UNIFORM SERVER - MySQL prompt

rem ###################################################
rem # Name: mysql_prompt.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 14-8-2011
rem ##################################################
echo.

rem --- working directory current folder 
pushd %~dp0

rem --- Change to UniServer root folder and save as variable 
cd ..\..
set ROOT=%cd%

rem --- Change working directory to MySQL bin folder
cd %ROOT%\usr\local\mysql\bin

cmd /K "prompt $G && mysql.exe -uroot -proot"

echo.
:pause
rem --- restore original working directory
popd
