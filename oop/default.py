class Person:
    def __init__(self, name="Unknown", age=0):
        self.name = name
        self.age = age

    def display(self):
        print("Person Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
p1 = Person()
p1.display()
print()
p2 = Person("Payel", 18)
p2.display()
