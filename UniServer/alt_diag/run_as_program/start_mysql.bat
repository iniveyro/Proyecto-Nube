@echo off
cls
COLOR B0
mode con:cols=50 lines=8
TITLE UNIFORM SERVER - Start MySQL as program

rem ###################################################
rem # Name: start_mysql.bat
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


rem ### END VBScript ###
: us_mysql_exe ="mysqld1.exe"                           'Set default MySQL exe name

:'--- Get environment variables
:Set objShell = CreateObject("WScript.Shell")           'Create shell object
:Set colEnvironment = objShell.Environment("PROCESS")   'Get list of environment variables
:US_ROOT       = colEnvironment("ROOT")                 'Get Root path variable
:US_MYSQL      = US_ROOT &"\usr\local\mysql"            'Set MySQL path variable
:US_MYSQL_BIN  = US_ROOT &"\usr\local\mysql\bin"        'Set MySQL bin path variable

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

:'--- Check MySQL running 
: Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
: Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query
: For each objItem in procItem              'Iterate through all items returned
:  if objItem.Name = us_mysql_exe Then      'Check for named process
:    wscript.echo " MySQL alreay running!"  'Named process found inform user  
:    Wscript.Quit 0                         'Nothing else to do exit
:  End if
: Next                                      'Process next item

:'--- Start MySQL Server
:wscript.echo " Starting MySQL Server"               'Inform user
:strCmd1 = US_MYSQL_BIN & "\" & us_mysql_exe         'Absolute path to exe 
:                                                    'Absolute path to config 
:strCmd2 = " --defaults-file="& Chr(34) & US_MYSQL & "\my.ini" &  Chr(34)  
:strCmd = strCmd1 & strCmd2                          'Assemble complete command
:Set WshShell = CreateObject("WScript.Shell")        'Create a shell object
:WshShell.Run strCmd, 0                              'Run process detached hidden
:wscript.echo " MySQL Server started"                'Inform user

rem ### END VBScript ###

rem -- run above script
findstr "^:" "%~sf0">temp.vbs
cscript //nologo temp.vbs
del temp.vbs

echo.
pause
rem --- restore original working directory
popd
