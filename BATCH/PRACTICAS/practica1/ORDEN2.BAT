@echo off
if %1 == "" echo "El archivo esta vacio"

if exist %1 ( echo  "El archivo existe" )
if not exist %1 ( echo "El archivo no existe")
