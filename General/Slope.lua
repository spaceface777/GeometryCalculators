print("Slope calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("enter the value of X1: ")
X1 = io.read("*number")
io.write("enter the value of Y1: ")
Y1 = io.read("*number")
io.write("enter the value of X2: ")
X2 = io.read("*number")
io.write("enter the value of Y2: ")
Y2 = io.read("*number")
print()

Slope=(Y2-Y1)/(X2-X1)

if X1 == X2 then
   Slope = "undefined"
end

print("The slope is " .. Slope..".")
