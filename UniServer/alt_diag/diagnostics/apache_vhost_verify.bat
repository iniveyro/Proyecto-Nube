TITLE UNIFORM SERVER - Apache Vhost Verify
COLOR B0
@echo off
cls
rem ###################################################
rem # Name: apache_vhost_verify.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 12-8-2011
rem ##################################################

rem --- working directory current folder 
pushd %~dp0

rem --- change working directory to Apache bin folder 
cd ..\..\usr\local\apache2\bin

rem --- Inform user 
echo.
echo  1) VHOST VERIFY 
echo.
echo  The following test checks Apache Vhost configuration file.
echo  Any errors reported must be corrected. 
echo.

rem --- Get Apache file name. User may have run multi-servers
FOR /F "tokens=*" %%i in ('dir /B httpd*.exe') do SET apache_exe=%%i

rem --- Check Apache Syntax
%apache_exe% -S

echo.
pause
rem --- restore original working directory
popd
