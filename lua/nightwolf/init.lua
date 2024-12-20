local M = {}

local palette = require("nightwolf.palette")
local utils = require("nightwolf.utils")
local hi = utils.highlight
local link = utils.link

M.config = {
  theme = "dark",
  transparent = false,
}

M.setup = function(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

M.load = function(opts)
  opts = vim.tbl_deep_extend("force", M.config, opts or {})

  local p
  if opts.theme == "light" then
    p = palette.light_colors
  else
    p = palette.dark_colors
  end

  local bg = opts.transparent and "" or p.black

  -- general groups
  hi("Normal", bg, p.muted)
  hi("Statement", "", p.darkPurple)
  hi("Error", p.red, p.white)
  hi("Type", "", p.blue)
  hi("Type", "", "", { italic = true })
  hi("Conditional", "", p.lightPurple)
  hi("Conditional", "", p.darkPurple)
  hi("Repeat", "", p.darkPurple)
  hi("Function", "", p.cyan, { bold = true })
  hi("Identifier", "", p.lightYellow)
  hi("TSCharacter", "", p.lightYellow)
  hi("String", "", p.green)
  hi("Operator", "", p.lightRed)
  hi("Comment", "", p.color9, { italic = true })
  hi("Number", "", p.darkYellow)
  hi("StatusLine", p.color12, p.black)
  hi("WildMenu", p.black, p.muted)
  hi("Pmenu", p.black, p.muted)
  hi("PmenuSel", p.muted, p.color14)
  hi("PmenuThumb", p.black, p.muted)
  hi("DiffAdd", p.color15, "")
  hi("DiffDelete", p.color16, "")
  hi("Visual", p.color17, "")
  hi("CursorLine", p.color17, "")
  hi("ColorColumn", p.color17, "")
  hi("SignColumn", p.black, "")
  hi("LineNr", "", p.color18)
  hi("TabLine", p.black, p.color19)
  hi("TabLineSel", p.muted, p.color14)
  hi("TabLineFill", p.black, p.color19)
  hi("TSPunctDelimiter", "", p.muted)
  hi("DiagnosticDeprecated", "", "", { strikethrough = true })
  hi("Special", "", p.cyan)

  -- Treesitter groups

  -- keyword
  hi("@keyword.import", "", p.darkPurple)
  hi("@keyword.import.tsx", "", p.darkPurple)
  hi("@keyword.import.rust", "", p.lightRed)

  hi("@keyword", "", p.darkPurple)
  hi("@keyword.tsx", "", p.darkPurple)
  hi("@keyword.typescript", "", p.blue)
  hi("@keyword.rust", "", p.lightRed)

  hi("@keyword.function", "", p.blue, { italic = true })
  hi("@keyword.function.tsx", "", p.blue, { italic = true })
  hi("@keyword.function.rust", "", p.lightRed)

  hi("@keyword.operator", "", p.lightRed)
  hi("@keyword.operator.tsx", "", p.lightRed)

  hi("@keyword.type", "", p.blue)
  hi("@keyword.type.typescript", "", p.blue)

  hi("@keyword.coroutine", "", p.darkPurple, { italic = true })
  hi("@keyword.coroutine.typescript", "", p.darkPurple, { italic = true })

  hi("@keyword.repeat", "", p.lightRed)
  hi("@keyword.repeat.tsx", "", p.lightRed)
  hi("@keyword.repeat.typescript", "", p.lightRed)
  hi("@keyword.repeat.rust", "", p.lightRed)

  hi("@keyword.conditional", "", p.lightRed)
  hi("@keyword.conditional.rust", "", p.lightRed)

  hi("@keyword.modifier.rust", "", p.lightRed)

  -- variable
  hi("@variable", "", p.muted)
  hi("@variable.tsx", "", p.lightYellow)
  hi("@variable.typescript", "", p.lightYellow)
  hi("@variable.rust", "", p.lightYellow)

  hi("@variable.parameter", "", p.lightYellow)
  hi("@variable.parameter.tsx", "", p.lightYellow)
  hi("@variable.parameter.typescript", "", p.lightYellow)
  hi("@variable.parameter.rust", "", p.lightYellow)

  hi("@variable.builtin", "", p.lightRed)
  hi("@variable.builtin.tsx", "", p.lightRed)
  hi("@variable.builtin.typescript", "", p.lightRed)

  -- type
  hi("@type", "", p.lightPurple)
  hi("@type.tsx", "", p.lightPurple)
  hi("@type.typescript", "", p.cyan)
  hi("@type.rust", "", p.darkPurple)

  hi("@type.builtin", "", p.darkPurple)
  hi("@type.builtin.tsx", "", p.darkPurple)
  hi("@type.builtin.typescript", "", p.darkPurple)
  hi("@type.builtin.rust", "", p.lightPurple)

  -- boolean
  hi("@boolean", "", p.lightRed)
  hi("@boolean.tsx", "", p.lightRed)
  hi("@boolean.rust", "", p.lightRed)

  -- operator
  hi("@operator", "", p.muted)
  hi("@operator.tsx", "", p.muted)
  hi("@operator.rust", "", p.lightRed)

  -- punctuation
  hi("@punctuation.delimiter", "", p.muted)
  hi("@punctuation.bracket", "", p.lightYellow)
  hi("@punctuation.bracket.tsx", "", p.lightYellow)
  hi("@punctuation.bracket.lua", "", p.lightYellow)

  hi("@punctuation.special", "", p.lightRed)
  hi("@punctuation.special.tsx", "", p.lightRed)
  hi("@punctuation.special.typescript", "", p.lightRed)

  -- constructor
  hi("@constructor", "", p.darkPurple)
  hi("@constructor.tsx", "", p.darkPurple)
  hi("@constructor.typescript", "", p.blue)
  hi("@constructor.lua", "", p.darkPurple)

  -- string
  hi("@string.escape", "", p.green)
  hi("@string.escape.tsx", "", p.green)
  hi("@string.escape.typescript", "", p.green)
  hi("@string.escape.rust", "", p.green)

  -- function
  hi("@function.call", "", p.cyan, { italic = true })
  hi("@function.call.tsx", "", p.cyan, { italic = true })
  hi("@function.call.lua", "", p.darkPurple)

  hi("@function.method.call", "", p.cyan, { italic = true })
  hi("@function.method.call.tsx", "", p.cyan, { italic = true })
  hi("@function.method.call.typescript", "", p.cyan, { italic = true })

  -- tag
  hi("@tag", "", p.lightRed)
  hi("@tag.tsx", "", p.lightRed)
  hi("@tag.builtin", "", p.lightRed)
  hi("@tag.builtin.tsx", "", p.lightRed)
  hi("@tag.attribute", "", p.darkPurple)
  hi("@tag.attribute.tsx", "", p.darkPurple)
  hi("@tag.delimiter", "", p.muted)
  hi("@tag.delimiter.tsx", "", p.muted)

  -- constants
  hi("@constant", "", p.lightRed)
  hi("@constant.builtin", "", p.lightRed)
  hi("@constant.builtin.tsx", "", p.lightRed)
  hi("@constant.builtin.typescript", "", p.lightRed)
  hi("@constant.builtin.rust", "", p.lightYellow)

  -- markup
  hi("@markup.heading.1", "", p.muted)
  hi("@markup.heading.1.tsx", "", p.muted)

  -- module
  hi("@module.rust", "", p.lightPurple)

  -- Plugin specific
  hi("NvimTreeFolderName", "", p.blue)
  hi("NvimTreeSpecialFile", "", p.cyan)
  hi("NvimTreeOpenedFolderName", "", p.cyan)

  -- Telescope
  hi("TelescopeMatching", "", p.blue)

  -- MiniStatusLine
  hi("MiniStatuslineModeNormal", p.blue, p.black, { bold = true })
  hi("MiniStatuslineModeInsert", p.lightPurple, p.black, { bold = true })
  hi("MiniStatuslineModeVisual", p.lightRed, p.black, { bold = true })

  link("TelescopeNormal", "Normal")
  link("NonText", "Comment")
  link("Repeat", "Conditional")
  link("Whitespace", "Comment")
  link("Folded", "Comment")
  link("Conditional", "Operator")
  link("CursorLineNr", "Identifier")
  link("Operator", "Keyword")
  link("Macro", "Function")

  link("TSLabel", "Type")
  link("TSParameterReference", "TSParameter")
  link("TSKeyword", "Keyword")
  link("TSType", "Type")
  link("TSNamespace", "TSType")
  link("TSPunctSpecial", "TSPunctDelimiter")
  link("TSOperator", "Operator")
  link("TSConstant", "Constant")
  link("TSField", "Constant")
  link("TSFloat", "Number")
  link("TSConstBuiltin", "TSVariableBuiltin")
  link("TSParameter", "Constant")
  link("TSTag", "MyTag")
  link("TSPunctBracket", "MyTag")
  link("TSNumber", "Number")
  link("TSFunction", "Function")
  link("TSComment", "Comment")
  link("TSConditional", "Conditional")
  link("TSProperty", "TSField")
  link("TSFuncMacro", "Macro")
  link("TSRepeat", "Repeat")
  link("TSString", "String")
  link("TSTagDelimiter", "Type")
end

vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    M.load({ theme = vim.o.background == "light" and "light" or nil })
  end,
})

return M
