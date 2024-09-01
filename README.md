# Neovim Configuration

Theme: catppuccin

## Plugins

### [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### [telescope](https://github.com/nvim-telescope/telescope.nvim)

> Fuzzy finder

- `<leader>pf` for all file search
- `<C-p>` for git file search
- `<leader>ps` for live project grep

### [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)

> Quick file navigation

- `<leader>a` add current file to harpoon
- `<C-e>` toggle quick menu
- `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` select files in the harpoon list

## [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)

> Browse file system

- `<leader>n`

## [lualine](https://github.com/nvim-lualine/lualine.nvim)

> Neovim statusline

## [fugitive](https://github.com/tpope/vim-fugitive)

> Vim plugin for Git

- `<leader>gs' git status

## [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

> signs for git difference

## LSP

> [nvim-lspconfig](williamboman/mason-lspconfig.nvim) Core LSP configuration plugin for Neovim: connects neovim to langauge servers: set up key binding, and communication between neovim and LSPs

> [mason](williamboman/mason.nvim) Pakcage manager LSP servers, DAP servers, linters and formatters.

> [mason-lspconfig](williamboman/mason-lspconfig.nvim) briges gap between `mason.nvim` and `lspconfig`; ensures language servers are installed before running

> [hrsh7th/cmp-nvim-lsp](hrsh7th/cmp-nvim-lsp) completion source for nvim-cmp that uses Neovim's built-in LSP client.

> [none-ls](nvimtools/none-ls.nvim) Fork of null-ls: use Neovim as a language server to inject LSP diagnosdtics, code actions.

> [jay-babu/mason-null-ls.nvim](jay-babu/mason-null-ls.nvim) bridge between `mason` and `none-ls` for easy installation of null-ls sources.

LSP keybindings

- `gd` go to function definition
- `K` hover information
- `<leader>ca` Code Action
- `<leader>gf` for formatting

## Autocomplete and Snippets

> [nvim.cmp](https://github.com/hrsh7th/nvim-cmp) Neovim completion engine

> [LuaSnip](https://github.com/L3MON4D3/LuaSnip) Neovim snippet engine

> [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) luasnip completion source for nvim-cmp

> [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets) Snippets collection for different languages

> [cmp-nvim-lsp](https://github.com/sar/cmp-lsp.nvim) completion source for neovim LSP

Completion keybindings

- `<C-p> <C-n>` for selecting previous and next in completion list
- `<C-Space>` for completion
- `<C-y>` to confirm
- `<C-e>` for abort
- `<C-b> <C-f>` to scroll docs

## Tutorial Videos

![Primeagen - ](https://www.youtube.com/watch?v=w7i4amO_zaE&t)
![Typecraft - Neovim Series]()
