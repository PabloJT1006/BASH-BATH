@ECHO off
set cont1=0
set cont2=0
:inicio 
echo "a.- Crear un directorio"
echo "b.- Crear un fichero"
echo "c.- Mostrar un directorio"
echo "d.- Mostrar un fichero"
echo "e.- Salir"

choice /m "Elige opcion" /C:abcde

if errorlevel 5 goto fin 
if errorlevel 4 goto Mostrarf
if errorlevel 3 goto Mostrard
if errorlevel 2 goto fichero 
if errorlevel 1 goto directorio

:directorio
set /p var1="Introduce parametro: "


if exist %var1%  echo "No se puede crear porque ya existe" && goto inicio

if not exist %var1% (
   echo "Se va a proceder a la creacion del directorio"
   mkdir %var1%
)
set /a cont1=%cont1%+1
goto inicio


:fichero
if "%1"=="" (
   set /p var1="Introduce parametro: "
)
if not exist %var1% (
   echo "Se va a proceder a la creacion del fichero"
   notepad %var1%
)
if exist %var1%  echo "No se puede crear porque ya existe" 
set /a cont1=%cont1%+1
goto inicio




:Mostrard
if "%2"=="" (
   set /p var2="Introduce parametro : "
)
if not exist %var2% (
   echo "No se puede mostrar algo que no existe"
   goto inicio
)
if exist %var2%  dir %var2%
set /a cont2=%cont2%+1
goto inicio

:Mostrarf
if "%2"=="" (
   set /p var2="Introduce parametro : "
)
if not exist %var2% (
   echo "No se puede mostrar algo que no existe"
   goto inicio
)

if exist %var2%  type %var2%
set /a cont2=%cont2%+1
goto inicio

:fin
if %cont1% gtr 0 echo "Se han utilizado parametros para la creacion de ficheros o directorios"
if %cont1% equ 0 echo "No se han utilizado parametros pare la creacion de ficheros o directorios"
if %cont2% gtr 0 echo "Se han utilizado parametros para mostrar ficheros o directorios"
if %cont2% equ 0 echo "No se han utilizado parametros para mostrar ficheros o directorios"

pause