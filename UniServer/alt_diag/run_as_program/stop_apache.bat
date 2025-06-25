@echo off
cls
COLOR B0
mode con:cols=50 lines=8
TITLE UNIFORM SERVER - Stop Apache program

rem ###################################################
rem # Name: stop_apache.bat
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

rem --- Change working directory to Apache bin folder
cd %ROOT%\usr\local\apache2\bin

rem --- Get Apache file name. User may have ran multi-servers. Save as variable 
FOR /F "tokens=*" %%i in ('dir /B httpd*.exe') do SET BUS_APACHE_EXE=%%i

rem --- VBScript
:wscript.echo " Stopping Apache Server"
:Set objShell = CreateObject("WScript.Shell")         'Create shell object
:Set colEnvironment = objShell.Environment("PROCESS") 'Get list of environment variables
:US_APACHE_EXE = colEnvironment("BUS_APACHE_EXE")     'Get Apache exe name variable

:Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
: Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query

: For each objItem in procItem              'Iterate through all items returned
:  If objItem.Name = US_APACHE_EXE Then     'Check for named process
:    objItem.Terminate()                    'kill process using terminate function 
:  End If
: Next                                      'Process next item

:Set objShell       = Nothing               'Cleanup Objects
:Set colEnvironment = Nothing 
:Set objWMIService  = Nothing
:Set procItem       = Nothing
:wscript.echo " Apache Server Stopped"

rem -- run above script
findstr "^:" "%~sf0">temp.vbs
cscript //nologo temp.vbs
del temp.vbs

rem --- pid exists delete 
SET APACHE_PID=%ROOT%\usr\local\apache2\logs\httpd.pid
if exist %APACHE_PID% (del %APACHE_PID%)


echo.
pause
rem --- restore original working directory
popd
