@echo off
::Bix is created by Galaxyted_YT.
cls
title bix
set vs=131220
FOR /F "tokens=* delims=" %%x in (C:\Bix\USERS\username.txt) DO set user=%%x
echo Starting up
cls
echo Bix %vs%
title bix@%user%
:bt
set /p cmd="[31mbix[0m@[32m%user%[0m$"
if %cmd%==list goto listcmd
if %cmd%==ver goto vercmd
if %cmd%==programs goto progcmd
if %cmd%==exit goto exitcmd
if %cmd%==clear goto clscmd
if %cmd%==commands goto hc
if %cmd%==directory goto dircmd
if %cmd%==makefolder goto mdcmd
if %cmd%==removefolder goto rdcmd

:error
echo Invalid Command
goto bt

:listcmd
dir
goto bt

:vercmd
echo Bix %vs%
echo Bix is created by Galaxyted_YT
echo This specific bix terminal instance is ran by: %user%.
goto bt

:progcmd
cd C:\Bix\PROGRAMS
dir
echo Type "abort" to quit.
set /p sp="$"
if sp==abort goto bt
%sp%
goto bt

:exitcmd
exit

:clscmd
cls
goto bt

:hc
echo Bix 101220
echo Commands
echo ----------
echo list
echo commands
echo ver
echo directory
echo createfolder
echo programs
echo exit
echo -----------
goto bt

:dircmd
set /p dci="$"
cd %dci%
goto bt

:mdcmd
set /p mci="$"
md %mci%
goto bt

:rdcmd
set /p rci="$"
md %rci%
goto tb

pause >nul