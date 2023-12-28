@ECHO off
:inicio 
echo "a.- Ficheros ocultos"
echo "b.- Atributo de lectura"
echo "c.- Solo directorios"
echo "d.- Ordenar"
echo "e.- Busqueda de ficheros de texto"
echo "f.- Salir"




choice /m "Elige opcion" /C:abcdef

if errorlevel 6 echo "Adios shavale" goto fin 
if errorlevel 5 dir c:\*.txt & goto inicio 
if errorlevel 4 echo "Vas a salir" & goto inicio 
if errorlevel 3 dir c:\ /a:d goto inicio
if errorlevel 2 attrib +r  & goto inicio 
if errorlevel 1 dir c:\ /a:h & goto inicio

:fin
pause