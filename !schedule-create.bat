@echo off
FOR %%D IN ("%CD%") DO SET "DirName=%%~nxD"
ECHO %DirName%
SchTasks /Create /SC DAILY /TN "%DirName%" /TR "%~dp0prefer.ahk" /ST 09:00 
pause