#!/bin/bash
#Esto es un comentario
numero=31
echo "Introduce valor"
read valor
test -f $valor 
if [ $? -eq 0 ]
then
  echo $valor " es un fichero"
  cat $valor
else
  if [ -d $valor ];then
     echo $valor " es un directorio"
     ls $valor
  fi
fi
echo "Introduce numero"
read numero2
suma=$(($numero+$numero2))
echo "La suma de " $numero " con " $numero2 " es " $suma
fecha=`date +%Y`
echo "El año actual es: " $fecha
