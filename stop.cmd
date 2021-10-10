@echo off
SET PID=-1
FOR /F "tokens=* USEBACKQ" %%F IN (`type dkxceHTTPServer.pid`) DO (SET PID=%%F)
nircmdc.exe killprocess /%PID%
rem nircmdc.exe killprocess dkxceHTTPServer.exe