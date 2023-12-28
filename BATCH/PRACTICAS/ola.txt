@echo off
if exist "MICOLE.DAT" (
    dir "MICOLE.DAT"
    sort "MICOLE.DAT" 
)
if not exist "MICOLE.DAT" (
    echo "El archivo MICOLE.DAT no existe"
)