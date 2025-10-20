local c = require("polar.colors").palette
local config = require("polar.config").options.styles

local polar = {}

polar.normal = {
  a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
  b = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
  c = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
}

polar.insert = {
  a = { fg = c.polar_night.origin, bg = c.snow_storm.origin },
}

polar.visual = {
  a = { fg = c.polar_night.origin, bg = c.frost.ice },
}

polar.replace = {
  a = { fg = c.polar_night.origin, bg = c.aurora.yellow },
}

polar.command = {
  a = { fg = c.polar_night.origin, bg = c.aurora.purple },
}

polar.inactive = {
  a = { fg = c.none, bg = c.polar_night.origin },
  b = { fg = c.none, bg = c.polar_night.origin },
  c = { fg = c.none, bg = c.polar_night.origin },
}

if config.lualine_bold then
  for _, mode in pairs(polar) do
    mode.a.gui = "bold"
  end
end

return polar
