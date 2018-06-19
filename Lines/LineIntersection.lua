print("Intersection of two lines calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("Enter the slope of the first line: ") 		Slope_1=io.read("*n")
io.write("Enter the Y-intercept of the first line: ")	Y_Int_1=io.read("*n")
io.write("Enter the slope of the second line: ")		Slope_2=io.read("*n")
io.write("Enter the Y-intercept of the second line: ")	Y_Int_2=io.read("*n")
print()
Intersection_X=(Y_Int_2 - Y_Int_1)/(Slope_1 - Slope_2)
Intersection_Y=Slope_1 * Intersection_X + Y_Int_1
if string.find(Intersection_X, "#INF") then return("ERROR - The two lines do not intersect.")
else if string.find(Intersection_X, "#IND") then return("ERROR - The two lines are the same.")
else return("The intersection of these lines is (" .. Intersection_X .. "," .. Intersection_Y .. ")")
end	end