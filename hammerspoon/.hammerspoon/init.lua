local configFileWatcher

local function reloadConfig()
	configFileWatcher:stop()
	configFileWatcher = nil
	hs.reload()
end

-- watch config file change and auto reload
configFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/init.lua/", reloadConfig)
configFileWatcher:start()
function getWinList(name)
	return hs.window.filter
		.new(false)
		:setAppFilter(name, {
			currentSpace = true,
		})
		:getWindows()
end

local function launchOrNextWindow(name, showName)
	local findName = showName or name
	local appName = hs.application.frontmostApplication():name()

	if findName ~= appName then
		hs.application.launchOrFocus(name)
	else
		local wlist = getWinList(findName)
		local wcount = #wlist

		if wcount > 1 then
			hs.eventtap.keyStroke({ "cmd" }, "`")
		else
			local win = wlist[1]
			if win:isMinimized() then
				win:unminimize()
			end
		end
	end
end

hs.hotkey.bind({ "alt" }, "e", function()
	launchOrNextWindow("Google Chrome")
end)

hs.hotkey.bind({ "alt" }, "t", function()
	launchOrNextWindow("Ghostty")
end)

hs.hotkey.bind({ "alt" }, "c", function()
	launchOrNextWindow("Visual Studio Code", "Code")
end)

hs.hotkey.bind({ "alt" }, "w", function()
	launchOrNextWindow("WeChat")
end)

hs.hotkey.bind({ "alt" }, "n", function()
	launchOrNextWindow("Notion")
end)

-- #region ByteDance

hs.hotkey.bind({ "alt" }, "b", function()
	launchOrNextWindow("Bifrost")
end)

hs.hotkey.bind({ "alt" }, "l", function()
	launchOrNextWindow("Lark")
end)

hs.hotkey.bind({ "alt" }, "b", function()
	launchOrNextWindow("Bifrost")
end)

hs.hotkey.bind({ "alt" }, "v", function()
	launchOrNextWindow("Trae CN")
end)

-- #endregion

hs.notify.new({ title = "Hammerspoon", subTitle = "Configuration reloaded!" }):send()
