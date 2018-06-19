print("Circumcenter calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()

io.write("enter the value of AX: ")
AX = io.read("*number")
io.write("enter the value of AY: ")
AY = io.read("*number")
io.write("enter the value of BX: ")
BX = io.read("*number")
io.write("enter the value of BY: ")
BY = io.read("*number")
io.write("enter the value of CX: ")
CX = io.read("*number")
io.write("enter the value of CY: ")
CY = io.read("*number")
print()

Midpoint_AB_X = (AX+BX)/2
Midpoint_AB_Y = (AY+BY)/2
Midpoint_BC_X = (BX+CX)/2
Midpoint_BC_Y = (BY+CY)/2
Midpoint_AC_X = (AX+CX)/2
Midpoint_AC_Y = (AY+CY)/2

AB_Slope = ((BY-AY)/(BX-AX))
BC_Slope = ((CY-BY)/(CX-BX))
AC_Slope = ((CY-AY)/(CX-AX))

AB_P_Slope = -1/AB_Slope
BC_P_Slope = -1/BC_Slope
AC_P_Slope = -1/AC_Slope

if string.find(AB_P_Slope, "#INF") then Counter = 1
else if string.find(BC_P_Slope, "#INF") then Counter = 2
end end

AB_P_B = -(AB_P_Slope * Midpoint_AB_X) + Midpoint_AB_Y
BC_P_B = -(BC_P_Slope * Midpoint_BC_X) + Midpoint_BC_Y
AC_P_B = -(AC_P_Slope * Midpoint_AC_X) + Midpoint_AC_Y

if Counter == 1 then
  Circumcenter_X = (BC_P_B - AC_P_B)/(AC_P_Slope - BC_P_Slope)
  Circumcenter_Y = AC_P_Slope * Circumcenter_X + AC_P_B
else if Counter == 2 then
  Circumcenter_X = (AC_P_B - AB_P_B)/(AB_P_Slope - AC_P_Slope)
  Circumcenter_Y = AC_P_Slope * Circumcenter_X + AC_P_B
else
  Circumcenter_X = (BC_P_B - AB_P_B)/(AB_P_Slope - BC_P_Slope)
  Circumcenter_Y = AB_P_Slope * Circumcenter_X + AB_P_B
end
end

print("The circumcenter of this triangle is (" .. Circumcenter_X .. "," .. Circumcenter_Y .. ")")
