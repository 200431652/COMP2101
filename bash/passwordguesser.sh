#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

successd="successdful attempt.."
faild="Error.. Please try again..."
referenceString="Password" #Building a variable to keep  password
read -s -p "Enter A Password:" myString #to get userinput silently for password and then save into $myString
echo
#use of if-else condition to check 5 times input is accurate or not by relating with $referenceString.
if [ $myString = $referenceString ]; then
	echo "$successd"
	echo
 else
	echo "$faild"
	read -s -p "Try again:::" myString
 if [ $myString = $referenceString ]; then
	echo "$successd"
	echo
  else
	echo
	echo "$faild"
	read -s -p "Try again:::" myString
  if [ $myString = $referenceString ]; then
	echo "$successd"
	echo
 else
	echo
	echo "$faild"
   read -s -p "Try again:::" myString
if [ $myString = $referenceString ]; then
	echo "$successd"
	echo
  else
	echo
	echo "$faild"
	read -s -p "Try again:::" myString
  if [ $myString = $referenceString ]; then
	echo "$successd"
	echo
 else
	echo
	echo "failed attempt. Try again next time.."
fi
fi
fi
fi
fi
