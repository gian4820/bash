#!/bin/bash

echo "Add two numbers, and I'll say if are equal or not"
echo "Add number 1: "
read n1
echo "Add number 2: "
read n2
if [ $n1 == $n2 ]
then
    echo "Numbers are equal"
else
    echo "Numbers are differents"
fi