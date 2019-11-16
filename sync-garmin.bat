echo ---------- Starting Sync ----------  >> %LOGFILE%
call setenv.bat
echo Current date: %date% %time:~0,5% >> %LOGFILE%
set CURDIR=%cd%
set "G=%temp%\LastPeriod.vbs"
>%G% echo WScript.Echo DateAdd("d",-%DAYS%, Date)
for /f %%i in ('cscript //nologo %G%') do set "LastPeriod=%%i"
echo Fetching data from %LastPeriod:~-10,2%.%LastPeriod:~-7,2%.%LastPeriod:~-4,4% >> %LOGFILE%
cd %SYNCPY%
sync.py -f %LastPeriod:~-4,4%-%LastPeriod:~-7,2%-%LastPeriod:~-10,2% -v --garmin-username=%USERNAME% --garmin-password=%PASSWORD% >> %LOGFILE%
cd %CURDIR%
echo ---------- Sync end ---------  >> %LOGFILE%
