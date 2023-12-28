:: 5. Realizar un archivo donde se tenga que introducir tres parámetros. Si los tres
:: parámetros son ficheros, mostrar el contenido de éstos (indicarlo en el menor
:: número de líneas posibles). En caso contrario mostrar mensajes indicando cuáles de
:: los parámetros no son ficheros.

@echo off

if "%1"=="" echo "No has introducido ningun parametro" & goto d 
if "%2"=="" echo "Has introducido solo un parametro" & goto d 
if "%3"=="" echo "Has introducido solo dos parametros" & goto d 

for %%c in (%1,%2,%3) do (
    type %%c > nul
    if errorlevel 1 (
        echo %%c "no es un fichero" 
    ) else (
        echo %%c "Es un fichero" & type %%c
    )
)

:d