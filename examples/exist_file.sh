#!/bin/bash
file=bmw.txt
echo "The file exist?"
if [ -f $file ]
then
    echo "The file $file exists"
else
    echo "The file $file does not exist"
fi


echo ""
echo "If the file exists, how is the size? "
if [ -s $file ]
then
    echo "The file $file is not zero size."
else
    echo "The file $file is empty"
fi


echo ""
echo "Does the file have read permissions?"
if [ -r $file ]
then
    echo "The file has read permissions"
else
    echo "The file doesn't have read permissions"
fi


echo ""
echo "Does the file have write permissions?"
if [ -w $file ]
then
    echo "The file has write permissions"
else
    echo "The file doesn't have write permissions"
fi


echo ""
echo "Does the file have execute permissions?"
if [ -x $file ]
then
    echo "The file has execute permissions"
else
    echo "The file doesn't have execute permissions"
fi
