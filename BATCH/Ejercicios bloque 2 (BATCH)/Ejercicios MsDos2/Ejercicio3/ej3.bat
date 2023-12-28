::  3. Hacer la copia de un archivo, introducido por parámetro, a un directorio, introducido
::  como segundo parámetro. Antes de realizarlo comprobar la existencia de ambos
::  parámetros.

@echo off

if "%1"=="" echo "No has introducido ningun archivo" & goto d
if "%2"=="" echo "No has introducido ningun directorio" & goto d

if exist %1 ( echo "Vas a hacer esta copia" 
if exist %2 (
    copy %1 %2
    echo "Se ha realizado la copia" & goto d
) else echo "el directorio no existe" %2 & goto d

) else echo "No existe el fichero" %1 & goto d

:d
