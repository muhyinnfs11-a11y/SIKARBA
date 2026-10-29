@echo off
title Server Lokal SIKARBA PRO - SDN 1 Baharu Utara
echo ========================================================
echo   MENJALANKAN APLIKASI SIKARBA PRO (MODE SERVER LOKAL)
echo ========================================================
echo.
where python >nul 2>nul
if %errorlevel%==0 (
    echo Membuka browser di http://localhost:8080 ...
    start http://localhost:8080
    python -m http.server 8080
) else (
    echo Python tidak ditemukan. Membuka file secara langsung...
    start index.html
)
pause
