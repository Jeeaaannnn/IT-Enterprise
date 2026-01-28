@echo off
setlocal enabledelayedexpansion

:: --- 1. CONFIGURAZIONE PERCORSI ---
set "SITO=C:\xampp\htdocs\prestashop"
set "MYSQL_BIN=C:\xampp\mysql\bin"

:: Percorso LOCALE (Il tuo PC)
set "LOCALE=C:\Users\jeanp\Desktop\IT-Enterprise\05_Security\Backups"

:: Percorso RIMOVIBILE (Disco D:)
set "RIMOVIBILE=D:\Backups_Prestashop"

:: Percorso CLOUD (Google Drive H:)
set "CLOUD=H:\Il mio Drive\Backup_Prestoshop"

:: --- 2. CREAZIONE STRUTTURA CARTELLE (Se mancano) ---
for %%P in ("%LOCALE%" "%RIMOVIBILE%" "%CLOUD%") do (
    for %%F in (Giorni Settimane Mesi Anni) do (
        if not exist "%%~P\%%F" mkdir "%%~P\%%F"
    )
)

:: --- 3. LOGICA CALENDARIO ---
set "GG=%date:~0,2%"
set "MM=%date:~3,2%"
set "AAAA=%date:~6,4%"
set "DOW=%date:~0,3%"
set "TIMESTAMP=%AAAA%-%MM%-%GG%"

:: Impostazione predefinita su Giorni
set "DEST=Giorni"

:: Se è Domenica (dom), vai in Settimane
if /I "%DOW%"=="dom" set "DEST=Settimane"

:: Se è l'ultimo del mese (testiamo il giorno 28, 30 o 31), vai in Mesi
if "%GG%"=="28" set "DEST=Mesi"

:: Se è l'ultimo dell'anno, vai in Anni
if "%GG%-%MM%"=="31-12" set "DEST=Anni"

set "FINAL_DIR=%LOCALE%\%DEST%\Backup_%TIMESTAMP%"
mkdir "%FINAL_DIR%"

:: --- 4. ESECUZIONE BACKUP (LOCALE) ---
echo Avvio Backup in corso [%DEST%]...
"%MYSQL_BIN%\mysqldump" -u root prestashop > "%FINAL_DIR%\database.sql"
echo \var\cache\ > "%temp%\exclude.txt"
xcopy "%SITO%" "%FINAL_DIR%\files" /E /I /H /Y /EXCLUDE:%temp%\exclude.txt > nul

:: --- 5. SINCRONIZZAZIONE (RIMOVIBILE E CLOUD) ---
echo Sincronizzazione su Disco D: (Rimovibile)...
robocopy "%LOCALE%" "%RIMOVIBILE%" /MIR /R:3 /W:5 /MT:8

echo Sincronizzazione su Google Drive (H:)...
robocopy "%LOCALE%" "%CLOUD%" /MIR /R:3 /W:5 /MT:8

:: --- 6. PULIZIA AUTOMATICA (RETENTION POLICY) ---
echo Pulizia vecchi backup per risparmiare memoria...
:: Tiene 7 giorni di "Giorni"
forfiles /p "%LOCALE%\Giorni" /d -7 /c "cmd /c IF @isdir==TRUE rd /s /q @path" 2>nul
:: Tiene 30 giorni di "Settimane"
forfiles /p "%LOCALE%\Settimane" /d -30 /c "cmd /c IF @isdir==TRUE rd /s /q @path" 2>nul
:: Tiene 365 giorni di "Mesi"
forfiles /p "%LOCALE%\Mesi" /d -365 /c "cmd /c IF @isdir==TRUE rd /s /q @path" 2>nul

echo --- PROCESSO COMPLETATO CON SUCCESSO ---
del "%temp%\exclude.txt"
pause