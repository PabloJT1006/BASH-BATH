:: 3.- Crea un fichero llamado ORDEN.BAT que compruebe si existe el fichero
:: MICOLE.DAT y si es así, que lo ordene alfabéticamente de la Z a la A mostrándolo por
:: pantalla, y si no existe que muestre un mensaje diciéndolo.


@echo off
dir /s c:\ | find /i /c "MICOLE.DAT"
set valor="micole.dat"
if exist %valor% sort /r %valor%
if not exist %valor% echo "No existe el archivo " %valor%

REM find /c (La C contabiliza si hay o no archivos.)
REM Si es un archivo o un directorio simple no se ponen %nombre% esto es solo para PARÁMETROS
REM Al crear una variable (valor) es un PARAMETRO, por lo que debemos ponerlo entre %valor%
REM Poniendo @echo off no te sale el código en el CMD (queda más limpio)