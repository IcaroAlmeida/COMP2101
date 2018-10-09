#!bin/bash
#
#This script provides an example how to do the exercise for the slide
titles=("Supreme Commander" "Boss" "Big Boss" " Student" "Nice Guy" "Mr.")
title_index=$(($RANDOM % ${#titles[@]}))
title=${titles[$title_index]}

hostname=$(hostname)
myname="Icaro"
today=$(date +%A)

echo welcome_message="

Welcome to planet $hostname, $title $myname!
Today is $today.
"
