#!/bin/bash
if [$# -ne $2]
then 
  echo "Ingresa solo dos parametros"
  exit
fi

if [ $1 = $2 ]
then 
  echo "Las cadenas son iguales"
else
  echo "No son iguales"
fi
