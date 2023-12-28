@ECHO off
:inicio 
if "%1"=="" (
   set /p var1="Introduce la ruta de un programa para ejecutar: "
   set /p var2="Introduce un archivo que necesite de otro parametro para realizarse: "
   set /p var3="Introduce un parametro para utilizar junto con el 2º parametro: "
   set /p var4="Introduce un parametro para añadirlo al quinto: "
   set /p var5="Introduce el nombre del archivo donde quieres que se guarden los 3 anteriores parametros: "

   goto menu
)
if "%2"=="" (
   set var1=%1
   set /p var2="Introduce un parametro: "
   set /p var3="Introduce un parametro: "
   set /p var4="Introduce un parametro: "
   set /p var5="Introduce un parametro: "

   goto menu
)
if "%3"=="" (
   set var1=%1
   set var2=%2
   set /p var3="Introduce un parametro: "
   set /p var4="Introduce un parametro: "
   set /p var5="Introduce un parametro: "
   goto menu
)
if "%4"=="" (
   set var1=%1
   set var2=%1
   set var3=%3
   set /p var4="Introduce un parametro: "
   set /p var5="Introduce un parametro: "
   goto menu
)
if "%5"=="" (
   set var1=%1
   set var2=%2
   set var3=%3
   set var4=%4
   set /p var5="Introduce un parametro: "
   goto menu
)

set var1=%1
set var2=%2
set var3=%3
set var4=%4
set var5=%5
::todo esto obliga a que si o si se introduzcan las 5 variables

:menu
echo "a.- Programa"
echo "b.- Archivo Batch"
echo "c.- Unión de archivos"
echo "d.- Salir"
choice /m "Elige opcion" /C:abcd

if errorlevel 4 goto fin
if errorlevel 3 goto union
if errorlevel 2 goto archivo 
if errorlevel 1 goto programa

::ejecuta un programa introducido en la primera variable
:programa
start %var1%
if errorlevel 1 echo "No has introducido programa válido"
goto menu

:archivo
::comando para controlar si la variable 2 es .bat o no (Se puede hacer con todo tipo de ficheros)
dir %var2% | find /i ".bat" > nul

if errorlevel 1 (
   echo "No es archivo por lotes"
) else (
::llama al archivo bat y tambien al parametro necesario para ejecutar el bat
   call %var2% %var3%
)
goto menu

::Manda lo introducido en la variable 1,2,3 y 4 a la variable 5
:union
for %%c in (%var2%,%var3%,%var4%) do (
   type %%c >> %var5%
)
goto menu

:fin
pause

