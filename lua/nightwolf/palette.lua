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

---@type Palette
M.light_colors = {
  background = '#eceff8',
  black = '#eceff8',
  red = '#d70000',
  white = '#000000',
  blue = '#005f87',
  lightPurple = '#875faf',
  darkPurple = '#5f00af',
  cyan = '#008787',
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

return M
