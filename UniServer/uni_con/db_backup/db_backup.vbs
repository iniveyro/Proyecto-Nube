'###############################################################################
'# Name: db_backup.vbs
'# Developed By: The Uniform Server Development Team
'# Modified Last By: Mike Gleaves (Ric)
'# Web: http://www.uniformserver.com
'# Comment: 
'# V1.0  22-4-2011 - Original
'# V1.1 10-12-2011 - clean objects
'# V1.2 29-06-2012 - Support for multi underscore characters in db name - Forum member Crypton
'###############################################################################

Option Explicit                                       '* Forces the explicit declaration 
us_set_working_directory                              '* Run sub sets current working dir
includeFile "..\includes\core_config_inc.vbs"         '* Load core config
includeFile "..\includes\core_functions_inc.vbs"      '* Load core functions

us_init() 'If server moved update paths

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

Dim unix_time_now, time_stamp, dbs_array,db,db_dump_file
Dim objFSO,newfolder,logging,file_temp,file_temp2
Dim  Fifo,objFolder,colFiles,objFile,backup_name,temp_array,ref_tim,count_files

 '--Check for main folder. Folder for all db backup file
 set objFSO=CreateObject("Scripting.FileSystemObject")   'Create file object
 If  Not objFSO.FolderExists(US_DB_BAK_MAIN) Then        'Does folder exist user may have 
   newfolder = objFSO.CreateFolder (US_DB_BAK_MAIN)      'deleted this folder hence create
 End If

 '--Check MySQL is running
 If Not us_mysql_running() Then     'MySQL Server must be running
   Set objFSO = nothing
   WScript.Quit                     'if not exit
 End If

 '--Is loggin enabled
 logging = us_my_ini_get(USF_DBBACKUP_INI,"LOG","Logging") 'Get user logging option
 
 If logging Then
  db_backup_log("### Log Started =========================================") 
 End If

 '--Check for file containing list of dbs to backup
 If Not us_file_exists(USF_DBBACKUP_LIST) Then        'Does file exist
  Set objFSO = nothing
  WScript.Quit                                       'if not exit
 End If  

 '=== FIFO ===
 Fifo = us_my_ini_get(USF_DBBACKUP_INI,"FIFO","Fifo_depth") 'Fifo size from config

 If Fifo < 2 Then  'For a fifo to work it must have a minimum depth of 2
  Fifo = 2         'Hence if user sets this to 0 or 1 set value to 2
 End If

 '-- Read all files in db backup folder
 Set objFolder = objFSO.GetFolder(US_DB_BAK_MAIN)          'Create object to main backup folder
 Set colFiles = objFolder.Files                            'Get list of all files in main backup folder

 dbs_array = us_get_file_as_array(USF_DBBACKUP_LIST)       'Get list of dbs to backup, read file into array

 For Each db in dbs_array                                  'Scan array of each db to be backed up
    ref_tim = 9999999999                                   'Large number just to start filter
    count_files = 0                                        'Track number of files counted
    For Each objFile in colFiles                           'Scan list of files (main backup folder)
       If InStr(objFile,db)Then                            'Is it this db
         count_files = count_files + 1                     'Yes: Increment counter
         temp_array = split(objFile.Name,"_")              'Get time stamp
         time_stamp = temp_array(UBound(temp_array) - 1)   'Now get the time stamp for real
            If Cdbl(time_stamp) < Cdbl(ref_tim) Then       'Is this smaller than our reference (ref_tim)
              ref_tim = time_stamp                         'Yes: Set new reference time
              file_temp  = objFile                         'Save path and file name (this is the eldest file)
              file_temp2 = objFile.Name                    'Save file name (this is the eldest file)
            End If
       End IF
    Next                                                   'Repeat read next file in main db backup folder

    If Cdbl(count_files) >= Cdbl(Fifo) Then                'Fifo limit reached hence need to make more room
     objFSO.DeleteFile file_temp                           'by deletting eldest file for that database.
       If logging Then
         db_backup_log(" Deleted backup - " & file_temp2)'Log file deleted 
       End If 
    End If

 Next                                                      'Read next db to be saved. Check Fifo limit

 Set objFolder = nothing
 Set colFiles  = nothing
 Set objFSO    = nothing
 '=== END FIFO ====

 '--Calculate Unix time now. Part of file name to back up
   unix_time_now = DateDiff("s", "1/1/1970 00:00:00", _
   DateSerial(Year(Now), Month(Now), Day(Now)) _
   + TimeSerial(Hour(Now), Minute(Now), Second(Now)))

 '--Backup files listed in file USF_DBBACKUP_LIST
 dbs_array = us_get_file_as_array(USF_DBBACKUP_LIST)                'Read file into array
 For each db in dbs_array                                           'Scan array
   db_dump_file = db & "_" & unix_time_now & "_.sql"                'Create file
   call us_dump_database(db,US_DB_BAK_MAIN & "\" & db_dump_file)    'Dump dbs
     If logging Then
       db_backup_log(" File backed up - " & db_dump_file)        'File backed up 
     End If 
 Next

If logging Then
  db_backup_log("### Log Ended ==========================================="& vbCRLF) 
End If

'=== Log =====================================================================
' Logs DB BACKUP actions to a log file
' Input: String to be logged
' USF_DBBACKUP_LOG   Path to file including file name

Function db_backup_log(str)
 Dim new_str,objFSO,objTextFile,ForAppending
 ForAppending = 8 'ForAppending = 8 ForReading = 1, ForWriting = 2

 Set objFSO = CreateObject("Scripting.FileSystemObject")
 Set objTextFile = objFSO.OpenTextFile (USF_DBBACKUP_LOG, ForAppending, True)

 new_str = Date & " " & Time & " " & str 'String to be logged

 objTextFile.WriteLine(new_str)
 objTextFile.Close

 Set  objFSO      = nothing
 Set  objTextFile = nothing
 
End Function
'================================================================== END Log ===


