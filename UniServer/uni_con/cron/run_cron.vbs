'###############################################################################
'# Name: run_cron.vbs
'# Developed By: The Uniform Server Development Team
'# Modified Last By: Ric and BobS
'# Web: http://www.uniformserver.com
'# Comment: Run Cron scripts.
'# Some applications require a script to be periodically run (referred to as a
'# cron job). Specify these scripts and time in cron.ini 
'# 
'# V1.0  17-11-2011
'# V1.1 10-12-2011 - clean objects
'###############################################################################

Option Explicit                                       '* Forces the explicit declaration 
us_set_working_directory                              '* Run sub sets current working dir
includeFile "..\includes\core_config_inc.vbs"         '* Load core config
includeFile "..\includes\core_functions_inc.vbs"      '* Load core functions

us_init() 'If server moved update paths

Dim logging,file_array,strLine,str,i
Dim start_block,start,period,path,ref,ref_index,offset_time,ref_time
Dim objRegEx,patern,colMatches
Dim s_year,s_month,s_day,s_hours,s_minutes,s_seconds,unix_start_time
Dim unix_time_now

'*** User configuration *******************************************************

 logging   = true           'true = Enable logging false = disable logging

'*************************************************** End User configuration ***

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

'==== Cron Start === 

If logging Then
  cron_log("### Log Started =========================================") 
End If

'This script has started set cron tracker to run
us_set_cron_tracker("run")              'This tracker is checked see below

file_array = us_get_file_as_array(USF_CRON_INI) 'Returns ini file as an array

'===Main loop
Do Until  us_get_cron_tracker() = "stop"  'Infinite loop. 
 WScript.sleep 1000                'Delay one (1000) second allows stop to be checked 
 'Note all times in this script use Unix time
 unix_time_now = DateDiff("s", "01/01/1970 00:00:00", Now()) 'Time now
 scan_ini_file                     'Run through the configuration file 
Loop                               'Infinite Do loop exit on stop

If logging Then
  cron_log("### Log Ended ==========================================="& vbCRLF) 
End If

'----- END --------------------------------------------------------------------

'=== Main function: Scan Configuration file ===================================
Function scan_ini_file 

 For i = 0 To UBound(file_array)        'Scan all lines in array

  '=== Start Block
  If InStr(file_array(i),"[") = 1 Then  'Start-section was found 
    start_block        = file_array(i)
  End If

  '=== Start Time
  'Start time has following format: start  = 2009-09-21 2:56:52

  If InStr(file_array(i),"start") = 1 Then                           'start was found 
      Set objRegEx = New RegExp                                      ' Create new reg obj
      patern = "^start\s*=\s*(\d*)-(\d*)-(\d*)\s*(\d*):(\d*):(\d*)"  ' Create search pattern 
      objRegEx.Pattern = patern                                      ' Assign search pattern

      Set colMatches = objRegEx.Execute(file_array(i)) 'Return collection of Match objects 
      If colMatches.Count > 0 Then                     'Match found
          s_year    = colMatches(0).SubMatches(0)      'Extract capturing groups
          s_month   = colMatches(0).SubMatches(1)
          s_day     = colMatches(0).SubMatches(2)
          s_hours   = colMatches(0).SubMatches(3)
          s_minutes = colMatches(0).SubMatches(4)
          s_seconds = colMatches(0).SubMatches(5)
      End If
     Set objRegEx   = Nothing  'Clean-up
     Set colMatches = Nothing  

'msgbox s_year &" "& s_month 
   'Convert to unix time
   unix_start_time = DateDiff("s", "1/1/1970 00:00:00", _
   DateSerial(s_year, s_month, s_day) _
   + TimeSerial(s_hours, s_minutes, s_seconds))
