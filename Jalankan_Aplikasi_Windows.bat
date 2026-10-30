@echo off
cd /d "%~dp0"
title Server Lokal SIKARBA - SDN 1 Baharu Utara
echo ========================================================
echo   MENJALANKAN APLIKASI SIKARBA (MODE SERVER LOKAL)
echo ========================================================
echo.
set PY=
where python >nul 2>nul && set PY=python
if not defined PY where py >nul 2>nul && set PY=py
if defined PY (
    echo Membuka browser di http://localhost:8080 ...
    echo Jangan tutup jendela hitam ini selama aplikasi dipakai.
    start "" http://localhost:8080
    %PY% -m http.server 8080
) else (
    echo Python tidak ditemukan. Membuka file secara langsung...
    echo CATATAN: mode ini tidak mendukung Install Aplikasi dan Google Drive.
    start "" index.html
)
pause
