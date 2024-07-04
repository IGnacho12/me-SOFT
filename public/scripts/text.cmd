@echo off
setlocal

:: Obtén la edición de Windows
for /f "tokens=2 delims==" %%i in ('wmic os get caption /value') do set Edition=%%i

:: Remueve espacios en blanco de los extremos
set Edition=%Edition: =%

:: Imprime la edición de Windows detectada
echo Edicion de Windows detectada: %Edition%

:: Determina la clave de producto basada en la edición
if "%Edition%"=="Microsoft Windows 10 Home" set ProductKey=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if "%Edition%"=="Microsoft Windows 10 Home N" set ProductKey=3KHY7-WNT83-DGQKR-F7HPR-844BM
if "%Edition%"=="Microsoft Windows 10 Home Single Language" set ProductKey=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
if "%Edition%"=="Microsoft Windows 10 Home Country Specific" set ProductKey=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
if "%Edition%"=="Microsoft Windows 10 Pro" set ProductKey=W269N-WFGWX-YVC9B-4J6C9-T83GX
if "%Edition%"=="Microsoft Windows 10 Pro N" set ProductKey=MH37W-N47XK-V7XM9-C7227-GCQG9
if "%Edition%"=="Microsoft Windows 10 Enterprise" set ProductKey=NPPR9-FWDCX-D2C8J-H872K-2YT43
if "%Edition%"=="Microsoft Windows 10 Enterprise N" set ProductKey=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
if "%Edition%"=="Microsoft Windows 10 Education" set ProductKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if "%Edition%"=="Microsoft Windows 10 Education N" set ProductKey=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if "%Edition%"=="Microsoft Windows 10 Enterprise 2015 LTSB" set ProductKey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D

:: Ejecuta los comandos slmgr con la clave de producto
echo Ejecutando comandos de activacion para la edicion: %Edition%
slmgr /ipk %ProductKey%
slmgr /skms kms.digiboy.ir
slmgr /ato

echo Activacion completada.
start cmd /k echo Activación completada. Acepte todas las ventanas y espere unos segundos :D
endlocal
