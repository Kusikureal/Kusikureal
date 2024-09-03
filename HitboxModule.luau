-----Private Variables-----
local Players = game:GetService("Players") 
local ServerStorage = game:GetService("ServerStorage") 
local RS = game:GetService("ReplicatedStorage")
local Players_Folder: Folder = ServerStorage:FindFirstChild("Players")
local TR: string = "TimeRemaining"
local RagdollTR: string = "RagdollTR"
local IsBlockingName: string = "Block"
local Animations = RS:FindFirstChild("Animations")



local module = {}
-----Public Functions-----
function module:AddHitbox(Cframe, Size,      IsTransparent) 
 local hitbox = Instance.new("Part") 
 hitbox.Parent = workspace
 if IsTransparent then
  hitbox.Transparency = 1
  else
   hitbox.Transparency = 0.8
 end
 hitbox.Anchored = true
 hitbox.Size = Size
 hitbox.CFrame = Cframe
 return hitbox
 
end

function module:CreateHitbox(character: Model, Size, IsTransparent, distanceHRPCFrame) 
 local hitbox =  module:AddHitbox(character.HumanoidRootPart.CFrame * distanceHRPCFrame, IsTransparent) 
 local hits = {}

 hitbox.Touched:Connect(function(hit) 
  if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= character.Name then
   if hits[hit.Parent.Name] then
    
   return
  end
   local returningTable = {
char = hit.Parent.Name, 
true, 
}
if Players:FindFirstChild(hit.Parent.Name) then
returningTable[3] = true
end
   hits[hit.Parent.Name] = true
   return returningTable
 end) 
end

return module