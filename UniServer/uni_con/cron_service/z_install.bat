@echo off
rem #############################################################
rem # Name: z_install.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 20-11-2011
rem # Installs coral_cron service
rem ##############################################################

rem ### working directory current folder 
pushd %~dp0

srvstart.exe install coral_cron -c %cd%\srvstart.ini

rem pause

rem ### restore original working directory
popd









