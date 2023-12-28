@echo off
:inicio
if exist "EJERC.TXT" (
    dir "EJERC.DAT" 
)
if not exist "EJER.TXT" (
    choice /m "El archivo no existe, ¿desea crearlo?{S/N}" /C:SN
    if errorlevel 2 echo "ADIOS"  & goto FIN & cls
    if errorlevel 1 notepad "EJERC.TXT" & dir "EJER.TXT" & goto inicio
)








:FIN