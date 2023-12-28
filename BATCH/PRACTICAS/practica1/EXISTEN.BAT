@echo off
:inicio
if not exist "E:\*.BAK" (
    choice /m "¿Desea hacer una copia de seguridad?{S/N}" /C:SN
    if errorlevel 2 echo "ADIOS"  & goto FIN & cls
    if errorlevel 1 move "E:\*.*  C:\MICOPIA\*.bak"  & goto inicio
)
if exist "E:\*.BAK" (
    echo "Ya hay copia de seguridad en el pendrive, y se va a mover a MICOPIA"
    move "E:\*.BAK  C:\MICOPIA"
)
:FIN