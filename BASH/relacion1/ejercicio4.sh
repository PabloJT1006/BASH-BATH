#!/bin/bash
archivo="hola"
echo "Escriba el nombre del archivo que quiere buscar en el directorio actual"
read archivo
find ./$archivo
