@ECHO off
:inicio 
if "%1"=="" (
   set /p var1="Introduce un fichero: "
   set /p var2="Introduce un directorio: "
   goto menu
)
if "%2"=="" (
   set var1=%1
   set /p var2="Introduce un directorio: "
   goto menu
)

set var1=%1
set var2=%2





:menu
echo "a.- Copiar"
echo "b.- Mostrar"
echo "c.- Calculadora"
echo "d.- Salir"
choice /m "Elige opcion" /C:abcd

if errorlevel 4 goto fin
if errorlevel 3 goto Calculadora
if errorlevel 2 goto Mostrar 
if errorlevel 1 goto Copiar

:Copiar
::comprueba si existen tanto la variable 1 como la 2 
::si alguna de las dos no existe no se realizara la tarea de copiar
if exist %var1% (
   if exist %var2% (
      ::se comprueba si la var1 es un fichero
      type %var1% >nul  
      if errorlevel 1 echo "Debes introducer un fichero" && goto menu
      ::se comprueba si la var2 es un directorio y si lo es ese copiara la var1 en la var2
      type %var2%>nul
      if errorlevel 1 echo "Correcto" & copy %var1% %var2%  & goto menu
      if errorlevel 0 echo "Debes introducir un directorio" && goto menu

   )
) else (
   echo "Uno o los dos parametros introducidos no existen"
   goto inicio
)
goto menu


:Mostrar
   ::se comprueba si existe el directorio, si no se va a crear
   if exist %var2% (
      type %var2%>nul
      if errorlevel 1 echo "Correcto" & dir %var2% & goto menu
      if errorlevel 0 echo "Debes introducir un directorio" && goto menu
      
   ) else (
      goto crear
   )
::menu en el que se crea el directorio si este no existiese
:crear
echo "Desea crear el directorio [S/N]"

choice /m "Elige opcion" /C:sn

if errorlevel 2 echo "Okay" && goto menu
if errorlevel 1 mkdir %var2% && goto menu


:Calculadora


echo "a.- Suma"
echo "b.- Resta"
echo "c.- Multiplicacion"
echo "d.- Division"
echo "e.- Salir de calculadora"

choice /m "Elige opcion" /C:abcde

if errorlevel 5 goto menu
if errorlevel 4 goto Division
if errorlevel 3 goto Multiplicacion
if errorlevel 2 goto Resta 
if errorlevel 1 goto Suma

:Suma
set /p numero1="Introduce un numero: "
set /p numero2="Introduce otro numero: "
set /a suma=%numero1%+%numero2%
echo "Resultado: %suma%"
goto Calculadora

:Resta
set /p numero1="Introduce un numero: "
set /p numero2="Introduce otro numero: "
set /a Resta=%numero1%-%numero2%
echo "Resultado: %resta%"
goto Calculadora

:Multiplicacion
set /p numero1="Introduce un numero: "
set /p numero2="Introduce otro numero: "
set /a Multiplicacion=%numero1%*%numero2%
echo "Resultado: %Multiplicacion%"
goto Calculadora

:Division
set /a Division=%numero1%/%numero2%
echo "Resultado: %Division%"
goto Calculadora

:fin
pause