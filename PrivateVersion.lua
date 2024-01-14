

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(3)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Weapon = {}
 for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
   if v:IsA("Tool") then 
     table.insert(Weapon,v.Name)
   end 
  end 

  getgenv().Weapon = ""
  getgenv().Ammount = ""
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)


local function checkquest()
  local Level =  game:GetService("Players").LocalPlayer.ProfileService.Stats.Level.Value 
   if Level == 1 or Level <= 19 then 

   MON = "Bandit"
   QUESTNUMBER = "1"
   QUESTNAME = "QuestBandit"
   QUESTDESC = "DEFEAT BANDITS"
   QUESTCFRAME = CFrame.new(3617.29785, 73.0931091, -2554.43164, -0.70696485, -7.26210345e-08, -0.707248688, -5.88657922e-09, 1, -9.67968248e-08, 0.707248688, -6.42686757e-08, -0.70696485)
   MONCFRAME = CFrame.new(3563.27295, 67.198494, -2443.0271, -0.996951103, 7.51098952e-08, 0.0780291632, 7.49817488e-08, 1, -4.57218441e-09, -0.0780291632, 1.29251854e-09, -0.996951103) 
   elseif Level == 20 or Level <= 24 then 
    MON = "Bandit Boss"
    QUESTNUMBER = "2"
    QUESTNAME = "QuestBanditBoss"
    QUESTDESC = "DEFEAT BANDIT BOSS"
    QUESTCFRAME = CFrame.new(3262.71509, 72.7965164, -2282.16333, 0.751643479, -2.08843272e-08, -0.659569621, -4.61007721e-09, 1, -3.69171964e-08, 0.659569621, 3.07892378e-08, 0.751643479)
    MONCFRAME = CFrame.new(3205.26855, 66.6982498, -2080.08228, -0.997373819, 2.42117881e-09, 0.0724254623, -5.53496762e-11, 1, -3.4192162e-08, -0.0724254623, -3.41063782e-08, -0.997373819)
  elseif Level == 25 or Level <= 49 then 
    MON = "Clown Pirate"
    QUESTNUMBER = "3"
    QUESTNAME = "QuestClownPirate"
    QUESTDESC = "DEFEAT CLOWN PIRATES"
    QUESTCFRAME = CFrame.new(3437.28442, 93.6155243, -6798.78076, 0.999041796, 4.1016186e-09, -0.0437665507, -3.73738374e-09, 1, 8.40404901e-09, 0.0437665507, -8.23242363e-09, 0.999041796)
    MONCFRAME = CFrame.new(3463.87793, 91.7500687, -6671.85645, 0.969406843, -4.2878451e-08, -0.245459527, 2.61659121e-08, 1, -7.13479693e-08, 0.245459527, 6.27425365e-08, 0.969406843)
  elseif Level == 50 or Level <= 74 then 
    MON = "Clown Captain"
    QUESTNUMBER = "4"
    QUESTNAME = "QuestClownCaptain"
    QUESTDESC = "DEFEAT CLOWN CAPTAIN"
    QUESTCFRAME = CFrame.new(3283.37842, 94.5288544, -6284.55713, 0.306442291, 7.37411625e-08, 0.951889217, -1.29025262e-08, 1, -7.33145029e-08, -0.951889217, 1.01848876e-08, 0.306442291)
    MONCFRAME = CFrame.new(3461.23682, 88.7480011, -6229.02686, -0.973838806, -2.85684685e-08, -0.227239877, -1.8265446e-08, 1, -4.74426756e-08, 0.227239877, -4.20508819e-08, -0.973838806)
  elseif Level == 75 or Level <= 109 then 
    MON = "Evil Pirate"
    QUESTNUMBER = "5"
    QUESTNAME = "QuestEvilPirate"
    QUESTDESC = "DEFEAT EVIL PIRATES"
    QUESTCFRAME = CFrame.new(7523.66455, 119.685997, -6191.35693, 0.284684867, -1.53789728e-08, -0.958621144, 8.19049495e-10, 1, -1.57995697e-08, 0.958621144, 3.71274034e-09, 0.284684867)
    MONCFRAME = CFrame.new(-406.585876, 64.3985901, -6461.3457, -0.910232604, -6.0712523e-08, 0.414097369, -7.54265912e-08, 1, -1.91819947e-08, -0.414097369, -4.86940301e-08, -0.910232604)
  elseif Level == 110 or Level <= 124 then 
    MON = "Smoke"
    QUESTNUMBER = "6"
    QUESTNAME = "QuestSmoke"
    QUESTDESC = "DEFEAT SMOKE"
    QUESTCFRAME = CFrame.new(-948.757324, 71.8985367, -6373.35742, 0.0295760278, -6.24338341e-08, 0.999562562, 5.84237583e-08, 1, 6.07324608e-08, -0.999562562, 5.66019764e-08, 0.0295760278)
    MONCFRAME = CFrame.new(-1137.19397, 73.3985672, -6500.14941, 0.00148936769, 7.8776786e-08, 0.999998868, 1.08348779e-08, 1, -7.87930148e-08, -0.999998868, 1.09522169e-08, 0.00148936769)
  elseif Level == 125 or Level <= 149 then 
    MON = "Angry Villager"
    QUESTNUMBER = "7"
    QUESTNAME = "QuestAngryVillager"
    QUESTDESC = "DEFEAT ANGRY VILLAGERS"
    QUESTCFRAME = CFrame.new(7523.48193, 120.091789, -6192.87793, -0.0456903055, -2.20424425e-08, -0.998955667, 1.45968677e-08, 1, -2.27331185e-08, 0.998955667, -1.56203068e-08, -0.0456903055)
    MONCFRAME = CFrame.new(7217.06299, 131.634048, -6114.69531, 0.44525969, 5.23165333e-08, 0.895401478, -1.80906312e-08, 1, -4.94320211e-08, -0.895401478, 5.81170845e-09, 0.44525969)
  elseif Level == 150 or Level <= 199 then 
    MON = "Claws"
    QUESTNUMBER = "20"
    QUESTNAME = "QuestClaws"
    QUESTDESC = "DEFEAT CLAWS"
    QUESTCFRAME = CFrame.new(7648.02979, 137.416245, -6453.05859, 0.870843232, -6.72678055e-08, 0.491560817, 5.96135479e-08, 1, 3.12346948e-08, -0.491560817, 2.10315987e-09, 0.870843232)
    MONCFRAME = CFrame.new(7743.63721, 132.134125, -6612.43994, 0.998338938, -3.64697827e-09, -0.0576137118, 7.78614881e-11, 1, -6.1951333e-08, 0.0576137118, 6.18439415e-08, 0.998338938)
  elseif Level == 200 or Level <= 249 then 
    MON = "Fishman"
    QUESTNUMBER = "8"
    QUESTNAME = "QuestFishman"
    QUESTDESC = "DEFEAT FISHMEN"
    QUESTCFRAME = CFrame.new(-574.873352, 72.0632095, -10462.7285, -0.735158265, 3.13335811e-08, 0.677895546, 1.17494512e-08, 1, -3.34798997e-08, -0.677895546, -1.66481247e-08, -0.735158265)
    MONCFRAME = CFrame.new(-934.252319, 68.327179, -10747.1406, 0.667479873, -5.58753888e-09, 0.744627833, 8.93026595e-08, 1, -7.25465625e-08, -0.744627833, 1.14920617e-07, 0.667479873)
  elseif Level == 250 or Level <= 274 then 
    MON = "Jaw"
    QUESTNUMBER = "9"
    QUESTNAME = "QuestJaw"
    QUESTDESC = "DEFEAT JAW"
    QUESTCFRAME = CFrame.new(-1072.65698, 68.0161438, -10124.8672, 0.450201035, 7.50049338e-08, 0.892927229, 1.5156564e-08, 1, -9.16406506e-08, -0.892927229, 5.47904229e-08, 0.450201035)
    MONCFRAME = CFrame.new(-771.745911, 66.7418289, -9924.68945, -0.599197865, -5.75382053e-08, -0.800600946, 1.71046448e-08, 1, -8.46704893e-08, 0.800600946, -6.44283702e-08, -0.599197865)
  elseif Level == 275 or Level <= 299 then 
    MON = "Desert Thief"
    QUESTNUMBER = "10"
    QUESTNAME = "QuestDesertTheif"  
    QUESTDESC = "DEFEAT DESERT THIEFS"
    QUESTCFRAME = CFrame.new(7790.04395, 70.2911835, -2471.24463, -0.45951423, -6.70422793e-08, -0.888170421, -2.38113684e-09, 1, -7.42516448e-08, 0.888170421, -3.20048308e-08, -0.45951423)
    MONCFRAME = CFrame.new(7660.29785, 63.5776863, -2164.39697, 0.939238429, 4.997964e-08, 0.343265414, -2.4408747e-08, 1, -7.88136703e-08, -0.343265414, 6.56461481e-08, 0.939238429)
  elseif Level == 300 or Level <= 349 then 
    MON = "Desert King"
    QUESTNUMBER = "11"
    QUESTNAME = "QuestDesertKing"  
    QUESTDESC = "DEFEAT DESERT KING"
    QUESTCFRAME = CFrame.new(8320.47754, 76.6048889, -2143.23926, -0.956740439, -4.10248324e-09, 0.290942907, -6.41958975e-09, 1, -7.009616e-09, -0.290942907, -8.57411742e-09, -0.956740439)
    MONCFRAME = CFrame.new(8331.47461, 83.5316544, -1629.3407, -0.611137033, 0.0829271972, -0.787168741, -0.0144163705, 0.993165433, 0.115821168, 0.791393518, 0.0821307227, -0.605764687)
  elseif Level == 350 or Level <= 399 then 
    MON = "Strong Marine"
    QUESTNUMBER = "12"
    QUESTNAME = "QuestStrongMarine"  
    QUESTDESC = "DEFEAT STRONG MARINE"
    QUESTCFRAME = CFrame.new(7330.2041, 82.8796997, -10423.1484, 0.909349442, 5.18657934e-08, 0.416033149, -7.31819316e-09, 1, -1.08671628e-07, -0.416033149, 9.57758743e-08, 0.909349442)
    MONCFRAME = CFrame.new(7564.51123, 78.6675797, -10261.498, 0.584960878, -0.000944927277, -0.811060965, 0.000133147041, 0.999999404, -0.0010690206, 0.811061502, 0.000517344859, 0.584960639)
  elseif Level == 400 or Level <= 424 then 
    MON = "Light"
    QUESTNUMBER = "21"
    QUESTNAME = "QuestLight"  
    QUESTDESC = "DEFEAT LIGHT"
    QUESTCFRAME = CFrame.new(7425.52051, 82.7582321, -9643.45996, -0.989167511, -2.01826977e-09, 0.146791264, 2.48941718e-11, 1, 1.39170009e-08, -0.146791264, 1.37698999e-08, -0.989167511)
    MONCFRAME = CFrame.new(7341.74707, 62.3918152, -9940.50781, 0.599283695, 0.154115275, -0.785561919, -0.0219470486, 0.984088123, 0.176320285, 0.800235868, -0.0884250998, 0.59313035)
  elseif Level == 425 or Level <= 449 then 
    MON = "Monkey"
    QUESTNUMBER = "13"
    QUESTNAME = "QuestMonkey"  
    QUESTDESC = "DEFEAT MONKEYS"
    QUESTCFRAME = CFrame.new(-3393.65503, 153.619904, -2071.15137, 0.149915949, 8.1645581e-08, -0.988698721, -6.29127612e-08, 1, 7.3039395e-08, 0.988698721, 5.12519982e-08, 0.149915949)
    MONCFRAME = CFrame.new(-3572.24268, 149.256668, -1924.39001, -0.776492596, -0.0128524732, 0.629995227, -0.00220115972, 0.999841213, 0.0176846534, -0.630122483, 0.0123452833, -0.776397586)
  elseif Level == 450 or Level <= 499 then 
    MON = "Gorilla King"
    QUESTNUMBER = "14"
    QUESTNAME = "QuestGorillaKing"  
    QUESTDESC = "DEFEAT GORILLA KING"
    QUESTCFRAME = CFrame.new(-3625.63525, 148.5905, -1458.31189, -0.623226464, 2.72579275e-08, 0.78204143, 1.11510223e-08, 1, -2.59683386e-08, -0.78204143, -7.46359419e-09, -0.623226464)
    MONCFRAME = CFrame.new(-3781.8186, 149.60437, -1517.70667, -0.640031338, -0.0276027601, 0.767852843, -0.0040518106, 0.99946183, 0.0325513147, -0.768338084, 0.0177226681, -0.63979876)
  elseif Level == 500 or Level <= 549 then 
    MON = "Ice Monster"
    QUESTNUMBER = "15"
    QUESTNAME = "QuestIceMonster"  
    QUESTDESC = "DEFEAT ICE MONSTERS"
    QUESTCFRAME = CFrame.new(-4742.36133, 75.1267395, -6372.72119, 0.424670398, 5.85888937e-09, 0.905348003, 4.57276039e-09, 1, -8.61636096e-09, -0.905348003, 7.79905296e-09, 0.424670398)
    MONCFRAME = CFrame.new(-5004.26318, 72.6412125, -6011.48926, -0.0151829207, -0.131156668, 0.991245389, -0.0162943881, 0.991260469, 0.130909085, -0.999751925, -0.0141641544, -0.0171873476)
  elseif Level == 550 or Level <= 574 then 
    MON = "Ice"
    QUESTNUMBER = "22"
    QUESTNAME = "QuestIce"  
    QUESTDESC = "Defeat Ice"
    QUESTCFRAME = CFrame.new(-4660.55127, 73.9795914, -6947.74854, -0.979781628, 3.2857244e-08, 0.200069845, 1.91884126e-08, 1, -7.02594178e-08, -0.200069845, -6.49998597e-08, -0.979781628)
    MONCFRAME = CFrame.new(-4916.78467, 77.0365448, -6946.71729, 0.0848041996, -0.149977386, 0.985045671, -0.0189304091, 0.988186061, 0.152085274, -0.996217787, -0.0315447859, 0.0809632018)
  elseif Level == 575 or Level <= 599 then 
    MON = "Skypiean"
    QUESTNUMBER = "16"
    QUESTNAME = "QuestSkypiean"  
    QUESTDESC = "DEFEAT SKYPIEANS"
    QUESTCFRAME = CFrame.new(3733.52637, 1544.62939, -14410.1406, 0.972511232, 4.15537365e-08, 0.23285602, -5.14234486e-08, 1, 3.63149013e-08, -0.23285602, -4.72909072e-08, 0.972511232)
    MONCFRAME = CFrame.new(3667.65308, 1539.9458, -14752.1465, 0.988632858, -0.00048204168, 0.150348887, -0.00219860626, 0.999841571, 0.0176627841, -0.150333583, -0.0177925657, 0.988475204)
  elseif Level == 600 or Level <= 649 then 
    MON = "Thunder Lord"
    QUESTNUMBER = "17"
    QUESTNAME = "QuestThunderLord"  
    QUESTDESC = "DEFEAT THUNDER LORD"
    QUESTCFRAME = CFrame.new(4531.49707, 2403.5188, -17669.2441, 0.966441393, 8.03377809e-09, -0.256887287, -1.36222222e-09, 1, 2.61487081e-08, 0.256887287, -2.49212562e-08, 0.966441393)
    MONCFRAME = CFrame.new(4531.49707, 2403.5188, -17669.2441, 0.966441393, 8.03377809e-09, -0.256887287, -1.36222222e-09, 1, 2.61487081e-08, 0.256887287, -2.49212562e-08, 0.966441393)
  elseif Level == 650 or Level <= 749 then 
    MON = "Yeti"
    QUESTNUMBER = "18"
    QUESTNAME = "QuestYeti"  
    QUESTDESC = "DEFEAT YETI"
    QUESTCFRAME = CFrame.new(12120.5264, 98.6005707, -6435.70117, 0.0676262304, -2.95007823e-08, 0.997710705, -8.69510741e-10, 1, 2.96274099e-08, -0.997710705, -2.87111024e-09, 0.0676262304)
    MONCFRAME = CFrame.new(12120.5264, 98.6005707, -6435.70117, 0.0676262304, -2.95007823e-08, 0.997710705, -8.69510741e-10, 1, 2.96274099e-08, -0.997710705, -2.87111024e-09, 0.0676262304)
  elseif Level == 750 or Level <= 9999999 then 
    MON = "Donut"
    QUESTNUMBER = "23"
    QUESTNAME = "QuestDonut"  
    QUESTDESC = "DEFEAT DONUT"
    QUESTCFRAME = CFrame.new(-3053.09888, 1894.78381, 79895.5078, 0.981168866, -5.14718224e-08, -0.193151921, 3.39696804e-08, 1, -9.39251876e-08, 0.193151921, 8.55951612e-08, 0.981168866)
    MONCFRAME = CFrame.new(-3053.09888, 1894.78381, 79895.5078, 0.981168866, -5.14718224e-08, -0.193151921, 3.39696804e-08, 1, -9.39251876e-08, 0.193151921, 8.55951612e-08, 0.981168866)
  end 
