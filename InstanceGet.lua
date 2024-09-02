local results = {}
local function PrintGame() 
local result = {}
for i, v in pairs(game:GetDescendants()) do
result[i] = v
print(v) 
end
task.wait(1) 
return result
end

results[1] = PrintGame() 


