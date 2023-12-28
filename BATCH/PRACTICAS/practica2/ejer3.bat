@echo off
:inicio
set /p var1="Introduce un archivo"
set /p var2="Introduce un directorio"
if "%var1%"=="" (
   echo "Debes introducir un parametro"
   goto inicio
   cls
)
if "%var2%"=="" (
   echo "Debes introducir dos parametros"
   goto inicio
   cls
)

if exist "%var1%" (
   if exist %var2% (
      echo "Se copiara el fichero en el directorio indicado "
      copy %var1% %var2%
      echo "Adios"
      exit
   ) 
) 

