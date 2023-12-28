@echo off

if exist %1 (
    type %1 > nul
    if errorlevel 1 echo "Es un directorio" & goto fin
    if errorlevel 0 echo "es un fichero"
)
if not exist %1 echo "No existe" 



:fin