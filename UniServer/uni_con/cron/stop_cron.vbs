'###############################################################################
'# Name: stop_cron.vbs
'# Developed By: The Uniform Server Development Team
'# Modified Last By: Mike Gleaves (Ric)
'# Web: http://www.uniformserver.com
'# Comment: Stops cron when running as either a service or program.
'#          Set tracker in configuration to "stop"
'# V1.0  7-4-2011 - Original
'# V1.1 10-12-2011 - clean objects
'###############################################################################

Option Explicit                                       '* Forces the explicit declaration 
us_set_working_directory                              '* Run sub sets current working dir
includeFile "..\includes\core_config_inc.vbs"         '* Load core config
includeFile "..\includes\core_functions_inc.vbs"      '* Load core functions

'------------------------------------------------------------------------------
' Set working directory to script location
Sub us_set_working_directory
 Dim FSO, WshShell, path                                 '* Declare variables
 Set WshShell = CreateObject("WScript.Shell")            '* Create shell object
 Set FSO = CreateObject("Scripting.FileSystemObject")    '* Create file system object
 path = FSO.GetFile(Wscript.ScriptFullName).ParentFolder '* Get path to this file
 WshShell.CurrentDirectory = path                        '* Set new working directory

 Set WshShell = nothing
 Set FSO =  nothing
End Sub
'------------------------------------------------------------------------------

'==============================================================================
' This sub simulates PHP's include directive
sub includeFile (fSpec)
 dim objFSO,objFile,fileData
 Set objFSO  = CreateObject("Scripting.FileSystemObject")'* Create file obj
 Set objFile = objFSO.OpenTextFile(fSpec)                '* Open file for read
 fileData = objFile.readAll()                            '* Read file to string
 objFile.close                                           '* Close file
 executeGlobal fileData                                  '* Run code in string
 set objFSO  = nothing                                   '* Clean-up remove obj
 set objFile = nothing                                   '* Clean-up remove obj
end sub
'==============================================================================

us_init()                      'If server moved update paths
us_set_cron_tracker("stop")    'Stops cron running


