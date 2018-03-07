#!/bin/bash 
printf "Pulsa una tecla\n" 
read tecla 
case $tecla in 
	[º0-9\'¡]) 
		echo "Primera fila" ;;
	[qwertyuiop\`+]) 
		echo "Segunda fila" ;;
	[asdfghjklñ´ç]) 
		echo "Tercera fila" ;; 
	[\<zxcvbnm,.-]) 
		echo "Cuarta fila" ;; 
	*) echo "Otra linea" ;; 
esac