#!/bin/bash
case $sentence in
    req*)
        echo "This is a requirement"
        ;;
    meet*)
        echo "This is a meeting"
        ;;
    *)
        echo "This is other thing..."
        ;;
esac