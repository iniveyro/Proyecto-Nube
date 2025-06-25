@echo off
rem #######################################################
rem # Name: stop_cron.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 17-11-2011
rem # Used by cron running as a service
rem # Stops cron running either as a program or service
rem # Note: This will also close the start command window.
rem #######################################################

rem ### working directory current folder 
pushd %~dp0

wscript.exe stop_cron.vbs

rem ### restore original working directory
popd
