#!/bin/bash
echo "Add a number"
read num
case $num in
    10)
        echo "it's 10"
        ;;
    50)
        echo "it's 50"
        ;;
    80)
        echo "it's 80"
        ;;
    *)
        echo "it's another number than 10, 50, 80"
        ;;
esac