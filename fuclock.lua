-- FU for removing the option to hide the clock!
Kousei:RegisterEvent("ADDON_LOADED", function(self, event, addon)
	if(addon == "Blizzard_TimeManager") then
		TimeManagerClockButton.Show = TimeManagerClockButton.Hide()
		TimeManagerClockButton:Hide()
	end
end)
