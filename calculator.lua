local function calculate(a, b, sign) 
 if sign == "+" then
  return a + b
 elseif sign == "-" then
  return a - b
 elseif sign == "/" then
  return a / b
 elseif sign == "*" then
  return a * b
 end
end

print(calculate(10, 20, "*")) 