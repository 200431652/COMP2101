#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
usname="$USER" #Use of the environment variable to dynamically obtain username
hostname="$(hostname)"
# variable and command to obtain hostname 
day=$(date +%A) 
#Using date command to generate day of the week
currenttime=$(date +%I:%M\ %p)
#using date command to obtain date
###############
# Main        #
###############
#Use of If else command to test the day name and add a custom line to print the message according to it.
#Use of If else command to test the day name and add a custom line to print the message according to it.
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, good boy $usname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, sys admin $usname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, linux admin $usname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, service admin $usname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, linux networking admin $usname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, GPO admin $usname!"
else
csay="Welcome to planet $hostname, power user $usname!"
fi
cowsay "$csay It is $currenttime on $day ."
