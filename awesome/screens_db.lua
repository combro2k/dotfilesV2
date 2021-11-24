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
        return '--output ' .. xrandrOutput .. ' --primary --auto --above ' .. defaultOutput
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
      return '--output ' .. xrandrOutput .. ' --primary --auto --scale 0.75x0.75 --right-of ' .. defaultOutput
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
['907428309'] = { -- HDMI-1
['connected'] = function (xrandrOutput)
  if xrandrOutput ~= defaultOutput then
    return '--output ' .. xrandrOutput .. ' --primary --auto --right-of ' .. defaultOutput
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

--	['1617654544849'] = { -- DP-3
--		['connected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--				return '--output ' .. xrandrOutput .. ' --auto --same-as ' .. defaultOutput
--			end
--			return nil
--		end,
--		['disconnected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--			return '--output ' .. xrandrOutput .. ' --off --output ' .. defaultOutput .. ' --auto'
--			end
--			return nil
--		end
--	}
--	['907428309'] = { -- HDMI-1
--		['connected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--				return '--output ' .. xrandrOutput .. ' --auto --same-as ' .. defaultOutput
--			end
--			return nil
--		end,
--		['disconnected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--			return '--output ' .. xrandrOutput .. ' --off --output ' .. defaultOutput .. ' --auto'
--			end
--			return nil
--		end
--	}
--	['1607651684826'] = { -- DP-3
--		['connected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--				return '--output ' .. xrandrOutput .. ' --auto --same-as ' .. defaultOutput
--			end
--			return nil
--		end,
--		['disconnected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--			return '--output ' .. xrandrOutput .. ' --off --output ' .. defaultOutput .. ' --auto'
--			end
--			return nil
--		end
--	}
--	['1607652684826'] = { -- DP-3
--		['connected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--				return '--output ' .. xrandrOutput .. ' --auto --same-as ' .. defaultOutput
--			end
--			return nil
--		end,
--		['disconnected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--			return '--output ' .. xrandrOutput .. ' --off --output ' .. defaultOutput .. ' --auto'
--			end
--			return nil
--		end
--	}
--	['2000000'] = { -- /sys/class/drm/card0/card0-eDP-1
--		['connected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--				return '--output ' .. xrandrOutput .. ' --auto --same-as ' .. defaultOutput
--			end
--			return nil
--		end,
--		['disconnected'] = function (xrandrOutput)
--			if xrandrOutput ~= defaultOutput then
--			return '--output ' .. xrandrOutput .. ' --off --output ' .. defaultOutput .. ' --auto'
--			end
--			return nil
--		end
--	}
