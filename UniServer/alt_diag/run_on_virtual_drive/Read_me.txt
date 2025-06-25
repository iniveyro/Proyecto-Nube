###############################################################################
# File name: Read_me.txt
# Created By: The Uniform Server Development Team
# V 1.0 2-5-2011
###############################################################################

If you wish to run The Uniform Server from a folder containing spaces in its path.

Option 1:
 Copy files  run_on_drive_w.bat  and  remove_drive_w.bat  to folder UniServer.
 To start the servers from folder UniServer, double click file  run_on_drive_w.bat

 Using this file creates a virtual drive named W with folder UniServer mapped to 
 its root (top level). This eliminates spaces at the expense of dedicating a
 drive letter.

Option 2:
 Copy file  disk_start_stop.vbs  to folder UniServer.

 To start servers from folder UniServer, double click file  disk_start_stop.vbs
 A list of available drive letters is displayed. Either use the default letter
 or enter one of these available drive letters. Click OK, which creates a virtual
 drive and runs the servers.


Note 1:
 The above methods are suitable only for running servers as a standard program.
 Do NOT use these methods when installing servers as a service.

Note 2:
 Virtual drive letter assignments are permanent, until either explicitly
 released or until a PC restart.

 To explicitly release a drive letter, first stop The Uniform Server. Use one
 of the following methods:

   Option 1:
   From folder UniServer double click file remove_drive_w.bat

   Option 2:
   From folder UniServer double click file disk_start_stop.vbs

Note 3:
 To change the default drive letter of "Option 1" ("w"), edit the following:

 Edit run_on_drive_w.bat. Replace "W:" with "x:" where x is the new drive letter
 Edit remove_drive_w.bat. Replace "W:" with "x:" where x is the new drive letter
 Ensure "x" has not been already assigned.

                                  --- End ---


