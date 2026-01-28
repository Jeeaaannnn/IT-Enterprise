@echo off
setlocal enabledelayedexpansion

:: --- 1. DEFINIZIONE PRIORITÀ PERCORSI ---
set "LOCALE=C:\Users\jeanp\Desktop\IT-Enterprise\05_Security\Backups\Giorni"
set "RIMOVIBILE=D:\Backups_Prestashop\Giorni"
set "CLOUD=H:\Il mio Drive\Backup_Prestoshop\Giorni"
set "DESTINAZIONE=C:\xampp\htdocs\prestashop"
set "MYSQL_EXE=C:\xampp\mysql\bin\mysql.exe"

echo --- RICERCA ULTIMO BACKUP DISPONIBILE ---

:: --- 2. LOGICA DI CONTROLLO (PROPRIETÀ) ---
set "SORGENTE_SCELTA="

if exist "%LOCALE%" (
    for /f "delims=" %%a in ('dir "%LOCALE%" /ad /b /o-d') do (
        set "SORGENTE_SCELTA=%LOCALE%\%%a"
        echo [OK] Trovato backup recente in LOCALE: %%a
        goto :procedi
    )
)

if exist "%RIMOVIBILE%" (
    for /f "delims=" %%a in ('dir "%RIMOVIBILE%" /ad /b /o-d') do (
        set "SORGENTE_SCELTA=%RIMOVIBILE%\%%a"
        echo [!] LOCALE vuoto. Trovato backup in RIMOVIBILE (USB): %%a
        goto :procedi
    )
)

if exist "%CLOUD%" (
    echo [!] Attenzione: Backup locale e USB non trovati.
    echo Controlla se il disco H: (Google Drive) e sincronizzato.
    for /f "delims=" %%a in ('dir "%CLOUD%" /ad /b /o-d') do (
        set "SORGENTE_SCELTA=%CLOUD%\%%a"
        echo [!] Utilizzo copia dal CLOUD: %%a
        goto :procedi
    )
)

:errore
echo [ERRORE CRITICO] Nessun backup trovato in nessuna directory!
pause
exit

:procedi
echo.
echo DESTINAZIONE: %DESTINAZIONE%
echo SORGENTE: %SORGENTE_SCELTA%
echo.
echo ATTENZIONE: Questa operazione e IRREVERSIBILE e sovrascrive il sito attuale.
set /p conferma="Digitare 'S' per confermare il ripristino: "
if /I not "%conferma%"=="S" exit

:: --- 3. ESECUZIONE RIPRISTINO ---
echo --- 1/2 Ripristino File in corso...
if exist "%DESTINAZIONE%" rd /s /q "%DESTINAZIONE%"
mkdir "%DESTINAZIONE%"
xcopy "%SORGENTE_SCELTA%\files" "%DESTINAZIONE%" /E /I /H /Y > nul

echo --- 2/2 Ripristino Database in corso...
"%MYSQL_EXE%" -u root prestashop < "%SORGENTE_SCELTA%\database.sql"

echo.
echo --- DISASTER RECOVERY COMPLETATO ---
pause