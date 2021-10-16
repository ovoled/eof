@echo off
cd /d %~dp0

echo.
echo "eof"
call test_internal.cmd 0
if errorlevel 1 pause

echo.
echo "eof <empty"
call test_internal.cmd 0 <empty
if errorlevel 1 pause

echo.
echo "type empty | eof"
type empty | call test_internal.cmd 0
if errorlevel 1 pause

echo.
echo "eof <notempty"
call test_internal.cmd 1 <notempty
if errorlevel 1 pause

echo.
echo "type notempty | eof"
type notempty | call test_internal.cmd 1
if errorlevel 1 pause
