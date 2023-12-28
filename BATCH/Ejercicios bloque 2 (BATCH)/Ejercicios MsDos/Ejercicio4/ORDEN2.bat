:: 4.- Modificar el fichero anterior y llamarlo ORDEN2.BAT para que el nombre del fichero
:: a comprobar si existe sea un parámetro que introduciremos por teclado.

@echo off
dir /s c:\ | find /i /c "%1"
set valor=%1
if exist %valor% sort /r %valor%
if not exist %valor% echo "No existe el archivo " %valor%

REM find /c (La C contabiliza si hay o no archivos.)
REM Si es un archivo o un directorio simple no se ponen %nombre% esto es solo para PARÁMETROS
REM Al crear una variable (valor) es un PARAMETRO, por lo que debemos ponerlo entre %valor%
REM Poniendo @echo off no te sale el código en el CMD (queda más limpio)