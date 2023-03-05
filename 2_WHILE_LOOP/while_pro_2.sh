#!/bin/bash

echo "Think of a number between 1 and 100"
read -p "Press Enter when ready."

magic_number=0
start=1
end=100

while [ $magic_number -ne 1 ]
do
    guess=$((($start + $end)/2))

    read -p "Is your number less than $guess? (yes or no) " answer

    if [ "$answer" = "yes" ]
    then
        end=$(($guess - 1))
    elif [ "$answer" = "no" ]
    then
        start=$(( $guess + 1 ))
    else
        echo "error. Please enter yes or no"
        continue
    fi

    if [ $start -eq $end ]
    then
        magic_number=1
        echo "Your number is $start!"
    fi
done
