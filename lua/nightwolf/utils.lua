local M = {}

--- Sets a highlight group with specified background, foreground, and optional styles
--- @param group string
--- @param bg string
--- @param fg string
--- @param style? table
M.highlight = function(group, bg, fg, style)
  local hl_opts = { bg = bg, fg = fg }

  if style then
    for k, v in pairs(style) do
      hl_opts[k] = v
    end
  end

  vim.api.nvim_set_hl(0, group, hl_opts)
end

--- Links a highlight group color to another highlight group
--- @param from string
--- @param to string
M.link = function(from, to)
  vim.api.nvim_set_hl(0, from, { link = to })
end

--- Wrapper for vim.notify
--- @param msg string
--- @param level integer | nil
M.notify = function(msg, level)
  local status, notify = pcall(require, 'notify')

  if status then
    vim.notify = notify
  end

  vim.notify(msg, level)
end

return M
