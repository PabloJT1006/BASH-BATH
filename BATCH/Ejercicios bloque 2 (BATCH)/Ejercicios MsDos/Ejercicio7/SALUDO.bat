:: 7.- Crea un fichero llamado SALUDO.BAT que muestre el siguiente menú:
:: 1.- SALUDO
:: 2.- DESPEDIDA
:: 3.- SALIR
:: En la opción 1 borrar la pantalla y escribir HOLA, en la opción 2 borrar la pantalla y
:: escribir ADIOS y con la opción 3 salir del fichero bat.

@echo off

:inicio

echo 1  1.- SALUDO
echo 2  2.- DESPEDIDA
echo 3  3.- SALIR

set /p var= "Seleccione una opcion [1-3]":

if "%var%"=="1" goto op1 
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3

:op1
echo "Hola"
pause
goto inicio

:op2
cls
echo "Adios"
pause
goto inicio

:op3
exit

