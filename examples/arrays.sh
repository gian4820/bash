#!/bin/bash
echo "This is an Array"

declare -A car

car[BMW]=328
car[Mercedes]=c250
car[Toyota]=Corolla
car[Audi]=A3
echo "${car[Audi]}"


echo ""
echo "We will echo another Array of bikes"
bikes=('Santa Cruz', 'BMC', 'Scott')
for i in "${bikes[@]}";
do
    echo "$i"
done


echo "**************************************************************************"
declare -A players

echo "Add Futboll players to the following array"
echo "To continue press any key. To exit press 3"
read option
while (( $option != 3 ));
do
    echo "    1. Add new player, 
    2. Show players added,
    3. exit"
    read option
    if [ $option == 1 ] 
    then
        echo "Add a new Player:"
        let "count=count+1"
        read player
        players[$count]=$player

    elif [ $option == 2 ]
    then
        echo ""
        echo "The players are:"
        for i in "${players[@]}";
        do
            echo "$i"
        done



    else
        echo "You select another option"
    fi
done
echo "You EXIT with option 3"
