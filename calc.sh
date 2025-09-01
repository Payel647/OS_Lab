#!/bin/bash
# Arithmetic operations and variable manipulation

# Take input from user
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

# Arithmetic operations
sum=$((num1 + num2))
diff=$((num1 - num2))
prod=$((num1 * num2))
if [ $num2 -ne 0 ]; then
    div=$((num1 / num2))
else
    div="undefined (division by zero)"
fi

# Print results
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Division: $div"

# Variable manipulation
echo "Before manipulation: num1=$num1, num2=$num2"
num1=$((num1 + 10))
num2=$((num2 * 2))
echo "After manipulation: num1=$num1, num2=$num2"
