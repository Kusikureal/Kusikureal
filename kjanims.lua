local plr = game.Players.LocalPlayer
local randomkjanim = math.random(1,2)
local anim = Instance.new('Animation', plr.Character)
if randomkjanim == 1 then
	
	anim.AnimationId = 'rbxassetid://18565152380'
	
	
	local loadedanim = plr.Character:FindFirstChildOfClass('Humanoid'):FindFirstChildOfClass('Animator'):LoadAnimation(anim)
	loadedanim:Play()
	
elseif randomkjanim == 2 then
	
	anim.AnimationId = 'rbxassetid://18565160912'
	local loadedanim = plr.Character:FindFirstChildOfClass('Humanoid'):FindFirstChildOfClass('Animator'):LoadAnimation(anim)
	loadedanim:Play()
end