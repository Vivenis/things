-- DancingBot Script (Self-made) (DaHood)
local TextChatService = game:GetService("TextChatService")
local config = TextChatService.ChatInputBarConfiguration
local channel = config.TargetTextChannel

local Chat = function(msg)
channel:SendAsync(msg)
end

local AnimationList = {
"rbxassetid://104428851742579","rbxassetid://137581268977122","rbxassetid://71970944840848","rbxassetid://135372501148316","rbxassetid://115951523870527","rbxassetid://76510079095692","rbxassetid://117865821073911","http://www.roblox.com/asset/?id=15609995579","rbxassetid://97148848007002","rbxassetid://112082806790047","rbxassetid://102336549954106","rbxassetid://130916388086314","rbxassetid://118422508938639","rbxassetid://91348372558295","rbxassetid://94162093658027","rbxassetid://113375965758912","rbxassetid://103097109184157","rbxassetid://111281033685433","rbxassetid://82682811348660","rbxassetid://139310328821985","rbxassetid://71043409187026","rbxassetid://118364690209655","rbxassetid://95127716920692","rbxassetid://129764254213842","rbxassetid://137704682075613","rbxassetid://98719422024341","rbxassetid://113771589189795","rbxassetid://135311171741053","rbxassetid://133939493672259","rbxassetid://74150244741613","rbxassetid://107050614591332","rbxassetid://101011728520473","rbxassetid://117444124506335","rbxassetid://113393501442579","rbxassetid://111251252458517","rbxassetid://133394554631338","rbxassetid://85881727141841","rbxassetid://73468073017890","rbxassetid://138014893284994","rbxassetid://138243322520289","rbxassetid://92249489340640","rbxassetid://73092707834226","rbxassetid://119810104205917","rbxassetid://90708290447388","rbxassetid://127110464534317","rbxassetid://83345430870757","rbxassetid://129991743366120","rbxassetid://86339673982616","rbxassetid://98943029911905","rbxassetid://129787664584610","rbxassetid://80103653497738","rbxassetid://96435804447949","rbxassetid://96731289267640","rbxassetid://124371366634097","rbxassetid://130445733737505","rbxassetid://121561448415799","rbxassetid://111995097701559","rbxassetid://119696276842469","rbxassetid://135877894695218","rbxassetid://77780134372141","rbxassetid://135373056067761","rbxassetid://107728954756412","rbxassetid://73485678861586","rbxassetid://114553555171715","rbxassetid://93650537970037","rbxassetid://82378883639086","rbxassetid://120492078411015","rbxassetid://110204898807330","rbxassetid://91114883954161","rbxassetid://71742037362291","rbxassetid://132104757386824","rbxassetid://140219184038687","rbxassetid://98413544617717","rbxassetid://115703320436202","rbxassetid://73128280414448","http://www.roblox.com/asset/?id=10714360164","rbxassetid://75043657148780","rbxassetid://70692992882447","rbxassetid://76988349893259","rbxassetid://122379383161473","rbxassetid://105944723518605","rbxassetid://93062298566806","rbxassetid://117016493051161","rbxassetid://117394346715743","rbxassetid://102342919277367","rbxassetid://124729247977888","rbxassetid://103116941108936","rbxassetid://121966805049108","rbxassetid://128968764985212","rbxassetid://138179125460989","rbxassetid://124381452298385","rbxassetid://72382226286301","rbxassetid://98352002677627","rbxassetid://133418516499878","rbxassetid://124287251935400","rbxassetid://120268091641383","rbxassetid://92618727772186","rbxassetid://138316142522795","rbxassetid://79674115197984","rbxassetid://103958554603769","rbxassetid://82238508652742","rbxassetid://111272262660539","rbxassetid://98978817638469","rbxassetid://129469072457859","rbxassetid://118979452794479","rbxassetid://77304386644418"
}
local LocalPlayer = game.Players.LocalPlayer
local Owner = "spaceguy1071"
local OwnerInstance = game.Players:WaitForChild(Owner)
local CommandRunning = false
-- Commands
local Animate = function(AnimationId)
    local Animation = Instance.new("Animation")
	Animation.AnimationId = AnimationId
	local AnimationLoaded = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
	AnimationLoaded.Priority = Enum.AnimationPriority.Action4
	return AnimationLoaded
end

