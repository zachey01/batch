@echo off
set "SmoothScrollPath=C:\Users\Zachey\AppData\Local\SmoothScroll\app-1.2.4.0\SmoothScroll.exe"
set "SmoothScrollExe=SmoothScroll.exe"

:start
echo Starting SmoothScroll...
start "" "%SmoothScrollPath%"

echo SmoothScroll started. Waiting for 30 minutes before restarting...
timeout /t 1800 /nobreak >nul

echo Restarting SmoothScroll...
taskkill /f /im "%SmoothScrollExe%"
timeout /t 5 /nobreak >nul
start "" "%SmoothScrollPath%"

goto start
