repeat
	task.wait()
until game:IsLoaded()

local tbl

tbl = {
	IsDetected = false,
	_unpack = function(arg, arg2, arg3)
		arg2 = arg2 or 1
		local n = arg3 or #arg
		if n < arg2 then
			return
		end
		return arg[arg2], tbl._unpack(arg, arg2 + 1, n)
	end,
	_pcall = function(arg, ...)
		local tbl2 = { ... }

		local ok, result = pcall(function()
			return arg(tbl._unpack(tbl2))
		end)

		if not ok then
			return false, result
		end
		return true, result
	end,
}

local function fn()
	return true
end

local v, v2 = tbl._pcall(debug.info, fn, "f")

if not v or v2 ~= fn then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v3, v4 = tbl._pcall(debug.info, 2, "f")

if not v3 or v4 ~= pcall then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v5 = (cloneref or function(arg)
	return arg
end)(game:GetService("RunService"))

if v5:IsStudio() then
	tbl.IsDetected = true
	LPH_CRASH()
end

if v5:IsServer() then
	tbl.IsDetected = true
	LPH_CRASH()
end

if tbl.IsDetected then
	return
end

loadstring([[ 
  function LPH_NO_VIRTUALIZE(f) return f end;
  function LPH_JIT_MAX(f) return f end;
  function LPH_JIT(f) return f end;

  function LPH_ENCNUM(n, ...) return n end;
  function LPH_ENCSTR(s, ...) return s end;
  function LPH_ENCFUNC(f, ...) return f end;
  function LPH_ENCBUF(b, ...) return b end;

  function LPH_ATTRIBUTES(...) end;
  function LPH_REWRITE(expr, ...) return expr end;
  function LPH_STACKALLOC(size, zeroOrOne) return {} end;
  function LPH_PRECHECK(...) end;

  function VM(...) end;
  function PRESET(...) end;
  function ENCRYPT(...) end;
  function OPTIMIZE(...) end;
  function ERROR_HANDLING(...) end;
  function TRANSFORM(...) end;
  NONE, OPAL, ONYX = 0, 1, 2;
  FAST, SECURE = 0, 1;
  CONTROL_FLOW, EXTRACT, INLINE, UNROLL, NO_UPVALUES, level = 0, 0, 0, 0, 0, 0;
]])()

