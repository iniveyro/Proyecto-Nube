'###############################################################################
'# Name: start_automatic.vbs
'# Developed By: The Uniform Server Development Team
'# Modified Last By: Mike Gleaves (Ric)
'# Web: http://www.uniformserver.com
'# Comment: Changes state of service to automatic.
'#          Allowing service to start when PC switched on.
'# 
'# V1.0  7-4-2011 - Original
'###############################################################################


Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 

Set colRunningServices = objWMIService.ExecQuery ("Select * from Win32_Service")
 For Each objService in colRunningServices
   If objService.DisplayName = "coral_cron" Then
     'If objService.State = "Running" Then
     '   MsgBox "Is Running"
     'End If
     If objService.State= "Stopped" Then
        errReturn = objService.StartService()               'Start service
        errReturn = objService.Change( , , , , "Automatic") 'Change state
     End If
   End If
 Next

