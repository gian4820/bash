#!/bin/bash

echo "This is an example of a Repeat until while is true"

a=1

while [ $a -le 5 ]
do
    echo "The value of a is " $a
    a=$(($a+1))
done