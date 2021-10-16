@echo off
..\eof.exe
echo exit code = %ERRORLEVEL%
if not [%1] == [] if not [%1]==[%ERRORLEVEL%] echo === UNEXPECTED! (expected  %1) === && exit /b 1
exit /b 0
