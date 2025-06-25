'##############################################################################
'# Name: disk_start_stop.vbs
'# Location: UniServer
'# Created By: The Uniform Server Development Team
'# Edited Last By: Ric
'# V 1.0 2-6-2011
'# Creates a Virtual Drive and runs server as a standard program
'# After stopping servers running this script again removes virtual drive
'##############################################################################

Option Explicit                                       '* Forces the explicit

Dim objFSO,WshShell,letter,free_drive_list,drive,user_ip,str,script_path,ret
Dim tracker_file,vdrive,drive_letter,objFile

 Const drive_tracker_file = "us_drive_tracker.txt"         'Contains drive letter
 Const exe_to_run         = "Start_as_program.exe"         'Run servers as standard program
 Const ForReading = 1
 Const ForWriting = 8

 set objFSO   = createobject("Scripting.FileSystemObject") 'Create file object
 set WshShell = WScript.CreateObject("WScript.Shell")      'Create shell objject


'-- Get path to this script
  script_path = WScript.ScriptFullName                         'Script path\filename
  script_path = Left(script_path, InStrRev(script_path, "\"))  'Get path\
  script_path = left(script_path, len(script_path)-1)          'Remove final '\

  tracker_file = script_path & "\tmp\" & drive_tracker_file    'Complete path to tracker

'-- Check tracker file exists. Use content to match virtual drive tracker
  vdrive = False                                               'Assume No virtual drive
  If objFSO.FileExists(tracker_file) Then                      'Tracker file found
    Set objFile = objFSO.OpenTextFile(tracker_file,ForReading) 'File object
    drive_letter = trim(objFile.ReadLine)                      'Read line from file
    objFile.Close

    If objFSO.FileExists(drive_letter & ":\tmp\" & drive_tracker_file)  Then 'Vdrive exists
      vdrive = True                                                     'Set flag
    Else                                                       'No virtual drive
      vdrive = False                                           'Set flag
      objFSO.DeleteFile tracker_file                           'Was artifact delete file
    End If 
  End If


If Not vdrive Then  === Create vdrive =========================================                                     

'--- Get all free drive letters
 free_drive_list =""
 For letter = Asc("a") to Asc("z")                           'Scan drives a to z
   If Not objFSO.DriveExists(Chr(letter)&":") Then           'Drive letter is free
      free_drive_list = free_drive_list & UCASE(Chr(letter)) 'Add to user display list 
      drive = Chr(letter)                                    'We will use this one
   End If
 Next

 If free_drive_list = "" Then        'Check list. If empty
   msgbox "No free drive letters"    'inform user and
   WScript.Quit                      'bail out
 End If 

'--- Get user input
 str = ""
 str = str & "Following drives are available: " &  vbCR 
 str = str & free_drive_list                    &  vbCR  &  vbCR 
 str = str & "Change letter or use default"     &  vbCR 
 str = str & "Click OK"

 user_ip=InputBox( str ,"Select Server Drive Letter",UCASE(drive)) 

 If user_ip = "" Then                 'Check use input. If empty
   msgbox "No drive letter entered",,"Error"     'inform user and
   WScript.Quit                       'bail out
 End If 

'-- Create virtual drive
  ret = WshShell.Run ("cmd /c subst " & user_ip & ": " & script_path, 0, TRUE)  'Create Vdrive
  WshShell.CurrentDirectory = user_ip & ":"                                     'Set working dir

'-- Save vdrive letter to file
    Set objFile = objFSO.OpenTextFile(tracker_file,ForWriting, True) 'File object
    objFile.WriteLine(user_ip)                                       'Save letter to file
    objFile.Close                                                    'Close file

'-- Run server as program
  WshShell.Run exe_to_run

Else '=== Delete vdrive =======================================================

  ret = WshShell.Run ("cmd /c subst " & drive_letter & ": /d", 0, TRUE) 'Remove Vdrive
  objFSO.DeleteFile tracker_file                                        'Delete tracker file
   msgbox "Virtual Drive Removed",,"Virtual Drive "& drive_letter

End If 'Create Vdrive 


'--Clean up
  set WshShell = Nothing
  set objfso = Nothing







