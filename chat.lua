-- Because it needs to be perfect.
ChatFrame2:SetJustifyH"RIGHT"
ChatFrame4:SetJustifyH"CENTER"

-- This is mainly because we hate the FCF.
FCF_ValidateChatFramePosition = Kousei.dummy

local function ADDON_LOADED(self, event, addon)
	if(addon == 'Kousei') then
		-- chat channel colors
		ChangeChatColor("CHANNEL1", 1, .14117647058824, .52549019607843)
		ChangeChatColor("CHANNEL2", 0, .45, 1)

		ChangeChatColor("OFFICER", .3, .75, .75)

		ChangeChatColor("LOOT", 0, 2/3, 0)

		ChangeChatColor("RAID", .8, .85, .8)
		ChangeChatColor("RAID_LEADER", .8, .85, .8)

		self:UnregisterEvent(event, ADDON_LOADED)
	end
end

Kousei:RegisterEvent('ADDON_LOADED', ADDON_LOADED)
