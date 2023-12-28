@ECHO off
:inicio 
echo "1.- SALUDO"
echo "2.- DESPEDIDA"
echo "3.- SALIR"

choice /m "Elige opcion" /C:123 

if errorlevel 3 echo "Vas a salir" & exit 
if errorlevel 2 echo "ADIOS"  & goto inicio & cls
if errorlevel 1 echo "HOLA" & goto inicio & cls


