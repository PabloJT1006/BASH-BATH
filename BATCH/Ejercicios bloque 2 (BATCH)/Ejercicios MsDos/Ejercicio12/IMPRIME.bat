:: 12.- Crear un fichero llamado IMPRIME.BAT que muestre por pantalla 3 ficheros que se
:: introducirán como parámetros con el menor número de líneas posibles. 

@echo off

if not exist "%1" goto d 
if not exist "%2" goto d
if not exist "%3" goto d
for %%c in (%1,%2,%3) do (type %%c)
:d