end

 --[[
   Raid World need to teleport by GetModelCFrame(), There are 2 raid world have 2 same level.
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Islands["Mirror World"]:GetModelCFrame()

 ]]

 spawn(function()
  while wait(0.5) do 
    pcall(function()
for i,v in pairs(workspace.Live:GetDescendants()) do 
 if v:IsA('Model') and  v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart:FindFirstChild("OverheadGUI") and  v.HumanoidRootPart.OverheadGUI:FindFirstChild("Main") and v.HumanoidRootPart.OverheadGUI.Main:FindFirstChild("User")  and v:FindFirstChild("Humanoid")  and v.Humanoid.Health > 0 then 
   v.Name = v.HumanoidRootPart.OverheadGUI.Main.User.Text  
 end 
end
end)
end 
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Sukuna - " .. GetName.Name, HidePremium = false, SaveConfig = false, ConfigFolder = "NilFolder"})

local Tab = Window:MakeTab({
	Name = "Level Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Level AutoFarm Tab:"
})


local Level = Tab:AddLabel("Current Level: " .. game:GetService("Players").LocalPlayer.ProfileService.Stats.Level.Value)
local Info = Tab:AddLabel("Autofarm Status: Off")


spawn(function()
  while wait(0.2) do
      local LevelStatus = game:GetService("Players").LocalPlayer.ProfileService.Stats.Level
      Level:Set("Current Level: " .. LevelStatus.Value)
end
end)



Tab:AddToggle({
	Name = "Auto Level Farm [Auto Check Level]",
	Default = false,
	Callback = function(Value)
   
  
  
  getgenv().AutoFarmLevel = Value 
  spawn(function()
         while task.wait() do  
            if getgenv().AutoFarmLevel == true then 
              checkquest()

              
              if game:GetService("Players").LocalPlayer.ProfileService.Quest.Quest.Value == 0 then 
                Info:Set("Autofarm Status: Take Quest [ " .. QUESTNAME .. " ]")
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = QUESTCFRAME
                 wait(2)
                 local args = {
                  [1] = QUESTNAME
              }
              
              game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("QuestHandler"):FireServer(unpack(args))
    
      
                elseif game:GetService("Players").LocalPlayer.ProfileService.Quest.Quest.Value ~= 0 and game:GetService("Players").LocalPlayer.ProfileService.Quest.QuestDesc.Value == QUESTDESC then 
                 
  
                  for i,v in pairs(workspace.Live:GetChildren()) do 
                    if v:IsA("Model") and v.Name == MON and v:FindFirstChild("Humanoid")  and v.Humanoid.Health > 0 then 
                    Info:Set("Autofarm Status: Kill Quest Enemies [ " .. MON .. " ]")
                      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:GetModelCFrame() * CFrame.new(0,0,4)
                      game:GetService'VirtualUser':CaptureController()
                      game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
                    else
                      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = MONCFRAME
                      Info:Set("Autofarm Status: Not Found Enemies - Teleport To Waiting Spawn")
                   end 
                  end
                
                end
            else
              wait()
              break
            end 
           end 
          end)
	end    
})

local Section = Tab:AddSection({
	Name = "Weapon AutoFarm Tab:"
})

local WeaponList = Tab:AddDropdown({
	Name = "Select Weapon:",
	Default = "",
	Options = Weapon,
	Callback = function(Value)
	getgenv().Weapon = Value
	end    
})

Tab:AddToggle({
	Name = "Auto Equip Selected Weapon",
	Default = false,
	Callback = function(Value)
		getgenv().Auto = Value 
     while wait() do 
       if Auto == true then 
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().Weapon) and  game.Players.LocalPlayer.Backpack:FindFirstChild("Log Pose") then 
          wait(2)
                  game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().Weapon))
                    end 
       else
        wait()
        break
       end
      end

	end    
})




