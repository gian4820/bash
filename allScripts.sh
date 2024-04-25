#! /bin/bash

echo "#######------------->   HELLO SCRIPT   <---------------##################"
echo ""
echo "###########################   ECHO COMAND   ###########################"
echo ""

#this is a command
#si quiero correr el script como en debug mode, agregar al top, -x, asi: #! /bin/bash -x

echo "Welcome to Joe's bbq"
echo "My Favourite filme is \"Scream\" "


echo ""
echo "###########################   INFO TO ARCHIVE   ###########################"
echo ""


echo "Enviamos lo que dice el echo en el file.txt, y borra lo que tiene el file."
echo "Esto lo enviamos a este archivo, y borramos lo que tiene dentro " > readme.txt

echo "gregamos lo que dice en el echo. en el file.txt"
echo "Aqui le agregamos esta info al archivo, y no borra el contenido que tiene " >> readme.txt

: '
Multiple line

Comment
'

echo ""
echo "###########################   VARIABLES   ###########################"
echo ""

VAR="Hi! this is the variable named VAR"
echo $VAR

echo "We combine two variables into one"
a='This is my car'
b='is a BMW'
c="${a} ${b}"
echo "${c}"

echo "Let's concatenate these two vars too..."
d='Hi, my name is Jhon'
e=", and I'm 39 years old"
d+=$e
echo $d

VAR_PATH=$HOME
echo $VAR_PATH
ls -la $VAR_PATH

echo ""
echo "let command"
let  a=3 b=5 c=a+b
echo "$a $b $c"

echo ""
echo "###########################   ARITMETIC EXPRESIONS   ###########################"
echo ""

a=10
b=3
echo "$a+$b= " 
expr $a + $b
echo "$a-$b= " 
expr $a - $b
echo "$a*$b= " 
expr $a \* $b
echo "$a/$b= " 
expr $a / $b
echo "$a%$b= " 
expr $a % $b
echo "$a**$b= " echo $(($a ** $b))


echo "Add value to a variable"
VAR_NUM=$(($a+15))
echo $VAR_NUM

echo ""
echo "###########################   MULTILINE COMMANDS   ###########################"
echo ""

cat<<MULTILINE
The current working directory is $PWD
You are logged in as: $(whoami)
MULTILINE


echo ""
echo "###########################   IF   ###########################"
echo ""


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

echo ""

echo ""
echo "###########################   IF AND  ###########################"
echo ""

n5=5
if [ $n5 -gt 3 ] && [ $n5 -lt 8 ];
then
    echo "$n5 is fine"
else
    echo "$n5 do not apply the function"
fi

echo ""
echo "###########################   IF OR   ###########################"
echo ""

n6=87
if [ $n6 -lt 4 ] || [ $n6 -gt 7 ];
then
    echo "The statement is true"
else
    echo "The statement is false"
fi

echo ""
echo "###########################   IF NOT EQUAL   ###########################"
echo ""


#if statement not equal
echo ""
echo "If statement, not equal result:"
if [ $count -ne 3 ]
then
    echo "Count es true"
else
    echo "Count es false"
fi

echo ""
echo "###########################   IF GRATHER THAN   ###########################"
echo ""


#if statement greather that
echo ""
echo "If statement, greater than"
if [ $count -gt 3 ]
then
    echo "Count es true"
else
    echo "Count es false"
fi


echo ""
echo "###########################   IF + MINOR THAN   ###########################"
echo ""


#if statement minor that
echo ""
echo "If statement, greater than"
if (( $count < 3 ))
then
    echo "Count es true"
else
    echo "Count es false"
fi


echo ""
echo "###########################   ELSE IF + MINOR THAN   ###########################"
echo ""


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

echo ""
echo "###########################   IF - ELSE - AND   ###########################"
echo ""


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


echo ""
echo "###########################   IF ELSE   ###########################"
echo ""


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


echo ""
echo "###########################   DO WHILE   ###########################"
echo ""

#Number of animals Do While
echo ""
animals=0
echo "Do while statement"
while [ $animals -lt 6 ] 
do
    echo $animals
    animals=$(( animals+1 ))
done

echo ""
echo "###########################   UNTIL - DO   ###########################"
echo ""

#Number of animals until
echo ""
animals=2
echo "Do while statement"
until [ $animals -ge 6 ] 
do
    echo $animals
    animals=$(( animals+1 ))
done


echo ""
echo "###########################   FOR   ###########################"
echo ""

#For statement
echo ""
echo "For statement"
for i in {0..20..3}
do
    echo $i
done
echo ""
echo "###########################   FOR + IF   ###########################"
echo ""

#For otherwise, WITH IF
echo "Otherwise FOR WITH IF"
for (( i=0; i<7; i++ ))
do
    if [ $i -gt 3 ] 
    then
        echo $i
    fi
done

echo ""
echo "###########################   INPUT   ###########################"
echo ""

#INPUT 
#Para que funcione este output, hay que poner tres cadenas de caracteres despues de ejecutar el script ej: script.sh naranja banana pera
echo "Input "
echo $1 $2 $3

echo ""
echo "###########################   INPUT ARGS   ###########################"
echo ""

#OTRA MANERA DE MANEJAR INPUT 
echo ""
echo "input  of an array"
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}

echo ""
echo "The length of the array is: "
echo $#

echo ""
echo "Otra manera de imprimir mas sencillo: "
echo $@

echo ""
echo "###########################   OUTPUT   ###########################"
echo ""

