local mini = {}

local c = require("polar.colors").palette

function mini.highlights()
  return {
    MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
