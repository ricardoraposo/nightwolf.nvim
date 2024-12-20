<div align="center">

  ![wolf_gpt-removebg-preview](https://github.com/user-attachments/assets/871f85c8-e1ab-423f-ae4c-3d9471d079cb)


  <h1>nightwolf.nvim</h1>
</div>


Lua port of the [Nightwolf VS**** theme](https://github.com/mao-santaella-rs/NightWolfTheme) for Neovim with Treesitter support!

I mainly code in Typescript and Rust, so there might be a few highlight groups that were not set yet.
I also use treesitter, so I didn't bother making the theme work without it.
Therefore, PR's are more than welcome.

## Installation

### Lazy

```lua
{
  "ricardoraposo/nightwolf.nvim",
  lazy = false,
  priority = 1000,
}
```

### Packer

```lua
use ("ricardoraposo/nightwolf.nvim")
```

## Usage

### Vim Script

```vim
colorscheme nightwolf
```

### Lua

```lua
vim.cmd.colorscheme("nightwolf")
```


## Acknowledgements

- [Mao Santaella/Nightwolf for vscode](https://github.com/mao-santaella-rs/NightWolfTheme) for creating the original theme
- [Djanho](https://github.com/viniciusmuller/djanho) was used to create the first highlight groups from the original vs**** version
