local M = {}

M.groups = {
  { "Statement", "", p.darkPurple },
  { "Error", p.red, p.white },
  { "Type", "", p.blue },
  { "Type", "", "", { italic = true } },
  { "Conditional", "", p.lightPurple },
  { "Conditional", "", p.darkPurple },
  { "Repeat", "", p.darkPurple },
  { "Function", "", p.cyan, { bold = true } },
  { "Identifier", "", p.lightYellow },
  { "TSCharacter", "", p.lightYellow },
  { "String", "", p.green },
  { "Operator", "", p.lightRed },
  { "Comment", "", p.color9, { italic = true } },
  { "Number", "", p.darkYellow },
  { "StatusLine", p.color12, p.black },
  { "WildMenu", p.black, p.muted },
  { "Pmenu", p.black, p.muted },
  { "PmenuSel", p.muted, p.color14 },
  { "PmenuThumb", p.black, p.muted },
  { "DiffAdd", p.color15, "" },
  { "DiffDelete", p.color16, "" },
  { "Normal", p.black, p.muted },
  { "Visual", p.color17, "" },
  { "CursorLine", p.color17, "" },
  { "ColorColumn", p.color17, "" },
  { "SignColumn", p.black, "" },
  { "LineNr", "", p.color18 },
  { "TabLine", p.black, p.color19 },
  { "TabLineSel", p.muted, p.color14 },
  { "TabLineFill", p.black, p.color19 },
  { "TSPunctDelimiter", "", p.muted },
  { "DiagnosticDeprecated", "", "", { strikethrough = true } },
  { "Special", "", p.cyan },

  -- Treesitter groups

  -- keyword
  { "@keyword.import", "", p.darkPurple },
  { "@keyword.import.tsx", "", p.darkPurple },
  { "@keyword.import.rust", "", p.lightRed },

  { "@keyword", "", p.darkPurple },
  { "@keyword.tsx", "", p.darkPurple },
  { "@keyword.typescript", "", p.blue },
  { "@keyword.rust", "", p.lightRed },

  { "@keyword.function", "", p.blue, { italic = true } },
  { "@keyword.function.tsx", "", p.blue, { italic = true } },
  { "@keyword.function.rust", "", p.lightRed },

  { "@keyword.operator", "", p.lightRed },
  { "@keyword.operator.tsx", "", p.lightRed },

  { "@keyword.type", "", p.blue },
  { "@keyword.type.typescript", "", p.blue },

  { "@keyword.coroutine", "", p.darkPurple, { italic = true } },
  { "@keyword.coroutine.typescript", "", p.darkPurple, { italic = true } },

  { "@keyword.repeat", "", p.lightRed },
  { "@keyword.repeat.tsx", "", p.lightRed },
  { "@keyword.repeat.typescript", "", p.lightRed },
  { "@keyword.repeat.rust", "", p.lightRed },

  { "@keyword.conditional", "", p.lightRed },
  { "@keyword.conditional.rust", "", p.lightRed },

  { "@keyword.modifier.rust", "", p.lightRed },

  -- variable
  { "@variable", "", p.muted },
  { "@variable.tsx", "", p.lightYellow },
  { "@variable.typescript", "", p.lightYellow },
  { "@variable.rust", "", p.lightYellow },

  { "@variable.parameter", "", p.lightYellow },
  { "@variable.parameter.tsx", "", p.lightYellow },
  { "@variable.parameter.typescript", "", p.lightYellow },
  { "@variable.parameter.rust", "", p.lightYellow },

  { "@variable.builtin", "", p.lightRed },
  { "@variable.builtin.tsx", "", p.lightRed },
  { "@variable.builtin.typescript", "", p.lightRed },

  -- type
  { "@type", "", p.lightPurple },
  { "@type.tsx", "", p.lightPurple },
  { "@type.typescript", "", p.cyan },
  { "@type.rust", "", p.darkPurple },

  { "@type.builtin", "", p.darkPurple },
  { "@type.builtin.tsx", "", p.darkPurple },
  { "@type.builtin.typescript", "", p.darkPurple },
  { "@type.builtin.rust", "", p.lightPurple },

  -- boolean
  { "@boolean", "", p.lightRed },
  { "@boolean.tsx", "", p.lightRed },
  { "@boolean.rust", "", p.lightRed },

  -- operator
  { "@operator", "", p.muted },
  { "@operator.tsx", "", p.muted },
  { "@operator.rust", "", p.lightRed },

  -- punctuation
  { "@punctuation.delimiter", "", p.muted },
  { "@punctuation.bracket", "", p.lightYellow },
  { "@punctuation.bracket.tsx", "", p.lightYellow },
  { "@punctuation.bracket.lua", "", p.lightYellow },

  { "@punctuation.special", "", p.lightRed },
  { "@punctuation.special.tsx", "", p.lightRed },
  { "@punctuation.special.typescript", "", p.lightRed },

  -- constructor
  { "@constructor", "", p.darkPurple },
  { "@constructor.tsx", "", p.darkPurple },
  { "@constructor.typescript", "", p.blue },
  { "@constructor.lua", "", p.darkPurple },

  -- string
  { "@string.escape", "", p.green },
  { "@string.escape.tsx", "", p.green },
  { "@string.escape.typescript", "", p.green },
  { "@string.escape.rust", "", p.green },

  -- function
  { "@function.call", "", p.cyan, { italic = true } },
  { "@function.call.tsx", "", p.cyan, { italic = true } },
  { "@function.call.lua", "", p.darkPurple },

  { "@function.method.call", "", p.cyan, { italic = true } },
  { "@function.method.call.tsx", "", p.cyan, { italic = true } },
  { "@function.method.call.typescript", "", p.cyan, { italic = true } },

  -- tag
  { "@tag", "", p.lightRed },
  { "@tag.tsx", "", p.lightRed },
  { "@tag.builtin", "", p.lightRed },
  { "@tag.builtin.tsx", "", p.lightRed },
  { "@tag.attribute", "", p.darkPurple },
  { "@tag.attribute.tsx", "", p.darkPurple },
  { "@tag.delimiter", "", p.muted },
  { "@tag.delimiter.tsx", "", p.muted },

  -- constants
  { "@constant", "", p.lightRed },
  { "@constant.builtin", "", p.lightRed },
  { "@constant.builtin.tsx", "", p.lightRed },
  { "@constant.builtin.typescript", "", p.lightRed },
  { "@constant.builtin.rust", "", p.lightYellow },

  -- markup
  { "@markup.heading.1", "", p.muted },
  { "@markup.heading.1.tsx", "", p.muted },

  -- module
  { "@module.rust", "", p.lightPurple },

  -- Plugin specific
  { "NvimTreeFolderName", "", p.blue },
  { "NvimTreeSpecialFile", "", p.cyan },
  { "NvimTreeOpenedFolderName", "", p.cyan },

  -- Telescope
  { "TelescopeMatching", "", p.blue },

  -- MiniStatusLine
  { "MiniStatuslineModeNormal", p.blue, p.black, { bold = true } },
  { "MiniStatuslineModeInsert", p.lightPurple, p.black, { bold = true } },
  { "MiniStatuslineModeVisual", p.lightRed, p.black, { bold = true } },
}

return M
