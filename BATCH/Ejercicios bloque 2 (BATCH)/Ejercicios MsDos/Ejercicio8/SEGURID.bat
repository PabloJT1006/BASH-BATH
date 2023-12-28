:: 8.- Crea un fichero llamado SEGURID.BAT que compruebe si existe el fichero
:: EJERC.TXT en vuestro pen-drive. Si es así, mostrar su contenido y si no mostrar un
:: mensaje preguntando si desea crearlo. Si se crea el fichero, mostrar un mensaje diciendo
:: que el fichero se ha creado correctamente y mostrarlo mediante la orden DIR.

@echo off

dir E:\EJERC.txt "%1"

set valor=%1

if not exist %valor% goto echo "El fichero EJERC.txt no existe ¿Desea crearlo?"
echo 1 SI
echo 2 NO

set /p var= "Seleccione una opcion [1-2]":
if "%var%"=="1" goto op1 
if "%var%"=="2" goto op2

:op1
type com > e:EJERC.txt
echo "El fichero EJERC.txt se ha creado correctamente"
pause
dir e:\EJERC.txt

:op2

