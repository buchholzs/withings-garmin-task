Rem Read user settings
call setenv.bat
echo ---------- Starting Sync ----------  >> %LOGFILE%
echo Current date: %date% %time:~0,5% >> %LOGFILE%
set CURDIR=%cd%
set "G=LastPeriod.vbs"
for /f %%i in ('cscript //nologo %G% %DAYS%') do set "LastPeriod=%%i"
echo Fetching data from %LastPeriod:~-10,2%.%LastPeriod:~-7,2%.%LastPeriod:~-4,4% >> %LOGFILE%
withings-sync -f %LastPeriod:~-4,4%-%LastPeriod:~-7,2%-%LastPeriod:~-10,2% -v --garmin-username=%USERNAME% --garmin-password=%PASSWORD% >> %LOGFILE%
echo ---------- Sync end ---------  >> %LOGFILE%
