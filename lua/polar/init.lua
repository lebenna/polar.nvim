local config = require("polar.config")
local utils = require("polar.utils")

local polar = {}

function polar.load(opts)
  if opts then
    require("polar.config").extend(opts)
  end

  vim.o.termguicolors = true

  if config.options.colorblind.enable then
    require("polar.colors").daltonize(config.options.colorblind.severity)
  end

  require("polar.config").options.on_colors(require("polar.colors").palette)

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("polar.terminal").apply()
  end

  utils.load(
    require("polar.defaults").highlights(),
    require("polar.lsp").highlights(),
    require("polar.syntax").highlights(),
    require("polar.terminal").highlights(),
    require("polar.treesitter").highlights(),
    require("polar.plugins.bufferline").highlights(),
    require("polar.plugins.completion").highlights(),
    require("polar.plugins.filetree").highlights(),
    require("polar.plugins.git").highlights(),
    require("polar.plugins.motion").highlights(),
    require("polar.plugins.notify").highlights(),
    require("polar.plugins.picker").highlights(),
    require("polar.plugins.ui").highlights(),
    require("polar.plugins.diffview").highlights(),
    require("polar.plugins.neogit").highlights(),
    require("polar.plugins.glance").highlights(),
    require("polar.plugins.mini").highlights(),
    require("polar.plugins.markview").highlights(),
    require("polar.plugins.snacks").highlights(),
    require("polar.plugins.dap").highlights(),
    require("polar.plugins.vimwiki").highlights(),
    require("polar.plugins.render-markdown").highlights()
  )

  vim.g.colors_name = "polar"
end

polar.setup = config.setup

return polar
