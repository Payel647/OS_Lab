#!/bin/bash
# Demo script using if, case, while, and until loops

echo "Enter a number (1-3): "
read num

# ----- if -----
if [ $num -eq 1 ]; then
    echo "You entered ONE"
elif [ $num -eq 2 ]; then
    echo "You entered TWO"
else
    echo "Number is not 1 or 2"
fi

# ----- case -----
case $num in
    1) echo "CASE: Option 1 selected";;
    2) echo "CASE: Option 2 selected";;
    3) echo "CASE: Option 3 selected";;
    *) echo "CASE: Invalid option";;
esac

# ----- while loop -----
echo "Counting 1 to 5 using while:"
i=1
while [ $i -le 5 ]
do
    echo "$i"
    i=$((i + 1))
done

# ----- until loop -----
echo "Counting down 5 to 1 using until:"
j=5
until [ $j -lt 1 ]
do
    echo "$j"
    j=$((j - 1))
done

# ----------- for loop -------
echo "Counting from 1 to 5: "
for (( i=1; i<=5; i++ ))
do
    echo "Number: $i"
done