'msgbox unix_start_time 

  End If

   '=== Period
   If InStr(file_array(i),"period") = 1 Then 'period was found 
      'Calculate time offset

      'User set a numeric value
      Set objRegEx = New RegExp                        'Create new reg obj
      patern = "^period\s*=\s*(\d*)"                   'Create search pattern
      objRegEx.Pattern = patern                        'Assign search pattern
      Set colMatches = objRegEx.Execute(file_array(i)) 'Return collection of Match objects 
      If colMatches.Count > 0 Then                     'Match found
        offset_time = colMatches(0).SubMatches(0)      'Extract first capturing group
      End If
      Set objRegEx   = Nothing  'Clean-up
      Set colMatches = Nothing 

      'User set a pre-defined value
      If (InStr(file_array(i),"hourly") or InStr(file_array(i),"Hourly")) Then 
        offset_time = 60*60
      End If
      If (InStr(file_array(i),"daily") or InStr(file_array(i),"Daily")) Then
        offset_time = 24*60*60
      End If
      If (InStr(file_array(i),"weekly") or InStr(file_array(i),"Weekly")) Then
        offset_time = 7*24*60*60
      End If
      If (InStr(file_array(i),"monthly") or InStr(file_array(i),"Monthly"))Then
        offset_time = 4*7*24*60*60
      End If

  End If

   '=== Path

   If InStr(file_array(i),"path") = 1 Then 'path was found 
     'Extract path information
      Set objRegEx = New RegExp                        'Create new reg obj
      patern = "^path\s*=\s*(.*\.[\S]..)"              'Create search pattern
      objRegEx.Pattern = patern                        'Assign search pattern
      Set colMatches = objRegEx.Execute(file_array(i)) 'Return collection of Match objects 
      If colMatches.Count > 0 Then                     'Match found
        path = colMatches(0).SubMatches(0)             'Extract first capturing group
      Else
        path=""
      End If

      Set objRegEx   = Nothing   'Clean-up
      Set colMatches = Nothing
   End If

  '=== Ref marks end of a block - processing required
   If InStr(file_array(i),"ref") = 1 Then 'ref was found 

    'ref        = file_array(i)
    'ref_index  = i

    '---Get reference time if set
    Set objRegEx = New RegExp                        'Create new reg obj
    patern = "^ref\s*=\s*(\d*)"                      'Create search pattern
    objRegEx.Pattern = patern                        'Assign search pattern

    ref_time = ""                                    'Reset reference time
    Set colMatches = objRegEx.Execute(file_array(i)) 'Return collection of Match objects 
    If colMatches.Count > 0 Then                     'Match found
        ref_time = colMatches(0).SubMatches(0)       'Extract first capturing group
    End If
    Set objRegEx   = Nothing   'Clean-up
    Set colMatches = Nothing

   '--Reference time if blank indicates first run. A value indicates it has already run
   '--and is a repeat time.

    If ref_time = "" Then                                              'First run
       If clng(unix_start_time) < unix_time_now Then                                 'Do we need to run it
          file_array(i) = "ref    = " & (clng(unix_time_now-1) + clng(offset_time))  'Yes: Save new ref time to array
          save_config_changes                                                        'Save new values
         run_path_command()                                                          'Run command line
        End If
    Else                                                                             'Already triggered hence repeat time

       If clng(ref_time) < unix_time_now Then                                        'Do we need to run it
        file_array(i) = "ref    = " &  (clng(unix_time_now-1) + clng(offset_time))   'Yes: Save new ref time to array
        save_config_changes                                                          'Save new values
        run_path_command()                                                           'Run command line
       End If   
    End If

  End If '--End ref
 Next '---End scan all lines

End Function
'=============================== End Main function: Scan Configuration file ===

'=== Save Configuration changes ===============================================
Function save_config_changes

 str=""                               'Reset string
 For Each strLine in file_array       'Scan array
   str = str & strLine & vbCRLF       'and build string
 Next

' Call us_writefile_str(US_UNI_CON & "\cron\zzz.txt", str) 'TEST Save string to file
 Call us_writefile_str(USF_CRON_INI, str) 'Save string to file

End Function
'========================================== End Save Configuration changes ===

'=== Log =====================================================================
' Logs Cron actions to a log file
' Input: String to be logged
' USF_CRON_LOG   Path to file including file name

Function cron_log(str)
 Dim new_str,objFSO,objTextFile,ForAppending
 ForAppending = 8 'ForAppending = 8 ForReading = 1, ForWriting = 2

 Set objFSO = CreateObject("Scripting.FileSystemObject")
 Set objTextFile = objFSO.OpenTextFile (USF_CRON_LOG, ForAppending, True)

 new_str = Date & " " & Time & " " & str 'String to be logged

 objTextFile.WriteLine(new_str)
 objTextFile.Close

 Set objFSO      = Nothing 
 Set objTextFile = Nothing 
 
End Function
'================================================================== END Log ===

'=== Run Command Line =========================================================
' There are two file types that can be run browser or local scripts example:
' http://localhost/drupal/cron.php              - Run PHP script on local server
' ..\..\plugins\dtdns_updater\dtdns_updater.php - Run command line script 
' A user specifies only the path/filename

Function run_path_command()
 Dim page_data,objShell

  Set objShell = CreateObject("WScript.Shell")      'Create shell ready to run scripts

 If InStr(path,"http:") Then                        '*** Server script to run ***

    page_data = us_get_server_page(path)            'Get page data from server


    If Not page_data = "0" Then                     'OK we have a page - was run on server
      If InStr(page_data,"404") Then                'Error page returned
        If logging Then
          cron_log(" - Failed 404 ---- " & path)    'Add log entry Time and path 
        End If
      Else
        If logging Then
          cron_log(" - Run OK -------- " & path)    'Add log entry Time and path 
        End If
     End If

    Else                                            'There was an error
       If logging Then
          cron_log(" - Failed to run - " &path)     'Add log entry Time and path 
       End If 
   End If

 Else                              '*** Command line script ***
   '--Requires nothing special runs directely by OS   
   If InStr(path,".bat") Then                'batch file 
      objShell.Run path,0                    'run batch file detached hidden
       If logging Then
         cron_log(" - Run OK -------- " & path) 'Add log entry Time and path 
       End If
   End If

   '--Requires nothing special runs directely by OS  
   If InStr(path,".vbs") Then                'VBScript file 
      objShell.Run path,0                    'run VBScript file detached hidden
        If logging Then
          cron_log(" - Run OK -------- " & path) 'Add log entry Time and path 
        End If 
   End If

   If InStr(path,".php") Then                'PHP Script
     ' USF_PHP_EXE path to PHP exe file
     ' -c USF_PHP_INI_CLI path to PHP configuration file could have used -n for no config
     ' path full path to script

     objShell.Run USF_PHP_EXE & " -c " & USF_PHP_INI_CLI & " " & path,0   'run PHP Script file detached hidden
      If logging Then
         cron_log(" - Run OK -------- " & path) 'Add log entry Time and path 
      End If
   End If

 End If '*** End Assume to be a command line script
 Set objShell =  Nothing 
End Function
'===================================================== END Run Command Line ===
