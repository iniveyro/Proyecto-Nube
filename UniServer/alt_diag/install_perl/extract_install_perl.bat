@echo off
cls
COLOR B0
mode con:cols=80 lines=20
TITLE UNIFORM SERVER - Install Perl

rem ###########################################################################
rem # Name: extract_install_perl.bat
rem # Created By: The Uniform Server Development Team
rem # Edited Last By: MPG (ric)
rem # V 1.0 15-6-2011
rem # All paths are relative to folder UniServer making script generic.
rem ###########################################################################
echo.

rem working directory current folder 
pushd %~dp0

rem === Move up tree to get path to UniServer restore working dir
pushd..\..
set UniServer_path=%cd%
popd

rem === Check for any msi file
if NOT exist Active*.msi goto NOT_FOUND_MSI 

rem -- Get msi file name
FOR /F "tokens=*" %%i in ('dir /B Active*.msi') do SET perl_msi=%%i

rem -- Full path to msi
set full_msi=%CD%\%perl_msi%

rem === Check Perl already installed
if NOT exist %UniServer_path%\usr\bin goto EXTRACT_INSTALL

echo.
echo  Perl already installed:
echo  Would you like to delete existing version and install new version?
echo.
echo  Enter Yes or No and press return.
echo  Alteratively to accept default [Yes] press return 
echo.

rem -- SET /P prompts for user input and sets a variable
SET Choice=
SET /P Choice= INSTALL enter Yes [Default] or No and press enter: 
echo.

If '%Choice%'=='' Set Choice=Yes
IF Not '%Choice%'=='Yes' GOTO END

rem -- Delete existing Installation

echo  Deleting existing installation %UniServer_path%\usr\bin
rmdir /s /q %UniServer_path%\usr\bin
echo  Deleting existing installation %UniServer_path%\usr\lib
rmdir /s /q %UniServer_path%\usr\lib

rem === Extract and install Perl
:EXTRACT_INSTALL

mkdir temp
echo  Extracting files to temp folder
msiexec /a %full_msi% /qb TARGETDIR=%CD%\temp

rem -- Copy directories 
echo  Copying to target %UniServer_path%\usr\bin
xcopy %CD%\temp\Perl\bin %UniServer_path%\usr\bin /i /q /s
echo  Copying to target %UniServer_path%\usr\lib
xcopy %CD%\temp\Perl\lib %UniServer_path%\usr\lib /i /q /s 

rem -- Delete Temp folder
echo  Deleting folder %CD%\temp
rmdir /s /q %CD%\temp

rem -- Delete Perl Installation file
echo  Deleting file %full_msi%
del %full_msi%

echo.
echo  Installation Complete
echo.

goto END

rem ====================================================

:NOT_FOUND_MSI
echo.
echo  Problem:
echo  Perl MSI installation file not found.
echo  No action taken.
echo.

:END
pause

rem === restore original working directory
popd
EXIT