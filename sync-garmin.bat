echo ---------- Starting Sync ----------  >> sync.log
echo Current date: %date% %time:~0,5% >> sync.log
call setenv.bat
set "G=%temp%\LastPeriod.vbs"
>%G% echo WScript.Echo DateAdd("d",-30, Date)
for /f %%i in ('cscript //nologo %G%') do set "LastPeriod=%%i"
echo Fetching data from %LastPeriod:~-10,2%.%LastPeriod:~-7,2%.%LastPeriod:~-4,4% >> sync.log
sync.py -f %LastPeriod:~-4,4%-%LastPeriod:~-7,2%-%LastPeriod:~-10,2% -v --garmin-username=%USERNAME% --garmin-password=%PASSWORD% >> sync.log
echo ---------- Sync beendet ---------  >> sync.log
