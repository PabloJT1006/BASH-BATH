:: 3. Realizar un archivo por lotes que pueda contener cinco parámetros. El menú que nos
:: mostraría sería:
:: a) Programa
:: b) Archivo Batch
:: c) Unión de archivos
:: d) Salir
:: Sólo se sale del programa, si se elige la última opción, pidiendo previamente confirmación.
:: Al elegir la primera opción, se lanza el programa elegido como primer parámetro. Si se elige
:: la segunda opción, se ejecuta un archivo batch (segundo parámetro) que necesite del uso de
:: otro parámetro (tercer parámetro). Y en la tercera opción, hay que hacer en una única línea la
:: unión de los archivos (segundo, tercer y cuarto parámetro) en otro archivo (quinto
:: parámetro) sin machacar su contenido.
:: Usar el comando FOR.

@echo off

if "%1"=="" set /p var1= & set /p var2= & goto inicio
if "%2"=="" set /p var2= & set var1=%1 & goto inicio
set var1=%1
set var1=%2

:inicio

echo 1  A.- Programa.
echo 2  B.- Archivo Batch.
echo 3  C.- Union de archivos.
echo 4  D.- Salir.

choice /m "Seleccione una opcion 1-4" /C:1234

if errorlevel 4 goto op4 
if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op4
goto fin

:op3
for %%c in (%2,%3,%4) do (
    type %%c >> %5
)

:op2
call %2 %3
goto inicio

:op1
call %1 > nul 
if errorlevel 1 (
    echo "No has introducido un programa"
) else pause && goto inicio

:fin