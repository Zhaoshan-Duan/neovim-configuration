require("jojo.remap")
require("jojo.set")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}

local opts = {}
-- Setup lazy.nvim
require("lazy").setup(plugins, opts)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = {"lua"},
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },  
})


require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

--require("lazy").setup({
--  spec = {
-- import your plugins
--    { import = "plugins" },
--  },
-- Configure any other settings here. See the documentation for more details.
-- colorscheme that will be used when installing plugins.
--  install = { colorscheme = { "habamax" } },
-- automatically check for plugin updates
--  checker = { enabled = true },
--})


