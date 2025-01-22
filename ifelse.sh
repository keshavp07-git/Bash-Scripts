#!/bin/bash
read -p "Enter a number: " NUM
echo
if [ $NUM -gt 100 ]; then
echo "You have entered the if block"
echo "Your number is greater than 100"
uptime
else
echo "You have entered the else block"
fi
echo "Execution Completed"
