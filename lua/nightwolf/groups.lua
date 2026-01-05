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
    DiagnosticError = { bg = '', fg = p.red, undercurl = true },
    DiagnosticWarn = { bg = '', fg = p.darkYellow, underline = true },
    Special = { bg = '', fg = p.cyan },
    Bold = { bg = '', fg = '', bold = true },
    Added = { bg = '', fg = p.green },

    -- Treesitter groups

    -- keyword
    ['@keyword.import'] = { bg = '', fg = p.darkPurple },
    ['@keyword.import.tsx'] = { bg = '', fg = p.darkPurple },
    ['@keyword.import.rust'] = { bg = '', fg = p.lightRed },

    ['@keyword'] = { bg = '', fg = p.darkPurple },
    ['@keyword.tsx'] = { bg = '', fg = p.darkPurple },
    ['@keyword.typescript'] = { bg = '', fg = p.blue },
    ['@keyword.rust'] = { bg = '', fg = p.lightRed },
    ['@keyword.lua'] = { bg = '', fg = p.muted },

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
    ['@variable.nix'] = { bg = '', fg = p.lightYellow },
    ['@variable.lua'] = { bg = '', fg = p.lightYellow },

    ['@variable.parameter'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.tsx'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.typescript'] = { bg = '', fg = p.lightYellow },
    ['@variable.parameter.rust'] = { bg = '', fg = p.lightYellow },

    ['@variable.member.lua'] = { bg = '', fg = p.muted },
    ['@variable.member.nix'] = { bg = '', fg = p.darkPurple },

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

    ['@function.builtin.lua'] = { bg = '', fg = p.darkPurple, italic = italic },

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

    -- lsp
    ['@lsp.type.property.nix'] = { bg = '', fg = p.darkPurple },

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

    -- Terminal colors
    Terminal = { bg = p.background, fg = p.muted },

    -- Rainbow parentheses
    RainbowRed = { bg = '', fg = p.red },
    RainbowYellow = { bg = '', fg = p.darkYellow },
    RainbowBlue = { bg = '', fg = p.blue },
    RainbowOrange = { bg = '', fg = p.lightPurple },
    RainbowGreen = { bg = '', fg = p.green },
    RainbowViolet = { bg = '', fg = p.darkPurple },
    RainbowCyan = { bg = '', fg = p.cyan },

    -- vim-illuminate
    IlluminatedWord = { bg = p.color17 },
    IlluminatedCurWord = { bg = p.color17 },
    MatchParen = { bg = p.color17, fg = p.muted, bold = true },

    -- Gitsigns
    GitSignsAdd = { bg = p.background, fg = p.green },
    GitSignsChange = { bg = p.background, fg = p.darkYellow },
    GitSignsDelete = { bg = p.background, fg = p.red },
    GitSignsChangeDelete = { bg = p.background, fg = p.lightRed },
    GitSignsUntracked = { bg = p.background, fg = p.cyan },

    -- Which-Key
    WhichKey = { bg = p.background, fg = p.blue },
    WhichKeyGroup = { bg = '', fg = p.lightPurple },
    WhichKeyDesc = { bg = '', fg = p.lightYellow },
    WhichKeyFloat = { bg = p.color14, fg = p.muted },
    WhichKeySeparator = { bg = '', fg = p.comment },

    -- Noice
    NoiceCmdlinePopup = { bg = p.color14, fg = p.muted },
    NoiceCmdlinePopupBorder = { bg = p.color14, fg = p.darkPurple },
    NoiceCmdlinePopupBorderCmdline = { bg = p.color14, fg = p.darkPurple },
    NoiceCmdlinePopupBorderSearch = { bg = p.color14, fg = p.green },
    NoiceCmdlinePopupBorderError = { bg = p.color14, fg = p.red },
    NoiceCmdlinePopupBorderWarn = { bg = p.color14, fg = p.darkYellow },
    NoiceCompletionMenu = { bg = p.background, fg = p.muted },
    NoiceCompletionMenuSelected = { bg = p.color17, fg = p.lightYellow },
    NoiceFormatTitle = { bg = '', fg = p.lightPurple },
    NoiceFormatKind = { bg = '', fg = p.darkPurple },

    -- LSP Semantic Tokens (generic)
    ['@lsp.type.class'] = { bg = '', fg = p.lightPurple },
    ['@lsp.type.function'] = { bg = '', fg = p.cyan },
    ['@lsp.type.method'] = { bg = '', fg = p.cyan },
    ['@lsp.type.variable'] = { bg = '', fg = p.muted },
    ['@lsp.type.property'] = { bg = '', fg = p.lightYellow },
    ['@lsp.type.keyword'] = { bg = '', fg = p.darkPurple },
    ['@lsp.type.string'] = { bg = '', fg = p.green },
    ['@lsp.type.number'] = { bg = '', fg = p.darkYellow },
    ['@lsp.type.type'] = { bg = '', fg = p.lightPurple },
    ['@lsp.type.enum'] = { bg = '', fg = p.lightPurple },
    ['@lsp.type.interface'] = { bg = '', fg = p.darkPurple },
    ['@lsp.type.struct'] = { bg = '', fg = p.darkPurple },
    ['@lsp.type.parameter'] = { bg = '', fg = p.lightYellow },
    ['@lsp.type.constant'] = { bg = '', fg = p.lightRed },
    ['@lsp.type.decorator'] = { bg = '', fg = p.blue },
    ['@lsp.type.namespace'] = { bg = '', fg = p.darkPurple },
    ['@lsp.type.operator'] = { bg = '', fg = p.muted },
    ['@lsp.type.event'] = { bg = '', fg = p.lightPurple },
    ['@lsp.type.modifier'] = { bg = '', fg = p.lightRed },

    -- Telescope extended highlights
    TelescopeTitle = { bg = p.color14, fg = p.blue, bold = true },
    TelescopePromptTitle = { bg = p.color14, fg = p.darkPurple, bold = true },
    TelescopePreviewTitle = { bg = p.color14, fg = p.green, bold = true },
    TelescopeBorder = { bg = p.background, fg = p.color14 },
    TelescopePromptBorder = { bg = p.background, fg = p.color14 },
    TelescopePreviewBorder = { bg = p.background, fg = p.color14 },
    TelescopePromptNormal = { bg = p.background, fg = p.muted },
    TelescopePromptPrefix = { bg = p.background, fg = p.lightRed },
    TelescopeSelection = { bg = p.color17, fg = p.lightYellow },
    TelescopeSelectionCaret = { bg = p.color17, fg = p.lightRed },
    TelescopeMultiSelection = { bg = p.color14, fg = p.cyan },
    TelescopeResultsTitle = { bg = p.color14, fg = p.muted },
  }
end
