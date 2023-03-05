#!/bin/bash

read -p "Enter starting number: " start
read -p "Enter ending number: " end

echo "Prime numbers between $start and $end are:"

for (( num=$start; num<=$end; num++ ))
do
  is_prime=1
  for (( i=2; i<=num/2; i++ ))
  do
    if [ $((num%i)) -eq 0 ]
    then
      is_prime=0
      break
    fi
  done
  if [ $is_prime -eq 1 ]
  then
    echo $num
  fi
done
