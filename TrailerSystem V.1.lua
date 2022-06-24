--[[
	Ignorant's TrailerSystem Plugin V.1

]]

-- Services
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")

-- Plugin variables
local toolbar = plugin:CreateToolbar("Trailer System")
local pluginButton = toolbar:CreateButton("TrailerSystem V.1", "Used to create trailer chassis", "rbxassetid://8420530343")

-- Variables
local bTarget = nil;
local Trailers = {}
local TrailerParts = {}

function CreateEvent(Trailer)
	if Trailer:FindFirstChild("TGNG Trailer Settings") ~= nil and Trailer:FindFirstChild("TGNG Trailer Settings").Initialize:FindFirstChild("#TS_MSVCVIMH") == nil then
		local event = Instance.new("BindableEvent")
		event.Name = "#TS_MSVCVIMH"
		event.Parent = Trailer:FindFirstChild("TGNG Trailer Settings").Initialize
	end
end

function RemoveEvent()
	for i,v in pairs(Trailers) do
		for i,tr in pairs(v:GetChildren()) do
			if tr:FindFirstChild("TGNG Trailer Settings") ~= nil and tr:FindFirstChild("TGNG Trailer Settings").Initialize:FindFirstChild("#TS_MSVCVIMH") ~= nil then
				tr:FindFirstChild("TGNG Trailer Settings").Initialize:FindFirstChild("#TS_MSVCVIMH"):Destroy()
			end
		end
	end
end

if not RunService:IsEdit() then
	for i,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild("TGNG Trailer Settings") ~= nil then
			for i,part in pairs(v:GetDescendants()) do
				table.insert(TrailerParts,part)
			end
			table.insert(Trailers,v)
			if v:FindFirstChild("TGNG Trailer Settings").Initialize:FindFirstChild("#TS_MSVCVIMH") == nil then
				CreateEvent(v)
			end
			local Asuccess, Aerrormessage = pcall(function()
				if v.Misc:FindFirstChild("Axles") ~= nil then
					for i,part in pairs(v:GetDescendants()) do
						table.insert(TrailerParts,part)
					end
				end
			end)
		end
	end
end

function rethinkSelection()
	bTarget = Selection:Get()[1]
	if bTarget.Name ~= nil then
		if table.find(Trailers,bTarget) then bTarget:Destroy() end
		for _, Val in pairs(TrailerParts) do
			if Val.Name == bTarget.Name then
				local list = game.Workspace:GetDescendants()
				local temp = nil 
				local temp2 = nil
				for i,L1 in pairs(list) do
					temp2 = bTarget
					if (temp == nil) then
							--1
						if temp2 == Val and temp2.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent
							--2
						elseif temp2 == Val and temp2.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent
							--3
						elseif temp2 == Val and temp2.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent
							--4
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent
							--5
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent
							--6
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent
							--7
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--8
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--9
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--10
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--11
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--12
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--13
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--14
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--15
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--16
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--17
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--18
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--19
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
							--20
						elseif temp2 == Val and temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:FindFirstChild("TGNG Trailer Settings") then
							temp = temp2.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent
						end
						if (temp ~= nil) then
							temp:Destroy()
						end
					end
				end
			end
		end
	end
end

while wait() do
	if not RunService:IsEdit() then
		if Selection:Get()[1] ~= nil then
			if table.find(Trailers,Selection:Get()[1]) then
				rethinkSelection()
			end
			if table.find(TrailerParts,Selection:Get()[1]) then
				rethinkSelection()
			end
		end
		for i,v in pairs(workspace:GetChildren()) do
			if v:FindFirstChild("TGNG Trailer Settings") ~= nil then
				for i,part in pairs(v:GetDescendants()) do
					table.insert(TrailerParts,part)
				end
				table.insert(Trailers,v)
				if v:FindFirstChild("TGNG Trailer Settings").Initialize:FindFirstChild("#TS_MSVCVIMH") == nil then
					CreateEvent(v)
				end
				local Asuccess, Aerrormessage = pcall(function()
					if v.Misc:FindFirstChild("Axles") ~= nil then
						for i,part in pairs(v:GetDescendants()) do
							table.insert(TrailerParts,part)
						end
					end
				end)
			end
		end
	else
		RemoveEvent()
	end
end
