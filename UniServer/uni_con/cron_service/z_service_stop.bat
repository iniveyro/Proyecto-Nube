@echo off
rem #############################################################
rem # Name: z_service_stop.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 9-4-2011
rem # Stops coral_cron service
rem ##############################################################

rem ### working directory current folder 
pushd %~dp0

net stop coral_cron

:pause

rem ### restore original working directory
popd

