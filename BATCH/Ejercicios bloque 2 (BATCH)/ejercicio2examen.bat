@echo off

set /p var ="Dame un fichero"

type %var%>nul
if errorlevel 1 echo %var% no es fichero & goto menu
if errorlevel 0 goto ordena

:menu
A. Ordenar
B. Buscar
C. Potencia
D. fin

choice /m "Elige" /C:ABCD
if errorlevel 4
if errorlevel 3
if errorlevel 2
if errorlevel 1 goto ordena

:ordena
A: Ascendente
B: Descendente
C: Columna

if errorlevel 3 set/p var2="Numero" & set /+ %var2% %var% & goto menu
if errorlevel 2 sort /r %var% & goto menu
if errorlevel 2 sort %var% & goto menu