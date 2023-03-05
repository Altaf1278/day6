#!/bin/bash

function is_palindrome {
    num1=$1
    num2=$2
    rev_num1=0
    rev_num2=0
    while [ $num1 -gt 0 ]
    do
        remainder=$((num1 % 10))
        rev_num1=$((rev_num1 * 10 + remainder))
        num1=$((num1 / 10))
    done
    while [ $num2 -gt 0 ]
    do
        remainder=$((num2 % 10))
        rev_num2=$((rev_num2 * 10 + remainder))
        num2=$((num2 / 10))
    done
    if [$rev_num1 -eq $1 ] && [ $rev_num2 -eq $2]; then
        echo "The two numbers are palindromes."
    else
        echo "The two numbers are not palindromes."
    fi
}


