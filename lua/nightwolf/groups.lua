---@param p Palette
---@param italic boolean
---@return table<string, vim.api.keyset.highlight>
return function(p, italic)
  return {
    Normal = { bg = p.background, fg = p.muted },
    NormalFloat = { bg = p.color14, fg = p.muted },
    Type = { bg = '', fg = p.blue, italic = italic },
    String = { bg = '', fg = p.green },
    Operator = { bg = '', fg = p.lightRed },
    Number = { bg = '', fg = p.darkYellow },
    Conditional = { bg = '', fg = p.darkPurple },
    Directory = { bg = '', fg = p.cyan },
    Statement = { bg = '', fg = p.darkPurple },
    Error = { bg = p.red, fg = p.white },
    Comment = { bg = '', fg = p.comment, italic = italic },
    Repeat = { bg = '', fg = p.darkPurple },
    Function = { bg = '', fg = p.cyan, bold = true },
    Identifier = { bg = '', fg = p.lightYellow },
    TSCharacter = { bg = '', fg = p.lightYellow },
    StatusLine = { bg = p.color12, fg = p.black },
    WildMenu = { bg = p.background, fg = p.muted },
    Pmenu = { bg = p.background, fg = p.muted },
    PmenuSel = { bg = p.muted, fg = p.color14 },
    PmenuThumb = { bg = p.background, fg = p.muted },
    DiffAdd = { bg = p.color15, fg = '' },
    DiffDelete = { bg = p.color16, fg = '' },
    Visual = { bg = p.color17, fg = '' },
    CursorLine = { bg = p.color17, fg = '' },
    ColorColumn = { bg = p.color17, fg = '' },
    SignColumn = { bg = p.background, fg = '' },
    LineNr = { bg = '', fg = p.color18 },
    TabLine = { bg = p.black, fg = p.color19 },
    TabLineSel = { bg = p.muted, fg = p.color14 },
    TabLineFill = { bg = p.black, fg = p.color19 },
    TSPunctDelimiter = { bg = '', fg = p.muted },
    DiagnosticDeprecated = { bg = '', fg = '', strikethrough = true },
    DiagnosticHint = { bg = '', fg = p.blue },
    DiagnosticError = { bg = '', fg = p.red },
    Special = { bg = '', fg = p.cyan },
    Bold = { bg = '', fg = '', bold = true },

    -- Treesitter groups

    -- keyword
    ['@keyword.import'] = { bg = '', fg = p.darkPurple },
    ['@keyword.import.tsx'] = { bg = '', fg = p.darkPurple },
    ['@keyword.import.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword'] = { bg = '', fg = p.darkPurple },
    ['@keyword.tsx'] = { bg = '', fg = p.darkPurple },
    ['@keyword.typescript'] = { bg = '', fg = p.blue },
    ['@keyword.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword.function'] = { bg = '', fg = p.blue, italic = italic },
    ['@keyword.function.tsx'] = { bg = '', fg = p.blue, italic = italic },
    ['@keyword.function.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword.operator'] = { bg = '', fg = p.lightRed },
    ['@keyword.operator.tsx'] = { bg = '', fg = p.lightRed },

    ['@keyword.type'] = { bg = '', fg = p.blue },
    ['@keyword.type.typescript'] = { bg = '', fg = p.blue },

    ['@keyword.coroutine'] = { bg = '', fg = p.darkPurple, italic = italic },
    ['@keyword.coroutine.typescript'] = { bg = '', fg = p.darkPurple, italic = italic },

    ['@keyword.repeat'] = { bg = '', fg = p.lightRed },
    ['@keyword.repeat.tsx'] = { bg = '', fg = p.lightRed },
    ['@keyword.repeat.typescript'] = { bg = '', fg = p.lightRed },
    ['@keyword.repeat.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword.conditional'] = { bg = '', fg = p.lightRed },
    ['@keyword.conditional.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword.modifier.rust'] = { bg = '', fg = p.lightRed },

    -- variable
    ['@variable'] = { bg = '', fg = p.muted },
    ['@variable.tsx'] = { bg = '', fg = p.lightYellow },
    ['@variable.typescript'] = { bg = '', fg = p.lightYellow },
    ['@variable.rust'] = { bg = '', fg = p.lightYellow },

    ['@variable.parameter'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.tsx'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.typescript'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.rust'] = { bg = '', fg = p.lightYellow },

    ['@variable.builtin'] = { bg = '', fg = p.lightRed },
    ['@variable.builtin.tsx'] = { bg = '', fg = p.lightRed },
    ['@variable.builtin.typescript'] = { bg = '', fg = p.lightRed },

    -- type
    ['@type'] = { bg = '', fg = p.lightPurple },
    ['@type.tsx'] = { bg = '', fg = p.lightPurple },
    ['@type.typescript'] = { bg = '', fg = p.cyan },
    ['@type.rust'] = { bg = '', fg = p.darkPurple },

    ['@type.builtin'] = { bg = '', fg = p.darkPurple },
    ['@type.builtin.tsx'] = { bg = '', fg = p.darkPurple },
    ['@type.builtin.typescript'] = { bg = '', fg = p.darkPurple },
    ['@type.builtin.rust'] = { bg = '', fg = p.lightPurple },

    -- boolean
    ['@boolean'] = { bg = '', fg = p.lightRed },
    ['@boolean.tsx'] = { bg = '', fg = p.lightRed },
    ['@boolean.rust'] = { bg = '', fg = p.lightRed },

    -- operator
    ['@operator'] = { bg = '', fg = p.muted },
    ['@operator.tsx'] = { bg = '', fg = p.muted },
    ['@operator.rust'] = { bg = '', fg = p.lightRed },

    -- punctuation
    ['@punctuation.delimiter'] = { bg = '', fg = p.muted },
    ['@punctuation.bracket'] = { bg = '', fg = p.lightYellow },
    ['@punctuation.bracket.tsx'] = { bg = '', fg = p.lightYellow },
    ['@punctuation.bracket.lua'] = { bg = '', fg = p.lightYellow },

    ['@punctuation.special'] = { bg = '', fg = p.lightRed },
    ['@punctuation.special.tsx'] = { bg = '', fg = p.lightRed },
    ['@punctuation.special.typescript'] = { bg = '', fg = p.lightRed },

    -- constructor
    ['@constructor'] = { bg = '', fg = p.darkPurple },
    ['@constructor.tsx'] = { bg = '', fg = p.darkPurple },
    ['@constructor.typescript'] = { bg = '', fg = p.blue },
    ['@constructor.lua'] = { bg = '', fg = p.darkPurple },

    -- string
    ['@string.escape'] = { bg = '', fg = p.green },
    ['@string.escape.tsx'] = { bg = '', fg = p.green },
    ['@string.escape.typescript'] = { bg = '', fg = p.green },
    ['@string.escape.rust'] = { bg = '', fg = p.green },

    -- function
    ['@function.method.vue'] = { bg = '', fg = p.darkPurple, italic = italic },

    ['@function.call'] = { bg = '', fg = p.cyan, italic = italic },
    ['@function.call.tsx'] = { bg = '', fg = p.cyan, italic = italic },
    ['@function.call.lua'] = { bg = '', fg = p.darkPurple },

    ['@function.method.call'] = { bg = '', fg = p.cyan, italic = italic },
    ['@function.method.call.tsx'] = { bg = '', fg = p.cyan, italic = italic },
    ['@function.method.call.typescript'] = { bg = '', fg = p.cyan, italic = italic },

    -- tag
    ['@tag'] = { bg = '', fg = p.lightRed },
    ['@tag.tsx'] = { bg = '', fg = p.lightRed },

    ['@tag.builtin'] = { bg = '', fg = p.lightRed },
    ['@tag.builtin.tsx'] = { bg = '', fg = p.lightRed },

    ['@tag.attribute'] = { bg = '', fg = p.darkPurple },
    ['@tag.attribute.tsx'] = { bg = '', fg = p.darkPurple },

    ['@tag.delimiter'] = { bg = '', fg = p.muted },
    ['@tag.delimiter.tsx'] = { bg = '', fg = p.muted },

    -- constants
    ['@constant'] = { bg = '', fg = p.lightRed },
    ['@constant.builtin'] = { bg = '', fg = p.lightRed },
    ['@constant.builtin.tsx'] = { bg = '', fg = p.lightRed },
    ['@constant.builtin.typescript'] = { bg = '', fg = p.lightRed },
    ['@constant.builtin.rust'] = { bg = '', fg = p.lightYellow },

    -- markup
    ['@spell'] = { bg = '', fg = p.muted },
    ['@markup.heading.1'] = { bg = '', fg = p.muted },
    ['@markup.heading.2'] = { bg = '', fg = p.muted },
    ['@markup.heading.3'] = { bg = '', fg = p.muted },
    ['@markup.heading.1.tsx'] = { bg = '', fg = p.muted },

    -- module
    ['@module.rust'] = { bg = '', fg = p.lightPurple },

    -- Plugin specific
    NvimTreeFolderName = { bg = '', fg = p.blue },
    NvimTreeSpecialFile = { bg = '', fg = p.cyan },
    NvimTreeOpenedFolderName = { bg = '', fg = p.cyan },

    -- Telescope
    TelescopeMatching = { bg = '', fg = p.blue },

    -- MiniStatusLine
    MiniStatuslineModeNormal = { bg = p.blue, fg = p.black, bold = true },
    MiniStatuslineModeInsert = { bg = p.lightPurple, fg = p.black, bold = true },
    MiniStatuslineModeVisual = { bg = p.lightRed, fg = p.black, bold = true },
    MiniStatuslineModeCommand = { bg = p.cyan, fg = p.black, bold = true },

    TelescopeNormal = { link = 'Normal' },
    NonText = { link = 'Comment' },
    Whitespace = { link = 'Comment' },
    Folded = { link = 'Comment' },
    CursorLineNr = { link = 'Identifier' },
    Macro = { link = 'Function' },
    TSLabel = { link = 'Type' },
    TSParameterReference = { link = 'TSParameter' },
    TSKeyword = { link = 'Keyword' },
    TSType = { link = 'Type' },
    TSNamespace = { link = 'TSType' },
    TSPunctSpecial = { link = 'TSPunctDelimiter' },
    TSOperator = { link = 'Operator' },
    TSConstant = { link = 'Constant' },
    TSField = { link = 'Constant' },
    TSFloat = { link = 'Number' },
    TSConstBuiltin = { link = 'TSVariableBuiltin' },
    TSParameter = { link = 'Constant' },
    TSTag = { link = 'MyTag' },
    TSPunctBracket = { link = 'MyTag' },
    TSNumber = { link = 'Number' },
    TSFunction = { link = 'Function' },
    TSComment = { link = 'Comment' },
    TSConditional = { link = 'Conditional' },
    TSProperty = { link = 'TSField' },
    TSFuncMacro = { link = 'Macro' },
    TSRepeat = { link = 'Repeat' },
    TSString = { link = 'String' },
    TSTagDelimiter = { link = 'Type' },
  }
end
