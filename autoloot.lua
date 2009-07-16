DATA = [[
:32506 Netherwing Egg
:31957 Ethereum Prisoner I.D. Tag
]]

items = setmetatable({}, {
	__index = function(t,i)
		local v = DATA:match(":"..i.." [^\n]+\n")
		if v then
			t[i] = true
			return true
		else
			t[i] = false
			return
		end
	end
})

local lastSlot
local OnUpdate = function()
	ConfirmLootSlot(lastSlot)
end

local function LOOT_BIND_CONFIRM(self, event, slot)
	local link = GetLootSlotLink(slot)
	if(link) then
		local id = tonumber(link:match("item:(%d+):"))
		if(items[id]) then
			lastSlot = slot
			Kousei:SetScript('OnUpdate', OnUpdate)
		end
	end
end

local function LOOT_SLOT_CLEARED(self, event, slot)
	if(lastSlot == slot) then
		Kousei:SetScript('OnUpdate', nil)
	end
end

Kousei:RegisterEvent('LOOT_BIND_CONFIRM', LOOT_BIND_CONFIRM)
