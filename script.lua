local PASSWORD="ccAdmMmv@Panel#2025!"
local PASSWORD_ENABLED=true
local Players=game:GetService("Players")
local UserInputService=game:GetService("UserInputService")
local TweenService=game:GetService("TweenService")
local player=Players.LocalPlayer
local playerGui=player:WaitForChild("PlayerGui")
local passwordCorrect=false
if PASSWORD_ENABLED then
local passwordGui=Instance.new("ScreenGui")
passwordGui.Name="ccAdmMmvPassword"
passwordGui.ResetOnSpawn=false
passwordGui.IgnoreGuiInset=true
passwordGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
passwordGui.Parent=playerGui
local overlay=Instance.new("Frame")
overlay.Size=UDim2.new(1,0,1,0)
overlay.BackgroundColor3=Color3.fromRGB(0,0,0)
overlay.BackgroundTransparency=0.5
overlay.BorderSizePixel=0
overlay.ZIndex=1
overlay.Parent=passwordGui
local card=Instance.new("Frame")
card.Size=UDim2.new(0,340,0,240)
card.Position=UDim2.new(0.5,-170,0.5,-120)
card.BackgroundColor3=Color3.fromRGB(255,255,255)
card.BorderSizePixel=0
card.ZIndex=2
card.Parent=passwordGui
Instance.new("UICorner",card).CornerRadius=UDim.new(0,20)
local cardStroke=Instance.new("UIStroke",card)
cardStroke.Color=Color3.fromRGB(244,143,184)
cardStroke.Thickness=3
local header=Instance.new("Frame")
header.Size=UDim2.new(1,0,0,55)
header.BackgroundColor3=Color3.fromRGB(255,182,213)
header.BorderSizePixel=0
header.ZIndex=3
header.Parent=card
Instance.new("UICorner",header).CornerRadius=UDim.new(0,20)
local headerTitle=Instance.new("TextLabel")
headerTitle.Size=UDim2.new(1,0,1,0)
headerTitle.BackgroundTransparency=1
headerTitle.Font=Enum.Font.GothamBold
headerTitle.Text="♡ cc adm mmv panel ♡"
headerTitle.TextColor3=Color3.fromRGB(255,255,255)
headerTitle.TextSize=20
headerTitle.ZIndex=4
headerTitle.Parent=header
local subLabel=Instance.new("TextLabel")
subLabel.Size=UDim2.new(1,-40,0,25)
subLabel.Position=UDim2.new(0,20,0,65)
subLabel.BackgroundTransparency=1
subLabel.Font=Enum.Font.GothamBold
subLabel.Text="Enter the password to access:"
subLabel.TextColor3=Color3.fromRGB(140,70,105)
subLabel.TextSize=13
subLabel.ZIndex=4
subLabel.Parent=card
local inputBox=Instance.new("TextBox")
inputBox.Size=UDim2.new(1,-40,0,45)
inputBox.Position=UDim2.new(0,20,0,95)
inputBox.BackgroundColor3=Color3.fromRGB(255,228,240)
inputBox.BorderSizePixel=0
inputBox.Font=Enum.Font.GothamBold
inputBox.Text=""
inputBox.PlaceholderText="♡ password here ♡"
inputBox.PlaceholderColor3=Color3.fromRGB(220,180,200)
inputBox.TextColor3=Color3.fromRGB(140,70,105)
inputBox.TextSize=14
inputBox.ClearTextOnFocus=false
inputBox.ZIndex=4
inputBox.Parent=card
Instance.new("UICorner",inputBox).CornerRadius=UDim.new(0,10)
local iStroke=Instance.new("UIStroke",inputBox)
iStroke.Color=Color3.fromRGB(244,143,184)
iStroke.Thickness=1.5
local enterBtn=Instance.new("TextButton")
enterBtn.Size=UDim2.new(1,-40,0,45)
enterBtn.Position=UDim2.new(0,20,0,150)
enterBtn.BackgroundColor3=Color3.fromRGB(255,182,213)
enterBtn.Text="♡ Enter ♡"
enterBtn.Font=Enum.Font.GothamBold
enterBtn.TextSize=15
enterBtn.TextColor3=Color3.fromRGB(255,255,255)
enterBtn.AutoButtonColor=false
enterBtn.ZIndex=4
enterBtn.Parent=card
Instance.new("UICorner",enterBtn).CornerRadius=UDim.new(0,10)
local feedback=Instance.new("TextLabel")
feedback.Size=UDim2.new(1,-40,0,20)
feedback.Position=UDim2.new(0,20,1,-28)
feedback.BackgroundTransparency=1
feedback.Font=Enum.Font.GothamBold
feedback.Text=""
feedback.TextColor3=Color3.fromRGB(220,80,100)
feedback.TextSize=12
feedback.ZIndex=4
feedback.Parent=card
local attempts=0
local function checkPassword()
local typed=string.lower(string.gsub(inputBox.Text,"%s",""))
local correct=string.lower(string.gsub(PASSWORD,"%s",""))
if typed==correct then
passwordCorrect=true
feedback.Text="♡ Correct password! Welcome ♡"
feedback.TextColor3=Color3.fromRGB(100,200,130)
task.wait(0.7)
passwordGui:Destroy()
else
attempts=attempts+1
feedback.Text="♡ Wrong password! Attempt "..attempts.." ♡"
feedback.TextColor3=Color3.fromRGB(220,80,100)
inputBox.Text=""
local original=card.Position
for i=1,6 do card.Position=original+UDim2.new(0,(i%2==0 and 8 or -8),0,0) task.wait(0.03) end
card.Position=original
end
end
enterBtn.MouseButton1Click:Connect(checkPassword)
inputBox.FocusLost:Connect(function(enter) if enter then checkPassword() end end)
while not passwordCorrect do task.wait(0.1) end
end
local old=playerGui:FindFirstChild("ccAdmMmvPanel")
if old then old:Destroy() end
local PINK=Color3.fromRGB(255,182,213)
local PINK_DARK=Color3.fromRGB(244,143,184)
local PINK_LIGHT=Color3.fromRGB(255,228,240)
local WHITE=Color3.fromRGB(255,255,255)
local TEXT_DARK=Color3.fromRGB(140,70,105)
local THEMES={{name="Pink Chikawa",id=117180491094236},{name="Pink Spiral",id=102649022606598},{name="Cherry Blossom",id=117532479441647},{name="Pink Hair",id=107568404308625},{name="Strawberry Cake",id=100181522907340},{name="Pink Flourish",id=123786372212092}}
local function themeImage(id) return "rbxthumb://type=Asset&id="..tostring(id).."&w=420&h=420" end
local SCRIPTS={}
SCRIPTS.waterBow=[==[
local toolId=236438668
local Players=game:GetService("Players")
local Debris=game:GetService("Debris")
local UserInputService=game:GetService("UserInputService")
local RunService=game:GetService("RunService")
local player=Players.LocalPlayer
local character=player.Character or player.CharacterAdded:Wait()
local humanoid=character:WaitForChild("Humanoid")
local mouse=player:GetMouse()
local SHOT_SOUND_ID="rbxassetid://99204505"
local HIT_SOUND_ID="rbxassetid://58274204"
local function createWaterExplosion(point)
local scale=8+(4*math.random(1,3))
local terrain=workspace.Terrain
terrain:FillBall(point,scale,Enum.Material.Water)
task.delay(7,function() terrain:FillBall(point,scale,Enum.Material.Air) end)
end
local function createArrow()
local arrow=Instance.new("Part")
arrow.Name="SeaArrow"
arrow.Size=Vector3.new(0.2,0.2,2.5)
arrow.Transparency=0.25
arrow.Reflectance=0.5
arrow.CanCollide=false
arrow.Anchored=false
arrow.Material=Enum.Material.SmoothPlastic
arrow.BrickColor=BrickColor.new("Cyan")
local mesh=Instance.new("SpecialMesh")
mesh.MeshId="rbxassetid://235107348"
mesh.TextureId="rbxassetid://235107780"
mesh.Scale=Vector3.new(1,1,1)
mesh.Parent=arrow
local hitSound=Instance.new("Sound")
hitSound.Name="Hit"
hitSound.SoundId=HIT_SOUND_ID
hitSound.Volume=1
hitSound.Parent=arrow
return arrow
end
local success,objects=pcall(function() return game:GetObjects("rbxassetid://"..toolId) end)
if not(success and objects and objects[1] and objects[1]:IsA("Tool")) then warn("Failed to load Crossbow of the Sea.") return end
local tool=objects[1]
tool.Name="Crossbow of the Sea"
tool.Parent=player.Backpack
humanoid:EquipTool(tool)
for _,child in ipairs(tool:GetDescendants()) do if child:IsA("Script") or child:IsA("LocalScript") then child:Destroy() end end
local handle=tool:FindFirstChild("Handle") or tool:FindFirstChildWhichIsA("BasePart")
if handle then
local shotSound=Instance.new("Sound")
shotSound.Name="Shot"
shotSound.SoundId=SHOT_SOUND_ID
shotSound.Volume=0.5
shotSound.Parent=handle
end
local AttackAble=true
local AttackReloadTime=1.2
local ProjectileSpeed=120
tool.Activated:Connect(function()
if not AttackAble then return end
AttackAble=false
if handle and handle:FindFirstChild("Shot") then handle.Shot.Pitch=math.random(90,110)/100 handle.Shot:Play() end
local targetPoint=mouse.Hit.Position
local launchPoint=handle and handle.Position or character.PrimaryPart.Position
local arrow=createArrow()
arrow.CFrame=CFrame.new(launchPoint,targetPoint)
arrow.Velocity=arrow.CFrame.LookVector*ProjectileSpeed
arrow.Parent=workspace
local connection
connection=arrow.Touched:Connect(function(part)
if part:IsDescendantOf(character) then return end
createWaterExplosion(arrow.Position)
if arrow:FindFirstChild("Hit") then arrow.Hit:Play() end
arrow.Anchored=true
arrow.CanCollide=false
arrow.Transparency=1
if connection then connection:Disconnect() end
end)
Debris:AddItem(arrow,8)
task.delay(AttackReloadTime,function() AttackAble=true end)
end)
local JUMP_POWER=115
local BOOST_FRAMES=12
local function isInWater()
local state=humanoid:GetState()
return state==Enum.HumanoidStateType.Swimming or state==Enum.HumanoidStateType.GettingUp
end
UserInputService.JumpRequest:Connect(function()
if not isInWater() then return end
local root=character:FindFirstChild("HumanoidRootPart")
if not root then return end
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
root.AssemblyLinearVelocity=Vector3.new(root.AssemblyLinearVelocity.X,JUMP_POWER,root.AssemblyLinearVelocity.Z)
task.spawn(function()
for i=1,BOOST_FRAMES do
if not root or not root.Parent then break end
if root.AssemblyLinearVelocity.Y<JUMP_POWER*0.7 then root.AssemblyLinearVelocity=Vector3.new(root.AssemblyLinearVelocity.X,math.max(root.AssemblyLinearVelocity.Y,JUMP_POWER*0.85),root.AssemblyLinearVelocity.Z) end
RunService.Heartbeat:Wait()
end
end)
end)
print("Crossbow of the Sea ready!")
]==]
SCRIPTS.coilGears=[==[
if not game:IsLoaded() then game.Loaded:Wait() end
local Players=game:GetService("Players")
local Workspace=game:GetService("Workspace")
local TweenService=game:GetService("TweenService")
local player=Players.LocalPlayer
local PlayerGui=player:WaitForChild("PlayerGui")
local DEFAULT_SPEED=16
local DEFAULT_GRAVITY=196.2
local COLORS={Red={Main=Color3.fromRGB(255,0,0),Dark=Color3.fromRGB(180,25,25)},Blue={Main=Color3.fromRGB(0,150,255),Dark=Color3.fromRGB(0,90,190)},Green={Main=Color3.fromRGB(0,255,100),Dark=Color3.fromRGB(20,180,50)},Purple={Main=Color3.fromRGB(200,0,255),Dark=Color3.fromRGB(130,25,190)},Rainbow={Main=Color3.fromRGB(255,105,180),Dark=Color3.fromRGB(150,60,180)}}
local function makeRainbowSequence()
local keys={}
for i=0,6 do table.insert(keys,ColorSequenceKeypoint.new(i/6,Color3.fromHSV(i/6,1,1))) end
return ColorSequence.new(keys)
end
local Screen=Instance.new("ScreenGui")
Screen.Name="MolasSonic"
Screen.ResetOnSpawn=false
Screen.Parent=PlayerGui
local OpenButton=Instance.new("ImageButton")
OpenButton.Size=UDim2.new(0,60,0,60)
OpenButton.Position=UDim2.new(0.02,0,0.45,0)
OpenButton.BackgroundColor3=Color3.fromRGB(25,30,45)
OpenButton.Image="rbxassetid://6031097225"
OpenButton.ImageColor3=Color3.fromRGB(0,170,255)
OpenButton.Active=true
OpenButton.Draggable=true
OpenButton.Parent=Screen
Instance.new("UICorner",OpenButton).CornerRadius=UDim.new(0,16)
local MiniBorder=Instance.new("UIStroke",OpenButton)
MiniBorder.Color=Color3.fromRGB(0,150,255)
MiniBorder.Thickness=2
local Panel=Instance.new("Frame")
Panel.Size=UDim2.new(0,260,0,340)
Panel.Position=UDim2.new(0.02,70,0.45,-170)
Panel.BackgroundColor3=Color3.fromRGB(22,26,38)
Panel.Visible=false
Panel.Active=true
Panel.Draggable=true
Panel.Parent=Screen
Instance.new("UICorner",Panel).CornerRadius=UDim.new(0,18)
local Header=Instance.new("Frame")
Header.Size=UDim2.new(1,0,0,70)
Header.BackgroundColor3=Color3.fromRGB(30,40,60)
Header.Parent=Panel
Instance.new("UICorner",Header).CornerRadius=UDim.new(0,18)
local Title=Instance.new("TextLabel")
Title.Size=UDim2.new(1,0,1,0)
Title.BackgroundTransparency=1
Title.Font=Enum.Font.GothamBold
Title.Text="SONIC COILS"
Title.TextColor3=Color3.fromRGB(255,255,255)
Title.TextSize=18
Title.Parent=Header
local CloseButton=Instance.new("TextButton")
CloseButton.Size=UDim2.new(0,40,0,40)
CloseButton.Position=UDim2.new(1,-50,0,15)
CloseButton.BackgroundColor3=Color3.fromRGB(200,40,40)
CloseButton.Font=Enum.Font.GothamBold
CloseButton.Text="X"
CloseButton.TextColor3=Color3.fromRGB(255,255,255)
CloseButton.TextSize=16
CloseButton.Parent=Header
Instance.new("UICorner",CloseButton).CornerRadius=UDim.new(1,0)
local Content=Instance.new("Frame")
Content.Size=UDim2.new(1,-20,1,-80)
Content.Position=UDim2.new(0,10,0,75)
Content.BackgroundTransparency=1
Content.Parent=Panel
local Layout=Instance.new("UIListLayout",Content)
Layout.Padding=UDim.new(0,10)
OpenButton.MouseButton1Click:Connect(function() Panel.Visible=not Panel.Visible end)
CloseButton.MouseButton1Click:Connect(function() Panel.Visible=false end)
local function CreateCoil(Name,ColorData,EquipEffect,UnequipEffect,isRainbow)
local Backpack=player:FindFirstChild("Backpack")
if not Backpack then return end
if Backpack:FindFirstChild(Name) then Backpack[Name]:Destroy() end
if player.Character and player.Character:FindFirstChild(Name) then player.Character[Name]:Destroy() end
local Tool=Instance.new("Tool")
Tool.Name=Name
Tool.TextureId=""
Tool.Parent=Backpack
local Handle=Instance.new("Part")
Handle.Name="Handle"
Handle.Size=Vector3.new(0.1,0.1,0.1)
Handle.Transparency=1
Handle.Parent=Tool
local rings={}
local Model=Instance.new("Model",Handle)
for i=1,4 do
local Ring=Instance.new("Part",Model)
Ring.Shape=Enum.PartType.Cylinder
Ring.Size=Vector3.new(0.12,1.2,1.2)
if isRainbow then Ring.Color=Color3.fromHSV((i-1)/4,1,1) else Ring.Color=ColorData.Main end
Ring.Material=Enum.Material.Neon
Ring.CFrame=Handle.CFrame*CFrame.new(0,0,(i-2.5)*0.22)*CFrame.Angles(0,math.rad(90),0)
local Weld=Instance.new("WeldConstraint",Ring)
Weld.Part0=Handle
Weld.Part1=Ring
local Highlight=Instance.new("Highlight",Ring)
Highlight.Adornee=Ring
Highlight.FillTransparency=1
Highlight.OutlineColor=Color3.new(0,0,0)
Highlight.OutlineTransparency=0
table.insert(rings,Ring)
end
local A0=Instance.new("Attachment",Handle)
A0.Position=Vector3.new(0,0.6,0)
local A1=Instance.new("Attachment",Handle)
A1.Position=Vector3.new(0,-0.6,0)
local Trail=Instance.new("Trail",Handle)
Trail.Attachment0=A0
Trail.Attachment1=A1
if isRainbow then Trail.Color=makeRainbowSequence() Trail.Lifetime=0.8 else Trail.Color=ColorSequence.new(ColorData.Main) Trail.Lifetime=0.4 end
Trail.Enabled=false
local Particles=Instance.new("ParticleEmitter",Handle)
if isRainbow then Particles.Color=makeRainbowSequence() Particles.LightEmission=1 Particles.Rate=80 else Particles.Color=ColorSequence.new(ColorData.Main) Particles.Rate=40 end
Particles.Size=NumberSequence.new(0.3,0)
Particles.Enabled=false
local rainbowActive=false
Tool.Equipped:Connect(function()
Trail.Enabled=true
Particles.Enabled=true
EquipEffect()
if isRainbow then
rainbowActive=true
task.spawn(function()
local hue=0
while rainbowActive and Tool.Parent do
hue=(hue+0.02)%1
for idx,ring in ipairs(rings) do
if ring and ring.Parent then ring.Color=Color3.fromHSV((hue+idx*0.15)%1,1,1) end
end
task.wait(0.05)
end
end)
end
end)
Tool.Unequipped:Connect(function() Trail.Enabled=false Particles.Enabled=false rainbowActive=false UnequipEffect() end)
end
local function CreateCoilButton(Name,ColorData,EquipEffect,UnequipEffect,isRainbow)
local Box=Instance.new("Frame")
Box.Size=UDim2.new(1,0,0,65)
Box.BackgroundColor3=ColorData.Dark
Box.Parent=Content
Instance.new("UICorner",Box).CornerRadius=UDim.new(0,12)
local Text=Instance.new("TextLabel")
Text.Size=UDim2.new(1,-20,0,30)
Text.Position=UDim2.new(0,15,0,8)
Text.BackgroundTransparency=1
Text.Font=Enum.Font.GothamBold
Text.Text=Name
Text.TextColor3=ColorData.Main
Text.TextSize=15
Text.TextXAlignment=Enum.TextXAlignment.Left
Text.Parent=Box
local Button=Instance.new("TextButton")
Button.Size=UDim2.new(1,-30,0,25)
Button.Position=UDim2.new(0,15,0,38)
Button.BackgroundColor3=ColorData.Main
Button.Font=Enum.Font.GothamBold
Button.Text="Spawn"
Button.TextColor3=Color3.fromRGB(255,255,255)
Button.TextSize=13
Button.Parent=Box
Instance.new("UICorner",Button).CornerRadius=UDim.new(0,8)
Button.MouseButton1Click:Connect(function()
TweenService:Create(Header,TweenInfo.new(0.3),{BackgroundColor3=ColorData.Dark}):Play()
CreateCoil(Name,ColorData,EquipEffect,UnequipEffect,isRainbow)
Button.Text="OBTAINED"
task.wait(1.5)
Button.Text="Spawn"
end)
end
CreateCoilButton("Speed Coil",COLORS.Red,function() if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed=50 end end,function() if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed=DEFAULT_SPEED end end)
CreateCoilButton("Gravity Coil 🌈",COLORS.Rainbow,function() Workspace.Gravity=35 end,function() Workspace.Gravity=DEFAULT_GRAVITY end,true)
local regenActive=false
CreateCoilButton("Regen Coil",COLORS.Green,function()
regenActive=true
task.spawn(function()
while regenActive do
if player.Character and player.Character:FindFirstChild("Humanoid") then local h=player.Character.Humanoid if h.Health<h.MaxHealth then h.Health+=3 end end
task.wait(0.4)
end
end)
end,function() regenActive=false end)
local fullActive=false
CreateCoilButton("Full Tool",COLORS.Purple,function()
if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed=55 end
Workspace.Gravity=35
fullActive=true
task.spawn(function()
while fullActive do
if player.Character and player.Character:FindFirstChild("Humanoid") then local h=player.Character.Humanoid if h.Health<h.MaxHealth then h.Health+=4 end end
task.wait(0.3)
end
end)
end,function()
if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed=DEFAULT_SPEED end
Workspace.Gravity=DEFAULT_GRAVITY
fullActive=false
end)
]==]
SCRIPTS.magicCarpet=[==[
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Open-Source-227632"))()
]==]
SCRIPTS.kudoFakeBomb=[==[
local Players=game:GetService("Players")
local player=Players.LocalPlayer
local backpack=player:WaitForChild("Backpack")
local function createBomb(number)
local bomb=Instance.new("Tool")
bomb.Name="Fake Bomb "..number
bomb.RequiresHandle=true
bomb.CanBeDropped=false
local handle=Instance.new("Part")
handle.Name="Handle"
handle.Shape=Enum.PartType.Ball
handle.Size=Vector3.new(1.5,1.5,1.5)
handle.Color=Color3.fromRGB(0,0,0)
handle.Material=Enum.Material.SmoothPlastic
handle.CanCollide=false
handle.Massless=true
handle.Parent=bomb
local flyForce
bomb.Equipped:Connect(function()
local character=player.Character
local root=character and character:FindFirstChild("HumanoidRootPart")
if root then
flyForce=Instance.new("BodyVelocity")
flyForce.Name="FakeBombFly"
flyForce.Velocity=Vector3.new(0,50,0)
flyForce.MaxForce=Vector3.new(0,math.huge,0)
flyForce.Parent=root
end
end)
bomb.Unequipped:Connect(function() if flyForce then flyForce:Destroy() flyForce=nil end end)
bomb.Parent=backpack
end
createBomb(1)
createBomb(2)
print("Kudo Fake Bomb spawned!")
]==]
SCRIPTS.recolorScope=[==[
local Players=game:GetService("Players")
local UserInputService=game:GetService("UserInputService")
local player=Players.LocalPlayer
local PlayerGui=player:WaitForChild("PlayerGui")
local GUN_TOOL_NAME="Gun"
local TARGET_NAME="GunDisplay"
local RED_TEXTURE_ID="rbxassetid://84961185975751"
local BLUE_TEXTURE_ID="rbxassetid://82435090032680"
local PURPLE_TEXTURE_ID="rbxassetid://88934686234709"
local VOIDSCOPE_TEXTURE_ID="rbxassetid://119603354495392"
local ROSESCOPE_TEXTURE_ID="rbxassetid://102809990017058"
local WHITESCOPE_TEXTURE_ID="rbxassetid://87412774611144"
local RED_BEAM_COLOR=Color3.fromRGB(170,0,0)
local BLUE_BEAM_COLOR=Color3.fromRGB(20,45,110)
local PURPLE_BEAM_COLOR=Color3.fromRGB(115,35,170)
local ROSESCOPE_BEAM_COLOR=Color3.fromRGB(255,105,180)
local WHITE=Color3.fromRGB(255,255,255)
local CURRENT_STYLE="Normal"
local TEXTURE_ID=nil
local BEAM_COLOR=nil
local selectedGunDisplay=nil
local equippedGun=nil
local originalDisplayTextures={}
local originalGunProperties={}
local connectedTools={}
local gunDescendantConnections={}
local toolEffectConnections={}
local Styles={{Name="Normal",Texture=nil,Beam=nil},{Name="RedScope",Texture=RED_TEXTURE_ID,Beam=RED_BEAM_COLOR},{Name="BlueScope",Texture=BLUE_TEXTURE_ID,Beam=BLUE_BEAM_COLOR},{Name="Purple",Texture=PURPLE_TEXTURE_ID,Beam=PURPLE_BEAM_COLOR},{Name="VoidScope",Texture=VOIDSCOPE_TEXTURE_ID,Beam=WHITE,VoidFade=true},{Name="Rosescope",Texture=ROSESCOPE_TEXTURE_ID,Beam=ROSESCOPE_BEAM_COLOR},{Name="WhiteScope",Texture=WHITESCOPE_TEXTURE_ID,Beam=WHITE},{Name="GhostScope",Texture=nil,Beam=WHITE,Ghost=true}}
local FONT_STYLE=Enum.Font.FredokaOne
pcall(function() FONT_STYLE=Font.fromName("MatchaMint") or Enum.Font.FredokaOne end)
local TEXT_DARK_BLUE=Color3.fromRGB(15,30,60)
local function saveGunOriginal(o,p) if not originalGunProperties[o] then originalGunProperties[o]={} end if originalGunProperties[o][p]==nil then originalGunProperties[o][p]=o[p] end end
local function saveDisplayOriginal(o,p) if not originalDisplayTextures[o] then originalDisplayTextures[o]={} end if originalDisplayTextures[o][p]==nil then originalDisplayTextures[o][p]=o[p] end end
local function applyEffectColor(o)
if not o then return end
if not (o:IsA("Beam") or o:IsA("Trail")) then return end
saveGunOriginal(o,"Color")
if CURRENT_STYLE=="GhostScope" then saveGunOriginal(o,"Transparency") o.Color=ColorSequence.new(WHITE) o.Transparency=NumberSequence.new(0.5)
elseif CURRENT_STYLE=="VoidScope" then o.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(170,170,170)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})
elseif BEAM_COLOR then o.Color=ColorSequence.new(BEAM_COLOR) end
end
local function changeGunObject(o)
if not equippedGun then return end
if equippedGun.Name~=GUN_TOOL_NAME then return end
if CURRENT_STYLE=="GhostScope" then
if o:IsA("BasePart") then saveGunOriginal(o,"Color") saveGunOriginal(o,"Transparency") o.Color=WHITE o.Transparency=0.5 if o:IsA("MeshPart") then saveGunOriginal(o,"TextureID") o.TextureID="" end
elseif o:IsA("SpecialMesh") then saveGunOriginal(o,"TextureId") o.TextureId="" local parent=o.Parent if parent and parent:IsA("BasePart") then saveGunOriginal(parent,"Color") saveGunOriginal(parent,"Transparency") parent.Color=WHITE parent.Transparency=0.5 end
elseif o:IsA("Decal") or o:IsA("Texture") then saveGunOriginal(o,"Transparency") o.Transparency=1
elseif o:IsA("Beam") or o:IsA("Trail") then saveGunOriginal(o,"Color") saveGunOriginal(o,"Transparency") o.Color=ColorSequence.new(WHITE) o.Transparency=NumberSequence.new(0.5) end
return end
if o:IsA("MeshPart") then saveGunOriginal(o,"TextureID") o.TextureID=TEXTURE_ID
elseif o:IsA("SpecialMesh") then saveGunOriginal(o,"TextureId") o.TextureId=TEXTURE_ID
elseif o:IsA("Decal") or o:IsA("Texture") then saveGunOriginal(o,"Texture") o.Texture=TEXTURE_ID
elseif o:IsA("Beam") or o:IsA("Trail") then applyEffectColor(o) end
end
local function applyStyleToGun(tool)
if not tool then return end
if not tool:IsA("Tool") then return end
if tool.Name~=GUN_TOOL_NAME then return end
equippedGun=tool
for _,o in ipairs(tool:GetDescendants()) do
if CURRENT_STYLE=="GhostScope" then
if o:IsA("BasePart") or o:IsA("SpecialMesh") or o:IsA("Decal") or o:IsA("Texture") or o:IsA("Beam") or o:IsA("Trail") then changeGunObject(o) end
elseif o:IsA("MeshPart") or o:IsA("SpecialMesh") or o:IsA("Decal") or o:IsA("Texture") then changeGunObject(o)
elseif o:IsA("Beam") or o:IsA("Trail") then applyEffectColor(o) end
end
end
local function restoreGun(tool)
if not tool then return end
for o,props in pairs(originalGunProperties) do if o and o.Parent then for p,v in pairs(props) do pcall(function() o[p]=v end) end end end
originalGunProperties={}
if equippedGun==tool then equippedGun=nil end
end
local function restoreDisplay()
for o,props in pairs(originalDisplayTextures) do if o and o.Parent then for p,v in pairs(props) do pcall(function() o[p]=v end) end end end
originalDisplayTextures={}
selectedGunDisplay=nil
end
local function getObjectPosition(o)
if o:IsA("BasePart") then return o.Position end
if o:IsA("Model") then local p=o.PrimaryPart or o:FindFirstChildWhichIsA("BasePart",true) if p then return p.Position end end
if o:IsA("Tool") then local h=o:FindFirstChild("Handle",true) if h and h:IsA("BasePart") then return h.Position end end
return nil
end
local function findNearestGunDisplay()
local character=player.Character
local root=character and character:FindFirstChild("HumanoidRootPart")
if not root then return nil end
local nearest,nearestDistance=nil,math.huge
for _,o in ipairs(workspace:GetDescendants()) do
if o.Name==TARGET_NAME then
local pos=getObjectPosition(o)
if pos then local d=(pos-root.Position).Magnitude if d<nearestDistance then nearestDistance=d nearest=o end end
end
end
return nearest
end
local function changeDisplayTextures(root)
if not root or not root.Parent then return end
local function change(o,p,v) pcall(function() saveDisplayOriginal(o,p) o[p]=v end) end
if CURRENT_STYLE=="GhostScope" then
local function ghostObject(o)
if o:IsA("BasePart") then change(o,"Color",WHITE) change(o,"Transparency",0.5) if o:IsA("MeshPart") then change(o,"TextureID","") end
elseif o:IsA("SpecialMesh") then change(o,"TextureId","") local p=o.Parent if p and p:IsA("BasePart") then change(p,"Color",WHITE) change(p,"Transparency",0.5) end
elseif o:IsA("Decal") or o:IsA("Texture") then change(o,"Transparency",1)
elseif o:IsA("Beam") or o:IsA("Trail") then change(o,"Color",ColorSequence.new(WHITE)) change(o,"Transparency",NumberSequence.new(0.5)) end
end
ghostObject(root)
for _,o in ipairs(root:GetDescendants()) do ghostObject(o) end
return end
if not TEXTURE_ID then return end
local function changeTexture(o)
if o:IsA("MeshPart") then change(o,"TextureID",TEXTURE_ID)
elseif o:IsA("SpecialMesh") then change(o,"TextureId",TEXTURE_ID)
elseif o:IsA("Decal") or o:IsA("Texture") then change(o,"Texture",TEXTURE_ID) end
end
changeTexture(root)
for _,o in ipairs(root:GetDescendants()) do changeTexture(o) end
end
if PlayerGui:FindFirstChild("MatrixVoidPanel") then PlayerGui.MatrixVoidPanel:Destroy() end
local screenGui=Instance.new("ScreenGui")
screenGui.Name="MatrixVoidPanel"
screenGui.ResetOnSpawn=false
screenGui.Parent=PlayerGui
local mainFrame=Instance.new("Frame")
mainFrame.Size=UDim2.new(0,260,0,390)
mainFrame.Position=UDim2.new(0.5,-130,0.4,-195)
mainFrame.BackgroundColor3=Color3.fromRGB(115,175,215)
mainFrame.BackgroundTransparency=0.25
mainFrame.BorderSizePixel=0
mainFrame.Active=true
mainFrame.ClipsDescendants=true
mainFrame.Parent=screenGui
Instance.new("UICorner",mainFrame).CornerRadius=UDim.new(0,16)
local mainStroke=Instance.new("UIStroke",mainFrame)
mainStroke.Color=Color3.fromRGB(255,255,255)
mainStroke.Thickness=2.5
local titleBar=Instance.new("Frame")
titleBar.Size=UDim2.new(1,0,0,35)
titleBar.BackgroundTransparency=1
titleBar.Active=true
titleBar.Parent=mainFrame
local titleLabel=Instance.new("TextLabel")
titleLabel.Size=UDim2.new(1,-35,1,0)
titleLabel.Position=UDim2.new(0,10,0,0)
titleLabel.BackgroundTransparency=1
titleLabel.Text="antonmvtwin • 28kxpehh & kywsam"
titleLabel.TextColor3=TEXT_DARK_BLUE
titleLabel.TextSize=13
titleLabel.TextXAlignment=Enum.TextXAlignment.Left
if typeof(FONT_STYLE)=="Font" then titleLabel.FontFace=FONT_STYLE else titleLabel.Font=FONT_STYLE end
titleLabel.Parent=titleBar
local minimizeBtn=Instance.new("TextButton")
minimizeBtn.Size=UDim2.new(0,22,0,22)
minimizeBtn.Position=UDim2.new(1,-28,0,6)
minimizeBtn.BackgroundColor3=Color3.fromRGB(200,40,40)
minimizeBtn.Text="-"
minimizeBtn.TextColor3=Color3.fromRGB(255,255,255)
minimizeBtn.TextSize=16
minimizeBtn.BorderSizePixel=0
minimizeBtn.Parent=titleBar
Instance.new("UICorner",minimizeBtn).CornerRadius=UDim.new(1,0)
local contentFrame=Instance.new("Frame")
contentFrame.Size=UDim2.new(1,-24,1,-65)
contentFrame.Position=UDim2.new(0,12,0,38)
contentFrame.BackgroundTransparency=1
contentFrame.Parent=mainFrame
local listLayout=Instance.new("UIListLayout",contentFrame)
listLayout.SortOrder=Enum.SortOrder.LayoutOrder
listLayout.Padding=UDim.new(0,8)
local function createButton(text)
local btn=Instance.new("TextButton")
btn.Size=UDim2.new(1,0,0,30)
btn.BackgroundColor3=Color3.fromRGB(255,255,255)
btn.BackgroundTransparency=0.4
btn.Text=text
btn.TextColor3=TEXT_DARK_BLUE
btn.TextSize=12
btn.BorderSizePixel=0
if typeof(FONT_STYLE)=="Font" then btn.FontFace=FONT_STYLE else btn.Font=FONT_STYLE end
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,12)
local s=Instance.new("UIStroke",btn)
s.Color=Color3.fromRGB(255,255,255)
s.Thickness=1.5
return btn
end
local btnMatrix=createButton("MATRIXSCOPE: ON")
btnMatrix.Parent=contentFrame
local btnVoid=createButton("VOIDSCOPE: ON")
btnVoid.Parent=contentFrame
local texturesLabel=Instance.new("TextLabel")
texturesLabel.Size=UDim2.new(1,0,0,18)
texturesLabel.BackgroundTransparency=1
texturesLabel.Text="TEXTURES"
texturesLabel.TextColor3=TEXT_DARK_BLUE
texturesLabel.TextSize=12
if typeof(FONT_STYLE)=="Font" then texturesLabel.FontFace=FONT_STYLE else texturesLabel.Font=FONT_STYLE end
texturesLabel.TextXAlignment=Enum.TextXAlignment.Left
texturesLabel.Parent=contentFrame
local scrollFrame=Instance.new("ScrollingFrame")
scrollFrame.Size=UDim2.new(1,0,0,170)
scrollFrame.BackgroundTransparency=1
scrollFrame.BorderSizePixel=0
scrollFrame.ScrollBarThickness=4
scrollFrame.CanvasSize=UDim2.new(0,0,0,0)
scrollFrame.Parent=contentFrame
local scrollLayout=Instance.new("UIListLayout",scrollFrame)
scrollLayout.SortOrder=Enum.SortOrder.LayoutOrder
scrollLayout.Padding=UDim.new(0,6)
scrollLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() scrollFrame.CanvasSize=UDim2.new(0,0,0,scrollLayout.AbsoluteContentSize.Y+5) end)
local status=Instance.new("TextLabel")
status.Size=UDim2.new(0,1,0,1)
status.BackgroundTransparency=1
status.TextTransparency=1
status.Text="Ready."
status.Parent=mainFrame
local function selectStyle(styleName)
local selectedStyle=nil
for _,style in ipairs(Styles) do if style.Name==styleName then selectedStyle=style break end end
if not selectedStyle then return end
local gunToReapply=equippedGun
restoreDisplay()
if equippedGun then restoreGun(equippedGun) end
CURRENT_STYLE=selectedStyle.Name
TEXTURE_ID=selectedStyle.Texture
BEAM_COLOR=selectedStyle.Beam
if status then status.Text="Style: "..CURRENT_STYLE end
if CURRENT_STYLE=="Normal" then return end
local target=findNearestGunDisplay()
if not target then return end
selectedGunDisplay=target
changeDisplayTextures(target)
if CURRENT_STYLE=="GhostScope" and gunToReapply and gunToReapply.Parent then applyStyleToGun(gunToReapply) end
end
for index,style in ipairs(Styles) do
local colorBtn=createButton(string.upper(style.Name))
colorBtn.LayoutOrder=index
colorBtn.MouseButton1Click:Connect(function() selectStyle(style.Name) end)
colorBtn.Parent=scrollFrame
end
local footerLabel=Instance.new("TextLabel")
footerLabel.Size=UDim2.new(1,0,0,20)
footerLabel.Position=UDim2.new(0,0,1,-22)
footerLabel.BackgroundTransparency=1
footerLabel.Text="MADE BY ANTONMVTWIN & SAMMXQP2K"
footerLabel.TextColor3=TEXT_DARK_BLUE
footerLabel.TextSize=9
if typeof(FONT_STYLE)=="Font" then footerLabel.FontFace=FONT_STYLE else footerLabel.Font=FONT_STYLE end
footerLabel.Parent=mainFrame
local ballBtn=Instance.new("TextButton")
ballBtn.Size=UDim2.new(0,50,0,50)
ballBtn.Position=mainFrame.Position
ballBtn.BackgroundColor3=Color3.fromRGB(115,175,215)
ballBtn.BackgroundTransparency=0.2
ballBtn.Text="M&V"
ballBtn.TextColor3=TEXT_DARK_BLUE
ballBtn.TextSize=14
ballBtn.Active=true
ballBtn.Visible=false
ballBtn.BorderSizePixel=0
if typeof(FONT_STYLE)=="Font" then ballBtn.FontFace=FONT_STYLE else ballBtn.Font=FONT_STYLE end
ballBtn.Parent=screenGui
Instance.new("UICorner",ballBtn).CornerRadius=UDim.new(1,0)
local ballStroke=Instance.new("UIStroke",ballBtn)
ballStroke.Color=Color3.fromRGB(255,255,255)
ballStroke.Thickness=2.5
local function enableDrag(dragTarget,moveTarget)
local draggingL=false
local dragInput,dragStart,startPos
local function update(input)
local delta=input.Position-dragStart
moveTarget.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
end
dragTarget.InputBegan:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
draggingL=true
dragStart=input.Position
startPos=moveTarget.Position
input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then draggingL=false end end)
end
end)
dragTarget.InputChanged:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end
end)
UserInputService.InputChanged:Connect(function(input) if input==dragInput and draggingL then update(input) end end)
end
enableDrag(titleBar,mainFrame)
enableDrag(ballBtn,ballBtn)
local isDraggingBall=false
ballBtn.InputBegan:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then isDraggingBall=false end end)
ballBtn.InputChanged:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then isDraggingBall=true end end)
minimizeBtn.MouseButton1Click:Connect(function()
ballBtn.Position=UDim2.new(mainFrame.Position.X.Scale,mainFrame.Position.X.Offset+(mainFrame.Size.X.Offset/2)-25,mainFrame.Position.Y.Scale,mainFrame.Position.Y.Offset+10)
mainFrame.Visible=false
ballBtn.Visible=true
end)
ballBtn.MouseButton1Up:Connect(function()
if not isDraggingBall then
mainFrame.Position=UDim2.new(ballBtn.Position.X.Scale,ballBtn.Position.X.Offset-(mainFrame.Size.X.Offset/2)+25,ballBtn.Position.Y.Scale,ballBtn.Position.Y.Offset)
ballBtn.Visible=false
mainFrame.Visible=true
end
end)
local function setupTool(tool)
if not tool:IsA("Tool") then return end
if tool.Name~=GUN_TOOL_NAME then return end
if connectedTools[tool] then return end
connectedTools[tool]=true
toolEffectConnections[tool]={}
local function prepareEffect(o)
if not (o:IsA("Beam") or o:IsA("Trail")) then return end
saveGunOriginal(o,"Color")
saveGunOriginal(o,"Transparency")
local connection=o:GetPropertyChangedSignal("Color"):Connect(function()
if equippedGun~=tool then return end
if CURRENT_STYLE=="Normal" then return end
if not o.Parent then return end
if CURRENT_STYLE=="GhostScope" then changeGunObject(o) else applyEffectColor(o) end
end)
table.insert(toolEffectConnections[tool],connection)
if equippedGun==tool and CURRENT_STYLE~="Normal" then changeGunObject(o) end
end
for _,o in ipairs(tool:GetDescendants()) do prepareEffect(o) end
gunDescendantConnections[tool]=tool.DescendantAdded:Connect(function(o)
if o:IsA("Beam") or o:IsA("Trail") then prepareEffect(o) end
if equippedGun==tool and CURRENT_STYLE~="Normal" then changeGunObject(o) end
end)
tool.Equipped:Connect(function()
equippedGun=tool
if CURRENT_STYLE~="Normal" then applyStyleToGun(tool) end
end)
tool.Unequipped:Connect(function() restoreGun(tool) end)
tool.Destroying:Connect(function()
connectedTools[tool]=nil
if toolEffectConnections[tool] then for _,c in ipairs(toolEffectConnections[tool]) do c:Disconnect() end toolEffectConnections[tool]=nil end
if gunDescendantConnections[tool] then gunDescendantConnections[tool]:Disconnect() gunDescendantConnections[tool]=nil end
end)
end
local function setupCharacter(character)
for _,o in ipairs(character:GetChildren()) do if o:IsA("Tool") then setupTool(o) end end
character.ChildAdded:Connect(function(o) if o:IsA("Tool") then setupTool(o) end end)
end
local function setupBackpack()
local backpack=player:WaitForChild("Backpack")
for _,o in ipairs(backpack:GetChildren()) do if o:IsA("Tool") then setupTool(o) end end
backpack.ChildAdded:Connect(function(o) if o:IsA("Tool") then setupTool(o) end end)
end
if player.Character then setupCharacter(player.Character) end
player.CharacterAdded:Connect(function(character)
equippedGun=nil
originalGunProperties={}
setupCharacter(character)
end)
setupBackpack()
workspace.DescendantAdded:Connect(function(o)
if o.Name~=TARGET_NAME then return end
task.spawn(function()
task.wait(0.15)
if CURRENT_STYLE=="Normal" then return end
local nearest=findNearestGunDisplay()
if not nearest then return end
selectedGunDisplay=nearest
changeDisplayTextures(nearest)
end)
end)
print("[antonmvtwin] Gun Customizer Loaded")
]==]
SCRIPTS.sunsetCarpet=[==[
-- AI was used on this only on finding errors
-- Original Magic Carpet By Luckymaxer and Roblox
-- Original Script Style By ttyyuu12345
-- Open Source For Anyone to use
-- ✨ SUNSET EDITION — gradiente laranja→amarelo + trail branca ✨
function sandbox(var,func)
        local env = getfenv(func)
        local newenv = setmetatable({},{
                __index = function(self,k)
                        if k=="script" then
                                return var
                        else
                                return env[k]
                        end
                end,
        })
        setfenv(func,newenv)
        return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
Sound2 = Instance.new("Sound")
SpecialMesh3 = Instance.new("SpecialMesh")
Script6 = Instance.new("Script")
Script7 = Instance.new("Script")
LocalScript8 = Instance.new("LocalScript")
LocalScript9 = Instance.new("LocalScript")
RF1 = Instance.new("RemoteFunction")
RF2 = Instance.new("RemoteFunction")
A1 = Instance.new("Animation")
A2 = Instance.new("Animation")
Tool0.Name = "SunsetMagicCarpet"
Tool0.Parent = mas
Tool0.TextureId = ""
Tool0.Grip = CFrame.new(-1.5, 0, 0, 1.91068547e-15, -4.37113883e-08, -1, -1, -4.37113883e-08, -0, -4.37113883e-08, 1, -4.37113883e-08)
Part1.Name = "Handle"
Part1.Size = Vector3.new(3, 0.5, 3.5)
Part1.Color = Color3.fromRGB(255, 180, 50)
Part1.Material = Enum.Material.Neon
Part1.Parent = Tool0
Part1.Size = Vector3.new(1, 3.6000001430511475, 1)
SpecialMesh3.Parent = Part1
SpecialMesh3.MeshId = "http://www.roblox.com/asset/?id=223079737"
SpecialMesh3.TextureId = ""
SpecialMesh3.Scale = Vector3.new(1.125, 1.125, 1.125)
SpecialMesh3.VertexColor = Vector3.new(1, 1, 1)
SpecialMesh3.MeshType = Enum.MeshType.FileMesh
RF1.Name = "ServerControl"
RF1.Parent = Tool0
RF2.Name = "ClientControl"
RF2.Parent = Tool0
A1.Name = "Sit"
A1.AnimationId = "http://www.roblox.com/asset/?id=225279725"
A1.Parent = Tool0
A2.Name = "SitR15"
A2.AnimationId = "rbxassetid://1239927101"
A2.Parent = Tool0
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
Tool = script.Parent
Handle = Tool:WaitForChild("Handle")
player = Tool.Parent.Parent
hum = player.Character.Humanoid
local anim
local anim2
if hum.RigType == Enum.HumanoidRigType.R6 then
  A3 = Instance.new("Animation")
  A3.AnimationId = "http://www.roblox.com/asset/?id=225279725"
  A3.Parent = script
  anim = hum:LoadAnimation(A3)
  anim.Looped = true
else
  A4 = Instance.new("Animation")
  A4.AnimationId = "rbxassetid://1239927101"
  A4.Parent = script
  anim2 = hum:LoadAnimation(A4)
  anim2.Looped = true
end
Players = game:GetService("Players")
Debris = game:GetService("Debris")
RemovalMonitor = script:WaitForChild("RemovalMonitor")
CarpetPieces = {
	{MeshId = 223079795, Angle = 160},
	{MeshId = 223079835, Angle = 100},
	{MeshId = 223079888, Angle = 100},
	{MeshId = 223079981, Angle = 160},
}
CarpetColors = {
	Color3.fromRGB(255, 80, 40),
	Color3.fromRGB(255, 130, 45),
	Color3.fromRGB(255, 180, 50),
	Color3.fromRGB(255, 225, 90),
}
CarpetSize = Vector3.new(3, 0.5, 6.5)
BaseUrl = "http://www.roblox.com/asset/?id="
Rate = (1 / 10)
BasePart = Instance.new("Part")
BasePart.Material = Enum.Material.Plastic
BasePart.Shape = Enum.PartType.Block
BasePart.TopSurface = Enum.SurfaceType.Smooth
BasePart.BottomSurface = Enum.SurfaceType.Smooth
BasePart.FormFactor = Enum.FormFactor.Custom
BasePart.Size = Vector3.new(0.2, 0.2, 0.2)
BasePart.CanCollide = false
BasePart.Locked = true
local TRAIL_COLOR = Color3.fromRGB(255, 250, 230)
ColorPart = BasePart:Clone()
ColorPart.Name = "ColorPart"
ColorPart.Color = TRAIL_COLOR
ColorPart.Reflectance = 0.05
ColorPart.Transparency = 0
ColorPart.Material = Enum.Material.Neon
ColorPart.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.BackSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.TopSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.RightSurface = Enum.SurfaceType.SmoothNoOutlines
ColorPart.Size = Vector3.new(1, 1, 1)
ColorPart.Anchored = true
ColorPart.CanCollide = false
ColorMesh = Instance.new("SpecialMesh")
ColorMesh.Name = "Mesh"
ColorMesh.MeshType = Enum.MeshType.FileMesh
ColorMesh.MeshId = (BaseUrl .. "9856898")
ColorMesh.TextureId = ""
ColorMesh.Scale = (ColorPart.Size * 2)
ColorMesh.Offset = Vector3.new(0, 0, 0)
ColorMesh.VertexColor = Vector3.new(1, 1, 1)
ColorMesh.Parent = ColorPart
ColorLight = Instance.new("PointLight")
ColorLight.Name = "Light"
ColorLight.Brightness = 100
ColorLight.Range = 16
ColorLight.Shadows = false
ColorLight.Enabled = true
ColorLight.Color = Color3.fromRGB(255, 250, 230)
ColorLight.Parent = ColorPart
GoldenColors = {
	Vector3.new(1, 0.98, 0.88),
	Vector3.new(1, 0.99, 0.92),
	Vector3.new(1, 0.99, 0.95),
	Vector3.new(1, 1, 0.98),
	Vector3.new(1, 0.99, 0.95),
	Vector3.new(1, 0.99, 0.92),
	Vector3.new(1, 0.98, 0.88),
}
Animations = {
	Sit = {Animation = Tool:WaitForChild("Sit"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
}
Grips = {
	Normal = CFrame.new(-1.5, 0, -1.64999998, 0, 0, -1, -1, 8.90154915e-05, 0, 8.90154915e-05, 1, 0),
	Flying = CFrame.new(-1.5, 0.5, -1.64999998, -1, 0, -8.99756625e-09, -8.99756625e-09, 8.10000031e-08, 1, 7.28802977e-16, 0.99999994, -8.10000103e-08)
}
Flying = false
ToolEquipped = false
ServerControl = (Tool:FindFirstChild("ServerControl") or Instance.new("RemoteFunction"))
ServerControl.Name = "ServerControl"
ServerControl.Parent = Tool
ClientControl = (Tool:FindFirstChild("ClientControl") or Instance.new("RemoteFunction"))
ClientControl.Name = "ClientControl"
ClientControl.Parent = Tool
Handle.Transparency = 0
Tool.Grip = Grips.Normal
Tool.Enabled = true
function Clamp(Number, Min, Max)
	return math.max(math.min(Max, Number), Min)
end
function TransformModel(Objects, Center, NewCFrame, Recurse)
	local Objects = ((type(Objects) ~= "table" and {Objects}) or Objects)
	for i, v in pairs(Objects) do
		if v:IsA("BasePart") then
			v.CFrame = NewCFrame:toWorldSpace(Center:toObjectSpace(v.CFrame))
		end
		if Recurse then
			TransformModel(v:GetChildren(), Center, NewCFrame, true)
		end
	end
end
function Weld(Parent, PrimaryPart)
	local Parts = {}
	local Welds = {}
	local function WeldModel(Parent, PrimaryPart)
		for i, v in pairs(Parent:GetChildren()) do
			if v:IsA("BasePart") then
				if v ~= PrimaryPart then
					local Weld = Instance.new("Weld")
					Weld.Name = "Weld"
					Weld.Part0 = PrimaryPart
					Weld.Part1 = v
					Weld.C0 = PrimaryPart.CFrame:inverse()
					Weld.C1 = v.CFrame:inverse()
					Weld.Parent = PrimaryPart
					table.insert(Welds, Weld)
				end
				table.insert(Parts, v)
			end
			WeldModel(v, PrimaryPart)
		end
	end
	WeldModel(Parent, PrimaryPart)
	return Parts, Welds
end
function CleanUp()
	for i, v in pairs(Tool:GetChildren()) do
		if v:IsA("BasePart") and v ~= Handle then
			v:Destroy()
		end
	end
end
function CreateRainbow(Length)
	local RainbowModel = Instance.new("Model")
	RainbowModel.Name = "TrailPart"
	for i, v in pairs(GoldenColors) do
		local Part = ColorPart:Clone()
		Part.Name = "Part"
		Part.Size = Vector3.new(0.5, 0.5, Length)
		Part.CFrame = Part.CFrame * CFrame.new((Part.Size.X * (i - 1)), 0, 0)
		Part.Mesh.Scale = (Part.Size * 2)
		Part.Mesh.VertexColor = v
		Part.Light.Color = Color3.new(v.X, v.Y, v.Z)
		Part.Parent = RainbowModel
	end
	local RainbowBoundingBox = BasePart:Clone()
	RainbowBoundingBox.Name = "BoundingBox"
	RainbowBoundingBox.Transparency = 1
	RainbowBoundingBox.Size = RainbowModel:GetModelSize()
	RainbowBoundingBox.Anchored = true
	RainbowBoundingBox.CanCollide = false
	RainbowBoundingBox.CFrame = RainbowModel:GetModelCFrame()
	RainbowBoundingBox.Parent = RainbowModel
	return RainbowModel
end
function GetRainbowModel()
	local ModelName = (Player.Name .. "'s Trail")
	local Model = game:GetService("Workspace"):FindFirstChild(ModelName)
	if not Model then
		Model = Instance.new("Model")
		Model.Name = ModelName
		local RemovalMonitorClone = RemovalMonitor:Clone()
		RemovalMonitorClone.Disabled = false
		RemovalMonitorClone.Parent = Model
	end
	return Model
end
function CheckIfAlive()
	return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent and Player and Player.Parent) and true) or false)
end
function Activated()
	if not Tool.Enabled then
		return
	end
	Tool.Enabled = false
	Flying = not Flying
	if Flying then
		Handle.Transparency = 1
		CleanUp()
		local CarpetParts = {}
		for i, v in pairs(CarpetPieces) do
			local CarpetPart = BasePart:Clone()
			CarpetPart.Color = CarpetColors[i] or CarpetColors[#CarpetColors]
			CarpetPart.Material = Enum.Material.Neon
			CarpetPart.Reflectance = 0.1
			CarpetPart.CanCollide = false
			CarpetPart.Size = Vector3.new(CarpetSize.X, CarpetSize.Y, (CarpetSize.Z / #CarpetPieces))
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshType = Enum.MeshType.FileMesh
			Mesh.MeshId = (BaseUrl .. v.MeshId)
			Mesh.TextureId = ""
			Mesh.Scale = Vector3.new(1.125, 1.125, 1.125)
			Mesh.VertexColor = Vector3.new(1, 1, 1)
			Mesh.Offset = Vector3.new(0, 0, 0)
			Mesh.Parent = CarpetPart
			local Weld = Instance.new("Weld")
			Weld.Part0 = Handle
			Weld.Part1 = CarpetPart
			local XOffset = (((i == 1 or i == #CarpetPieces) and -0.005) or 0)
			local YOffset = ((-((Handle.Size.Z / 2) - (CarpetPart.Size.Z / 2))) + ((CarpetPart.Size.Z * (i - 1))) + ((i == 2 and 0.245) or (i == 3 and 0.04) or (i == #CarpetPieces and 0.28) or 0))
			Weld.C1 = CFrame.new(0, XOffset, YOffset)
			Weld.Parent = CarpetPart
			table.insert(CarpetParts, {Part = CarpetPart, Weld = Weld, InitialCFrame = Weld.C0, Angle = v.Angle})
			CarpetPart.Parent = Tool
		end	
		spawn(function()
			 if hum.RigType == Enum.HumanoidRigType.R6 then
                                        anim:Play()
                                     else
                                        anim2:Play()
                                     end
			Tool.Grip = Grips.Flying
		end)
		Torso.Anchored = true
		delay(.2,function()
			Torso.Anchored = false
			Torso.Velocity = Vector3.new(0,0,0)
			Torso.RotVelocity = Vector3.new(0,0,0)
		end)
		FlightSpin = Instance.new("BodyGyro")
		FlightSpin.Name = "FlightSpin"
		FlightSpin.P = 10000
		FlightSpin.maxTorque = Vector3.new(FlightSpin.P, FlightSpin.P, FlightSpin.P)*100
		FlightSpin.cframe = Torso.CFrame
		FlightPower = Instance.new("BodyVelocity")
		FlightPower.Name = "FlightPower"
		FlightPower.velocity = Vector3.new(0, 0, 0)
		FlightPower.maxForce = Vector3.new(0, 0, 0)
		FlightPower.P = 1000
		FlightHold = Instance.new("BodyPosition")
		FlightHold.Name = "FlightHold"
		FlightHold.P = 100000
		FlightHold.maxForce = Vector3.new(0, 0, 0)
		FlightHold.position = Torso.Position
		FlightSpin.Parent = Torso
		FlightPower.Parent = Torso
		FlightHold.Parent = Torso
		spawn(function()
			local LastPlace = nil
			while Flying and ToolEquipped and CheckIfAlive() do
				local CurrentPlace = Handle.Position
				local Velocity = Torso.Velocity
				Velocity = Vector3.new(Velocity.X, 0, Velocity.Z).magnitude
				if LastPlace and Velocity > 10 then
					spawn(function()
						local Model = GetRainbowModel()
						local Distance = (LastPlace - CurrentPlace).magnitude
						local Length = Distance + 3.5
						local RainbowModel = CreateRainbow(Length)
						local RainbowCFrame = CFrame.new((LastPlace + (CurrentPlace - LastPlace).unit * (Distance / 2)), CurrentPlace)
						TransformModel(RainbowModel, RainbowModel:GetModelCFrame(), RainbowCFrame, true)
						Debris:AddItem(RainbowModel, 1)
						RainbowModel.Parent = Model
						if Model and not Model.Parent then
							Model.Parent = game:GetService("Workspace")
						end
						LastPlace = CurrentPlace
					end)
				elseif not LastPlace then
					LastPlace = CurrentPlace
				end
				wait(Rate)
			end
		end)
	elseif not Flying then
		Torso.Velocity = Vector3.new(0, 0, 0)
		Torso.RotVelocity = Vector3.new(0, 0, 0)
		for i, v in pairs({FlightSpin, FlightPower, FlightHold}) do
			if v and v.Parent then
				v:Destroy()
			end
		end
		spawn(function()
                             if hum.RigType == Enum.HumanoidRigType.R6 then
                                anim:Stop()
                             else
                                anim2:Stop()
                             end
                           Tool.Grip = Grips.Normal
		end)
	end
	wait(2)
	Tool.Enabled = true
end
function Equipped(Mouse)
	Character = Tool.Parent
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("HumanoidRootPart")
	Player = Players:GetPlayerFromCharacter(Character)
	if not CheckIfAlive() then
		return
	end
	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			Animations = {
				Sit = {Animation = Tool:WaitForChild("SitR15"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
			}
		else
			Animations = {
				Sit = {Animation = Tool:WaitForChild("Sit"), FadeTime = nil, Weight = nil, Speed = nil, Duration = nil},
			}
		end
	end
	Tool.Grip = CFrame.new(-1.5, 0, 0, 1.91068547e-15, -4.37113883e-08, -1, -1, -4.37113883e-08, -0, -4.37113883e-08, 1, -4.37113883e-08)
	ToolEquipped = true
end
function Unequipped()
	Flying = false
	for i, v in pairs({FlightSpin, FlightPower, FlightHold}) do
		if v and v.Parent then
			v:Destroy()
		end
	end
	CleanUp()
	Handle.Transparency = 0
	ToolEquipped = false
     if hum.RigType == Enum.HumanoidRigType.R6 then
        anim:Stop()
     else
        anim2:Stop()
     end
end
function InvokeClient(Mode, Value)
	local ClientReturn = nil
	pcall(function()
		ClientReturn = ClientControl:InvokeClient(Player, Mode, Value)
	end)
	return ClientReturn
end
CleanUp()
Tool.Activated:connect(Activated)
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)
end))
Script7.Name = "RemovalMonitor"
Script7.Parent = Script6
table.insert(cors,sandbox(Script7,function()
Model = script.Parent
Debris = game:GetService("Debris")
Removing = false
function RemoveModel()
    if Removing then
        return
    end
    local Parts = {}
    for i, v in pairs(Model:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Parts, v)
        end
    end
    if #Parts == 0 then
        Removing = true
        Model.Name = ""
        Debris:AddItem(Model, 1)
    end
end
Model.ChildRemoved:connect(function(Child)
    RemoveModel()
end)
RemoveModel()
end))
LocalScript8.Parent = Tool0
table.insert(cors,sandbox(LocalScript8,function()
Tool = script.Parent
Handle = Tool:WaitForChild("Handle")
Players = game:GetService("Players")
RunService = game:GetService("RunService")
Camera = game:GetService("Workspace").CurrentCamera
Animations = {}
LocalObjects = {}
ServerControl = Tool:WaitForChild("ServerControl")
ClientControl = Tool:WaitForChild("ClientControl")
Rate = (1 / 60)
SpeedMultiplier = 1.5
CameraSpeed = {
	X = 40*SpeedMultiplier,
	Z = 60*SpeedMultiplier
}
Controls = {
	Forward = {
		Mode = false,
		Keys = {Key = "w", ByteKey = 17}
	},
	Backward = {
		Mode = false,
		Keys = {Key = "s", ByteKey = 18}
	},
	Left = {
		Mode = false,
		Keys = {Key = "a", ByteKey = 20}
	},
	Right = {
		Mode = false,
		Keys = {Key = "d", ByteKey = 19}
	},
}
ToolEquipped = false
function HandleFlightControl()
	if not CheckIfAlive() then
		return
	end
	if FightMonitor then
		FightMonitor:disconnect()
	end
	FightMonitor = Torso.ChildAdded:connect(function(Child)
		if Flying then
			return
		end
		if Child.Name == "FlightHold" then
			local FlightSpin = Torso:FindFirstChild("FlightSpin")
			local FlightPower = Torso:FindFirstChild("FlightPower")
			local FlightHold = Torso:FindFirstChild("FlightHold")
			if not FlightSpin or not FlightPower or not FlightHold then
				return
			end
			Flying = true
			Humanoid.WalkSpeed = 0
			Humanoid.PlatformStand = true
			Humanoid.AutoRotate = false
			DisableJump(true)
			Torso.Velocity = Vector3.new(0, 0, 0)
			Torso.RotVelocity = Vector3.new(0, 0, 0)
			while Flying and FlightSpin.Parent and FlightPower.Parent and FlightHold.Parent and CheckIfAlive() do
				local NewPush = Vector3.new(0, 0, 0)
				local ForwardVector = Camera.CoordinateFrame:vectorToWorldSpace(Vector3.new(0, 0, -1))
				local SideVector = Camera.CoordinateFrame:vectorToWorldSpace(Vector3.new(-1, 0, 0))
				local CoordinateFrame = Camera.CoordinateFrame
				local localControlVector = CFrame.new(Vector3.new(0,0,0),CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToObjectSpace(Humanoid.MoveDirection)
				NewPush = NewPush + ((ForwardVector * CameraSpeed.Z * -localControlVector.z) or NewPush)
				NewPush = NewPush + ((SideVector * CameraSpeed.X * -localControlVector.x) or NewPush)
				FlightSpin.cframe = CFrame.new(Vector3.new(0, 0, 0), ForwardVector)
				if NewPush.magnitude < 1 then
					FlightHold.maxForce = Vector3.new(FlightHold.P, FlightHold.P, FlightHold.P)
					FlightPower.maxForce = Vector3.new(0, 0, 0)
					FlightHold.position = Torso.Position
				else
					FlightHold.maxForce = Vector3.new(0, 0, 0)
					FlightPower.maxForce = Vector3.new((FlightPower.P * 100), (FlightPower.P * 100), (FlightPower.P * 100))
				end
				FlightPower.velocity = NewPush
				wait(Rate)
			end
			Flying = false
			if CheckIfAlive() then
				Torso.Velocity = Vector3.new(0, 0, 0)
				Torso.RotVelocity = Vector3.new(0, 0, 0)
				Humanoid.WalkSpeed = 16
				Humanoid.PlatformStand = false
				Humanoid.AutoRotate = true
				DisableJump(false)
				Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
			end
		end
	end)
end
function SetAnimation(mode, value)
	if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
		for i, v in pairs(Animations) do
			if v.Animation == value.Animation then
				v.AnimationTrack:Stop()
				table.remove(Animations, i)
			end
		end
		local AnimationTrack = Humanoid:LoadAnimation(value.Animation)
		table.insert(Animations, {Animation = value.Animation, AnimationTrack = AnimationTrack})
		AnimationTrack:Play(value.FadeTime, value.Weight, value.Speed)
	elseif mode == "StopAnimation" and value then
		for i, v in pairs(Animations) do
			if v.Animation == value.Animation then
				v.AnimationTrack:Stop()
				table.remove(Animations, i)
			end
		end
	end
end
function DisableJump(Boolean)
	if PreventJump then
		PreventJump:disconnect()
	end
	if Boolean then
		PreventJump = Humanoid.Changed:connect(function(Property)
			if Property ==  "Jump" then
				Humanoid.Jump = false
			end
		end)
	end
end
function CheckIfAlive()
	return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent and Player and Player.Parent) and true) or false)
end
function KeyPress(Key, Down)
	local Key = string.lower(Key)
	local ByteKey = string.byte(Key)
	for i, v in pairs(Controls) do
		if Key == v.Keys.Key or ByteKey == v.Keys.ByteKey then
			Controls[i].Mode = Down
		end
	end
end
function Equipped(Mouse)
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("HumanoidRootPart")
	ToolEquipped = true
	if not CheckIfAlive() then
		return
	end
	Mouse.KeyDown:connect(function(Key)
		KeyPress(Key, true)
	end)
	Mouse.KeyUp:connect(function(Key)
		KeyPress(Key, false)
	end)
	Spawn(HandleFlightControl)
end
function Unequipped()
	Flying = false
	LocalObjects = {}
	for i, v in pairs(Animations) do
		if v and v.AnimationTrack then
			v.AnimationTrack:Stop()
		end
	end
	for i, v in pairs({PreventJump, FightMonitor}) do
		if v then
			v:disconnect()
		end
	end
	for i, v in pairs(Controls) do
		Controls[i].Mode = false
	end
	Animations = {}
	ToolEquipped = false
end
function InvokeServer(mode, value)
	local ServerReturn
	pcall(function()
		ServerReturn = ServerControl:InvokeServer(mode, value)
	end)
	return ServerReturn
end
function OnClientInvoke(mode, value)
	if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
		SetAnimation("PlayAnimation", value)
	elseif mode == "StopAnimation" and value then
		SetAnimation("StopAnimation", value)
	elseif mode == "PlaySound" and value then
		value:Play()
	elseif mode == "StopSound" and value then
		value:Stop()
	end
end
ClientControl.OnClientInvoke = OnClientInvoke
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)
end))
LocalScript9.Name = "MouseIcon"
LocalScript9.Parent = Tool0
table.insert(cors,sandbox(LocalScript9,function()
Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"
Tool = script.Parent
Mouse = nil
function UpdateIcon()
    if Mouse then
        Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
    end
end
function OnEquipped(ToolMouse)
    Mouse = ToolMouse
    UpdateIcon()
end
function OnChanged(Property)
    if Property == "Enabled" then
        UpdateIcon()
    end
end
Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)
end))
for i,v in pairs(mas:GetChildren()) do
        v.Parent = game:GetService("Players").LocalPlayer.Backpack
        pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
        spawn(function()
                pcall(v)
        end)
end
]==]
SCRIPTS.darkPegasus=[==[
loadstring(game:HttpGet("https://pastefy.app/MVITXPKt/raw"))()
]==]
local gui=Instance.new("ScreenGui")
gui.Name="ccAdmMmvPanel"
gui.ResetOnSpawn=false
gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
gui.Parent=playerGui
local toggle=Instance.new("TextButton")
toggle.Size=UDim2.new(0,55,0,55)
toggle.Position=UDim2.new(0.5,-27,0.5,-27)
toggle.BackgroundColor3=PINK
toggle.Text="♡"
toggle.Font=Enum.Font.GothamBold
toggle.TextSize=26
toggle.TextColor3=WHITE
toggle.AutoButtonColor=false
toggle.Active=true
toggle.Parent=gui
Instance.new("UICorner",toggle).CornerRadius=UDim.new(1,0)
local toggleStroke=Instance.new("UIStroke",toggle)
toggleStroke.Color=PINK_DARK
toggleStroke.Thickness=2
local panel=Instance.new("Frame")
panel.Size=UDim2.new(0,540,0,420)
panel.Position=UDim2.new(0.5,-270,0.5,-210)
panel.BackgroundColor3=WHITE
panel.BorderSizePixel=0
panel.Visible=false
panel.Active=true
panel.ClipsDescendants=true
panel.Parent=gui
Instance.new("UICorner",panel).CornerRadius=UDim.new(0,18)
local panelStroke=Instance.new("UIStroke",panel)
panelStroke.Color=PINK_DARK
panelStroke.Thickness=2
local panelDragging=false
local panelDragStart=nil
local panelStartPos=nil
local header=Instance.new("Frame")
header.Size=UDim2.new(1,0,0,50)
header.BackgroundColor3=PINK
header.BackgroundTransparency=0.15
header.BorderSizePixel=0
header.ZIndex=3
header.Active=true
header.Parent=panel
Instance.new("UICorner",header).CornerRadius=UDim.new(0,18)
header.InputBegan:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
panelDragging=true
panelDragStart=input.Position
panelStartPos=panel.Position
end
end)
header.InputChanged:Connect(function(input)
if panelDragging and(input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch) then
local delta=input.Position-panelDragStart
panel.Position=UDim2.new(panelStartPos.X.Scale,panelStartPos.X.Offset+delta.X,panelStartPos.Y.Scale,panelStartPos.Y.Offset+delta.Y)
end
end)
UserInputService.InputEnded:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then panelDragging=false end
end)
local bg=Instance.new("ImageLabel")
bg.Name="Background"
bg.Size=UDim2.new(1,0,1,0)
bg.BackgroundTransparency=1
bg.Image=themeImage(THEMES[1].id)
bg.ImageTransparency=0.35
bg.ScaleType=Enum.ScaleType.Crop
bg.ZIndex=0
bg.Parent=panel
Instance.new("UICorner",bg).CornerRadius=UDim.new(0,18)
local titleLbl=Instance.new("TextLabel")
titleLbl.Size=UDim2.new(1,-70,1,0)
titleLbl.Position=UDim2.new(0,20,0,0)
titleLbl.BackgroundTransparency=1
titleLbl.Font=Enum.Font.GothamBold
titleLbl.Text="♡ cc adm mmv panel ♡"
titleLbl.TextColor3=WHITE
titleLbl.TextSize=20
titleLbl.TextXAlignment=Enum.TextXAlignment.Left
titleLbl.ZIndex=4
titleLbl.Parent=header
local closeBtn=Instance.new("TextButton")
closeBtn.Size=UDim2.new(0,32,0,32)
closeBtn.Position=UDim2.new(1,-42,0,9)
closeBtn.BackgroundColor3=WHITE
closeBtn.Text="✕"
closeBtn.Font=Enum.Font.GothamBold
closeBtn.TextSize=16
closeBtn.TextColor3=PINK_DARK
closeBtn.AutoButtonColor=false
closeBtn.ZIndex=4
closeBtn.Parent=header
Instance.new("UICorner",closeBtn).CornerRadius=UDim.new(1,0)
local tabBar=Instance.new("Frame")
tabBar.Size=UDim2.new(0,150,0,300)
tabBar.Position=UDim2.new(0,12,0,60)
tabBar.BackgroundColor3=PINK_LIGHT
tabBar.BackgroundTransparency=0.3
tabBar.BorderSizePixel=0
tabBar.ZIndex=2
tabBar.Parent=panel
Instance.new("UICorner",tabBar).CornerRadius=UDim.new(0,12)
local tabLayout=Instance.new("UIListLayout",tabBar)
tabLayout.Padding=UDim.new(0,6)
tabLayout.HorizontalAlignment=Enum.HorizontalAlignment.Center
tabLayout.SortOrder=Enum.SortOrder.LayoutOrder
local tabPad=Instance.new("UIPadding",tabBar)
tabPad.PaddingTop=UDim.new(0,10)
local content=Instance.new("Frame")
content.Size=UDim2.new(1,-180,0,200)
content.Position=UDim2.new(0,168,0,60)
content.BackgroundColor3=WHITE
content.BackgroundTransparency=0.15
content.BorderSizePixel=0
content.ZIndex=2
content.Parent=panel
Instance.new("UICorner",content).CornerRadius=UDim.new(0,12)
local themeFrame=Instance.new("Frame")
themeFrame.Size=UDim2.new(1,-24,0,140)
themeFrame.Position=UDim2.new(0,12,1,-150)
themeFrame.BackgroundColor3=WHITE
themeFrame.BackgroundTransparency=0.15
themeFrame.BorderSizePixel=0
themeFrame.ZIndex=2
themeFrame.Parent=panel
Instance.new("UICorner",themeFrame).CornerRadius=UDim.new(0,12)
local themeLabel=Instance.new("TextLabel")
themeLabel.Size=UDim2.new(1,-20,0,20)
themeLabel.Position=UDim2.new(0,10,0,4)
themeLabel.BackgroundTransparency=1
themeLabel.Font=Enum.Font.GothamBold
themeLabel.Text="♡ Panel Theme ♡"
themeLabel.TextColor3=TEXT_DARK
themeLabel.TextSize=13
themeLabel.TextXAlignment=Enum.TextXAlignment.Left
themeLabel.ZIndex=3
themeLabel.Parent=themeFrame
local themeBtnHolder=Instance.new("Frame")
themeBtnHolder.Size=UDim2.new(1,-20,0,110)
themeBtnHolder.Position=UDim2.new(0,10,0,26)
themeBtnHolder.BackgroundTransparency=1
themeBtnHolder.ZIndex=3
themeBtnHolder.Parent=themeFrame
local themeBtnLayout=Instance.new("UIGridLayout",themeBtnHolder)
themeBtnLayout.CellSize=UDim2.new(0,120,0,30)
themeBtnLayout.CellPadding=UDim2.new(0,6,0,6)
themeBtnLayout.SortOrder=Enum.SortOrder.LayoutOrder
local pages={}
local themeButtons={}
local function createTabButton(name,order)
local btn=Instance.new("TextButton")
btn.Size=UDim2.new(1,-16,0,34)
btn.BackgroundColor3=WHITE
btn.BackgroundTransparency=0.4
btn.Text=name
btn.Font=Enum.Font.GothamBold
btn.TextSize=12
btn.TextColor3=TEXT_DARK
btn.AutoButtonColor=false
btn.LayoutOrder=order
btn.ZIndex=3
btn.Parent=tabBar
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8)
return btn
end
local function createPage()
local page=Instance.new("Frame")
page.Size=UDim2.new(1,-20,1,-20)
page.Position=UDim2.new(0,10,0,10)
page.BackgroundTransparency=1
page.Visible=false
page.ZIndex=3
page.Parent=content
return page
end
local function makeExecuteBtn(parent,label,scriptKey)
local btn=Instance.new("TextButton")
btn.Size=UDim2.new(1,-20,0,50)
btn.Position=UDim2.new(0,10,0,80)
btn.BackgroundColor3=PINK
btn.Text=label
btn.Font=Enum.Font.GothamBold
btn.TextSize=15
btn.TextColor3=WHITE
btn.AutoButtonColor=false
btn.ZIndex=4
btn.Parent=parent
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,10)
local s=Instance.new("UIStroke",btn)
s.Color=PINK_DARK
s.Thickness=1.5
btn.MouseButton1Click:Connect(function()
btn.Text="♡ Running... ♡"
task.wait(0.2)
local success,err=pcall(function()
local fn=loadstring(SCRIPTS[scriptKey])
if fn then fn() else error("loadstring returned nil") end
end)
if success then btn.Text="♡ Executed! ♡" else btn.Text="♡ Error! Check console ♡" warn("[cc adm mmv panel] Error: "..tostring(err)) end
task.wait(1.8)
btn.Text=label
end)
end
local function buildPage(tabName,titleText,descText,scriptKey,order)
local tabBtn=createTabButton(tabName,order)
local page=createPage()
pages[tabName]={btn=tabBtn,page=page}
local t=Instance.new("TextLabel")
t.Size=UDim2.new(1,-20,0,30)
t.Position=UDim2.new(0,10,0,10)
t.BackgroundTransparency=1
t.Font=Enum.Font.GothamBold
t.Text=titleText
t.TextColor3=PINK_DARK
t.TextSize=18
t.TextXAlignment=Enum.TextXAlignment.Left
t.ZIndex=4
t.Parent=page
local d=Instance.new("TextLabel")
d.Size=UDim2.new(1,-20,0,40)
d.Position=UDim2.new(0,10,0,40)
d.BackgroundTransparency=1
d.Font=Enum.Font.Gotham
d.Text=descText
d.TextColor3=TEXT_DARK
d.TextSize=12
d.TextWrapped=true
d.TextXAlignment=Enum.TextXAlignment.Left
d.TextYAlignment=Enum.TextYAlignment.Top
d.ZIndex=4
d.Parent=page
makeExecuteBtn(page,"♡ Run ♡",scriptKey)
tabBtn.MouseButton1Click:Connect(function()
for _,p in pairs(pages) do
p.page.Visible=false
p.btn.BackgroundTransparency=0.4
p.btn.TextColor3=TEXT_DARK
end
page.Visible=true
tabBtn.BackgroundTransparency=0
tabBtn.TextColor3=WHITE
end)
end
buildPage("Water Bow ♡","Water Bow ♡","Crossbow of the Sea + water jump ♡","waterBow",1)
buildPage("Coil Gears ♡","Coil Gears ♡","Sonic Coils with Rainbow Gravity ♡","coilGears",2)
buildPage("Magic Carpet ♡","Magic Carpet ♡","Flying magic carpet ♡","magicCarpet",3)
buildPage("Kudo Fake Bomb ♡","Kudo Fake Bomb ♡","Fake bombs that launch you up ♡","kudoFakeBomb",4)
buildPage("Recolor Scope ♡","Recolor Scope ♡","Gun Customizer (antonmvtwin) ♡","recolorScope",5)
buildPage("Sunset Carpet ♡","Sunset Carpet ♡","Sunset gradient carpet + white trail ♡","sunsetCarpet",6)
buildPage("Dark Pegasus ♡","Dark Pegasus ♡","Dark Pegasus fly script ♡","darkPegasus",7)
pages["Water Bow ♡"].page.Visible=true
pages["Water Bow ♡"].btn.BackgroundTransparency=0
pages["Water Bow ♡"].btn.TextColor3=WHITE
local function applyTheme(index)
local theme=THEMES[index]
if not theme then return end
bg.Image=themeImage(theme.id)
for i,b in ipairs(themeButtons) do
if i==index then b.BackgroundColor3=PINK_DARK else b.BackgroundColor3=PINK end
end
end
for i,theme in ipairs(THEMES) do
local btn=Instance.new("TextButton")
btn.Size=UDim2.new(0,120,0,30)
btn.BackgroundColor3=PINK
btn.Text=theme.name.." ♡"
btn.Font=Enum.Font.GothamBold
btn.TextSize=10
btn.TextColor3=WHITE
btn.AutoButtonColor=false
btn.LayoutOrder=i
btn.ZIndex=4
btn.Parent=themeBtnHolder
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8)
local s=Instance.new("UIStroke",btn)
s.Color=PINK_DARK
s.Thickness=1.5
table.insert(themeButtons,btn)
btn.MouseButton1Click:Connect(function() applyTheme(i) end)
end
applyTheme(1)
closeBtn.MouseButton1Click:Connect(function() panel.Visible=false end)
local toggleDragging=false
local toggleDragStart=nil
local toggleStartPos=nil
local toggleMoved=false
toggle.InputBegan:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
toggleDragging=true
toggleMoved=false
toggleDragStart=input.Position
toggleStartPos=toggle.Position
end
end)
toggle.InputChanged:Connect(function(input)
if toggleDragging and(input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch) then
local delta=input.Position-toggleDragStart
if math.abs(delta.X)>5 or math.abs(delta.Y)>5 then toggleMoved=true end
toggle.Position=UDim2.new(toggleStartPos.X.Scale,toggleStartPos.X.Offset+delta.X,toggleStartPos.Y.Scale,toggleStartPos.Y.Offset+delta.Y)
end
end)
UserInputService.InputEnded:Connect(function(input)
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
if toggleDragging then
toggleDragging=false
if not toggleMoved then panel.Visible=not panel.Visible end
end
end
end)
print("♡ cc adm mmv panel loaded! ♡")
