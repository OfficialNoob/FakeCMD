@echo off
title Command Prompt

set av="AVG Antivirus"
set ver=10.0.17134.228
set year=2018
set scamlogfile=%temp%\scalog.txt
set scamlog=true
set dt=%date%%time%

echo Microsoft Windows [Version %ver%]
echo (c) %year% Microsoft Corporation. All rights reserved.
echo.

:UserInput
set /p c="%cd%>"
if %scamlog%==true echo %c% - %dt% >> %scamlogfile%
if %c%==dir goto :fine
if %c%==tree goto :fine
if %c%==netstat goto :warn
if %c%==syskey goto :c4
if %c%==eventvwr goto :c3
%c%
goto :UserInput
:warn
%c%
color 4
cls
echo Be careful a scammers ip address was seen connected to this machine - %av%
goto :UserInput
:c4
echo Syskey has been disabled by your system administrator
goto :UserInput
:fine
%c%
color a
echo Your pc is fine and all your files are clean - %av%
goto :UserInput
