@echo off
:inicio
if exist %1 ( 
    dir %1 
)  else (
    choice /m "El  archivo no existe, ¿desea crearlo?{S/N}" /C:SN
    if errorlevel 2 echo "ADIOS"  & goto FIN & cls
    if errorlevel 1 notepad %1 & goto inicio
)

:FIN