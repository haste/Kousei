-- It's almost Ruby!
CreateFrame('Frame', 'Kousei'):SetScript('OnEvent', function(self, event, ...)
	return self[event](self, event, ...)
end)

-- ran ran ruu~
Kousei.dummy = function() end
