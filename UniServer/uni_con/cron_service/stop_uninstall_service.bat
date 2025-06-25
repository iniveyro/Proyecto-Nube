@echo off
rem #############################################################
rem # Name: stop_uninstall_service.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 9-4-2011
rem # Stop and Uninstalls coral_cron service
rem ##############################################################

rem ### working directory current folder 
pushd %~dp0

:Stop service
call z_service_stop.bat

:Uninstall service
call z_uninstall_service.bat

: pause

rem ### restore original working directory
popd