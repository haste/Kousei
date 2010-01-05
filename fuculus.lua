local function ADDON_LOADED(self, event, addon)
	if(addon == 'Kousei') then
		RequestRaidInfo()

		self:UnregisterEvent(event, ADDON_LOADED)
	end
end

local function UPDATE_INSTANCE_INFO(self, event)
	self:UnregisterEvent('UPDATE_INSTANCE_INFO', UPDATE_INSTANCE_INFO)
	for i=1, GetNumSavedInstances() do
		local name, _, _, _, lock, extend = GetSavedInstanceInfo(i)

		if(not(lock or extend)) then
			return SetSavedInstanceExtend(i, true)
		end
	end
end

Kousei:RegisterEvent('ADDON_LOADED', ADDON_LOADED)
Kousei:RegisterEvent('UPDATE_INSTANCE_INFO', UPDATE_INSTANCE_INFO)
