local naughty = require("naughty")

local defaultOutput = 'eDP-1'

outputMapping = {
    ['HDMI-A-1'] = 'HDMI-1',
    ['eDP-1'] = 'eDP-1',
    ['eDP-2'] = 'eDP-2',
}

screens = {
	['default'] = {
		['connected'] = function (xrandrOutput)
            if xrandrOutput ~= defaultOutput then
                return '--output ' .. xrandrOutput .. ' --auto --above ' .. defaultOutput
            end
            return nil
		end,
		['disconnected'] = function (xrandrOutput)
            if xrandrOutput ~= defaultOutput then
                return '--output ' .. xrandrOutput .. ' --off'
            end
            return nil
		end
	},
	['393460039'] = { -- HDMI-A-1
		['connected'] = function (xrandrOutput)
			if xrandrOutput ~= defaultOutput then
				return '--output ' .. xrandrOutput .. ' --auto --right-of ' .. defaultOutput
			end
			return nil
		end,
		['disconnected'] = function (xrandrOutput)
			if xrandrOutput ~= defaultOutput then
			return '--output ' .. xrandrOutput .. ' --off'
			end
			return nil
		end
	}
}
