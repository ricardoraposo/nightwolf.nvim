local M = {}

local palette = require 'nightwolf.palette'
local get_groups = require 'nightwolf.groups'

---@class Palette
---@field background string?
---@field black string?
---@field red string?
---@field white string?
---@field blue string?
---@field lightPurple string?
---@field darkPurple string?
---@field cyan string?
---@field lightYellow string?
---@field darkYellow string?
---@field green string?
---@field lightRed string?
---@field muted string?
---@field color9 string?
---@field color12 string?
---@field color14 string?
---@field color15 string?
---@field color16 string?
---@field color17 string?
---@field color18 string?
---@field color19 string?

---@class NighwolfConfig
---@field theme string?
---@field transparency boolean?
---@field palette_overrides Palette?
M.config = {
  theme = 'dark',
  transparency = false,
  palette_overrides = {},
}


---@param config NighwolfConfig?
M.setup = function(config)
  M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.load = function(opts)
  opts = vim.tbl_deep_extend('force', M.config, opts or {})

  local p
  if opts.theme == 'light' then
    p = palette.light_colors
  else
    p = palette.dark_colors
  end

  p = vim.tbl_deep_extend('force', p, M.config.palette_overrides)

  p.background = opts.transparency == true and '' or p.background

  local groups = get_groups(p)

  for highlight_group, styles in pairs(groups) do
    vim.api.nvim_set_hl(0, highlight_group, styles)
  end
end

vim.api.nvim_create_autocmd('OptionSet', {
  pattern = 'background',
  callback = function()
    M.load { theme = vim.o.background == 'light' and 'light' or nil }
  end,
})

return M
