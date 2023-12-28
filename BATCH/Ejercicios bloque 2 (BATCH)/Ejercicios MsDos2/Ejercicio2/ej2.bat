::  2. Realizar un menú que realice lo siguiente:
::  a. Borrar la pantalla
::  b. Escanear el sistema
::  c. Salir del menú
::  Sólo saldrá del ejecutable si se elige la opción tercera, mientras tanto volverá a
::  mostrar el menú inicial.

@echo off

:inicio

echo 1  A.- Borrar la pantalla.
echo 2  B.- Escanear el sistema.
echo 3  C.- Salir del menu.

choice /m "Seleccione una opcion 1-3 " /C:123

if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op1
cls
pause
goto inicio

:op2
chkdsk C:
pause
goto inicio

:op3
exit

