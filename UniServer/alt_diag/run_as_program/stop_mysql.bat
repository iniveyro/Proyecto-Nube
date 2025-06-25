@echo off
cls
COLOR B0
mode con:cols=50 lines=8
TITLE UNIFORM SERVER - Stop MySQL program

rem ###################################################
rem # Name: stop_mysql.bat
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

rem ### VBScript ###
: us_mysql_exe ="mysqld1.exe"                                       'Set default MySQL exe name
:'---Get MySQL name user may have ran multi-servers
: Set objFileScripting = CreateObject("Scripting.FileSystemObject") 'get file scripting object
: Set objFolder = objFileScripting.GetFolder(".\")                  'Return folder object
: Set filecollection = objFolder.Files                              'return file collection

: Set objRegEx = New RegExp                                         'Create new reg obj
: objRegEx.Pattern = "(mysqld\d+\.exe)"                             'Pattern to search for

: For Each filename in filecollection                               'filename = full path and name 
:   name=right(filename,len(filename)-InStrRev(filename, "\"))      'extract name only

:   'Perform regex 
:   Set colMatches = objRegEx.Execute(name)          'Return collection of Match objects 
:   If colMatches.Count > 0 Then                     'Match found
:     us_mysql_exe = colMatches(0).SubMatches(0)     'Extract first capturing group
:     Exit For                                       'Nothing else to do hence end
:   End If
: Next

:wscript.echo " Stopping MySQL Server"
:Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
: Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query

: For each objItem in procItem              'Iterate through all items returned
:  If objItem.Name = us_mysql_exe Then      'Check for named process
:    objItem.Terminate()                    'kill process using terminate function 
:  End If
: Next                                      'Process next item

:Set objShell       = Nothing               'Cleanup Objects
:Set colEnvironment = Nothing 
:Set objWMIService  = Nothing
:Set procItem       = Nothing
:wscript.echo " MySQL Server Stopped"

rem -- run above script
findstr "^:" "%~sf0">temp.vbs
cscript //nologo temp.vbs
del temp.vbs

echo.
pause
rem --- restore original working directory
popd
