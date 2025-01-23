#!/bin/bash
echo "Looping---------------"
for VAR in ruby java php js html
do
sleep 1
echo "--------------------------"
echo "Looping for $VAR"
echo "Done"
echo "--------------------------"
done
echo "--------------------------"
echo "--------------------------"
MYUSER="alpha beta gamma theta"
for usr in $MYUSER
do
echo "ADDING $usr"
useradd $usr
echo "-------------------------"
echo "ADDING ID"
id $usr
echo "Done"
done
