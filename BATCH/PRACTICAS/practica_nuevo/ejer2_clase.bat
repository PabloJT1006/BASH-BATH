set /p var="Dame un fichero: "

type %var%>nul
if errorlevel 1 echo %var% no es un fichero & goto menu
if errorlevel 0 goto ordena


:menu
ec