local function fn2()
	local now = tick()

	local function fn3()
		if not getfenv() then
			getfenv()
		end

		local function fn4(arg)
			local ok, result = pcall(function()
				return game:HttpGet(arg, true)
			end)

			if not ok then
				return nil, "Failed to load resource"
			end
			return result
		end

		return { load = function(arg)
			local v6, v7 = fn4(arg)
			if not v6 then
				return nil, v7
			end
			local chunk, v8 = loadstring(v6)
			if not chunk then
				return nil, v8
			end
			return chunk
		end }
	end

	local v6 = fn3()

	local tbl2 = {
		print = function()
		end,
		warn = function()
		end,
		error = function()
		end,
		pcall = pcall,
		xpcall = xpcall,
		tick = tick,
		time = time,
		os = { time = os.time, date = os.date, clock = os.clock },
		math = math,
		table = table,
		string = string,
		type = type,
		typeof = typeof,
		tonumber = tonumber,
		tostring = tostring,
		require = require,
		pairs = pairs,
		ipairs = ipairs,
		next = next,
		select = select,
		unpack = unpack,
		_G = _G,
	}

	local lua, v7 = v6.load("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Lib_5.5.0.lua")

	if not lua then
		error("Failed to load library: " .. tostring(v7))
	end

	local FuncsV3, v8 = v6.load("https://raw.githubusercontent.com/AhmadV99/Main/main/Library/Example/FuncsV3")

	if not FuncsV3 then
		error("Failed to load functions: " .. tostring(v8))
	end

	local ok, result = pcall(lua)

	if not ok then
		error("Library execution failed: " .. tostring(result))
	end

	local ok2, result2 = pcall(FuncsV3)

	if not ok2 then
		error("Functions execution failed: " .. tostring(result2))
	end

	local v9 = result

	local v10 = v9:CreateWindow({
		Title = "BresX Hub | Version 5.5.0 | discord.gg/bresxhub",
		Description = "",
		["Tab Width"] = 150,
		SaveSystem = { Enable = true, File = "Blox Fruits" },
		Key = "KZgN0t5pK6hBaqVLAMLg27aqXNDb8v",
		Key1 = "c9RkyXAjNpJc9u1fexvw1cbxYTWvMy",
		Key2 = "Xp8712WzbaRn8EtrLnXk8gDdzQB8jF",
		Key3 = "wixUQtibEtmkTQ7WpSFGq4YfBuqJQy",
		Key4 = "KbSf6UWZ6vndbgp8Vh9EHdM0dU8DFf",
		Key5 = "mP3tTRKYwhNKLkpFCdVuj922xqTgJp",
		Key6 = "heMGEmHXFUaiTaStAihwTfwgSJguUwQQxdE",
		Key7 = "khEXYXSHSJpDabFqudKJWEWbEyzXYgLmgTF",
		Key8 = "MLGkWCxxHaqhumMpSmpvJMuiUEpeqUAYvxN",
	})

	local tbl3 = { __tabs = {}, __lock = false }

	local function fn4(...)
		local tbl4 = {}

		for i, v11 in ipairs({ ... }) do
			if type(v11) == "table" and #v11 >= 2 then
				local v12 = v10:CreateTab({ Name = v11[1], Icon = "rbxassetid://" .. tostring(v11[2]) })
				tbl4[i] = v12
				tbl3.__tabs[v11[1]] = v12
			end
		end

		return table.unpack(tbl4)
	end

	local v11, v12, v13, v14, v15, v16, v17, v18 = fn4({ "Home", "10734942198" }, { "Main", "10723407389" }, { "Automatically", "10734923549" }, { "Sea Event", "16175025368" }, { "Teleport", "10734910680" }, { "Shop", "10734952273" }, { "Misc", "11447063791" }, { "Settings", "10734950309" })

	local tbl4 = {
		__spawn = task.spawn,
		__isLoaded = false,
		__unloadRequested = false,
		__locks = {},
		__timers = {},
		__hooks = {},
	}

	local function fn5(arg)
		return ({ [arg] = game:GetService(arg) })[arg]
	end

	local tbl5 = {
		Players = fn5("Players"),
		ReplicatedStorage = fn5("ReplicatedStorage"),
		HttpService = fn5("HttpService"),
		UserInputService = fn5("UserInputService"),
		Workspace = fn5("Workspace"),
		VirtualInputManager = fn5("VirtualInputManager"),
		TweenService = fn5("TweenService"),
		RunService = fn5("RunService"),
		Lighting = fn5("Lighting"),
		CollectionService = fn5("CollectionService"),
		TeleportService = fn5("TeleportService"),
	}

	local localPlayer = tbl5.Players.LocalPlayer
	local playerGui = localPlayer.PlayerGui

	local tbl6 = {
		Enemies = tbl5.Workspace:FindFirstChild("Enemies"),
		Characters = tbl5.Workspace:FindFirstChild("Characters"),
		Map = tbl5.Workspace:FindFirstChild("Map"),
		WorldOrigin = tbl5.Workspace:FindFirstChild("_WorldOrigin"),
		Remotes = tbl5.ReplicatedStorage:FindFirstChild("Remotes"),
		CommF_ = nil,
		Modules = tbl5.ReplicatedStorage:FindFirstChild("Modules"),
		Net = nil,
	}

	tbl6.CommF_ = tbl6.Remotes:WaitForChild("CommF_")
	tbl6.Net = tbl6.Modules:WaitForChild("Net")

	local tbl7 = {
		RegisterAttack = tbl6.Net:WaitForChild("RE/RegisterAttack"),
		RegisterHit = tbl6.Net:WaitForChild("RE/RegisterHit"),
		ReceivedHit = tbl6.Net:WaitForChild("RE/ReceivedHit"),
		ShootGunEvent = tbl6.Net:WaitForChild("RE/ShootGunEvent"),
	}

	local placeId = game.PlaceId

	local tbl8 = {
		placeId == 2753915549 or placeId == 85211729168715,
		placeId == 4442272183 or placeId == 79091703265657,
		placeId == 7449423635 or placeId == 100117331123089,
	}

	local tbl9 = {
		BoatShop = {
			[2] = CFrame.new(-13.488054275512695, 10.311711311340332, 2927.69287109375),
			[3] = CFrame.new(-16927.17578125, 9.0563430786132812, 435.248779296875),
		},
		BoatShopPos = {
			[2] = Vector3.new(-13.488054, 10.311711, 2927.6929),
			[3] = Vector3.new(-16927.176, 9.056343, 435.24878),
		},
		LevelSea = {
			["1"] = CFrame.new(-21332.876953125, 0, 1356.6005859375),
			["2"] = CFrame.new(-25077.7109375, 0, 2876.619140625),
			["3"] = CFrame.new(-29325.326171875, 0, 4763.1796875),
			["4"] = CFrame.new(-31615.3671875, 0, 5669.40478515625),
			["5"] = CFrame.new(-36453.9921875, 0, 6484.83056640625),
			["6"] = CFrame.new(-42170.15234375, 0, 4071.352294921875),
			Infinite = CFrame.new(0, 5, -1e14),
		},
		Islands = {
			["Sky 2"] = Vector3.new(-4607.8228, 872.5425, -1667.5569),
			["Sky 3"] = Vector3.new(-7894.6177, 5547.1416, -380.2912),
		},
	}

	local tbl10 = {
		"Rocket Fruit",
		"Spin Fruit",
		"Chop Fruit",
		"Spring Fruit",
		"Bomb Fruit",
		"Smoke Fruit",
		"Spike Fruit",
		"Flame Fruit",
		"Falcon Fruit",
	}

	local tbl11 = {}

	for _, v19 in ipairs(tbl10) do
		table.insert(tbl11, v19)
	end

	local tbl12 = {
		IsEnabled = {},
		FastAttackSpeed = 0,
		AttackCombo = false,
		FastFruit = false,
		SelectingFruit = nil,
		SelectedFruit = nil,
		AttackMode = "Range",
	}

	local tbl14 = {}

	local tbl15 = result2

	local tbl16 = {}

	function tbl16:SetSave(arg, arg2)
		tbl14[arg] = arg2
	end

	function tbl16:GetSave(arg)
		return tbl14[arg] or false
	end

	local tbl17 = {}
	local tbl18 = {
		ESPList = {},
		HumanoidRootPartConnection = nil,
		RenderConnection = nil,
	}

	function tbl18:CreateESP(arg, arg2)
		if self.ESPList[arg] then
			return
		end
		self.ESPList[arg] = {
			Part = arg,
			Color = arg2,
			Billboard = nil,
		}
	end

	function tbl18:RemoveESP(arg)
		if self.ESPList[arg] and self.ESPList[arg].Billboard then
			self.ESPList[arg].Billboard:Destroy()
		end
		self.ESPList[arg] = nil
	end

	function tbl18:ActivateHaki()
		if tbl14["Auto Haki"] then
			tbl6.CommF_:InvokeServer("Haki", true)
		end
	end

	function tbl18:FireRemote(arg, arg2)
		if tbl14["Auto Ken"] then
			tbl6.CommF_:InvokeServer(arg, arg2)
		end
	end

	function tbl18:CreateLoop(arg, arg2)
		local connection
		connection = tbl5.RunService.Heartbeat:Connect(function()
			if v9.Unloaded or not tbl14[arg] then
				connection:Disconnect()
				return
			end
			pcall(arg2)
		end)
	end

	result2:Toggle(v11:AddSection("Auto Farm"), "Auto Farm Mobs", "Automatically attack enemies", true, function(arg)
		tbl16:SetSave("Auto Farm Mobs", arg)
		tbl12.AttackCombo = arg
	end)

	result2:Toggle(v11:AddSection("Upgrades"), "Auto Upgrade Melee", "Auto-upgrade melee combat", false, function(arg)
		tbl16:SetSave("Auto Upgrade Melee", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Upgrade Melee", function()
			if tbl14["Auto Upgrade Melee"] then
				tbl6.CommF_:InvokeServer("Upgrade", "Melee")
			end
		end)
	end)

	result2:Toggle(v11:AddSection("Upgrades"), "Auto Upgrade Defense", "Auto-upgrade defense", false, function(arg)
		tbl16:SetSave("Auto Upgrade Defense", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Upgrade Defense", function()
			if tbl14["Auto Upgrade Defense"] then
				tbl6.CommF_:InvokeServer("Upgrade", "Defense")
			end
		end)
	end)

	result2:Toggle(v11:AddSection("Upgrades"), "Auto Upgrade Fruit", "Auto-upgrade fruit combat", false, function(arg)
		tbl16:SetSave("Auto Upgrade Fruit", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Upgrade Fruit", function()
			if tbl14["Auto Upgrade Fruit"] then
				tbl6.CommF_:InvokeServer("Upgrade", "Fruit")
			end
		end)
	end)

	result2:Toggle(v11:AddSection("Upgrades"), "Auto Upgrade Sword", "Auto-upgrade sword combat", false, function(arg)
		tbl16:SetSave("Auto Upgrade Sword", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Upgrade Sword", function()
			if tbl14["Auto Upgrade Sword"] then
				tbl6.CommF_:InvokeServer("Upgrade", "Sword")
			end
		end)
	end)

	local fruitSelector = v12:AddSection("Fruit Selection")

	result2:Dropdown(fruitSelector, "Select Fruit", "Choose a devil fruit", tbl11, 1, function(arg)
		tbl12.SelectingFruit = arg
		tbl12.SelectedFruit = arg
		tbl16:SetSave("Selected Fruit", arg)
	end)

	result2:Toggle(v12:AddSection("Combat"), "Attack", "Toggle combat attack", false, function(arg)
		tbl16:SetSave("Attack", arg)
		tbl12.IsEnabled["Attack"] = arg
	end)

	result2:Slider(v12:AddSection("Speed"), "Attack Speed", 1, 1, 10, 1, function(arg)
		tbl12.FastAttackSpeed = arg
		tbl16:SetSave("Attack Speed", arg)
	end)

	result2:Toggle(v13:AddSection("Auto"), "Auto Farm Sea Beasts", "Automatically farm sea beasts", false, function(arg)
		tbl16:SetSave("Auto Farm Sea Beasts", arg)

		tbl4.__spawn(function()
			while tbl14["Auto Farm Sea Beasts"] do
				task.wait(1)

				for _, v24 in ipairs(tbl5.Workspace.Enemies:GetChildren()) do
					if v24 and v24:FindFirstChild("Humanoid") then
						tbl12.IsEnabled["Attack"] = true
					end
				end
			end

			tbl12.IsEnabled["Attack"] = false
		end)
	end)

	result2:Toggle(v13:AddSection("Auto"), "Auto Farm Bosses", "Automatically farm boss enemies", false, function(arg)
		tbl16:SetSave("Auto Farm Bosses", arg)

		tbl4.__spawn(function()
			while tbl14["Auto Farm Bosses"] do
				task.wait(1)

				local v24 = tbl5.Workspace.Enemies:FindFirstChild("Bosses")
				if v24 then
					for _, v25 in ipairs(v24:GetChildren()) do
						if v25 and v25:FindFirstChild("Humanoid") then
							tbl12.IsEnabled["Attack"] = true
						end
					end
				end
			end

			tbl12.IsEnabled["Attack"] = false
		end)
	end)

	result2:Toggle(v14:AddSection("Sea Event"), "Auto Sea Event", "Automatically handle sea events", false, function(arg)
		tbl16:SetSave("Auto Sea Event", arg)

		tbl4.__spawn(function()
			while tbl14["Auto Sea Event"] do
				task.wait(1)

				local v26 = tbl5.Workspace:FindFirstChild("SeaEvent")
				if v26 then
					tbl12.IsEnabled["Attack"] = true
				end
			end

			tbl12.IsEnabled["Attack"] = false
		end)
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Home", "Go to home island", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["1"]
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Jungle", "Go to jungle island", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["2"]
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Desert", "Go to desert island", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["3"]
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Snow", "Go to snow island", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["4"]
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Skylands", "Go to skylands", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["5"]
	end)

	result2:Button(v15:AddSection("Island Teleports"), "Teleport Fountain City", "Go to fountain city", function()
		localPlayer.Character.HumanoidRootPart.CFrame = tbl9.LevelSea["6"]
	end)

	result2:Button(v15:AddSection("Boat"), "Buy Boat", "Purchase a boat", function()
		local boat = tbl5.Workspace.Characters:FindFirstChild(localPlayer.Name)
		if boat then
			boat.HumanoidRootPart.CFrame = tbl9.BoatShop[2]
		end
	end)

	result2:Toggle(v16:AddSection("Shop"), "Auto Buy Sword", "Auto-purchase swords from shop", false, function(arg)
		tbl16:SetSave("Auto Buy Sword", arg)

		tbl4.__spawn(function()
			while tbl14["Auto Buy Sword"] do
				task.wait(5)
				tbl6.CommF_:InvokeServer("BuySword", "Katana")
			end
		end)
	end)

	result2:Toggle(v16:AddSection("Shop"), "Auto Buy Fruit", "Auto-purchase fruits from shop", false, function(arg)
		tbl16:SetSave("Auto Buy Fruit", arg)

		tbl4.__spawn(function()
			while tbl14["Auto Buy Fruit"] do
				task.wait(5)
				if tbl12.SelectedFruit then
					tbl6.CommF_:InvokeServer("BuyFruit", tbl12.SelectedFruit)
				end
			end
		end)
	end)

	local esp = v17:AddSection("ESP")

	result2:Toggle(esp, "ESP Chest", "Show chest locations", "Save", function(arg)
		tbl16:SetSave("ESP Chest", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Chest"] do
				task.wait(1)

				for _, v53 in ipairs(tbl5.CollectionService:GetTagged("_ChestTagged")) do
					if not v53:GetAttribute("IsDisabled") then
						tbl18:CreateESP(v53, Color3.fromRGB(237, 233, 9))
					end
				end
			end

			for _, v53 in ipairs(tbl5.CollectionService:GetTagged("_ChestTagged")) do
				if not v53:GetAttribute("IsDisabled") then
					tbl18:RemoveESP(v53)
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Berry", "Show berry locations", "Save", function(arg)
		tbl16:SetSave("ESP Berry", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Berry"] do
				task.wait(1)

				for _, descendant in ipairs(tbl5.Workspace.Map:GetDescendants()) do
					if descendant.Name == "Berries" then
						for i = 1, 8 do
							if descendant:GetAttribute("_BerryCFrame" .. i) then
								tbl18:CreateESP(descendant.Parent, Color3.fromRGB(237, 233, 9))
							end
						end
					end
				end
			end

			for _, descendant in ipairs(tbl5.Workspace.Map:GetDescendants()) do
				if descendant.Name == "Berries" then
					for i = 1, 8 do
						if descendant:GetAttribute("_BerryCFrame" .. i) then
							tbl18:RemoveESP(descendant.Parent)
						end
					end
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Flower", "Show flower locations", "Save", function(arg)
		tbl16:SetSave("ESP Flower", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Flower"] do
				task.wait(1)

				for _, child in pairs(tbl5.Workspace:GetChildren()) do
					if child and child:IsA("BasePart") and string.find(child.Name, "Flower") then
						tbl18:CreateESP(child, child.Color)
					end
				end
			end

			for _, child in pairs(tbl5.Workspace:GetChildren()) do
				if child and child:IsA("BasePart") and string.find(child.Name, "Flower") then
					tbl18:RemoveESP(child)
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Devil Fruit", "Show fruit locations", "Save", function(arg)
		tbl16:SetSave("ESP Devil Fruit", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Devil Fruit"] do
				task.wait(1)

				for _, child in pairs(tbl5.Workspace:GetChildren()) do
					if child and child:IsA("Tool") and child:FindFirstChild("Handle") or child and string.find(child.Name, "Fruit") and child:FindFirstChild("Handle") then
						tbl18:CreateESP(child.Handle, Color3.fromRGB(247, 47, 7))
					end
				end
			end

			for _, child in pairs(tbl5.Workspace:GetChildren()) do
				if child and child:IsA("Tool") and child:FindFirstChild("Handle") or child and string.find(child.Name, "Fruit") and child:FindFirstChild("Handle") then
					tbl18:RemoveESP(child.Handle)
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Island", "Show island locations", "Save", function(arg)
		tbl16:SetSave("ESP Island", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Island"] do
				task.wait(1)
				local v53 = pairs
				local locations = tbl6.WorldOrigin:WaitForChild("Locations", 9e9)

				for _, child in v53(locations:GetChildren()) do
					if child then
						tbl18:CreateESP(child, Color3.fromRGB(0, 255, 255))
					end
				end
			end

			local v53 = pairs
			local locations = tbl6.WorldOrigin:WaitForChild("Locations", 9e9)

			for _, child in v53(locations:GetChildren()) do
				if child then
					tbl18:RemoveESP(child)
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Mirage Island", "Show Mirage Island location", "Save", function(arg)
		tbl16:SetSave("ESP Mirage Island", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Mirage Island"] do
				task.wait(1)

				for _, child in pairs(tbl6.WorldOrigin.Locations:GetChildren()) do
					if child and child.Name == "Mirage Island" then
						tbl18:CreateESP(child, child.Color)
					end
				end
			end

			for _, child in pairs(tbl6.WorldOrigin.Locations:GetChildren()) do
				if child and child.Name == "Mirage Island" then
					tbl18:RemoveESP(child)
				end
			end
		end)
	end)

	result2:Toggle(esp, "ESP Kitsune Island", "Show Kitsune Island location", "Save", function(arg)
		tbl16:SetSave("ESP Kitsune Island", arg)

		tbl4.__spawn(function()
			while tbl14["ESP Kitsune Island"] do
				task.wait(1)

				for _, child in pairs(tbl6.WorldOrigin.Locations:GetChildren()) do
					if child and child.Name == "Kitsune Island" then
						tbl18:CreateESP(child, child.Color)
					end
				end
			end

			for _, child in pairs(tbl6.WorldOrigin.Locations:GetChildren()) do
				if child and child.Name == "Kitsune Island" then
					tbl18:RemoveESP(child)
				end
			end
		end)
	end)

	result2:Toggle(v17:AddSection("Anti-Cheat Bypass"), "Anti-Flag", "Auto-rejoin every 30 minutes", false, function(arg)
		tbl16:SetSave("Anti-Flag", arg)

		tbl4.__spawn(function()
			while tbl14["Anti-Flag"] do
				task.wait(1800)
				tbl5.TeleportService:Teleport(game.PlaceId, localPlayer)
			end
		end)
	end)

	local Team = v17:AddSection("Team")

	result2:Button(Team, "Join Pirates", "Join Pirates team", function()
		tbl6.CommF_:InvokeServer("SetTeam", "Pirates")
	end)

	result2:Button(Team, "Join Marines", "Join Marines team", function()
		tbl6.CommF_:InvokeServer("SetTeam", "Marines")
	end)

	local v53 = v17:AddSection("Menu UI")

	result2:Button(v53, "Fruit Shop", "Open fruit shop", function()
		require(tbl5.ReplicatedStorage.Controllers.UI.FruitShop):Open()
	end)

	result2:Button(v53, "Titles", "Open titles menu", function()
		tbl6.CommF_:InvokeServer("getTitles")
		playerGui.Main.Titles.Visible = true
	end)

	result2:Button(v53, "Haki Color", "Open haki color menu", function()
		playerGui.Main.Colors.Visible = true
	end)

	result2:Button(v17:AddSection("Redeem"), "Redeem All Codes", "Redeem all available codes", function()
		for _, v54 in loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/main/Codes_BloxFruit"))(), nil, nil do
			tbl5.ReplicatedStorage.Remotes.Redeem:InvokeServer(v54)
		end
	end)

	result2:Toggle(v17:AddSection("Water"), "Walk On Water", "Enable walking on water", true, function(arg)
		tbl16:SetSave("Walk On Water", arg)

		tbl4.__spawn(function()
			local connection = nil

			connection = tbl5.RunService.Heartbeat:Connect(function()
				if v9.Unloaded then
					connection:Disconnect()
					return
				end
				local waterBasePlane = tbl5.Workspace.Map:WaitForChild("WaterBase-Plane")

				if waterBasePlane then
					waterBasePlane.Size = tbl14["Walk On Water"] and Vector3.new(1000, 113, 1000) or Vector3.new(1000, 80, 1000)
				end
			end)
		end)
	end)

	local v54 = v17:AddSection("Remove Effects")

	result2:Toggle(v54, "Remove Damage Numbers", "Hide damage numbers", "Save", function(arg)
		tbl16:SetSave("Remove Damage", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Remove Damage", function()
			while true do
				task.wait()
				tbl5.ReplicatedStorage.Assets.GUI.DamageCounter.Enabled = false
				if not (not tbl14["Remove Damage"] or v9.Unloaded) then
					continue
				end
				break
			end

			tbl5.ReplicatedStorage.Assets.GUI.DamageCounter.Enabled = true
		end)
	end)

	result2:Toggle(v54, "Remove Notifications", "Hide notifications", "Save", function(arg)
		tbl16:SetSave("Remove Notifications", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Remove Notifications", function()
			while true do
				task.wait()
				localPlayer.PlayerGui.Notifications.Enabled = false
				if not (not tbl14["Remove Notifications"] or v9.Unloaded) then
					continue
				end
				break
			end

			localPlayer.PlayerGui.Notifications.Enabled = true
		end)
	end)

	local Automations = v17:AddSection("Automations")

	result2:Toggle(Automations, "Auto Haki", "Auto-activate Haki", true, function(arg)
		tbl16:SetSave("Auto Haki", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Haki", function()
			tbl18:ActivateHaki()
		end)
	end)

	result2:Toggle(Automations, "Auto Ken", "Auto-activate Ken", "Save", function(arg)
		tbl16:SetSave("Auto Ken", arg)
	end)

	tbl4.__spawn(function()
		tbl18:CreateLoop("Auto Ken", function()
			tbl18:FireRemote("Ken", true)
		end)
	end)

	result2:Button(v18:AddSection("Reset Config"), "Reset Script Config", "Delete all saved configuration", function()
		for _, v55 in next, { "BresX_Hub", "BresX", "BresX Hub", "Bre_Hub_X" }, nil do
			if isfolder(v55) then
				delfolder(v55)
			end
		end
	end)

	local v55 = v9
	local setNotification = v55.SetNotification
	local tbl37 = {}
	local str3 = "Loaded in: " .. tostring(tick() - now) .. "s"
	tbl37[1] = "BresX Hub"
	tbl37[2] = ""
	tbl37[3] = str3
	tbl37[4] = 5
	tbl37[5] = 0.5
	setNotification(v55, tbl37)
end
task.spawn(fn2)
