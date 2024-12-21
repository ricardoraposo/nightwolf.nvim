<div align="center">

  <img width="300" alt="image_logo" src="https://github.com/user-attachments/assets/871f85c8-e1ab-423f-ae4c-3d9471d079cb" />


  <h1>nightwolf.nvim</h1>
</div>


Lua port of the [Nightwolf VS**** theme](https://github.com/mao-santaella-rs/NightWolfTheme) for Neovim with Treesitter support!

I mainly code in Typescript and Rust, so there might be a few highlight groups that were not set yet.
I also use treesitter, so I didn't bother making the theme work without it.
Therefore, PR's are more than welcome.

<img width="1421" alt="image" src="https://github.com/user-attachments/assets/26573085-cfdf-4288-bfe6-e30896b2aa8f" />

<img width="1414" alt="image" src="https://github.com/user-attachments/assets/59fa4d23-2a76-495e-b28f-d8456b992537" />



## Installation

### Lazy

```lua
{
  "ricardoraposo/nightwolf.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Packer

```lua
use ("ricardoraposo/nightwolf.nvim")
```

## Usage

### Vim Script

```vim
" Dark theme
set background=dark
colorscheme nightwolf

" Light theme
set background=light
colorscheme nightwolf
```

### Lua

```lua
-- Dark theme
vim.opt.background = 'dark'
vim.cmd.colorscheme("nightwolf")

-- Light theme
vim.opt.background = 'light'
vim.cmd.colorscheme("nightwolf")
```

## Configuration

Additional settings for nightwolf are:

```lua
-- Default options:
{
  theme = 'dark',
  transparency = false,
  palette_overrides = {},
}
```

**VERY IMPORTANT**: Make sure to call setup() **BEFORE** calling the colorscheme command, to use your custom configs

## Overriding

### Palette

You can specify your own palette colors. For example:

```lua
require('nightwolf').setup {
  palette_overrides = {
    background = "#ff0000",
    darkYellow = '#ffa500',
  }
}
```

Check below for valid entries:

```lua
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
  color9 = '#647882',
  color12 = '#969696',
  color14 = '#141414',
  color15 = '#161b10',
  color16 = '#230c0b',
  color17 = '#343434',
  color18 = '#3c3c3c',
  color19 = '#787878',
```
obs.: I'm not the most creative, feel free to suggest better naming for those colors

## Acknowledgements

- [Mao Santaella/Nightwolf for vscode](https://github.com/mao-santaella-rs/NightWolfTheme) for creating the original theme
- [Djanho](https://github.com/viniciusmuller/djanho) was used to create the first highlight groups from the original vs**** version
