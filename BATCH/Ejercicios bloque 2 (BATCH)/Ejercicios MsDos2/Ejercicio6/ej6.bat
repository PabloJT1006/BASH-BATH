:: 6. Crear el siguiente menú:
:: a. Ficheros ocultos
:: b. Atributo de lectura
:: c. Sólo directorios
:: d. Ordenar
:: e. Búsqueda de ficheros de texto
:: En la primera opción se mostrará los ficheros ocultos del directorio raíz, en la
:: segunda se realizará el cambio a sólo lectura del directorio de trabajo, en la tercera
:: sólo se mostrará los directorios creados, en la cuarta se mostrará ordenado el
:: contenido del directorio por fecha de creación, y en la quinta sólo se mostrará los
:: ficheros de extensión .TXT

@echo off

:inicio

echo 1  A.- Ficheros ocultos.
echo 2  B.- Atributo de lectura.
echo 3  C.- Solo directorios.
echo 4  D.- Ordenar.
echo 5  E.- Busqueda de ficheros de texto.

choice /m "Seleccione una opcion 1-4" /C:12345

if errorlevel 5 goto op5 
if errorlevel 4 goto op4 
if errorlevel 3 goto op3 
if errorlevel 2 goto op2
if errorlevel 1 goto op1

:op5
dir c:\*.txt
pause
goto inicio

:op4
dir c:\ /o:d
pause
goto inicio

:op3
dir c:\ /a:d
pause
goto inicio

:op2
attrib +r
pause
goto inicio

:op1
dir c:\ /a:h
pause
goto inicio