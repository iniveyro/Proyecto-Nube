@echo off
rem #############################################################
rem # Name: start_cron.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 17-11-2011
rem # Used by cron running as a service
rem # Can be used for testing
rem # Note: This command window remains open until cron stopped
rem ##############################################################

rem ### working directory current folder 
pushd %~dp0

wscript.exe run_cron.vbs

rem ### restore original working directory
popd
