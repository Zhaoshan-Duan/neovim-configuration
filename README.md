# Neovim Configuration 

Theme: catppuccin

## Plugins 

### [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- languages: lua 

## [telescope](https://github.com/nvim-telescope/telescope.nvim)
>Fuzzy finder
- `<leader>pf` for all file search
- `<C-p>` for git file search
- `<leader>ps` for live project grep

## [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
Quick file navigation
- `<leader>a` add current file to harpoon
- `<C-e>` toggle quick menu
- `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` select files in the harpoon list

## [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
Browse file system
- `<leader>n`

## [lualine](https://github.com/nvim-lualine/lualine.nvim)
Neovim statusline

## [fugitive](https://github.com/tpope/vim-fugitive)
Vim plugin for Git
- `<leader>gs'


## LSP

> [mason.vim](williamboman/mason.nvim) manages and installs LSPs  

> [mason-lspconfig](williamboman/mason-lspconfig.nvim) briges gap between `mason.nvim` and `lspconfig`; ensures language servers are installed before running

> [nvim-lspconfig](williamboman/mason-lspconfig.nvim) connects neovim to langauge servers: set up key binding, and communication between neovim and LSPs

- `gd` go to function definition
- `K` hover
- `<leader>ca` Code Action
- `<C-x> <C-o>` code completion

## [none-ls](https://github.com/nvimtools/none-ls.nvim)
Linting and formatting

Support language: `lua`, `python`
- `<leader>gf` for formatting
