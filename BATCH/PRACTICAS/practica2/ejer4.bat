@echo off 
:inicio
if "%1"=="" ( 
   :menu 
   echo "A.-Abrir editor de texto"
   echo "C.-Indicar la fecha u hora del sistema"
   echo "D.-Salir"

   choice /m "Elegir una opcion: " /c ACD
   if errorlevel 3 goto Salir
   if errorlevel 2 goto fecha
   if errorlevel 1  notepad && goto menu





) else (

   :menu2 
   echo "A.-Abrir editor de texto"
   echo "B.-Mostrar contenido de un fichero"
   echo "C.-Indicar la fecha u hora del sistema"
   echo "D.-Salir"

   choice /m "Elegir una opcion: " /c ABCD
   if errorlevel 4 goto Salir
   if errorlevel 3 goto fecha
   if errorlevel 2 goto fichero type %1 goto menu2
   if errorlevel 1  notepad %1 & goto menu2

)
:fecha

   echo "A.-Hora" 
   echo "B.-Fecha"
   choice /m "Elegir una opcion: " /C AB
   if errorlevel 2 time /t & goto inicio
   if errorlevel 1 date /t & goto inicio

:Salir
   echo "Hasta luego"
   pause