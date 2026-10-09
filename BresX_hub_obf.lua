local function _DECODE_STR_(...)
	local tbl = {...}
	local result = ""
	for i=1,#tbl do
		result = result .. string.char(tbl[i])
	end
	return result
end

local STR_TBL = {
	[1] = {114,101,112,101,97,116},
	[2] = {116,97,115,107,46,119,97,105,116},
	[3] = {103,97,109,101,58,73,115,76,111,97,100,101,100},
	[4] = {73,115,68,101,116,101,99,116,101,100},
	[5] = {95,117,110,112,97,99,107},
	[6] = {95,112,99,97,108,108},
	[7] = {100,101,98,117,103,46,105,110,102,111},
	[8] = {76,80,72,95,67,82,65,83,72},
	[9] = {82,117,110,83,101,114,118,105,99,101},
	[10] = {73,115,83,116,117,100,105,111},
	[11] = {73,115,83,101,114,118,101,114},
	[12] = {66,114,101,115,88,32,72,117,98,32,124,32,86,101,114,115,105,111,110,32,53,46,53,46,48,32,124,32,100,105,115,99,111,114,100,46,103,103,47,98,114,101,115,120,104,117,98},
	[13] = {84,105,116,108,101},
	[14] = {68,101,115,99,114,105,112,116,105,111,110},
	[15] = {84,97,98,32,87,105,100,116,104},
	[16] = {83,97,118,101,83,121,115,116,101,109},
	[17] = {69,110,97,98,108,101},
	[18] = {70,105,108,101},
	[19] = {66,108,111,120,32,70,114,117,105,116,115},
	[20] = {75,101,121},
	[21] = {72,111,109,101},
	[22] = {49,48,55,51,52,57,52,50,49,57,56},
	[23] = {77,97,105,110},
	[24] = {49,48,55,50,51,52,48,55,51,56,57},
	[25] = {65,117,116,111,109,97,116,105,99,97,108,108,121},
	[26] = {49,48,55,51,52,57,50,51,53,52,57},
	[27] = {83,101,97,32,69,118,101,110,116},
	[28] = {49,54,49,55,53,48,50,53,51,54,56},
	[29] = {84,101,108,101,112,111,114,116},
	[30] = {49,48,55,51,52,57,49,48,54,56,48},
	[31] = {83,104,111,112},
	[32] = {49,48,55,51,52,57,53,50,50,55,51},
	[33] = {77,105,115,99},
	[34] = {49,49,52,52,55,48,54,51,55,57,49},
	[35] = {83,101,116,116,105,110,103,115},
	[36] = {49,48,55,51,52,57,53,48,51,48,57},
	[37] = {80,108,97,121,101,114,115},
	[38] = {82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101},
	[39] = {72,116,116,112,83,101,114,118,105,99,101},
	[40] = {85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101},
	[41] = {87,111,114,107,115,112,97,99,101},
	[42] = {86,105,114,116,117,97,108,73,110,112,117,116,77,97,110,97,103,101,114},
	[43] = {84,119,101,101,110,83,101,114,118,105,99,101},
	[44] = {76,105,103,104,116,105,110,103},
	[45] = {67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101},
	[46] = {84,101,108,101,112,111,114,116,83,101,114,118,105,99,101},
	[47] = {69,110,101,109,105,101,115},
	[48] = {67,104,97,114,97,99,116,101,114,115},
	[49] = {77,97,112},
	[50] = {95,87,111,114,108,100,79,114,105,103,105,110},
	[51] = {82,101,109,111,116,101,115},
	[52] = {67,111,109,109,70,95},
	[53] = {77,111,100,117,108,101,115},
	[54] = {78,101,116},
	[130] = {66,114,101,115,88,95,72,117,98},
	[131] = {66,114,101,115,88},
	[132] = {66,114,101,115,88,32,72,117,98},
	[133] = {66,114,101,95,72,117,98,95,88},
}

local function DS(idx)
	if STR_TBL[idx] then
		return _DECODE_STR_(unpack(STR_TBL[idx]))
	end
	return ""
end

repeat
	task.wait()
until game:IsLoaded()

local tbl = {}
tbl.IsDetected = false

tbl._unpack = function(arg, arg2, arg3)
	arg2 = arg2 or 1
	local n = arg3 or #arg
	if n < arg2 then
		return
	end
	return arg[arg2], tbl._unpack(arg, arg2 + 1, n)
end

tbl._pcall = function(arg, ...)
	local tbl2 = { ... }
	local ok, result = pcall(function()
		return arg(tbl._unpack(tbl2))
	end)
	if not ok then
		return false, result
	end
	return true, result
end

local function fn()
	return true
end

