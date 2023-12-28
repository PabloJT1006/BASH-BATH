:: 5.- Crea un fichero llamado MOVER.BAT que mueva todos los ficheros con extensión
:: TXT de vuestro pen-drive a un directorio llamado MIDISCO del disco duro. Al final
:: mostrar un mensaje diciendo se ha podido realizar la operación o no

@echo off
move e:\*.txt c:\Users\ruben\Desktop\MIDISCO

if errorlevel 1 echo "Se ha producido un error" & goto fin
if errorlevel 0 echo "Se ha movido los ficheros a midisco" & goto fin

:fin

