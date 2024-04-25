#!/bin/bash

echo "This is a for loop"
for i in 1 2 3 4 5 6 7; 
do
    echo "The number is: $i"
done

echo ""
echo "For loop between some numbers"
for i in {10..20};
do
    echo "The number is: $i"
done


echo ""
echo "Find the .sh files in the following dir"
for i in ./*.sh;
do
    echo $i
done