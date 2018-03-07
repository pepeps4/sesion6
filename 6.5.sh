#!/bin/bash 
num=0 
while [ $num -lt 1 ] || [ $num -gt 10 ] 
	do 
		printf "Mete un numero del 1 al 10\n" 
		read num 
done
printf "Muy bien máquina has conseguido meter un numero entre 1-10 \n despues de hacer varios intentos para ver si he sabido hacer un do while bien\n"