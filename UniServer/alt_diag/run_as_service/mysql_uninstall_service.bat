@echo off
cls
COLOR B0
rem mode con:cols=50 lines=8
TITLE UNIFORM SERVER - UnInstall MySQL Service

rem ###################################################
rem # Name: mysql_uninstall_service.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 15-8-2011
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
:'--- Get environment variables
:Set objShell = CreateObject("WScript.Shell")            'Create shell object
:Set colEnvironment = objShell.Environment("PROCESS")    'Get list of environment variables
:US_ROOT       = colEnvironment("ROOT")                  'Get Root path variable
:US_MYSQL      = US_ROOT &"\usr\local\mysql"             'Set MySQL path variable
:US_MYSQL_BIN  = US_ROOT &"\usr\local\mysql\bin"         'Set MySQL bin path variable
:US_CONFIG     = US_ROOT & "\uni_con\config_tracker.ini" 'Config path
:USF_MYSQL_INI = US_ROOT & "\usr\local\mysql\my.ini"     'MySQL Config

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

:'--- Read config file and search for service name
: Set objFSO = CreateObject("Scripting.FileSystemObject")   'Create file obj
: Set objFile = objFSO.OpenTextFile(US_CONFIG, 1)           'Open file

: Do Until objFile.AtEndOfStream                            'Read to end of file
:  strLine = objFile.ReadLine                               'Get line from file
:   If InStr(strLine,"mysql_service_name =") Then           'Match found
:     strLine = Replace(strLine,"mysql_service_name =","")  'Remove
:     service_name = trim(strLine)                          'Clean line  
:     Exit Do                                               'Nothing else to do
:   End If
: Loop             'Read another line
: objFile.Close    'Finished with file hence close

:Set objFSO           = Nothing   'Cleanup Object
:Set objFile          = Nothing 
:Set objFileScripting = Nothing
:Set objFolder        = Nothing
:Set filecollection   = Nothing

: strCmd = us_mysql_exe & " --remove " & Chr(34) & service_name & Chr(34)
:wscript.echo strCmd

rem ### END VBScript ###

rem -- run above script and get string returned
findstr "^:" "%~sf0">temp.vbs
for /f "delims=" %%N in ('cscript //nologo temp.vbs') do set uninstall_service=%%N
del temp.vbs

rem -- UnInstall Service
%uninstall_service%

echo.
pause
rem --- restore original working directory
popd
