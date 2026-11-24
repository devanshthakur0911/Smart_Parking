@echo off
cd /d "%~dp0"
rem Use Node.js installed on this PC if present, otherwise the bundled node\node.exe
where node >nul 2>nul
if %errorlevel%==0 (set NODE=node) else (set NODE=node\node.exe)
start "" http://localhost:3000
%NODE% server\server.js
pause
