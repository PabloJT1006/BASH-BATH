@ECHO off
:inicio 
echo "A.- Escanear pen-drive"
echo "B.- Editor de textos"
echo "C.- Estructura de ficheros y directorios"
echo "D.- Salir"

choice /m "Elige opcion" /C:ABCD

if errorlevel 4  echo "Vas a salir" & exit 
if errorlevel 3 tree & goto inicio & cls
if errorlevel 2 notepad "MENU.TXT"  & goto inicio & cls
if errorlevel 1 chkdsk E:\ & goto inicio & cls