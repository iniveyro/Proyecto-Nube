@echo off
cls
COLOR B0
mode con:cols=50 lines=8
TITLE UNIFORM SERVER - Start Apache as program

rem ###################################################
rem # Name: start_apache.bat
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

rem --- If pid file exists it is an artifact hence delete
SET APACHE_PID=%ROOT%\usr\local\apache2\logs\httpd.pid
if exist %APACHE_PID% (del %APACHE_PID%)

rem ### VBScript ###
:'--- Get environment variables
:Set objShell = CreateObject("WScript.Shell")        'Create shell object
:Set colEnvironment = objShell.Environment("PROCESS")'Get list of environment variables
:US_APACHE_EXE = colEnvironment("BUS_APACHE_EXE")    'Get Apache exe name variable
:US_ROOT       = colEnvironment("ROOT")              'Get Root path variable
:US_APACHE     = US_ROOT &"\usr\local\apache2"       'Set Apache path variable
:US_APACHE_BIN = US_ROOT &"\usr\local\apache2\bin"   'Set Apache bin path variable

:'--- Check Apache running 
: Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
: Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query

: For each objItem in procItem              'Iterate through all items returned
:  if objItem.Name = US_APACHE_EXE Then     'Check for named process
:    wscript.echo " Apache alreay running!" 'Named process found inform user  
:    Wscript.Quit 0                         'Nothing else to do exit
:  End if
: Next                                      'Process next item

:'--- Start Apache 
:wscript.echo " Starting Apache Server"             'Inform user
:strCmd1 = US_APACHE_BIN & "\" & US_APACHE_EXE      'Absolute path to exe 
:strCmd2 = " -f " & US_APACHE & "\conf\httpd.conf " 'Absolute path to config 
:strCmd3 = " -d " & US_APACHE                       'Set apache base path
:strCmd = strCmd1 & strCmd2 & strCmd3               'Assemble complete command
:objShell.Run strCmd, 0                             'Run process detached hidden
:wscript.echo " Apache Server started"              'Inform user

:Set objShell      = Nothing                        'Cleanup Object
:Set objWMIService = Nothing 
:Set procItem      = Nothing 
:Set objWMIService = Nothing 
rem ### END VBScript ###

rem -- run above script
findstr "^:" "%~sf0">temp.vbs
cscript //nologo temp.vbs
del temp.vbs

echo.
pause
rem --- restore original working directory
popd
