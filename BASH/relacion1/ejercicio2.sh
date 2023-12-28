#!/bin/bash
salir="no"

while [ $salir != "si" ];do
    ./ejercicio1.sh
    echo "Quieres salir?(si/no)"
    read salir
done