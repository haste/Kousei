SlashCmdList['DISABLE_ADDON'] = function(s) DisableAddOn(s) end
SLASH_DISABLE_ADDON1 = '/dis'

SlashCmdList['ENABLE_ADDON'] = function(s) EnableAddOn(s) end
SLASH_ENABLE_ADDON1 = '/en'

SlashCmdList['SMART_ADDON'] = function(s)
	if(not s) then return end

	for action, addon in s:gmatch'([de]):(%S+)' do
		addon = addon:lower()
		for i=1, GetNumAddOns() do
			local name = GetAddOnInfo(i):lower()
			if(name:match(addon)) then
				if(action == 'e') then
					EnableAddOn(i)
				elseif(action == 'd') then
					DisableAddOn(i)
				end
			end
		end
	end

	ReloadUI()
end
SLASH_SMART_ADDON1 = '/sm'

SlashCmdList['RELOAD_UI'] = function() ReloadUI() end
SLASH_RELOAD_UI1 = '/rl'
