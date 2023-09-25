#!/bin/bash

# This script print out all primary numbers up until chosen limit

echo "Enter limit:"
read limit

echo "Primary numbers from 2 up to $limit are: "
for ((num=2; num<=$limit; num++))
  do
    primary=1
    for ((i=2; i<=$num/2; i++))
      do
        if [ $((num%i)) -eq 0 ]
          then
          primary=0
          break
        fi
      done
      if [ $primary -eq 1 ]
      then
        echo $num
      fi
done