local CartMove = function(speed)
    OwnerInstance.Character.Archivable = true
    local Clone = OwnerInstance.Character:Clone()
	Clone.Parent = game.Workspace.Players
	Clone.Humanoid.WalkSpeed = speed
	for i,v in pairs(LocalPlayer.Character:GetDescendants()) do
	pcall(function() v.CanCollide = false end)
	end
    LocalPlayer.Character:PivotTo(workspace.Ignored.Shop["[FoodsCart] - $16"]:FindFirstChildOfClass("Part").CFrame)
	for i = 1,30 do
	task.wait()
	LocalPlayer.Character:PivotTo(workspace.Ignored.Shop["[FoodsCart] - $16"]:FindFirstChildOfClass("Part").CFrame)
	end
    fireclickdetector(workspace.Ignored.Shop["[FoodsCart] - $16"].ClickDetector)
	local Cart = workspace.OldVehicles:WaitForChild(LocalPlayer.Name.."BIKE")
	for i = 1,5 do
	Cart:WaitForChild("VehicleSeat"):Sit(LocalPlayer.Character.Humanoid)
	LocalPlayer.Character:PivotTo(Cart:WaitForChild("VehicleSeat").CFrame)
	end
	for i = 1,60 do
	   LocalPlayer.Character:PivotTo(OwnerInstance.Character.HumanoidRootPart.CFrame)
	   Cart.Seat.CFrame = OwnerInstance.Character.HumanoidRootPart.CFrame
	   task.wait()
	end
	--[[Cart.LBWheel:Destroy()
	Cart.LTWheel:Destroy()
	Cart.RBWheel:Destroy()
	Cart.RTWheel:Destroy()
	Cart.L_Rotator:Destroy()
	Cart.R_Rotator:Destroy()]]
	Instance.new("Highlight",Clone)
	local saved = OwnerInstance.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-10)
	for i = 1,180 do
	Clone:PivotTo(saved)
	task.wait()
	end
	while task.wait() do
	if CommandRunning then
	LocalPlayer.Character:PivotTo(Clone.HumanoidRootPart.CFrame*CFrame.new(0,0,-5))
	Clone.Humanoid:Move(OwnerInstance.Character.Humanoid.MoveDirection)
	else
	LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	Clone:Destroy()
	break
	end
	end
end

local Summon = function(otherplayer)
    if not otherplayer then
	    Chat("Whats good homie?")
	while task.wait() do
	if CommandRunning then
	pcall(function()
	LocalPlayer.Character:PivotTo(OwnerInstance.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,3))
	LocalPlayer.Character.PrimaryPart.Velocity = Vector3.zero
	LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
	LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)
	else
	break
	end
	end
	else
	    Chat("Whats good homie?")
	while task.wait() do
	if CommandRunning then
	pcall(function()
	LocalPlayer.Character:PivotTo(game.Players[otherplayer].Character.HumanoidRootPart.CFrame*CFrame.new(0,4,3))
	LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)
	else
	break
	end
	end
	end
end

local Statue = function()
    local savedloc = OwnerInstance.Character.HumanoidRootPart.CFrame
	Chat("Lemme show you these moves!")
	while task.wait() do
	if CommandRunning then
	pcall(function()
	LocalPlayer.Character:PivotTo(savedloc)
	LocalPlayer.Character.PrimaryPart.Velocity = Vector3.zero
	LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
	LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)
	else
	break
	end
	end
end

-- commands detection
OwnerInstance.Chatted:Connect(function(msg)
    if CommandRunning then
	CommandRunning = false
	task.wait(0.5)
	end
    local msg = string.split(msg," ")
	if msg[1] == ".cartwalk" then
	   CommandRunning = true
	   CartMove(tonumber(msg[2]))
	end
	if msg[1] == "s" then
	   CommandRunning = true
	   Summon(msg[2])
	end
	if msg[1] == ".statue" then
	   CommandRunning = true
	   Statue()
	end
	if msg[1] == ".stop" then
	   CommandRunning = false
	end
end)

-- anti-stomp, fast respawn
LocalPlayer.CharacterAdded:Connect(function(char)
repeat
task.wait()
until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
local char = LocalPlayer.Character
char:WaitForChild("Humanoid").HealthChanged:Connect(function()
if char:WaitForChild("Humanoid").Health <= 5 then
char:WaitForChild("Humanoid").Health = 0
char:BreakJoints()
char.Head:Destroy()
end
end)
end)

-- Dance Loop
task.spawn(function()

while true do 
pcall(function()
local AnimationLoaded = Animate(AnimationList[math.random(1,#AnimationList)])
AnimationLoaded.Looped = true
AnimationLoaded:Play()
task.wait(5)
AnimationLoaded:Stop()
end)
task.wait()
end

end)

task.spawn(function()
while true do
pcall(function()
for i,v in pairs(LocalPlayer.Character:GetDescendants()) do
if v:IsA("BasePart") then
v.Velocity = Vector3.zero
end
end
end)
task.wait()
end
end)

-- idle position
while task.wait() do
if not CommandRunning then
pcall(function()
LocalPlayer.Character:PivotTo(OwnerInstance.Character.PrimaryPart.CFrame*CFrame.new(0,500,0))
end)
task.wait()
end
end
