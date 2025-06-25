@echo off
rem ###################################################
rem # Name: run_on_drive_w.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: Mike Gleaves (ric)
rem # V 1.0 2-6-2011
rem ##################################################


rem working directory current folder 
pushd %~dp0

rem map drive letter to current directory
subst W: "%CD%"

rem change to drive
w:

rem run servers
Start_as_program.exe

rem restore original working directory
popd
