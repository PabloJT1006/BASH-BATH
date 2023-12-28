@echo off
:inicio
::para comprobar si no se ha introducido parametro
if "%1"=="" (
   set /p var1="Introduce un fichero o directorio: "
)

::pase lo que pase se guarda el parametro en la variable
set var1=%1

::comprueba si el parametro esta en la carpeta de trabajo
dir | find /i "%var1%" > nul
   if errorlevel 1 goto noesta
::esto seria como si fuera if errorlevel 0 
dir %var1%
goto fin
::---------------------------------------------------------------------
:noesta
choice /m "Quieres buscarlo?" /C:sn
   if errorlevel 2 echo %var1% no esta y no se ha buscado & goto fin

::Esto seria como if errorlevel 1 de noesta
::este dir busca en todo el disco duro
dir "\%var1%*" /s> nul 
if errorlevel 1 echo %var1% no esta y se ha buscado & goto fin
echo si existe
echo %var1% >> existen.dat
::----------------------------------
:fin
pause