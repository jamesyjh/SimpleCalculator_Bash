#!/bin/bash
# Author: James Hong
# Program Name: Simple Calculator
# Usage: ./SimpleCalculator.sh
# Date Created: August 16, 2019

# This program prompts the user to perform one of 4 binary operations until they choose to exit the script


echo -e "Welcome to Simple Calculator!\n"
echo -e "https://github.com/jamesyjh/SimpleCalculator_Bash"
echo -e "Created by James Hong. August 2019. \n\n"
sleep 0.5s

while [ !${repeat} ];
do
	until [ "$choice" = "0" ];
	do

	echo -e "Please choose one of the following options: "
	echo -e "1- Addition"
	echo -e "2- Subtraction"
	echo -e "3- Multiplication"
	echo -e "4- Division"
	echo -e "0- Exit program"

	read choice
	case $choice in 

		1)
			echo "ADDITION"
			echo -e "Enter the first integer value and press ENTER: "
			read num1
			while ! [[ "$num1" =~ ^[0-9]+$ ]];
			do
				echo -e "Please enter a valid first integer from 0-9"
				read num1
			done
			echo -e "Enter the second integer value and press ENTER: "
			read num2
			while ! [[ "$num2" =~ ^[0-9]+$ ]];
			do
				echo -e "Please re-enter a valid second integer from 0-9"
				read num2
			done
			let sum=$num1+$num2
			echo "Sum of $num1 + $num2 is $sum"
			break
		;;
	
		2)
			echo "SUBTRACTION"
			echo -e "Enter the first integer value and press ENTER: "
			read num1
			while ! [[ "$num1" =~ ^[0-9]+$ ]];
			do
				echo -e "Please enter a valid first integer from 0-9: "
				read num1
			done
			echo -e "Enter the second integer value and press ENTER: "
			read num2
			while ! [[ "$num2" =~ ^[0-9]+$ ]];
			do
				echo -e "Please re-enter a valid second integer from 0-9: "
				read num2
			done
			let diff=$num1-$num2
			echo "Difference of  $num1 - $num2 is $diff"
			break
			
		;;
	
		3)
			echo "MULTIPLICATION"
			echo -e "Enter the first integer value and press ENTER: "
			read num1
			while ! [[ "$num1" =~ ^[0-9]+$ ]];
			do
				echo -e "Please enter a valid first integer from 0-9: "
				read num1
			done
			echo -e "Enter the second integer value and press ENTER: "
			read num2
			while ! [[ "$num2" =~ ^[0-9]+$ ]];
			do
				echo -e "Please re-enter a valid second integer from 0-9: "
				read num2
			done
			let prod=$num1*$num2
			echo "Product of $num1 * $num2 is $prod"
			break
			
		;;
	
		4)
			echo "DIVISION"
			echo -e "Enter the first integer value and press ENTER: "
			read num1
			while ! [[ "$num1" =~ ^[0-9]+$ ]];
			do
				echo -e "Please enter a valid first integer from 0-9: "
				read num1
			done
			echo -e "Enter the second integer value from 1-9 and press ENTER: "
			read num2
			while ! [[ "$num2" =~ ^[1-9]+$ ]];
			do
				if [[ "$num2" -eq "0" ]]; then
					echo -e "Divisor cannot be 0"
				fi
				echo -e "Please re-enter a valid second integer from 1-9: "
				read num2

			done
			quot=$(bc<<<"scale=8;$num1/$num2")
			echo "Quotient of $num1 / $num2 is $quot"
			break
		;;
		
		0)
			echo "See-ya!"
			exit	
		;;
	
		*)
			echo "Not a valid entry."
		;;
esac

echo "Please re-enter one of the following:"
sleep 1s
clear
done

echo "Would you like to try again?: Y or N (Case insensitive)::"
read input
if [ $input == "n" ];
then
	repeat=true
	break
fi

done
echo "Good Bye!"
