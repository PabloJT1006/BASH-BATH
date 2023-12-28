:: 9.- Modificar el fichero anterior y llamarlo SEGURID2.BAT para que el nombre del
:: fichero a buscar se un parámetro introducido por teclado.

@echo off

set valor=%1

if not exist %valor% goto echo "El fichero EJERC.txt no existe ¿Desea crearlo?"
echo 1 SI
echo 2 NO

set /p var= "Seleccione una opcion [1-2]":
if "%var%"=="1" goto op1 
if "%var%"=="2" goto op2

:op1
type com > %valor%
echo "El fichero EJERC.txt se ha creado correctamente"
pause
dir %valor%

:op2