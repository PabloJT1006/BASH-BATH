:: 6.- Crea un fichero llamado EXISDIR.BAT que compruebe si existe un determinado
:: directorio, puedes usar tanto parámetro como variable. Si existe mostrar su contenido
:: y si no mostrar un mensaje indicándolo. 

@echo off

set valor= %1

if exist %valor% echo %valor%" es fichero o directorio" & goto comprueba
echo "El directorio no existe" & goto fin

:comprueba
type %valor% > nul
if errorlevel 1 echo %valor%" es un directorio" & dir %valor% & goto fin
echo %valor%" es un fichero"

:fin