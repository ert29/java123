local A_1 = "~ Loading XTREME V2 ~"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)

local player = game.Players.LocalPlayer
player.Character.Head.Mesh:Destroy()

plr = game.Players.LocalPlayer.Character
plr["InternationalFedora"].Name = "Fedora1"
plr["International Fedora"].Name = "Fedora2"

game.Players.LocalPlayer.Character["Fedora1"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["Fedora2"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Robloxclassicred"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["BlockheadBaseballCap"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Pal Hair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Kate Hair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Hat1"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Bedhead"].Handle.Mesh:Remove()

function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
HumanDied = false for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") then  _G.netless=game:GetService("RunService").Heartbeat:connect(function() v.AssemblyLinearVelocity = Vector3.new(-30,0,0) sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999) end) end end  local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {}  char.Archivable = true local reanim = char:Clone() reanim.Name = 'Nexo '..plr.Name..'' fl=Instance.new('Folder',char) fl.Name ='Nexo' reanim.Animate.Disabled=true char.HumanoidRootPart:Destroy() char.Humanoid:ChangeState(16)  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  function create(part, parent, p, r) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignOrientation.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] part.AlignOrientation.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part[part.Name].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  char.Torso['Left Shoulder']:Destroy() char.Torso['Right Shoulder']:Destroy() char.Torso['Left Hip']:Destroy() char.Torso['Right Hip']:Destroy()  create(char['Torso'],reanim['Torso']) create(char['Left Arm'],reanim['Left Arm']) create(char['Right Arm'],reanim['Right Arm']) create(char['Left Leg'],reanim['Left Leg']) create(char['Right Leg'],reanim['Right Leg'])  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  reanim.Parent = fl  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  table.insert(ct,reanim.Humanoid.Died:Connect(function() plr.Character = char char:BreakJoints() reanim:Destroy() game.Players:Chat('-gr') _G.netless:Disconnect() HumanDied = true for _,v in pairs(ct) do v:Disconnect() end end))  plr.Character = reanim workspace.CurrentCamera.CameraSubject = reanim.Humanoid

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()
if nm==true then
noplsmesh(yes)
end
end

--put the hat script converted below
reanim = game.Players.LocalPlayer.Character
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'q' then-- first mode
Mode='1'
elseif k == 'e' then-- second mode
Mode='2'
end
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mousechanger:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
reanim.Humanoid.JumpPower=60
reanim.Humanoid.WalkSpeed=35
hatset('Pink Hair','Torso',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.5+0*math.cos(sine/8),-2+0*math.cos(sine/8))*ANGLES(RAD(15+5*math.cos(sine/8)),RAD(90+10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Robloxclassicred','Torso',CFrame.new(),reanim['Robloxclassicred'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.5+0*math.cos(sine/8),2+0*math.cos(sine/8))*ANGLES(RAD(-15+5*math.cos(sine/8)),RAD(90+-10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Pal Hair','Torso',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),1.5+0*math.cos(sine/8),-4.5+0*math.cos(sine/8))*ANGLES(RAD(35+5*math.cos(sine/8)),RAD(90+20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('LavanderHair','Torso',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),-3+0*math.cos(sine/8))*ANGLES(RAD(25+5*math.cos(sine/8)),RAD(90+10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Kate Hair','Torso',CFrame.new(),reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.8+0*math.cos(sine/8),-5.5+0*math.cos(sine/8))*ANGLES(RAD(50+5*math.cos(sine/8)),RAD(90+20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Hat1','Torso',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),3+0*math.cos(sine/8))*ANGLES(RAD(-25+5*math.cos(sine/8)),RAD(90+-10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('BlockheadBaseballCap','Torso',CFrame.new(),reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),1.5+0*math.cos(sine/8),4.5+0*math.cos(sine/8))*ANGLES(RAD(-35+0*math.cos(sine/8)),RAD(90+-20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Bedhead','Torso',CFrame.new(),reanim['Bedhead'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.8+0*math.cos(sine/8),5.5+0*math.cos(sine/8))*ANGLES(RAD(-50+5*math.cos(sine/8)),RAD(90+-20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Fedora1','Torso',CFrame.new(),reanim['Fedora1'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),7+0*math.cos(sine/8))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(90+360*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
hatset('Fedora2','Torso',CFrame.new(),reanim['Fedora2'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),-7+0*math.cos(sine/8))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(90+360*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.5+0*math.cos(sine/8),-2+0*math.cos(sine/8))*ANGLES(RAD(15+5*math.cos(sine/8)),RAD(90+10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Robloxclassicred'].Handle.AccessoryWeld.C0 = reanim['Robloxclassicred'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.5+0*math.cos(sine/8),2+0*math.cos(sine/8))*ANGLES(RAD(-15+5*math.cos(sine/8)),RAD(90+-10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),1.5+0*math.cos(sine/8),-4.5+0*math.cos(sine/8))*ANGLES(RAD(35+5*math.cos(sine/8)),RAD(90+20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),-3+0*math.cos(sine/8))*ANGLES(RAD(25+5*math.cos(sine/8)),RAD(90+10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Kate Hair'].Handle.AccessoryWeld.C0 = reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.8+0*math.cos(sine/8),-5.5+0*math.cos(sine/8))*ANGLES(RAD(50+5*math.cos(sine/8)),RAD(90+20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),3+0*math.cos(sine/8))*ANGLES(RAD(-25+5*math.cos(sine/8)),RAD(90+-10*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0 = reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),1.5+0*math.cos(sine/8),4.5+0*math.cos(sine/8))*ANGLES(RAD(-35+5*math.cos(sine/8)),RAD(90+-20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Bedhead'].Handle.AccessoryWeld.C0 = reanim['Bedhead'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),0.8+0*math.cos(sine/8),5.5+0*math.cos(sine/8))*ANGLES(RAD(-50+5*math.cos(sine/8)),RAD(90+-20*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Fedora1'].Handle.AccessoryWeld.C0 = reanim['Fedora1'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),7+0*math.cos(sine/8))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(90+360*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
reanim['Fedora2'].Handle.AccessoryWeld.C0 = reanim['Fedora2'].Handle.AccessoryWeld.C0:Lerp(CF(-2+0*math.cos(sine/8),-1+0*math.cos(sine/8),-7+0*math.cos(sine/8))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(90+360*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10.5),5+0.4*math.cos(sine/12.5),0+0*math.cos(sine/10.5))*ANGLES(RAD(8+0*math.cos(sine/10.5)),RAD(6+0*math.cos(sine/10.5)),RAD(-3+0*math.cos(sine/10.5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10.5),0.3+0.15*math.cos(sine/10.5),0.3+0*math.cos(sine/10.5))*ANGLES(RAD(45+0*math.cos(sine/10.5)),RAD(10+0*math.cos(sine/10.5)),RAD(30+-5*math.cos(sine/10.5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.3+0*math.cos(sine/10.5),0.5+0.15*math.cos(sine/10.5),0+0*math.cos(sine/10.5))*ANGLES(RAD(60+0*math.cos(sine/10.5)),RAD(35+0*math.cos(sine/10.5)),RAD(-8+0*math.cos(sine/10.5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/10.5),-1+0*math.cos(sine/10.5),-0.5+0*math.cos(sine/10.5))*ANGLES(RAD(15+-3*math.cos(sine/10.5)),RAD(-25+0*math.cos(sine/10.5)),RAD(10+3.5*math.cos(sine/10.5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.7+0*math.cos(sine/10.5),-1.2+0*math.cos(sine/10.5),-0.6+0*math.cos(sine/10.5))*ANGLES(RAD(-30+-4*math.cos(sine/10.5)),RAD(25+0*math.cos(sine/10.5)),RAD(0+-3.5*math.cos(sine/10.5))),.3)
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here lol
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10.5),5+0.4*math.cos(sine/12.5),0+0*math.cos(sine/10.5))*ANGLES(RAD(8+0*math.cos(sine/10.5)),RAD(6+0*math.cos(sine/10.5)),RAD(-3+0*math.cos(sine/10.5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10.5),0.3+0.15*math.cos(sine/10.5),0.3+0*math.cos(sine/10.5))*ANGLES(RAD(45+0*math.cos(sine/10.5)),RAD(10+0*math.cos(sine/10.5)),RAD(30+-5*math.cos(sine/10.5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.3+0*math.cos(sine/10.5),0.5+0.15*math.cos(sine/10.5),0+0*math.cos(sine/10.5))*ANGLES(RAD(60+0*math.cos(sine/10.5)),RAD(35+0*math.cos(sine/10.5)),RAD(-8+0*math.cos(sine/10.5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/10.5),-1+0*math.cos(sine/10.5),-0.5+0*math.cos(sine/10.5))*ANGLES(RAD(15+-3*math.cos(sine/10.5)),RAD(-25+0*math.cos(sine/10.5)),RAD(10+3.5*math.cos(sine/10.5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.7+0*math.cos(sine/10.5),-1.2+0*math.cos(sine/10.5),-0.6+0*math.cos(sine/10.5))*ANGLES(RAD(-30+-4*math.cos(sine/10.5)),RAD(25+0*math.cos(sine/10.5)),RAD(0+-3.5*math.cos(sine/10.5))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/12.5),5+0.4*math.cos(sine/12.5),0+0*math.cos(sine/12.5))*ANGLES(RAD(-25+0*math.cos(sine/12.5)),RAD(0+0*math.cos(sine/12.5)),RAD(0+0*math.cos(sine/12.5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.3+0.15*math.cos(sine/9),0.3+0*math.cos(sine/9))*ANGLES(RAD(-52+0*math.cos(sine/9)),RAD(-27+0*math.cos(sine/9)),RAD(31+3*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.2+0*math.cos(sine/9),0.5+0.15*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-38+0*math.cos(sine/9)),RAD(22+0*math.cos(sine/9)),RAD(-32+3*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/9),-1+0*math.cos(sine/9),-0.5+0*math.cos(sine/9))*ANGLES(RAD(15+-3*math.cos(sine/9)),RAD(-25+0*math.cos(sine/9)),RAD(10+3.5*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.7+0*math.cos(sine/9),-1.2+0*math.cos(sine/9),-0.6+0*math.cos(sine/9))*ANGLES(RAD(-30+-4*math.cos(sine/9)),RAD(25+0*math.cos(sine/9)),RAD(0+-3.5*math.cos(sine/9))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/12.5),5+0.4*math.cos(sine/12.5),0+0*math.cos(sine/12.5))*ANGLES(RAD(-25+0*math.cos(sine/12.5)),RAD(0+0*math.cos(sine/12.5)),RAD(0+0*math.cos(sine/12.5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.3+0.15*math.cos(sine/9),0.3+0*math.cos(sine/9))*ANGLES(RAD(-52+0*math.cos(sine/9)),RAD(-27+0*math.cos(sine/9)),RAD(31+3*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.2+0*math.cos(sine/9),0.5+0.15*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-38+0*math.cos(sine/9)),RAD(22+0*math.cos(sine/9)),RAD(-32+3*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/9),-1+0*math.cos(sine/9),-0.5+0*math.cos(sine/9))*ANGLES(RAD(15+-3*math.cos(sine/9)),RAD(-25+0*math.cos(sine/9)),RAD(10+3.5*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.7+0*math.cos(sine/9),-1.2+0*math.cos(sine/9),-0.6+0*math.cos(sine/9))*ANGLES(RAD(-30+-4*math.cos(sine/9)),RAD(25+0*math.cos(sine/9)),RAD(0+-3.5*math.cos(sine/9))),.3)
end
elseif Mode == '2' then
reanim.Humanoid.JumpPower=60
reanim.Humanoid.WalkSpeed=20
hatset('Robloxclassicred','Right Leg',CFrame.new(),reanim['Robloxclassicred'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Pink Hair','Left Leg',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Pal Hair','Left Leg',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),4+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('LavanderHair','Right Leg',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),4+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Kate Hair','Right Arm',CFrame.new(),reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Hat1','Left Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Bedhead','Torso',CFrame.new(),reanim['Bedhead'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),0+1.5*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('BlockheadBaseballCap','Torso',CFrame.new(),reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),0+1.5*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Fedora1','Right Arm',CFrame.new(),reanim['Fedora1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),3.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Fedora2','Left Arm',CFrame.new(),reanim['Fedora2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),3.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['Robloxclassicred'].Handle.AccessoryWeld.C0 = reanim['Robloxclassicred'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),4+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),4+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Kate Hair'].Handle.AccessoryWeld.C0 = reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(100+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Bedhead'].Handle.AccessoryWeld.C0 = reanim['Bedhead'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),0+1.5*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0 = reanim['BlockheadBaseballCap'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),0+1.5*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Fedora1'].Handle.AccessoryWeld.C0 = reanim['Fedora1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),3.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Fedora2'].Handle.AccessoryWeld.C0 = reanim['Fedora2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),3.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),4+0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+0*math.cos(sine/8)),RAD(-15+0*math.cos(sine/8)),RAD(0+5*math.cos(sine/8))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+0*math.cos(sine/8)),RAD(15+0*math.cos(sine/8)),RAD(0+-5*math.cos(sine/8))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+-0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/9),-1+-0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here lol
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),4+0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+0*math.cos(sine/8)),RAD(-15+0*math.cos(sine/8)),RAD(0+5*math.cos(sine/8))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+0*math.cos(sine/8)),RAD(15+0*math.cos(sine/8)),RAD(0+-5*math.cos(sine/8))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+-0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/9),-1+-0.25*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+-35*math.cos(sine/7)),RAD(-15+0*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+35*math.cos(sine/7)),RAD(15+0*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0.5*math.cos(sine/7))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+-0.5*math.cos(sine/7))*ANGLES(RAD(0+25*math.cos(sine/8)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+-35*math.cos(sine/7)),RAD(-15+0*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/8),0.5+0*math.cos(sine/8),0+0*math.cos(sine/8))*ANGLES(RAD(0+35*math.cos(sine/7)),RAD(15+0*math.cos(sine/8)),RAD(0+0*math.cos(sine/8))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0.5*math.cos(sine/7))*ANGLES(RAD(0+-25*math.cos(sine/8)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+-0.5*math.cos(sine/7))*ANGLES(RAD(0+25*math.cos(sine/8)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
