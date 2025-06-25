@echo off
cls
COLOR B0

TITLE Uniform Server - Force DtDNS Update

rem ### working directory current folder 
pushd %~dp0

..\..\usr\local\php\php.exe -c ..\..\usr\local\php\php-cli.ini dtdns_updater.php

rem ### restore original working directory
:pause
popd
EXIT
