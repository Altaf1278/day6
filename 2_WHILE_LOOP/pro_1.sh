#!/bin/bash
n=$1
echo "Powers of 2 up to 2^n or 256:"
i=0
while [ $i -le $n ] && [ $((2**i)) -le 256 ]; 
do
  echo "2^$i = $((2**i))" i=$((i+1))
done