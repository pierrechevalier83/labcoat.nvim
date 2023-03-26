# labcoat.nvim

A [labcoat](https://www.labcoattheme.com/)-esque colorscheme.

labcoat.nvim supports highlighting for [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
[Neovim LSP](https://neovim.io/doc/user/lsp.html), [Telescope](https://github.com/nvim-telescope/telescope.nvim/),
and [much more](https://github.com/andersevenrud/labcoat.nvim/tree/main/lua/labcoat/colors).

![Color Preview](https://user-images.githubusercontent.com/42545625/112913430-935a6a80-90c7-11eb-867e-394b1790a14f.png)

## Requirements

* Neovim 0.5+

## Usage

labcoat.nvim can be installed using any package manager and configuration language
of choice.

### With packer.nvim

[`packer.nvim`](https://github.com/wbthomason/packer.nvim) provides an easy way
to install, enable and configure this colorscheme:

```lua
use {
    'andersevenrud/labcoat.nvim',
    config = function()
        -- The table used in this example contains the default settings.
        -- Modify or remove these to your liking (this also applies to alternatives below):
        require('labcoat').colorscheme({
            -- Underline style used for spelling
            -- Options: 'none', 'underline', 'undercurl'
            underline_option = 'none',

            -- Italics for certain keywords such as constructors, functions,
            -- labels and namespaces
            italic = true,

            -- Italic styled comments
            italic_comments = false,

            -- Minimal mode: different choice of colors for Tabs and StatusLine
            minimal_mode = false,

            -- Darker backgrounds for certain sidebars, popups, etc.
            -- Options: true, false, or a table of explicit names
            -- Supported: terminal, qf, vista_kind, packer, nvim-tree, telescope, whichkey
            alternate_backgrounds = false,

            -- Callback function to define custom color groups
            -- See 'lua/labcoat/colors/example.lua' for example defitions
            custom_colors = function(c, s, cs)
              return {}
            end
        })
    end
}
```

### Alternatives

For example [`vim-plug`](https://github.com/junegunn/vim-plug):

```vim
Plug 'andersevenrud/labcoat.nvim'
```

#### Using Lua

Via the labcoat.nvim module:

``` lua
require('labcoat').colorscheme({
    underline_option = 'none',
    italic = true,
    italic_comments = false,
    minimal_mode = false,
    alternate_backgrounds = false
})
```

or via vim globals:

``` lua
vim.g.labcoat_underline_option = 'none'
vim.g.labcoat_italic = true
vim.g.labcoat_italic_comments = false
vim.g.labcoat_minimal_mode = false
vim.g.labcoat_alternate_backgrounds = false
vim.cmd('colorscheme labcoat')
```

#### Using Vimscript

``` vim
let g:labcoat_underline_option = 'none'
let g:labcoat_italic = v:true
let g:labcoat_italic_comments = v:false
let g:labcoat_minimal_mode = v:false
let g:labcoat_alternate_backgrounds = v:false
colorscheme labcoat
```

## Notes

Certain plugin highlights are configured manually with Lua tables. This colorscheme comes with some
[pre-made configurations](https://github.com/andersevenrud/labcoat.nvim/tree/main/lua/labcoat/configs) and instructions.
