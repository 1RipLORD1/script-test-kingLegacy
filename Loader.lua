if game.placeId == 4520749081 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Rip_LORD Hub | (UPDATE 5) King Legacy!", IntroText = "Rip_LORD Hub", SaveConfig = false, ConfigFolder = "Rip_LORD Coinfig"})

--BUY
getenv().buykeycopper = true
getenv().buykeyiron = true
getenv().buykeygold = true
--USE
getenv().usekeycopper = true
getenv().usekeyiron = true
getenv().usekeygold = true
--ATTACK
getenv().attack = true

--BUY
function buykeycopper()
local args = {
    [1] = "Copper Key",
    [2] = 1}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.BuyKey:InvokeServer(unpack(args))
end

function buykeyiron()
local args = {
    [1] = "Iron Key",
    [2] = 1}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.BuyKey:InvokeServer(unpack(args))
end

function buykeygold()
local args = {
    [1] = "Gold Key",
    [2] = 1}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.BuyKey:InvokeServer(unpack(args))
end
--USE
function usekeycopper()
local args = {
    [1] = "Copper Key",
    [2] = "Open1"}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.UseKey:InvokeServer(unpack(args))
end

function usekeyiron()
local args = {
    [1] = "Iron Key",
    [2] = "Open1"}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.UseKey:InvokeServer(unpack(args))
end

function usekeygold()
local args = {
    [1] = "Gold Key",
    [2] = "Open1"}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.UseKey:InvokeServer(unpack(args))
end
--ATTACK
function attack()
local args = {
    [1] = "FS_DarkLeg_M1"}
    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.SkillAction:InvokeServer(unpack(args))
end

--TAPS
local ShopTab = Window:MakeTab({
	Name = "Shop Tab",
	Icon = "rbxassetid://4483345998",
})

local PlayerTab = Window:MakeTab({
	Name = "Player Tab",
	Icon = "rbxassetid://4483345998",
})

--BUTTONS BuyKey
ShopTab:AddButton({
	Name = "Buy Key Copper",
	Callback = function(Valua)
    getenv().buykeycopper = Valua
    buykeycopper()
  	end
})

ShopTab:AddButton({
	Name = "Buy Key Iron",
	Callback = function(Valua)
    getenv().buykeyiron = Valua
    buykeyiron()
  	end
})

ShopTab:AddButton({
	Name = "Buy Key Gold",
	Callback = function(Valua)
    getenv().buykeygold = Valua
    buykeygold()
  	end
})

--BUTTONS UseKey
ShopTab:AddButton({
	Name = "Use Key Copoer",
	Callback = function(Valua)
    getenv().usekeycopper = Valua
    usekeycopper()
  	end
})

ShopTab:AddButton({
	Name = "Use Key Iron",
	Callback = function(Valua)
    getenv().usekeyiron = Valua
    usekeyiron()
  	end
})

PlayerTab:AddButton({
	Name = "Auto Attack",
	Callback = function(Valua)
    getenv().attack = Valua
    attack()
  	end
})

end
OrionLib:Init()
