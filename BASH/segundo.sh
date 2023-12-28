#!/bin/bash

menu() {
read
clear
echo "A. Fichero"
echo "B. Directorio"
echo "C. Salir"
echo "Introduce valor";read var
}

var="entrar"
while [ $var != "c" -o $var != "C" ]
do
    menu
    case $var in
	a|A)for j in $*
	    do
		if [ -f $j ];then
		  echo $j " es un fichero"
		  cat $j
		fi
	    done;;
	b|B)for j in $*;do
		if [ -d $j ];then
		  echo $j " es un directorio"
		  ls $j
		fi
	    done;;
	c|C)echo "Salimos del menu"
	    break;;
    esac
done
echo "Introduce un numero";read num
potencia=`echo "$num^4"|bc  -l`
echo $potencia " es la potencia a 4"
division=`echo "scale=2;$potencia/($num+1)"|bc -l`
echo $division " es la division con 2  decimales"
