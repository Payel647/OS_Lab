numbers = []

print("Enter 10 integers:")

for i in range(10):
    num = int(input(f"Enter number {i+1}: "))
    numbers.append(num)

numbers.sort()

print("Numbers in ascending order:", numbers)
