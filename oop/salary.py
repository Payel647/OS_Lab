basic = float(input("Enter Basic Salary: "))

da = 0.40 * basic   
hra = 0.20 * basic  

gross = basic + da + hra

print("Basic Salary =", basic)
print("DA (40%) =", da)
print("HRA (20%) =", hra)
print("Gross Salary =", gross)
