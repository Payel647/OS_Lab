class Employee:
    def __init__(self, emp_id, name, age):
        self.emp_id = emp_id
        self.name = name
        self.age = age
    def display(self):
        print(f"Employee ID: {self.emp_id}")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
print("Enter details for Employee 1:")
emp1 = Employee(input("ID: "), input("Name: "), input("Age: "))

print("\nEnter details for Employee 2:")
emp2 = Employee(input("ID: "), input("Name: "), input("Age: "))
print("\nEmployee Details:")
emp1.display()
emp2.display()
