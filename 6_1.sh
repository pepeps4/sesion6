#! /bin/bash
if $[ $# == 2 ];
then
      if $[ -d $1 ] && [ $2 -eq $2 ];
      	then
            find $1 -size -$2 > archivosSizN.txt
      else
            echo "Los argumentos son invalidos"
      fi
else
      echo "El numero de argumentos no es valido"
fi