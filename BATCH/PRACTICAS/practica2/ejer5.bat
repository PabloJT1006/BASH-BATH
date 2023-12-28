@echo off
:inicio

if "%1"=="" (
   set /p var1="Introduce parametro: "
   set /p var2="Introduce parametro: "
   set /p var3="Introduce parametro: "
   goto ejecuta
)

if "%2"=="" (
   set var1=%1
   set /p var2="Introduce parametro: "
   set /p var3="Introduce parametro: "
   goto ejecuta
)

if "%3"=="" (
   set var1=%1
   set var2=%2
   set /p var3="Introduce parametro: "
   goto ejecuta
)

set var1=%1
set var2=%2
set var3=%3

:ejecuta
::se muestra el contenido de las 3 variables
for %%C in (%var1%,%var2%,%var3%) do (
   type %%C > nul
   if errorlevel 1 (  
      echo "Solo debes introducir ficheros" & goto fin 
      ) else (
         type %%C
      )

)

:fin
   pause