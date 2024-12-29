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

  ---@type Palette
  local p
  if opts.theme == 'light' then
    vim.opt.background = 'light'
    p = palette.light_colors
  elseif opts.theme == 'dark-blue' then
    vim.opt.background = 'dark'
    p = palette.dark_blue_colors
  elseif opts.theme == 'gray' then
    vim.opt.background = 'dark'
    p = palette.gray_colors
  elseif opts.theme == 'dark-gray' then
    vim.opt.background = 'dark'
    p = palette.dark_gray_colors
  elseif opts.theme == 'black' then
    vim.opt.background = 'dark'
    p = palette.black_colors
  else
    utils.notify("Invalid theme. Using 'black' theme instead.\nValid themes are ('black', 'dark-blue', 'gray', 'light', )", vim.log.levels.WARN)
    vim.opt.background = 'dark'
    p = palette.black_colors
  end

  p = vim.tbl_deep_extend('force', p, M.config.palette_overrides)

  p.background = opts.transparency == true and '' or p.background

  local groups = get_groups(p, M.config.italic)

  groups = vim.tbl_deep_extend('force', groups, M.config.highlight_overrides)

  for highlight_group, styles in pairs(groups) do
    vim.api.nvim_set_hl(0, highlight_group, styles)
  end
end

local highlight_augroup = vim.api.nvim_create_augroup('nightwolf-bg-hr', { clear = false })
if vim.g.colors_name == 'nightwolf' then
  vim.api.nvim_create_autocmd('OptionSet', {
    group = highlight_augroup,
    pattern = 'background',
    callback = function()
      M.load { theme = vim.o.background == 'light' and 'light' or nil }
    end,
  })
else
  vim.api.nvim_clear_autocmds { group = highlight_augroup }
end

return M
