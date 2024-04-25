#! /bin/bash

echo "Hello bash script"
echo "******************"

#Enviamos lo que dice el echo en el file.txt
echo "Esto lo enviamos a este archivo " > file.txt

#Agregamos lo que dice en el echo. en el file.txt
echo "Aqui le agregamos esta info al file.txt " >> file.txt

: '
Multiple line

Comment
'

#if statement
echo ""
echo "If statement result:"
count=5
if [ $count -eq 3 ]
then
    echo "Count es true"
else
    echo "Count es false"
fi


#if statement not equal
echo ""
echo "If statement, not equal result:"
if [ $count -ne 3 ]
then
    echo "Count es true"
else
    echo "Count es false"
fi

#if statement greather that
echo ""
echo "If statement, greater than"
if [ $count -gt 3 ]
then
    echo "Count es true"
else
    echo "Count es false"
fi

#if statement minor that
echo ""
echo "If statement, greater than"
if (( $count < 3 ))
then
    echo "Count es true"
else
    echo "Count es false"
fi


#Else if statement minor that
echo ""
echo "If statement, greater than"
if (( $count < 3 ))
then
    echo "Count es menor a tres"
elif (( $count <4 ))
then
    echo "Count es menor a cuatro"
else
    echo "Count es mayor que 4"
fi



#if else statement AND
echo ""
age=13
echo "Age: " $age
echo "if else statement AND"
if [ $age -lt 15 ] && [ $age -gt 10 ]
then
    echo "Age its into 10 and 15"    
else
    echo "Age isnt into 10 and 15"
fi


#if else statement OR
echo ""
age=13
echo "Age: " $age
echo "if else statement OR"
if [ $age -lt 15 -o $age -gt 10 ]
then
    echo "Age its into 10 and 15"    
else
    echo "Age isnt into 10 and 15"
fi



#Number of animals Do While
echo ""
animals=0
echo "Do while statement"
while [ $animals -lt 6 ] 
do
    echo $animals
    animals=$(( animals+1 ))
done


#Number of animals until
echo ""
animals=2
echo "Do while statement"
until [ $animals -ge 6 ] 
do
    echo $animals
    animals=$(( animals+1 ))
done


#For statement
echo ""
echo "For statement"
for i in {0..20..3}
do
    echo $i
done


#For otherwise
echo ""
echo "Otherwise FOR"
for (( i=0; i<5; i++ ))
do
    echo $i
done


