@echo off
rem #############################################################
rem # Name: install_start_service.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 9-4-2011
rem # Installs and starts coral_cron service
rem ##############################################################

rem ### working directory current folder 
pushd %~dp0

:Install srvice
call z_install.bat

:Chang to automatic and start service
call start_automatic.vbs

: pause

rem ### restore original working directory
popd