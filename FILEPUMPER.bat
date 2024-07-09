@echo off
chcp 65001 >nul
color 4
title ꜰɪʟᴇ ᴘᴜᴍᴘᴇʀ
setlocal enabledelayedexpansion 
echo  ██▓███   █    ██  ███▄ ▄███▓ ██▓███  ▓█████  ██▀███  
echo ▓██░  ██▒ ██  ▓██▒▓██▒▀█▀ ██▒▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██░ ██▓▒▓██  ▒██░▓██    ▓██░▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▄█▓▒ ▒▓▓█  ░██░▒██    ▒██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ▒██▒ ░  ░▒▒█████▓ ▒██▒   ░██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ▒▓▒░ ░  ░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo ░▒ ░     ░░▒░ ░ ░ ░  ░      ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo ░░        ░░░ ░ ░ ░      ░   ░░          ░     ░░   ░ 
echo             ░            ░               ░  ░   ░     
set /p filepath="Entrez le chemin du fichier : "

if not exist "%filepath%" (
    echo Le fichier n'existe pas.
    goto :eof
)

set /p size="Entrez la taille en kilooctets (Ko) a ajouter : "


set /a blocks=%size%-1


set "block=0 "
set "block512="
for /L %%i in (1,1,512) do set "block512=!block512!!block!"

echo PUMPING..

:: Ajouter des blocs de 1 Ko au fichier
for /L %%i in (1,1,%blocks%) do (
    echo !block512!>> "%filepath%"
)

echo La taille du fichier a ete augmentée de %size% Ko.
endlocal
pause > nul
