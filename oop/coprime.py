import math

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

if math.gcd(a, b) == 1:
    print(a, "and", b, "are Co-Prime")
else:
    print(a, "and", b, "are NOT Co-Prime")
