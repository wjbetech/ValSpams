---@diagnostic disable: undefined-global
local A = _G.ValSpams
local ValSpams_Options = _G.ValSpams_Options

function A.ColorText(value)
	return "["..tostring(value).."]"
end

function A.Message(msg)
	if msg == nil then
		msg = "nil"
	end

	DEFAULT_CHAT_FRAME:AddMessage("[ValSpams] "..msg)
end

function A.BroadcastMessage(msg)
	if msg == nil or msg == "" or not ValSpams_Options.announce then
		return
	end

	if IsInRaid() then
		SendChatMessage(msg, "RAID")
	elseif IsInGroup() then
		SendChatMessage(msg, "PARTY")
	else
		SendChatMessage(msg, "YELL")
	end
end
