echo ---------- Starte Sync ----------  >> sync.log
echo Aktuelles Datum: %date% %time:~0,5% >> sync.log
set "G=%temp%\LastMonth.vbs"
>%G% echo WScript.Echo DateAdd("d",-30, Date)
for /f %%i in ('cscript //nologo %G%') do set "LastMonth=%%i"
echo Hole Daten ab %LastMonth:~-10,2%.%LastMonth:~-7,2%.%LastMonth:~-4,4% >> sync.log
sync.py -f %LastMonth:~-4,4%-%LastMonth:~-7,2%-%LastMonth:~-10,2% -v --garmin-username=steffen.buchholz@gmx.de --garmin-password=Garmincom$2 >> sync.log
echo ---------- Sync beendet ---------  >> sync.log
