#! /bin/bash
# This script prints out all even numbers between the starting number and ending number.
# For all even numbers, if the number is divisible by 7, the script prints "orange" after the number.
# For all even numbers, if the number is divisible by 11, the script prints "banana" after the number.
# For all even numbers, if the number is divisible by 12, the script prints "pear" after the number.
# script name: evenfruit.sh
# written by: Clare Buckley

#a) Supply the script with two integer arguments from command line: the starting integer and ending integer
read -r -p "Please enter a starting integer followed by an ending integer: " startInt endInt extraInt
if [[ -z $startInt && -z $endInt ]]; then
	read -r -p "No integers found! Please enter a starting integer followed by an ending integer: " startInt endInt
elif [[ -z $endInt ]]; then
	read -r -p "Only one integer found! Please enter a starting integer followed by an ending integer: " startInt endInt
elif [[ -n $extraInt ]]; then
	read -r -p "Too many integers! Please enter a starting integer followed by an ending integer: " startInt endInt
fi 

# Loops through numbers between the starting number and ending number
for ((i=startInt; i<=endInt; i++))
do

orange=""
banana=""
pear=""

#b) Print out all even numbers between the starting number and ending number
	if [ $((i % 2)) == 0 ] 
	then
	#c) For all the even numbers, if the number is divisible by 7, print "orange" after the number
		if [ $((i % 7)) == 0 ] 
		then
			orange="orange "
		fi
    #d) For all the even numbers, if the number is divisible by 11, print “banana” after the number
        if [ $((i % 11)) == 0 ] 
		then
			banana="banana "
		fi
    #e) For all the even numbers, if the number is divisible by 13, print “pear” after the number
        if [ $((i % 13)) == 0 ] 
		then
			pear="pear "
		fi 

    echo "$i $orange$banana$pear"
	fi

done

#f) After the list, print out the string “What is with the fruit obsession?”
echo "What is with the fruit obsession?"
