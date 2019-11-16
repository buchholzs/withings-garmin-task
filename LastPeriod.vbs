Days=WScript.Arguments(0)
LastPeriod=DateAdd("d",-Days, Date)
WScript.Echo Right("0" & Day(LastPeriod), 2)  & "." & Month(LastPeriod) & "." & Year(LastPeriod)