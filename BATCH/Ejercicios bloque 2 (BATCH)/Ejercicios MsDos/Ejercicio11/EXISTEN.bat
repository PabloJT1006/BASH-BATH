:: 11.- Crea un fichero llamado EXISTEN.BAT que compruebe si existen ficheros con
:: extensión BAK en el directorio raíz de vuestro pen-drive.
:: Si no existe ninguno, preguntar si se desea hacer una copia de seguridad de todos los
:: ficheros y en caso afirmativo hacer dichas copias de seguridad en un directorio del disco
:: duro llamado MICOPIA y que los ficheros tengan su mismo nombre y extensión BAK.
:: Si existieran ficheros con extensión BAK, moverlos al directorio MICOPIA del disco
:: duro y mostrar un mensaje indicando si se ha realizado la operación correctamente o no.

@echo off

dir E:\*.bak > nul

if errorlevel 1 "No se ha encontrado el fichero" goto copia
if errorlevel 0  goto mover

:copia

choice /m "desea realizar una copia de seguridad de todos los ficheros?" /CSN
if errorlevel 2 goto fin
if errorlevel 1 goto copy E:*.* C:\MICOPIA*.bak & fin

:mover
move E:*.bak C:\MICOPIA > nul
if errorlevel 1 echo "No se ha realizado la operacion correctamente"
if errorlevel 0 echo "Se ha realizado la operacion correctamente"

:fin
echo "Vas a salir del proceso"
pause