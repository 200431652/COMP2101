#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

# for getting 3 numbers from user read commands has been used.
# read command with -p perameter will prompt user to insert the number
read -p "Insert input1 ? " num1 
read -p "Insert input2 ? " num2
read -p "Insert input3 ? " num3
sum=$((num1 + num2 + num3)) # making addition of 3 variables
product=$((num1 * num2 * num3)) # making product of 3 variable
# printing outputs
cat <<EOF
The sum of $num1 , $num2 and $num3 numbers is $sum
The product of $num1 , $num2 and $num3 numbers is $product
EOF
