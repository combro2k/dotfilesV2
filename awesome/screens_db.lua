local naughty = require("naughty")

local defaultOutput = 'eDP1'

outputMapping = {
  ['HDMI-A-1'] = 'HDMI-1',
  ['eDP1'] = 'eDP1',
  ['DP2'] = 'DP2',
  ['DP-3'] = 'DP3',
  ['DP-8'] = 'DP3-3',
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
