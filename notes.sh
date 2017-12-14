#!/bin/bash

# This is a comment 
echo "hello world"

declare -r NUM1=5

num2=4

num3=$((NUM+num2))
num4=$((NUM-num2))
num5=$((NUM/num2))
num6=$((NUM*num2))

echo "$num3"
echo "$num4"

echo $((500%3))

rand=5
let rand+=4
echo "$rand"

echo "rand++ = $((rand++ ))"
echo "++rand = $((++rand))"
echo "rand-- = $((rand--))"
echo "--rand = $((--rand))"

num7=12
num8=3.4
num9=$(python -c "print $num7+$num8")
echo $num9

cat<< END
This text
prints on
many lines
END

getDate(){
 date

 return
}

getDate

name="Krystal"
Local1(){
 localname="KrystalM"
 return
}

Local1
echo "$name"

getSum(){
 local num3=$1
 local num4=$2

 local sum=$((num3+num4))
 echo $sum

}

num1=10
num2=33

sum=$(getSum num1 num2)
echo "Sum is $sum"

#prompt with string 
read -p "What is your name? " name
echo "Hello $name"

# conditionals

read -p "How old are you? " age

if [ $age -ge 16 ]
then
 echo "You can drive"
elif [ $age -eq 15 ]
then
 echo "Maybe next year"
else
 echo "Nope"
fi

read -p "Enter a number : " num
if ((num == 4)); then 
 echo "Your number is 4"
fi

if ((num > 3)); then
 echo "It is greater than 3"
else
 echo "It is less than 3"
fi

if (( ((num % 2)) == 0)); then
 echo "It is even"
fi

# && and 
# [ -d samp_dir ] || mkdir samp_dir checks if sample file was created 

# if [ -e "$file" ]; then 
  # echo "$file exists"
#is normal filke, readable, writeable, executable, is directory, synbolic link
# owned by group, owned by user, is network socket 

read -p "Validate Date : " date

pat="^[0-9]{8}$" # checking for 8 digits 

if [[ $date =~ $pat ]]; then 
 echo "$date is valid"
else
 echo "$date is not valid"
fi

#OIFS="$IFS" -> use to replace spaces with commas
# num1=${num1//[[:blank:]]/}

#case $age in 
#[0-4])
# echo "hello"
# ;;
#5)
# echo "Pre-school"
# ;;

#ternary operator
#((x >= 10?(x=1):(x=0)))

# ${#string} gives length
# ${str:2} -> slicing


