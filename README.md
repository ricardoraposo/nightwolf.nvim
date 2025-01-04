<div align="center">

  <img width="300" alt="image_logo" src="https://github.com/user-attachments/assets/871f85c8-e1ab-423f-ae4c-3d9471d079cb" />


  <h1>Nightwolf</h1>
</div>


Lua port of the [Nightwolf VS**** theme](https://github.com/mao-santaella-rs/NightWolfTheme) for Neovim with Treesitter support!

I mainly code in Typescript and Rust, so there might be a few highlight groups that were not set yet.
I also use treesitter, so I'm not making an active effort on supporting the theme to work without it.
Therefore, PR's are more than welcome.

<table width="100%">
  <tr>
    <th>Black</th>
    <th>Dark Blue</th>
  </tr>
  <tr>
    <td width="50%">
      <img width="1421" alt="image" src="https://github.com/user-attachments/assets/26573085-cfdf-4288-bfe6-e30896b2aa8f" />
    </td>
    <td width="50%">
      <img width="1419" alt="image" src="https://github.com/user-attachments/assets/86b58f5a-f557-4450-b20d-eb323738af4b" />
    </td>
  </tr>
   <tr>
    <th>Gray</th>
    <th>Dark Gray</th>
  </tr>
  <tr>
    <td width="50%">
      <img width="1418" alt="image" src="https://github.com/user-attachments/assets/8e886181-3c0e-49c3-99c3-c3410d00eb72" />
    </td>
    <td width="50%">
      <img width="1417" alt="image" src="https://github.com/user-attachments/assets/3ea0c1b3-8f25-459d-92bc-1829bca506e9" />
    </td>
  </tr>
    <tr>
    <th>Light</th>
  </tr>
  <tr>
    <td width="50%">
      <img width="1414" alt="image" src="https://github.com/user-attachments/assets/59fa4d23-2a76-495e-b28f-d8456b992537" />
    </td>
  </tr>
</table>

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
  theme = 'black', -- 'black', 'dark-blue', 'gray', 'dark-gray', 'light'
  italic = true,
  transparency = false,
  palette_overrides = {},
  highlight_overrides = {},
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
  comment = '#647882',
  color12 = '#969696',
  color14 = '#141414',
  color15 = '#161b10',
  color16 = '#230c0b',
  color17 = '#343434',
  color18 = '#3c3c3c',
  color19 = '#787878',
```
obs.: I'm not the most creative, feel free to suggest better naming for those colors

### Highlight groups

If you don't enjoy the current color for a specific highlight group, now you can just override it in the setup. For
example:

```lua
require('nightwolf').setup {
    highlight_overrides = {
        SignColumn = { bg = "#ff9900" }
    }
}
```

It also works with treesitter groups and lsp semantic highlight tokens

```lua
require('nightwolf').setup {
    highlight_overrides = {
        ["@lsp.type.method"] = { bg = "#ff9900" },
        ["@comment.lua"] = { bg = "#000000" },
    }
}
```

Please note that the override values must follow the attributes from the highlight group map, such as:

- **fg** - foreground color
- **bg** - background color
- **bold** - true or false for bold font
- **italic** - true or false for italic font

Other values can be seen in [`synIDattr`](<https://neovim.io/doc/user/builtin.html#synIDattr()>)

## Acknowledgements

- [Mao Santaella/Nightwolf for vscode](https://github.com/mao-santaella-rs/NightWolfTheme) for creating the original theme
- [Djanho](https://github.com/viniciusmuller/djanho) was used to create the first highlight groups from the original vs**** version
