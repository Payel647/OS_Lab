class Person:
    def __init__(self, name, age):   
        self.name = name
        self.age = age

    def display(self):
        print("Person Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
p1 = Person("Payel", 18)
p1.display()
