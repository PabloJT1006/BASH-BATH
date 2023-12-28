@ECHO off
:inicio 
echo "a.- Borrar la pantalla"
echo "b.- Escanear el sistema"
echo "c.- Salir del menú"

choice /m "Elige opcion" /C:abc

if errorlevel 3 echo "Vas a salir" & goto fin 
if errorlevel 2 sfc /scannow  & goto inicio 
if errorlevel 1 cls & goto inicio 

:fin