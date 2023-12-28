@echo off
if "%1" =="" echo "Debes introducir 3 parametros" & goto FIN
if "%2" =="" echo "Debes introducir 2 parametros" & goto FIN
if "%3" =="" echo "Debes introducir 1 parametros" & goto FIN

for %%C in (%1,%2,%3) do (
    type %%C
)

:FIN
    pause


