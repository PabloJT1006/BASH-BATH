#!/bin/bash
echo "Introduce un fichero ";read fichero
echo "A. Borrar Fichero"
echo "B. Imprimir fichero"
echo "C. Salir"
echo "Introduce valor";read var


while [ : ]
do
    case $var in
    a|A) rm $fichero
        echo "Fichero borrado";;
    b|B) cat $fichero
        echo "Fichero impreso";;
    c|C)echo "Salir";break;;
    *)echo "Opcion incorrecta";break;;
    esac
    read var
done