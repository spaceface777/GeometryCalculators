print("Orthocenter calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("enter the value of AX: ") AX = io.read("*number")
io.write("enter the value of AY: ") AY = io.read("*number")
io.write("enter the value of BX: ") BX = io.read("*number")
io.write("enter the value of BY: ") BY = io.read("*number")
io.write("enter the value of CX: ") CX = io.read("*number")
io.write("enter the value of CY: ") CY = io.read("*number")
print()

AB_Slope = (BY-AY)/(BX-AX)
BC_Slope = (CY-BY)/(CX-BX)
AC_Slope = (CY-AY)/(CX-AX)

AB_P_Slope = -1/AB_Slope
BC_P_Slope = -1/BC_Slope
AC_P_Slope = -1/AC_Slope

if string.find(AB_P_Slope, "#INF") then
  Counter = 1
else if string.find(BC_P_Slope, "#INF") then
  Counter = 2
end
end

AB_P_B = -(AB_P_Slope * CX) + CY
BC_P_B = -(BC_P_Slope * AX) + AY
AC_P_B = -(AC_P_Slope * BX) + BY

if Counter == 1 then
  Intersection_X = (BC_P_B - AC_P_B)/(AC_P_Slope - BC_P_Slope)
  Intersection_Y = AC_P_Slope * Intersection_X + AC_P_B
else if Counter == 2 then
  Intersection_X = (AC_P_B - AB_P_B)/(AB_P_Slope - AC_P_Slope)
  Intersection_Y = AC_P_Slope * Intersection_X + AC_P_B
else 
  Intersection_X = (BC_P_B - AB_P_B)/(AB_P_Slope - BC_P_Slope)
  Intersection_Y = AB_P_Slope * Intersection_X + AB_P_B
end
end

print("The orthocenter of this triangle is (" .. Intersection_X .. "," .. Intersection_Y .. ")")
