:: 1. Realizar un menú que conste de los siguientes apartados:
:: a) Crear un directorio
:: b) Crear un fichero
:: c) Mostrar un directorio
:: d) Mostrar un fichero
:: e) Salir
:: Para ello hay que hacer uso de dos parámetros o variables, el primero de ellos será usado
:: para la creación y el segundo para la visualización.
:: El programa comprueba si lo elegido por el usuario es factible, en caso afirmativo realiza lo
:: pedido por el usuario, y en caso negativo nos indica que error se ha cometido.
:: Al salir se deberá indicar si se han usado los dos parámetros, o sólo uno.

@echo off

set contador1=0
set contador2=0

if "%1"=="" set /p var1= & set /p var2= & goto inicio
if "%2"=="" set /p var2= & set var1=%1 & goto inicio
set var1=%1
set var2=%2
goto inicio

:inicio

echo 1  A.- Crear un directorio.
echo 2  B.- Crear un fichero.
echo 3  C.- Mostrar un directorio.
echo 4  D.- Mostrar un fichero.
echo 5  E.- Salir.

choice /m "Seleccione una opcion 1-4" /C:12345

if errorlevel 5 goto op5 
if errorlevel 4 goto op4 
if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op5
if %contador1% gtr 0 echo "Se ha usado"
if %contador1% geq 1 echo "Se ha usado"
if %contador2% gtr 0 echo "Se ha usado"
if %contador2% geq 0 echo "Se ha usado"
pause
goto fin

:op4
if not exist %var2% echo "El fichero no existe"
if exist %var2% type %var2%
set /a contador2=%contador2%+1

:op3
if not exist %var2% echo "El directorio no existe"
if exist %var2% dir %var2%

set /a contador2=%contador2%+1

:op2
if exist %var1% echo "El fichero ya existe"
if not exist %var1% notepad %var1%
set /a contador1=%contador1%+1

:op1
if exist %var1% echo "El directorio ya existe"
if not exist mkdir %var1%
set /a contador1=%contador1%+1

:fin