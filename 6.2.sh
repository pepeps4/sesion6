#!/bin/bash 
es_directorio=`test -d $1 && echo true || echo false` 

if [ $# -eq 1 ] 
      then 
      if [ $es_directorio == "true" ] 
            then 
                  for i in `ls $1` 
                        do 
                              es_archivo=`test -f $i && echo true || echo false`
                              es_enlace=`test -h $i && echo true || echo false` 
                              es_subdirectorio=`test -d $i && echo true || echo false` 

                              if [ $es_enlace == "true" ] 
                                    then echo "Enlace : $i"      
                              elif [ $es_archivo == "true" ] 
                                    then echo "Archivo regular : $i" 
                              elif [ $es_subdirectorio == "true" ] 
                                    then echo "Directorio : $i" 
                              fi 
                        done 
      else echo "El directorio no existe"

      fi 
      
      else 
            echo "Numero incorrecto de parametros" 
fi