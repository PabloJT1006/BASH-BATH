#-a es igaul al and y para comprobar permisos primero se pone el permiso a comprobar y depues el que
#el -o es com el or -f comprueba si es fichero 
#para que no aparezca error por pantalla, escribir al lado de dicha linea 2>/dev/null
echo "Indique el fichero a copiar";read fich
echo "Indique el directorio donde se quiere hacer la copia"; read direct
if [ ! -e $fich  ]
then 
    echo "El fichero no existe"
    exit
elif [! -d $direct]
then
    echo "El directorio no existe"
    exit
fi

cp $fich $direct

