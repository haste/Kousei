local function PLAYER_ENTERING_WORLD(self)
	for _, cvarData in pairs{
		-- Things that exist in the Interface Options
		'deselectOnClick 0 GAMEFIELD_DESELECT_TEXT',
		'autoLootDefault 1 AUTO_LOOT_DEFAULT_TEXT',
		'autoSelfCast 1 AUTO_SELF_CAST_TEXT',
		'autoDismountFlying 1 AUTO_DISMOUNT_FLYING_TEXT',
		'threatShowNumeric 1 SHOW_NUMERIC_THREAT',
		'showLootSpam 0 SHOW_LOOT_SPAM',
		'advancedWatchFrame 1 ADVANCED_OBJECTIVES_TEXT',
		'watchFrameIgnoreCursor 1 OBJECTIVES_IGNORE_CURSOR_TEXT',
		'profanityFilter 0 PROFANITY_FILTER',
		'chatBubbles 0 CHAT_BUBBLES_TEXT',
		'chatBubblesParty 0 PARTY_CHAT_BUBBLES_TEXT',
		'spamFilter 0 DISABLE_SPAM_FILTER',
		'removeChatDelay 1 REMOVE_CHAT_DELAY_TEXT',
		'guildMemberNotify 1 GUILDMEMBER_ALERT',
		'UnitNameOwn 1 UNIT_NAME_OWN',
		'CombatDamage 0 SHOW_DAMAGE_TEXT',
		'CombatHealing 1 SHOW_COMBAT_HEALING',
		'showArenaEnemyFrames 0 SHOW_ARENA_ENEMY_FRAMES_TEXT',
		'cameraDistanceMax 20',
		'cameraDistanceMaxFactor 4',
		'cameraWaterCollision 0 WATER_COLLISION',
		'scriptErrors 1 SHOW_LUA_ERRORS',

		-- Things that exist in the Sound Options

		-- Things that we probably shouldn't play too much with :3
		-- I always forget to turn this off...
		'scriptProfile 0',

		-- Keep this at one until wine handles multiple cores better.
		-- timingmethod 1 is generally for systems where the cores do not synchronize.
		-- timingmethod 2 is a higher resolution timing method and you won't hit the
		-- cap with that.
		'timingMethod 0',

		-- 0 - Disables the Launcher; WoW goes straight to the login screen.
		-- 1 - Shows the WoW Launcher before going to the login screen.
		'showToolsUI 0',

		-- Camerae move speed: 0 - 50 (8.33 default)
		'cameraDistanceMoveSpeed 50',

		-- How the camera should move between saved positions (1: smooth, 2: instant).
		'cameraViewBlendStyle 2',

		-- http://forums.worldofwarcraft.com/thread.html?topicId=1778017311&sid=1&pageNo=5#96
		-- ╔════════╤════════╤════════╤════════╤════════╤════════╤════════╤════════╗
		-- ║ Core 8 │ Core 7 │ Core 6 │ Core 5 │ Core 4 │ Core 3 │ Core 2 │ Core 1 ║
		-- ╠════════╪════════╪════════╪════════╪════════╪════════╪════════╪════════╣
		-- ║  +128  │  +64   │  +32   │  +16   │   +8   │   +4   │   +2   │   +1   ║
		-- ╚════════╧════════╧════════╧════════╧════════╧════════╧════════╧════════╝
		'processAffinityMask 255',

		-- Toggles whether or not the time manager's alarm will go off
		'timeMgrAlarmEnabled 0',

		-- Remove all the ground clutter
		'groundEffectDist 1',
		'groundEffectDensity 16',

		-- Stuff that look interesting which I need to look more into when I cba:
		-- forceEnglishNames
	} do
		SetCVar(string.split(' ', cvarData))
	end

	self:UnregisterEvent('PLAYER_ENTERING_WORLD', PLAYER_ENTERING_WORLD)
end

Kousei:RegisterEvent('PLAYER_ENTERING_WORLD', PLAYER_ENTERING_WORLD)
