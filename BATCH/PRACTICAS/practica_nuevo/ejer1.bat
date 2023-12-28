:inicio

if "%1"=="" (
   set /p var1="Introduce un fichero o directorio: "
)

set var1=%1




if exist %var1% (
      echo "El parametro existe"
      type %var1% >nul  
      if errorlevel 1 dir %var1% goto fin 
      if errorlevel 0 type %var1% goto fin 

   ) else (
   goto menu
      )

:menu

echo "a.-Salir y mostrar"
echo "b.-Buscar"

choice /m "El parametro no se encuntra en la carpeta, elige opcion" /C:ab

if errorlevel 1 goto mostrar
if errorlevel 2 goto buscar





