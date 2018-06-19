print("Perpendicular bisector calculator")
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


Midpoint_X = (X1+X2)/2
Midpoint_Y = (Y1+Y2)/2

Slope = ((Y2-Y1)/(X2-X1))

P_Slope = -1/Slope

-- Find the y-intercept of the perpendicular slope
-- (y = mx + b) == (b = - mx + y)

P_Y_Int = -(P_Slope * Midpoint_X) + Midpoint_Y

if P_Y_Int < 0 then
	print("The equation is Y="..P_Slope.."X"..P_Y_Int)
else if P_Y_Int == 0 then
	print("The equation is Y="..P_Slope.."X")
else if P_Y_Int > 0 then
	print("The equation is Y="..P_Slope.."X+"..P_Y_Int)
end
end
end

print()
print()
os.execute("PAUSE")
