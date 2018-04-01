#!/bin/bash


echo "Enter a password:"
read password
len="${#password}"

if test $len -ge 8 ; then
echo "$password" | grep -q [0-9]

if test $? -eq 0 ; then
echo "$password" | grep -q [A-Z]

if test $? -eq 0 ; then
echo "$password" | grep -q [a-z]

if test $? -eq 0 ; then
echo "password accepted"
else
echo "password should contain a lower case letter"
fi
else
echo "password should contain a upper case letter"
fi
else
echo "password should contain a number"
fi
else
echo "password should be at least 8 characters"
fi
