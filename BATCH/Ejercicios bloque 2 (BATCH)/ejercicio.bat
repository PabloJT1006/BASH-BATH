@echo off

if "%1"==""(
    set /p var1=
    set /p var2=
    set /p var3=
    goto mostrar
)

if "%2"==""(
    set /p var1=
    set /p var2=
    set /p var3=
    goto mostrar
)

if "%3"==""(
    set /p var1=
    set /p var2=
    set /p var3=
    goto mostrar
)

set var1=%1
set var2=%2
set var3=%3

:mostrar
for %%R in (%var1%,%var2%,%var3%) do (
    type %%R > nul
    if errorlevel 1 (
        echo %%R no es fichero
    ) else (
        type %%R
    )
)