local v, v2 = tbl._pcall(debug.info, fn, DS(5))
if not v or v2 ~= fn then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v3, v4 = tbl._pcall(debug.info, 2, DS(5))
if not v3 or v4 ~= pcall then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v5 = (cloneref or function(arg)
	return arg
end)(game:GetService(DS(9)))

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
				return nil, _DECODE_STR_(70,97,105,108,101,100,32,116,111,32,108,111,97,100,32,114,101,115,111,117,114,99,101)
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
		print = function() end,
		warn = function() end,
		error = function() end,
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

	local lua, v7 = v6.load(_DECODE_STR_(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,65,104,109,97,100,86,57,57,47,77,97,105,110,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,76,105,98,114,97,114,121,47,76,105,98,95,53,46,53,46,48,46,108,117,97))

	if not lua then
		error(_DECODE_STR_(70,97,105,108,101,100,32,116,111,32,108,111,97,100,32,108,105,98,114,97,114,121,58,32) .. tostring(v7))
	end

	local FuncsV3, v8 = v6.load(_DECODE_STR_(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,65,104,109,97,100,86,57,57,47,77,97,105,110,47,109,97,105,110,47,76,105,98,114,97,114,121,47,69,120,97,109,112,108,101,47,70,117,110,99,115,86,51))

	if not FuncsV3 then
		error(_DECODE_STR_(70,97,105,108,101,100,32,116,111,32,108,111,97,100,32,102,117,110,99,116,105,111,110,115,58,32) .. tostring(v8))
	end

	local ok, result = pcall(lua)
	if not ok then
		error(_DECODE_STR_(76,105,98,114,97,114,121,32,101,120,101,99,117,116,105,111,110,32,102,97,105,108,101,100,58,32) .. tostring(result))
	end

	local ok2, result2 = pcall(FuncsV3)
	if not ok2 then
		error(_DECODE_STR_(70,117,110,99,116,105,111,110,115,32,101,120,101,99,117,116,105,111,110,32,102,97,105,108,101,100,58,32) .. tostring(result2))
	end

	local v9 = result
	local v10 = v9:CreateWindow({
		Title = DS(12),
		Description = _DECODE_STR_(5),
		["Tab Width"] = 150,
		SaveSystem = { Enable = true, File = DS(19) },
		Key = _DECODE_STR_(75,90,103,78,48,116,53,112,75,54,104,66,97,113,86,76,65,77,76,103,50,55,97,113,88,78,68,98,56,118),
		Key1 = _DECODE_STR_(99,57,82,107,121,88,65,106,78,112,74,99,57,117,49,102,101,120,118,119,49,99,98,120,89,84,87,118,77,121),
		Key2 = _DECODE_STR_(88,112,56,55,49,50,87,122,98,97,82,110,56,69,116,114,76,110,88,107,56,103,68,100,122,81,66,56,106,70),
		Key3 = _DECODE_STR_(119,105,120,85,81,116,105,98,69,116,109,107,84,81,55,87,112,83,70,71,113,52,89,102,66,117,113,74,81,121),
		Key4 = _DECODE_STR_(75,98,83,102,54,85,87,90,54,118,110,100,98,103,112,56,86,104,57,69,72,100,77,48,100,85,56,68,70,102),
		Key5 = _DECODE_STR_(109,80,51,116,84,82,75,89,119,104,78,75,76,107,112,70,67,100,86,117,106,57,50,50,120,113,84,103,74,112),
		Key6 = _DECODE_STR_(104,101,77,71,69,109,72,88,70,85,97,105,84,97,83,116,65,105,104,119,84,102,119,103,83,74,103,117,85,119,81,81,120,100,69),
		Key7 = _DECODE_STR_(107,104,69,88,89,88,83,72,83,74,112,68,97,98,70,113,117,100,75,74,87,69,87,98,69,121,122,88,89,103,76,109,103,84,70),
		Key8 = _DECODE_STR_(77,76,71,107,87,67,120,120,72,97,113,104,117,109,77,112,83,109,112,118,74,77,117,105,85,69,112,101,113,85,65,89,118,120,78),
	})

	local tbl3 = { __tabs = {}, __lock = false }

	local function fn4(...)
		local tbl4 = {}
		for i, v11 in ipairs({ ... }) do
			if type(v11) == _DECODE_STR_(116,97,98,108,101) and #v11 >= 2 then
				local v12 = v10:CreateTab({ Name = v11[1], Icon = _DECODE_STR_(114,98,120,97,115,115,101,116,105,100,58,47,47) .. tostring(v11[2]) })
				tbl4[i] = v12
				tbl3.__tabs[v11[1]] = v12
			end
		end
		return unpack(tbl4)
	end

	local v11, v12, v13, v14, v15, v16, v17, v18 = fn4({ DS(21), DS(22) }, { DS(23), DS(24) }, { DS(25), DS(26) }, { DS(27), DS(28) }, { DS(29), DS(30) }, { DS(31), DS(32) }, { DS(33), DS(34) }, { DS(35), DS(36) })

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
		Players = fn5(DS(37)),
		ReplicatedStorage = fn5(DS(38)),
		HttpService = fn5(DS(39)),
		UserInputService = fn5(DS(40)),
		Workspace = fn5(DS(41)),
		VirtualInputManager = fn5(DS(42)),
		TweenService = fn5(DS(43)),
		RunService = fn5(DS(9)),
		Lighting = fn5(DS(44)),
		CollectionService = fn5(DS(45)),
		TeleportService = fn5(DS(46)),
	}

	local localPlayer = tbl5.Players.LocalPlayer
	local playerGui = localPlayer.PlayerGui

	local tbl6 = {
		Enemies = tbl5.Workspace:FindFirstChild(DS(47)),
		Characters = tbl5.Workspace:FindFirstChild(DS(48)),
		Map = tbl5.Workspace:FindFirstChild(DS(49)),
		WorldOrigin = tbl5.Workspace:FindFirstChild(DS(50)),
		Remotes = tbl5.ReplicatedStorage:FindFirstChild(DS(51)),
		CommF_ = nil,
		Modules = tbl5.ReplicatedStorage:FindFirstChild(DS(53)),
		Net = nil,
	}

	tbl6.CommF_ = tbl6.Remotes:WaitForChild(DS(52))
	tbl6.Net = tbl6.Modules:WaitForChild(DS(54))

	local tbl18 = {
		ESPList = {},
		HumanoidRootPartConnection = nil,
		RenderConnection = nil,
	}

	function tbl18:CreateESP(arg, arg2)
		if self.ESPList[arg] then return end
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
		if true then
			tbl6.CommF_:InvokeServer(_DECODE_STR_(72,97,107,105), true)
		end
	end

	function tbl18:FireRemote(arg, arg2)
		if true then
			tbl6.CommF_:InvokeServer(arg, arg2)
		end
	end

	function tbl18:CreateLoop(arg, arg2)
		local connection
		connection = tbl5.RunService.Heartbeat:Connect(function()
			if v9.Unloaded then
				connection:Disconnect()
				return
			end
			pcall(arg2)
		end)
	end

	result2:Toggle(v11:AddSection(_DECODE_STR_(65,117,116,111,32,70,97,114,109,32,77,111,98,115)), _DECODE_STR_(65,117,116,111,32,70,97,114,109,32,77,111,98,115), _DECODE_STR_(65,117,116,111,109,97,116,105,99,97,108,108,121,32,97,116,116,97,99,107,32,101,110,101,109,105,101,115), true, function(arg) end)
	result2:Button(v17:AddSection(_DECODE_STR_(84,101,97,109)), _DECODE_STR_(74,111,105,110,32,80,105,114,97,116,101,115), _DECODE_STR_(74,111,105,110,32,80,105,114,97,116,101,115,32,116,101,97,109), function()
		tbl6.CommF_:InvokeServer(_DECODE_STR_(83,101,116,84,101,97,109), _DECODE_STR_(80,105,114,97,116,101,115))
	end)
	result2:Button(v17:AddSection(_DECODE_STR_(84,101,97,109)), _DECODE_STR_(74,111,105,110,32,77,97,114,105,110,101,115), _DECODE_STR_(74,111,105,110,32,77,97,114,105,110,101,115,32,116,101,97,109), function()
		tbl6.CommF_:InvokeServer(_DECODE_STR_(83,101,116,84,101,97,109), _DECODE_STR_(77,97,114,105,110,101,115))
	end)
	result2:Button(v18:AddSection(_DECODE_STR_(82,101,115,101,116,32,83,99,114,105,112,116,32,67,111,110,102,105,103)), _DECODE_STR_(82,101,115,101,116,32,83,99,114,105,112,116,32,67,111,110,102,105,103), _DECODE_STR_(68,101,108,101,116,101,32,97,108,108,32,115,97,118,101,100,32,99,111,110,102,105,103,117,114,97,116,105,111,110), function()
		for _, v55 in next, { DS(130), DS(131), DS(132), DS(133) }, nil do
			if isfolder(v55) then
				delfolder(v55)
			end
		end
	end)

	local v55 = v9
	local setNotification = v55.SetNotification
	local tbl37 = {}
	local str3 = _DECODE_STR_(76,111,97,100,101,100,32,105,110,58,32) .. tostring(tick() - now) .. _DECODE_STR_(115)
	tbl37[1] = DS(132)
	tbl37[2] = _DECODE_STR_(5)
	tbl37[3] = str3
	tbl37[4] = 5
	tbl37[5] = 0.5
	setNotification(v55, tbl37)
end
task.spawn(fn2)
