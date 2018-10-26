#!/bin/bash
#
#This is the Report Title
echo "This is a Report for the Memory"
echo " "

#This is all the RAM information from the system
echo "This is all the information for the RAM memory"
free -m
echo " "

#This is the total amount of RAM installed and free RAM
echo "The total amount of RAM memory is:"
awk '/^Mem/ {print $2}' <(free -m)
echo "The free RAM is:"
awk '/^Mem/ {print $4}' <(free -m)
echo ""

#This is the sum of used and cached RAM
echo "The sum of used and cached RAM is:"
awk '/^Mem/ {print $3+$6}' <(free -m)
echo " "

#This is the difference between available and free memory
echo "The diference between available and free memory is:"
awk '/^Mem/ {print $7-$4}' <(free -m)
echo " "

#Calculate and display how much RAM is shared as a percentage of the RAM used
echo "Shared as a percentage of the RAM used:"
awk '/^Mem/ {print $5/$3 *100}' <(free -m)
echo " "

#Calculate and display how much RAM is used as a percentage of the total RAM
echo "Used as a percentage of the total RAM:"
awk '/^Mem/ {print $3/$2 *100}' <(free -m)
echo " "

#Calculate and display how much RAM is used for cache as a percentage of the total RAM
echo "Cache as a percentage of the total RAM:"
awk '/^Mem/ {print $6/$2 *100}' <(free -m)
