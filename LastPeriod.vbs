Days=WScript.Arguments(0)
LastPeriod=DateAdd("d",-Days, Date)
WScript.Echo Right("0" & Day(LastPeriod), 2)  & "." & Right("0" & Month(LastPeriod), 2) & "." & Year(LastPeriod)