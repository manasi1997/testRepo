#!/bin/bash

read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter three number : " c

x=$(( $a+$b*$c ))
y=$(( $a*$b+$c ))
z=$(( $c+$a/$b ))
w=$(( $a%$b+$c ))

declare -A arithmeticDict

arithmeticDict[0]=$x
arithmeticDict[1]=$y
arithmeticDict[2]=$z
arithmeticDict[3]=$w

echo "Dictionary is : "${arithmeticDict[@]}

for (( i=0; i<=3; i++ ))
do
        arr[$i]=${arithmeticDict[$i]}
done

echo "The array is : "${arr[@]}

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order(Ascending) :"
echo ${arr[*]}


for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order(Descending) :"
echo ${arr[*]}
