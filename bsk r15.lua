--game.Players.LocalPlayer.Character["CueBall"].Handle.Mesh:Remove()


HumanDied = false
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,-25.05,0)
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",1.0000000331814e+32)
end)
end
end

local plr = game.Players.LocalPlayer
local Character = plr.Character
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")

Character.Archivable = true

RunService.Stepped:Connect(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false
end
end
end)

local Rig = game:GetObjects("rbxassetid://5088298388")[1]
Rig.Parent = Character
Rig.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame
Rig.Name = "R6"

for i,v in next, Character.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
Character.Animate:Remove()
end

for _, RigLimbs in next, Rig:GetDescendants() do
if RigLimbs:IsA("BasePart") then
RigLimbs.Transparency = 1
end
end

Character.LeftUpperArm.LeftShoulder:Remove()
Character.RightUpperArm.RightShoulder:Remove()
Character.LeftUpperLeg.LeftHip:Remove()
Character.RightUpperLeg.RightHip:Remove()

function create(part, parent, p, r)
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.Attachment.Name = "n"..part.Name
parent.Attachment.Name = "n"..part.Name
part.AlignPosition.Attachment0 = part["n"..part.Name]
part.AlignOrientation.Attachment0 = part["n"..part.Name]
part.AlignPosition.Attachment1 = parent["n"..part.Name]
part.AlignOrientation.Attachment1 = parent["n"..part.Name]
parent["n"..part.Name].Position = p or Vector3.new()
part["n"..part.Name].Orientation = r or Vector3.new()
part.AlignPosition.MaxForce = 999999999
part.AlignPosition.MaxVelocity = math.huge
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = math.huge
part.AlignOrientation.Responsiveness = math.huge
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 999999999
end

create(Character.UpperTorso,Rig['Torso'],Vector3.new(0,0.3,0))
create(Character.LeftUpperArm,Rig['Left Arm'],Vector3.new(0,0.5,0))
create(Character.RightUpperArm,Rig['Right Arm'],Vector3.new(0,0.5,0))
create(Character.LeftUpperLeg,Rig['Left Leg'],Vector3.new(0,0.6,0))
create(Character.RightUpperLeg,Rig['Right Leg'],Vector3.new(0,0.6,0))

for i,v in next, Character:GetDescendants() do
if v:IsA('Accessory') then
hatclone=v:Clone()
hatclone.Parent = Rig
hatclone.Handle.Transparency = 1
v.Handle:BreakJoints()
create(v.Handle,Rig[v.Name].Handle)
if hatclone.Handle.AccessoryWeld.Part0 == Character.Head then
hatclone.Handle.AccessoryWeld.Part0 = Rig.Head
end
end
end

local ct = {}

table.insert(ct,Rig.Humanoid.Died:Connect(function()
for i,v in pairs(ct) do v:Disconnect() end
plr.Character = Character
plr.Character.Head:Remove()
Camera.CameraSubject = Character.Humanoid
reanimated = false
HumanDied = true
end))

table.insert(ct,Character.Humanoid.Died:Connect(function()
for i,v in pairs(ct) do v:Disconnect() end
plr.Character = Character
plr.Character.Head:Remove()
Camera.CameraSubject = Character.Humanoid
reanimated = false
HumanDied = true
end))

plr.Character = Rig
Camera.CameraSubject = Rig.Humanoid


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

--put the hat script converted here do not put it in loop or it will make ur camera bugged.
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

reanim.Humanoid.WalkSpeed=18.5

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
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
if Root.Velocity.y > 1 then -- jump
hatset('CueBall','Right Arm',CFrame.new(),reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['CueBall'].Handle.AccessoryWeld.C0 = reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(2.5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-2.5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
hatset('CueBall','Right Arm',CFrame.new(),reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['CueBall'].Handle.AccessoryWeld.C0 = reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(2.5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-2.5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
hatset('CueBall','Right Arm',CFrame.new(),reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['CueBall'].Handle.AccessoryWeld.C0 = reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(-2.5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-2.5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
hatset('CueBall','Right Arm',CFrame.new(),reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),-1.5+1.5*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['CueBall'].Handle.AccessoryWeld.C0 = reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),-1.5+1.5*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-25+1.5*math.cos(sine/13))*lookvel,RAD(0+0*math.cos(sine/13)),RAD(-10+0*math.cos(sine/13))*rightvel),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+15*math.cos(sine/13)),RAD(-10+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13))*rightvel),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+-0.5*math.cos(sine/13))*ANGLES(RAD(10+30*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+-0.65*math.cos(sine/10)*lookvel)*ANGLES(RAD(15+45*math.cos(sine/10))*lookvel,RAD(-5+0*math.cos(sine/10)),RAD(1+35*math.cos(sine/10))*rightvel),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0.65*math.cos(sine/10)*lookvel)*ANGLES(RAD(15+-45*math.cos(sine/10))*lookvel,RAD(5+0*math.cos(sine/10)),RAD(-1+-35*math.cos(sine/10))*rightvel),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
hatset('CueBall','Right Arm',CFrame.new(),reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),-1.5+1.5*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['CueBall'].Handle.AccessoryWeld.C0 = reanim['CueBall'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.5+0*math.cos(sine/13),-1.5+1.5*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-25+1.5*math.cos(sine/13))*lookvel,RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+15*math.cos(sine/13)),RAD(-10+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+-0.5*math.cos(sine/13))*ANGLES(RAD(10+30*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+-0.65*math.cos(sine/10)*lookvel)*ANGLES(RAD(15+45*math.cos(sine/10))*lookvel,RAD(-5+0*math.cos(sine/10)),RAD(1+35*math.cos(sine/10))*rightvel),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0.65*math.cos(sine/10)*lookvel)*ANGLES(RAD(15+-45*math.cos(sine/10))*lookvel,RAD(5+0*math.cos(sine/10)),RAD(-1+-35*math.cos(sine/10))*rightvel),.3)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
