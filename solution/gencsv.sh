#!/bin/bash

start=$1
end=$2
filename="inputFile"


> $filename

for ((i=start; i<=end; i++))
do
  echo "$i, $((RANDOM % 1000))" >> $filename
done
