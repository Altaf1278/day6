#!/bin/bash

# Function to check if a number is prime
function is_prime {
    if [ $1 -le 1 ]; 
      then
        return 1
    fi
       for (( i=2; i<=$1/2; i++ )); 
     do
        if [ $(($1 % $i)) -eq 0 ]; 
      then
            return 1
        fi
     done
    return 0
}

# Function to get the palindrome of a number
function get_palindrome {
    num=$1
    rev=0
    while [ $num -ne 0 ]; do
        digit=$(( $num % 10 ))
        rev=$(( $rev * 10 + $digit ))
        num=$(( $num / 10 ))
    done
    echo $rev
}

# Take input from user
read -p "Enter a number:" num

# Check if the number is prime
if is_prime $num; then
    echo "$num is a prime number."

    # Get the palindrome of the number
    palindrome=$(get_palindrome $num)

    # Check if the palindrome is also prime
    if is_prime $palindrome; then
        echo "$palindrome is also a prime number."
    else
        echo "$palindrome is not a prime number."
    fi
else
    echo "$num is not a prime number."
fi
