class Student:
    def __init__(self, name, age, roll_no):
        self.name = name
        self.age = age
        self.roll_no = roll_no

    def display(self):
        print("Student Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"Roll No: {self.roll_no}")
s1 = Student("Payel", 18, 101)
s1.display()
# getattr -> get value of an attribute
print("Name using getattr:", getattr(s1, "name"))

# setattr -> set value of an attribute
setattr(s1, "age", 19)
print("Updated Age using setattr:", s1.age)

# hasattr -> check if attribute exists
print("Has roll_no?", hasattr(s1, "roll_no"))

# delattr -> delete an attribute
delattr(s1, "roll_no")

# After deleting, check again
print("Has roll_no after delete?", hasattr(s1, "roll_no"))

# Display details again
print("\nDetails after modification:")
print("Name:", getattr(s1, "name"))
print("Age:", getattr(s1, "age"))
