@echo off
cls
COLOR B0
rem mode con:cols=53 lines=20
TITLE UNIFORM SERVER - Get Server version 

rem ###################################################
rem # Name: Run_get_server_version.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 21-5-2011
rem ##################################################

rem ### working directory current folder 
pushd %~dp0

..\..\usr\local\php\php.exe -c ..\..\usr\local\php\php-cli.ini server_status_access.php 

rem ### restore original working directory
pause
popd

