#!/bin/bash 
for linea in `cat /etc/passwd` 
	do 
		usuario=`echo $linea|cut -d: -f1` 
		shell=`echo $linea|cut -d: -f7` 
		valor="/bin/$1" 

		if [[ $valor == `echo $shell` ]] 
			then 
			echo $usuario >> temp.txt 
		fi 
	done 
cat temp.txt|sort 
rm temp.txt