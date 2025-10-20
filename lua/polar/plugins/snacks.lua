local snacks = {}

local c = require("polar.colors").palette
local utils = require("polar.utils")
local global_bg = utils.make_global_bg()

function snacks.highlights()
  return {
    SnacksDashboardDir = { link = "Comment" },

    SnacksPickerTotals = { link = "Comment" },
    SnacksPickerDir = { link = "Comment" },
    SnacksPickerBufFlags = { link = "Comment" },
    SnacksPickerKeymapRhs = { link = "Comment" },
    SnacksPickerGitStatus = { link = "Comment" },
    SnacksPickerPathHidden = { link = "Comment" },
    SnacksPickerPathIgnored = { link = "Comment" },
    SnacksPickerGitStatusIgnored = { link = "Comment" },
    SnacksPickerGitStatusUntracked = { link = "Comment" },

    SnacksPicker = { bg = global_bg },
    SnacksPickerTitle = { fg = c.snow_storm.origin, bg = global_bg },
    SnacksPickerBorder = { fg = c.none, bg = c.none },
    SnacksPickerNormal = { fg = c.snow_storm.origin, bg = global_bg },
    SnacksPickerMatch = { fg = c.snow_storm.origin },
    SnacksPickerCursor = { fg = c.polar_night.bright, bg = c.polar_night.bright },
    SnacksPickerPrompt = { fg = c.snow_storm.origin },
    SnacksPickerDim = { fg = c.polar_night.light },
    SnacksInputIcon = { fg = c.snow_storm.origin, bg = global_bg },
    SnacksIndent = { fg = c.polar_night.bright, nocombine = true },
    SnacksIndentChunk = { fg = c.polar_night.light, nocombine = true },
    SnacksIndentScope = { fg = c.polar_night.light, nocombine = true },
    SnacksPickerListCursorLine = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
    SnacksPickerInputBorder = { fg = c.none, bg = c.none },
    SnacksPickerInputTitle = { fg = c.snow_storm.origin, bg = global_bg },
    SnacksPickerBoxTitle = { fg = c.snow_storm.origin, bg = global_bg },
    SnacksPickerSelected = { fg = c.polar_night.bright },
    SnacksPickerPickWinCurrent = {
      fg = c.snow_storm.origin,
      bg = global_bg,
    },
    SnacksPickerPickWin = {
      fg = c.snow_storm.origin,
      bg = global_bg,
    },
  }
end

return snacks
