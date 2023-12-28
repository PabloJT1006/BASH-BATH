:: 10.- Crea un fichero llamado MENU.BAT que presente el siguiente menú por pantalla:
:: A.- Escanear pen-drive
:: B.- Editor de Texto
:: C.- Estructura de ficheros y directorios
:: D.- Salir
:: En la opción de Salir hay que pedir previamente la confirmación.

@echo off

:inicio

echo 1  A.- Escanear pen-drive
echo 2  B.- Editor de Texto
echo 3  C.- Estructura de ficheros y directorios
echo 4  D.- SALIR

choice /m "Seleccione una opcion 1-4 " /C:1234

if errorlevel 4 goto op4 
if errorlevel 3 goto op3
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op1
chkdsk e: /f
pause
goto inicio

:op2
copy con prueba.txt
pause
goto inicio

:op3
dir e:\
pause
goto inicio

:op4
choice /m "Estas seguro que deseas salir?" /c:SN
if errorlevel 2 goto inicio
if errorlevel 1 echo "Vas a salir del programa" && pause && exit