Tab:AddButton({
	Name = "Refresh Weapons List",
	Callback = function()
local Weapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
  if v:IsA("Tool") then 
    table.clear(Weapon,v.Name)
  end 
end
    wait(.5)

    local Weapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
  if v:IsA("Tool") then 
    table.insert(Weapon,v.Name)
  end 
end
  wait(.5)
    WeaponList:Refresh(Weapon,true) 

 
  	end    
})



local Section = Tab:AddSection({
	Name = "Skills AutoFarm Tab:"
})


Tab:AddToggle({
	Name = "Auto Z Skills",
	Default = false,
	Callback = function(Value)
    getgenv().AutoSkillZ = Value 
     while wait() do  
       if AutoSkillZ == true then 
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game.Players.LocalPlayer)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game.Players.LocalPlayer)
  else
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game.Players.LocalPlayer)

    break
  end 
end           
  end    
})



Tab:AddToggle({
	Name = "Auto X Skills",
	Default = false,
	Callback = function(Value)
    getgenv().AutoSkillX = Value 
     while wait() do  
       if AutoSkillX == true then 

game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game.Players.LocalPlayer)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game.Players.LocalPlayer)
  else
    wait()

game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game.Players.LocalPlayer)
    break
  end 
end           
  end    
})


local Tab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Stats Tab:"
})

