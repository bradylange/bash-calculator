#!/bin/bash
#This script calculates given input with a given operator considering if the argument is legal.

vari1="$1"
vari2="$2"
operator="$3"

# This line checks to see if arguments are not in the variables
if [[ -z "$1" || -z "$2" || -z "$3" ]]
then
	echo "Usage ERROR - ./calc.sh variable one, variable two, or an operator is missing." >&2
	
# This line checks to see if the operator given is legal
else
	if ! [[ "$3" = "*" || "$3" = "%" || "$3" = "/" || "$3" = "-" || "$3" = "+" ]]
	then
		echo "Operator ERROR - ./calc.sh: You have an invalid operator!" >&2
		exit 1
	fi
fi

#This line validates if the two parameters are whole numbers (integers)
if ! [[ "$1" =~ ^[0-9]+$ || "$2" =~ ^[0-9]+$ ]]
then
	echo "Usage ERROR: ./calc.sh: Your input must be of the type integer!"
	exit 2
fi

vari3=$(( $vari1 $operator $vari2 ))
echo "$vari3"

exit 0 
