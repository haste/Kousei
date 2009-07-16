-- Clearly not OCD!
local dummy = Kousei.dummy
local lock = function(self)
	self.SetPoint = dummy
	self.SetAllPoints = dummy
	self.ClearAllPoints = dummy

	return self
end

local anchor = function(self, ...)
	self:ClearAllPoints()
	self:SetPoint(...)

	return self
end

local VARIABLES_LOADED= function(self, event, addon)
	-- Move the minimap slightly.
	lock(anchor(MinimapCluster, 'TOPRIGHT', 8, 10))

	-- Move the buff frame so it sits nicely to the top left of the minimap.
	anchor(TemporaryEnchantFrame, 'TOPRIGHT', -159, -11)
end

Kousei:RegisterEvent('VARIABLES_LOADED', VARIABLES_LOADED)