Tab:AddTextbox({
	Name = "Put Ammount To Auto Upgrade Stat:",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
	getgenv().Ammount = Value
	end	  
})


Tab:AddToggle({
	Name = "Auto Upgrade Strength Stat",
	Default = false,
	Callback = function(Value)
    getgenv().Strength = Value 
     while wait() do  
       if Strength == true then 

        local args = {
          [1] = "StrengthLevel",
          [2] = getgenv().Ammount
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):InvokeServer(unpack(args))
      
  else
    wait()
    break
  end 
end           
  end    
})

Tab:AddToggle({
	Name = "Auto Upgrade Defense Stat",
	Default = false,
	Callback = function(Value)
    getgenv().Defense = Value 
     while wait() do  
       if Defense == true then 

        local args = {
          [1] = "DefenseLevel",
          [2] = getgenv().Ammount
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):InvokeServer(unpack(args))
      
  else
    wait()
    break
  end 
end           
  end    
})

Tab:AddToggle({
	Name = "Auto Upgrade Sword Stat",
	Default = false,
	Callback = function(Value)
    getgenv().Sword = Value 
     while wait() do  
       if Sword == true then 

        local args = {
          [1] = "SwordLevel",
          [2] = getgenv().Ammount
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):InvokeServer(unpack(args))
      
  else
    wait()
    break
  end 
end           
  end    
})

Tab:AddToggle({
	Name = "Auto Upgrade Gun Stat",
	Default = false,
	Callback = function(Value)
    getgenv().Gun = Value 
     while wait() do  
       if Gun == true then 

        local args = {
          [1] = "GunLevel",
          [2] = getgenv().Ammount
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):InvokeServer(unpack(args))
      
  else
    wait()
    break
  end 
end           
  end    
})


Tab:AddToggle({
	Name = "Auto Upgrade Fruit Stat",
	Default = false,
	Callback = function(Value)
    getgenv().Fruit = Value 
     while wait() do  
       if Fruit == true then 

        local args = {
          [1] = "FruitLevel",
          [2] = getgenv().Ammount
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):InvokeServer(unpack(args))
      
  else
    wait()
    break
  end 
end           
  end    
})




OrionLib:Init()
