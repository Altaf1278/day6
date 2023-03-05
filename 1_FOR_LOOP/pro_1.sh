#!/bin/bash

n=1
read -p "enter power " power


for ((i=1; i<=n; i++))
do
    power=$((power*2))
    echo "2^$i = $power"
done

