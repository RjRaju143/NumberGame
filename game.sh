#!/bin/bash

biggest=100
guess=0
guesses=0
typeset -i num=0
number=$(($$ % $biggest))
echo "Guess number between 0-100"
for (( i = 0; i < 10; i++ )); do
	num=num+1
	echo -n "$num. Enter Your Number : " ; read guess
	if [ "$guess" -lt $number ] ; then
		echo "Try bigger"
	elif [ "$guess" -gt $number ] ; then
		echo "Try smaller"
	else
		echo "Right!! Guessed $number in $guesses guesses"
		break
	fi
	guesses=$(($guesses + 1))
done
