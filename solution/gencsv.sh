#!/bin/bash

start=$1
end=$2
filename="inputFile"

# Clear the file if it exists
> $filename

# Generate the CSV file with index and random number
for ((i=start; i<=end; i++))
do
  echo "$i, $((RANDOM % 1000))" >> $filename
done
