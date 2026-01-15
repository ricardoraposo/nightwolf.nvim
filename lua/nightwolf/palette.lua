local M = {}

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
---@field comment string?
---@field color12 string?
---@field color14 string?
---@field color15 string?
---@field color16 string?
---@field color17 string?
---@field color18 string?
---@field color19 string?

---@type Palette
M.black_colors = {
  background = '#000000',
  black = '#000000',
  red = '#f05050',
  white = '#ffffff',
  blue = '#00b1ff',
  lightPurple = '#dc8cff',
  darkPurple = '#9696ff',
  cyan = '#00dcdc',
  lightYellow = '#ffdc96',
  darkYellow = '#ffb482',
  green = '#aae682',
  lightRed = '#ff7878',
  muted = '#c8c8c8',
  comment = '#647882',
  color12 = '#969696',
  color14 = '#141414',
  color15 = '#161b10',
  color16 = '#230c0b',
  color17 = '#343434',
  color18 = '#3c3c3c',
  color19 = '#787878',
}

---@type Palette
M.dark_blue_colors = {
  background = '#101e2c',
  black = '#101e2c',
  red = '#f05050',
  white = '#ffffff',
  blue = '#00b1ff',
  lightPurple = '#dc8cff',
  darkPurple = '#9696ff',
  cyan = '#00dcdc',
  lightYellow = '#ffdc96',
  darkYellow = '#ffb482',
  green = '#aae682',
  lightRed = '#ff7878',
  muted = '#bdd2e7',
  comment = '#647882',
  color12 = '#7ba5cf',
  color14 = '#14283c',
  color15 = '#243435',
  color16 = '#312531',
  color17 = '#18364f',
  color18 = '#1e4667',
  color19 = '#5f82a5',
}

---@type Palette
M.gray_colors = {
  background = '#252525',
  black = '#252525',
  white = '#ffffff',
  blue = '#00b1ff',
  red = '#f05050',
  lightRed = '#ff7878',
  cyan = '#00dcdc',
  lightYellow = '#ffdc96',
  darkYellow = '#ffb482',
  green = '#aae682',
  lightPurple = '#dc8cff',
  darkPurple = '#9696ff',
  muted = '#cecece',
  comment = '#647882',
  color12 = '#9b9b9b',
  color14 = '#2d2d2d',
  color15 = '#363a2f',
  color16 = '#432b2b',
  color17 = '#4e4e4e',
  color18 = '#454545',
  color19 = '#757575',
}

M.dark_gray_colors = {
  background = '#1b1b1b',
  black = '#1b1b1b',
  white = '#ffffff',
  red = '#f05050',
  lightRed = '#ff7878',
  blue = '#00b1ff',
  cyan = '#00dcdc',
  lightPurple = '#dc8cff',
  darkPurple = '#9696ff',
  lightYellow = '#ffdc96',
  darkYellow = '#ffb482',
  green = '#aae682',
  muted = '#cecece',
  comment = '#647882',
  color12 = '#9d9d9d',
  color14 = '#242424',
  color15 = '#2d3227',
  color16 = '#3a2322',
  color17 = '#484848',
  color18 = '#3d3d3d',
  color19 = '#7c7c7c',
}

---@type Palette
M.wolf_colors = {
  background = '#1a1a2e',
  black = '#1a1a2e',
  white = '#e0e0e0',
  red = '#ff6b6b',
  lightRed = '#ff8787',
  blue = '#4dabf7',
  cyan = '#3bc9db',
  lightPurple = '#da77f2',
  darkPurple = '#9775fa',
  lightYellow = '#ffd43b',
  darkYellow = '#fcc419',
  green = '#69db7c',
  muted = '#adb5bd',
  comment = '#636e72',
  color12 = '#868e96',
  color14 = '#22223b',
  color15 = '#2a2a4a',
  color16 = '#3d2b56',
  color17 = '#3d3d5c',
  color18 = '#4a4a6a',
  color19 = '#6c6c8a',
}

---@type Palette
M.dawn_colors = {
  background = '#faf8f5',
  black = '#faf8f5',
  white = '#2d2d2d',
  red = '#d6336c',
  lightRed = '#e64980',
  blue = '#228be6',
  cyan = '#15aabf',
  lightPurple = '#be4bdb',
  darkPurple = '#7950f2',
  lightYellow = '#fab005',
  darkYellow = '#f59f00',
  green = '#40c057',
  muted = '#495057',
  comment = '#868e96',
  color12 = '#ced4da',
  color14 = '#f1f3f5',
  color15 = '#e9ecef',
  color16 = '#ffc9c9',
  color17 = '#dee2e6',
  color18 = '#c8cbcf',
  color19 = '#a5d8ff',
}

---@type Palette
M.dusk_colors = {
  background = '#1f1f3d',
  black = '#1f1f3d',
  white = '#e4e4ef',
  red = '#ff6b6b',
  lightRed = '#ff8787',
  blue = '#748ffc',
  cyan = '#66d9e8',
  lightPurple = '#da77f2',
  darkPurple = '#9775fa',
  lightYellow = '#ffd43b',
  darkYellow = '#fcc419',
  green = '#69db7c',
  muted = '#b3b3cc',
  comment = '#6c757d',
  color12 = '#8080a6',
  color14 = '#2d2d5c',
  color15 = '#3a3a6e',
  color16 = '#4a3b6e',
  color17 = '#4d4d7a',
  color18 = '#5c5c94',
  color19 = '#7a7aa8',
}

---@type Palette
M.light_colors = {
  background = '#eceff8',
  black = '#eceff8',
  red = '#d70000',
  white = '#000000',
  blue = '#005f87',
  lightPurple = '#875faf',
  darkPurple = '#5f00af',
  cyan = '#006666',
  lightYellow = '#af8700',
  darkYellow = '#875f00',
  green = '#008700',
  lightRed = '#d7005f',
  muted = '#4a4a4a',
  comment = '#6f6f6f',
  color12 = '#afafaf',
  color14 = '#e4e4e4',
  color15 = '#d7d7d7',
  color16 = '#af5f5f',
  color17 = '#e4e4e4',
  color18 = '#bcbcbc',
  color19 = '#d0d0d0',
}

M.colors = {
  light = M.light_colors,
  black = M.black_colors,
  ['dark-blue'] = M.dark_blue_colors,
  gray = M.gray_colors,
  ['dark-gray'] = M.dark_gray_colors,
  wolf = M.wolf_colors,
  dawn = M.dawn_colors,
  dusk = M.dusk_colors,
}

return M
