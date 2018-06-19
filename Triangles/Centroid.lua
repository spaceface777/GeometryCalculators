print("Centroid calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("enter the value of X1: ") X1 = io.read("*number")
io.write("enter the value of Y1: ") Y1 = io.read("*number")
io.write("enter the value of X2: ") X2 = io.read("*number")
io.write("enter the value of Y2: ") Y2 = io.read("*number")
io.write("enter the value of X3: ") X3 = io.read("*number")
io.write("enter the value of Y3: ") Y3 = io.read("*number")
print()

Number1=(X1+X2+X3)/3
Number2=(Y1+Y2+Y3)/3

io.write("The centroid is ("..Number1..","..Number2..").")
