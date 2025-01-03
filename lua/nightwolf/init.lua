local M = {}

local palette = require 'nightwolf.palette'
local get_groups = require 'nightwolf.groups'
local utils = require 'nightwolf.utils'

---@class NighwolfConfig
---@field theme string?
---@field italic boolean?
---@field transparency boolean?
---@field palette_overrides Palette?
---@field highlight_overrides table<string, vim.api.keyset.highlight>?
M.config = {
  theme = 'black',
  italic = true,
  transparency = false,
  palette_overrides = {},
  highlight_overrides = {},
}

---@param config NighwolfConfig?
M.setup = function(config)
  M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

M.load = function(opts)
  opts = vim.tbl_deep_extend('force', M.config, opts or {})

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.g.colors_name = 'nightwolf-' .. opts.theme

  if opts.theme == 'light' then
    vim.opt.background = 'light'
  else
    vim.opt.background = 'dark'
  end

  ---@type Palette
  local p = palette.colors[opts.theme]

  if not p then
    p = palette.black_colors
    utils.notify("Invalid theme. Using 'black' theme instead.\nValid themes are ('black', 'dark-blue', 'gray', 'dark-gray', 'light'. )", vim.log.levels.WARN)
  end

  p = vim.tbl_deep_extend('force', p, M.config.palette_overrides)

  p.background = opts.transparency == true and '' or p.background

  local groups = get_groups(p, M.config.italic)

  groups = vim.tbl_deep_extend('force', groups, M.config.highlight_overrides)

  for highlight_group, styles in pairs(groups) do
    vim.api.nvim_set_hl(0, highlight_group, styles)
  end

end

return M