# aca guardamos lo que imprime el comando ls -al, y lo exporta a sucess, si hubo algun error lo exporta al error.txt
ls -al 1>sucess.txt 2>error.txt

#sino podemos hacer el mismo procedimiento de arriba, pero sin el segundo archivo. Si hay algun error, entonces no exporta los errores. 
ls -al 1>sucess_only.txt

#si queremos incluir los resultados y los errores en un solo archivo: 
ls +al 1>sucess_and_error.txt 2>&1
ls -al 1>sucess_and_error.txt 2>&1

echo ""
echo "###########################   PIPES   ###########################"
echo ""

echo "Send output from one script to an other script"

message="Hello this is a variable from the first script"
export message
./secondScript.sh

echo ""
echo "###########################   STRING MATCH   ###########################"
echo ""


echo "Input two strings and verify if there are the same"
echo "Enter 1st string:"
read st1

echo "Enter 2st string:"
read st2

if [ "$st1" == "$st2" ]
then
    echo "String match"
else
    echo "String dont match"
fi

echo ""
echo "###########################   LOWERCASE & UPPERCASE   ###########################"
echo ""

echo "Lowercase"
echo ${st1^}

echo ""
echo "Uppercase"
echo "${st1^^}"


echo ""
echo "###########################   MATH OPERATIONS  ###########################"
echo ""

n1=7
n2=30

echo "Suma"
echo $(expr $n1 + $n2 )
echo "Resta"
echo $(expr $n1 - $n2 )
echo "Multiplicacion"
echo $(expr $n1 \* $n2 )
echo "Division"
echo $(expr $n1 / $n2 )
echo "Resto"
echo $(expr $n1 % $n2 )

echo ""
echo "###########################   ARRAYS  ###########################"
echo ""

car=('BMW' 'MERCEDES' 'HONDA')

echo "Asign a new item to the array: Renault"
car[3]='Renault'
echo ""

echo "Print all the values of array:"
echo "${car[@]}"

echo ""
echo "Print one or more values:"
echo "${car[0]}"

echo ""
echo "Print all index that have the array:"
echo "${!car[@]}"

echo ""
echo "Print the length of the array:"
echo "${#car[@]}"

echo ""
echo "###########################   FUNCTIONS  ###########################"
echo ""

echo "We create a new function with parameters"
function functPrint()
{
    echo $1 $2 $3 $4 $5
}

functPrint Hi my name is Gian


echo ""
echo "###########################   DIRECTORIES  ###########################"
echo ""

echo "Enter the directory name to check if is created"
read direct
echo ""
if [ -d $direct ]
then
    echo "The directory name allready exist!"
else
    echo "The directory name doesnt exist, and will be created!"
    mkdir $direct
    echo "New directory created!    ----->  " $direct
fi


echo ""
echo "###########################   FILES  ###########################"
echo ""

echo "Enter the file name to check if is created"
read fileName
echo ""
if [ -f $fileName ]
then
    echo "The file allready exist!"
else
    echo "The file doesnt exist, and will be created!"
    touch $fileName
    echo "New file created!    ----->  " $fileName
fi


echo ""
echo "###########################   APPENDING TO A FILE  ###########################"
echo ""

echo "Enter the file name to check if exist, if so then will append the info. If not will close"
read fileName
echo ""
if [ -f $fileName ]
then
    echo "What do you want to append to the file? " $fileName
    read fileInfo
    echo $fileInfo  >> $fileName
    echo ""
    echo "Information appended to the file Successfully!" 
else
    echo "The file doesnt exist!"
fi

echo ""
echo "###########################   DELETE A FILE  ###########################"
echo ""

echo "Enter the file that want to delete"
read fileName
echo ""
if [ -f $fileName ]
then
    rm $fileName
    echo "File deleted successfully!" 
else
    echo "The file doesnt exist!"
fi

echo ""
echo "###########################   CURL  ###########################"
echo ""

url="http://ipv4.download.thinkbroadband.com/5MB.zip"
curl -I $url



echo ""
echo "###########################  INOTIFY   ###########################"
echo ""

echo "Here we will create a new dir, and inotify will output all logs"

#mkdir -p temp/NewFolder
#inotifywait -m temp/NewFolder


echo ""
echo "###########################   GREP - FIND A TEXT IN A FILE  ###########################"
echo ""

echo "Enter the filename to search text"
read nombreArchivo

if [[ -f $nombreArchivo ]]
then
    echo "Enter the text to search"
    read grepvariable
    echo "Here output the line of the key search and the value"
    grep -i -n $grepvariable $nombreArchivo
else
    echo "$nombreArchivo doesn't exist"
fi


echo ""
echo "###########################   AWK - FIND A TEXT IN A FILE  ###########################"
echo ""

echo "Enter the filename to search text, the second value!"
read nombreArchivo

if [[ -f $nombreArchivo ]]
then
    awk '/gian/ {print $2}' $nombreArchivo
else
    echo "$nombreArchivo doesn't exist"
fi





echo ""
echo "###########################   SELECT OPTIONS  ###########################"
echo ""

echo "Select yout best branch of Car"
select car in BMW MERCEDES AUDI RENAULT CITROEN
do 
    case $car in
    BMW)
        echo "You Select BMW";;
    MERCEDES)
        echo "You Select MERCEDES";;
    AUDI)
        echo "You Select AUDI";;
    RENAULT)
        echo "You Select RENAULT";;
    CITROEN)
        echo "You Select CITROEN";;
    *)
        echo "Error you dont select anyone!";;
        esac
        exit;
done


