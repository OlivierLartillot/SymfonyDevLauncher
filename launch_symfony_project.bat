@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
title Lancement de projet Symfony

:: === Configuration ===
set "ROOT=C:\wamp64\www"
set "LAST_PROJECT_FILE=%~dp0.last_project"

echo.

:: === Projet précédent ===
if exist "%LAST_PROJECT_FILE%" (
    set /p lastProject=<"%LAST_PROJECT_FILE%"
    echo 🔁 Dernier projet lancé : !lastProject!
    set /p reuse="Souhaites-tu relancer ce projet ? (O/n) : "
    if /i "!reuse!"=="O" (
        set "chosen=!lastProject!"
        goto launch
    )
)

rem ... le reste du script ...


echo.
echo 🗂️  Projets disponibles :
echo.

setlocal enabledelayedexpansion
set i=0

:: Afficher les sous-dossiers comme projets
for /D %%D in ("%ROOT%\*") do (
    set /a i+=1
    set "project[!i!]=%%~nxD"
    echo !i! - %%~nxD
)

echo.
set /p choice="👉 Choisis un numéro de projet à lancer : "
call set "chosen=%%project[%choice%]%%"

:: Vérification si la sélection est valide
if not defined chosen (
    echo ❌ Projet invalide. Abandon.
    pause
    exit /b
)

:: Sauvegarde du projet sélectionné
(
    echo %chosen%
) > "%LAST_PROJECT_FILE%"

:launch
echo.
echo ╔═══════════════════════════════════════════╗
echo ║                                           ║
echo ║ 🚀  Lancement du projet Symfony  🚀    
echo ║                                       
echo ║ 
echo ║   Projet sélectionné : 
echo ║                                           
echo ║   ➡️ %chosen%           
echo ║                                               
echo ║      🔥 Décollage dans 3 secondes...         
echo ║                                           ║
echo ╚═══════════════════════════════════════════╝
timeout /t 1 /nobreak > nul
echo ... 2 secondes ⏳
timeout /t 1 /nobreak > nul
echo ... 1 seconde ⌛
timeout /t 1 /nobreak > nul
echo    Go ! 🚀
timeout /t 1 /nobreak > nul

echo ----------------------------------------

rem Se déplacer dans le dossier du projet
cd /d "%ROOT%\%chosen%"

rem ouvre une nouvelle CMD pour ouvrir code de facon invisible ouvre cmd puis close /c
echo 🛠️  Ouverture du dossier dans VS Code..
start "" cmd /c "code ."

rem Dossier VS Code (sans console parasite)
echo 🛠️  Ouverture du dossier dans VS Code...
echo 🔄 Lancement du serveur Symfony...
start "Symfony server" cmd /k "symfony server:start"

echo 🟢 Démarrage de WampServer...
start "" "C:\wamp64\wampmanager.exe"

echo 🌐 Ouverture de Chrome avec les deux onglets...
timeout /t 2 > nul
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://localhost:8000/" "http://localhost/phpmyadmin/"
:: edge: C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe


echo 🌟 Projet lancé avec succès ! Cette boîte se fermera automatiquement.
timeout /t 15 > nul

exit /b
