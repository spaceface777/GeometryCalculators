function round(num, Places)
  local mult = 10^(Places or 0)
  return math.floor(num * mult + 0.5) / mult
end

print("Triangle calculator")
print("By @spaceface777 & @HuizeMao")
print()
print("If it shows an error, check")
print("the numbers you typed in.")
print()
print("There are five different scenarios,")
print("please choose the one you have:")
print()
print("1. SSS (Only sides are given)")
print("2. SAS (Two sides and their included angle are given)")
print("3. ASA (Two angles and their included side are given)")
print("4. AAS (Two angles and non-included side are given)")
print("5. SSA (Two sides and non-included angle are given)")
print()
io.write("Enter 1,2,3,4, or 5 in order to solve the triangle ") input = io.read("*n")

function Sine_calculator_for_ASA (angle_C,angle_A,b)
  angle_B = 180 - angle_A - angle_C
  angle_c = angle_C * math.pi / 180
  angle_a = angle_A * math.pi / 180
  angle_b = angle_B * math.pi / 180
  side_c = math.sin(angle_c) * b / math.sin(angle_b)
  side_a = math.sin(angle_a) * b / math.sin(angle_b)
  return (" "..round(math.deg(angle_b),1) ..", "..round(side_c,1)..", ".. round(side_a,1))
end

function Sine_calculator_for_AAS (angle_C,angle_A ,a)
  angle_B = 180 - angle_A - angle_C
  angle_b = angle_B * math.pi / 180
  angle_c = angle_C * math.pi / 180
  angle_a = angle_A * math.pi / 180
  side_b = math.sin(angle_b) * a / math.sin(angle_a)
  side_c = math.sin(angle_c) * a / math.sin(angle_a)
  return (" "..round(math.deg(angle_b),1) ..", "..round(side_b,1)..", ".. round(side_c,1)  )
end

function Sine_calculator_for_SSA(a,b,angle_A)
  angle_a = angle_A * math.pi / 180
  angle_B = math.asin((b * math.sin(angle_a)) / a)
  angle_C = 180 - math.deg(angle_B) - math.deg(angle_a)
  angle_c = angle_C * math.pi / 180
  side_c = (math.sin(angle_c) * a) / math.sin(angle_a)
  return (" "..round(math.deg(angle_B),1) ..", "..round(math.deg(angle_c),1)..", ".. round(side_c,1))
end
if input > 5 or input <= 0 then
  io.write("You should select either 1,2,3,4 or 5. reselect one: ")
  input2 = io.read("*n")
end

print("       B \n      /\\ \n     /  \\ \n  a /    \\ c\n   /      \\ \n  /________\\ \n C     b    A")

  
if input == 1 then --SSS
  io.write("Enter side a: ") a = io.read("*n")
  io.write("Enter side b: ") b = io.read("*n")
  io.write("Enter side c: ") c = io.read("*n")
  angle_A = math.acos((b^2 + c^2 - a^2)/(2*b*c))
  angle_B = math.acos((c^2 + a^2 - b^2)/(2*c*a))
  angle_C = math.acos((b^2 + a^2 - c^2)/(2*b*a))
  if (math.deg(angle_A)) + (math.deg(angle_B)) + (math.deg(angle_C)) ~= 180 then print("This is not a valid triangle.")
  else 
    print()
    print("Angle A is "..round(math.deg(angle_A),3))
    print("Angle B is "..round(math.deg(angle_B),3))
    print("Angle C is "..round(math.deg(angle_C),3))
  end
end
if input == 2  then --SAS
  io.write("Enter side a: ")  a = io.read("*n")
  io.write("Enter side b: ")  b = io.read("*n")
  io.write("Enter angle C: ") C = io.read("*n")
  angle_C = C * math.pi/180
  side_c = math.sqrt((a^2 + b^2 -(2*a*b*math.cos(angle_C))))
  angle_A = math.asin(a * math.sin(angle_C) / side_c)
  angle_B = 180 - math.deg(angle_A) - math.deg(angle_C)
  if (math.deg(angle_A)) + angle_B + C ~= 180 then print("This is not a valid triangle.")
  else
    print()
    print("Angle A is "..round(math.deg(angle_A),3))
    print("Angle B is "..round(angle_B,3))
    print("Side C is "..round(side_c,3))  
  end
end
if input == 3 then --ASA
  print("Enter angle A: ") angle_A = io.read("*n")
  print("Enter side  b: ") b = io.read("*n")
  print("Enter angle C: ") angle_C = io.read("*n")
  angle_B = 180 - angle_A - angle_C
  angle_c = angle_C * math.pi / 180
  angle_a = angle_A * math.pi / 180
  angle_b = angle_B * math.pi / 180
  side_c = math.sin(angle_c) * b / math.sin(angle_b)
  side_a = math.sin(angle_a) * b / math.sin(angle_b)
  if angle_A + angle_B + angle_C ~= 180 then print("This is not a valid triangle.")
  else
    print()
    print("Side  A is "..round(side_a,3))
    print("Angle B is "..round(math.deg(angle_b),3))
    print("Side  C is "..round(side_c,1))
  end
end
if input == 4 then -- AAS
  print("what is angle_C(in degree): ")
  angle_C = io.read("*n")
  print("what is angle_A(in degree) ")
  angle_A = io.read("*n")
  print("what is side_a: ")
  side_a = io.read("*n")
  print("Angle_B, Side_b, Side_c are"..Sine_calculator_for_AAS(angle_C,angle_A,side_a).." in that order(angles in degree)")
end
if input == 5 then -- SSA
  print("what is side_a: ")
  side_a = io.read("*n")
  print("what is side_b: ")
  side_b = io.read("*n")
  print("what is angle_A(in degree): ")
  angle_A = io.read("*n")
  print("Angle_B, Angle_C, Side_c are"..Sine_calculator_for_SSA(side_a,side_b,angle_A).." in that order(angles in degree)")
end
