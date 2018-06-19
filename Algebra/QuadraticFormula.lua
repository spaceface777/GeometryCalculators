print("Quadratic formula calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("enter the value of A: ")
a = io.read("*number")
io.write("enter the value of B: ")
b = io.read("*number")
io.write("enter the value of C: ")
c = io.read("*number")
print()

Number1=(-b + math.sqrt(b^2 - 4*a*c)) / (2*a)
Number2=(-b - math.sqrt(b^2 - 4*a*c)) / (2*a)

print(Number1,Number2)

print()
print()
os.execute("PAUSE")
