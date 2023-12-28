::  4. Crear un menú con las opciones:
::  a. Abrir el editor de texto
::  b. Mostrar el contenido de un fichero
::  c. Indicar la fecha u hora del sistema
::  d. Salir
::  Si se ha introducido un parámetro, se podrá realizar todas las opciones del menú,
::  donde se abrirá dicho fichero con el editor o se mostrará su contenido por pantalla si
::  se eligen respectivamente las dos opciones primeras. En caso contrario, no se podrá
::  realizar la segunda opción. Si se elige la tercera opción, se volverá a mostrar un
::  menú, para que el usuario pueda elegir entre la visualización de la fecha o la hora
::  del sistema. Sólo se saldrá del ejecutable si se elige la cuarta opción.

@echo off

if "%1"=="" goto inicio2

:inicio

echo 1  A.- Abrir el editor de texto.
echo 2  B.- Mostrar el contenido de un fichero.
echo 3  C.- Indicar la fecha u hora del sistema.
echo 4  D.- Salir.

choice /m "Seleccione una opcion 1-4" /C:1234

if errorlevel 4 goto op4 
if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op4
echo "Fin del programa" & goto fin

:op3
echo 1 A.- Ver la fecha
echo 2 B.- Ver la hora

choice /m "Seleccione una opcion 1-4" /C:12

if errorlevel 2 date /t & goto inicio
if errorlevel 1 time /t & goto inicio

:op2
type %1
pause
goto inicio 

:op1
notepad
pause
goto inicio

:inicio2

echo 1  A.- Abrir el editor de texto.
echo 2  B.- Indicar la fecha u hora del sistema.
echo 3  C.- Salir.

choice /m "Seleccione una opcion 1-3" /C:123

if errorlevel 3 goto opc3 
if errorlevel 2 goto opc2
if errorlevel 1 goto opc1

:opc3
echo "Fin del programa" & goto fin

:opc2
echo 1 A.- Ver la fecha
echo 2 B.- Ver la hora

choice /m "Seleccione una opcion 1-4" /C:12

if errorlevel 2 date /t & goto inicio
if errorlevel 1 time /t & goto inicio

:opc1
notepad
pause
goto inicio

:fin