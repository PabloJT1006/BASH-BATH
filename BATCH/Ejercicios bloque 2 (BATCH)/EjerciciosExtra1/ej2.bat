:: 2. Realizar el siguiente menú:
:: a) Copiar
:: b) Mostrar
:: c) Calculadora
:: d) Salir
:: Se hará uso de dos parámetros o variables.
:: Si se elige la primera opción, se copiará el fichero o el directorio dado (primer valor) en el
:: directorio elegido (segundo valor).
:: En la segunda opción hay que mostrar el contenido del segundo valor, ya sea fichero o
:: directorio. En caso de no ser un valor válido, habrá que indicar por pantalla que tal valor no
:: es ni fichero ni directorio, preguntando a su vez si se desea crear. En caso afirmativo, se
:: crearía, y en caso negativo no se realizaría nada.
:: Al elegir la tercera opción, se nos mostrará un submenú con las operaciones aritméticas y
:: con una quinta opción que nos dará la posibilidad de volver al menú inicial.
:: Realizar el submenú con las operaciones aritméticas, haciendo uso exclusivo de variables (a
:: ser posible dos).

@echo off

if "%1"=="" set /p var1= & set /p var2= & goto inicio
if "%2"=="" set /p var2= & set var1=%1 & goto inicio
set var1=%1
set var2=%2
goto inicio

:inicio

echo 1  A.- Copiar.
echo 2  B.- Mostrar.
echo 3  C.- Calculadora.
echo 4  D.- Salir.

choice /m "Seleccione una opcion 1-4" /C:1234

if errorlevel 4 goto op4 
if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op4
echo "Fin del programa"
pause
goto fin

:op3
echo "CALCULADORA"
echo 1  A.- Suma.
echo 2  B.- Resta.
echo 3  C.- Multiplicacion.
echo 4  D.- Division.
echo 5  E.- Volver a menu anterior.

set /p num1="Introduce un primer numero"
set /p num2="Introduce un segundo numero"

choice /m "Seleccione una opcion 1-5" /C:12345

if errorlevel 5 goto inicio
if errorlevel 4 goto division
if errorlevel 3 goto producto
if errorlevel 2 goto resta
if errorlevel 1 goto suma

:suma
set /a suma=%num1%+%num2%
echo %suma%
pause
goto op3

:resta
set /a resta=%num1%-%num2%
echo %resta%
pause
goto op3

:producto
set /a producto=%num1%*%num2%
echo %producto%
pause
goto op3

:division
set /a division=%num1%/%num2%
echo %division%
pause
goto op3

:op2
if not exist %var2% choice /m "No existe desea crearlo" /C:SN
if errorlevel 2 goto inicio
if errorlevel 1 mkdir %var2%

:op1
copy %var1% %var2%
pause
goto inicio 

:fin