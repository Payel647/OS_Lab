def to_binary(n):
    if n > 1:
        to_binary(n // 2)
    print(n % 2, end="")
num = int(input("Enter a positive number: "))
print("Binary equivalent of", num, "is:", end=" ")
to_binary(num)
