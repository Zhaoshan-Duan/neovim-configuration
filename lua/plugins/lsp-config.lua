return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			--local cmp = require('cmp')
			--local cmp_select = {behavior = cmp.SelectBehavior.Select}
			--local cmp_mappings = lsp.defaults.cmp_mappings({
			--['<C-p>'] = cmp.mapping.select_previous_item(cmp_select),
			--['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
			--  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
			-- ['<C-Space>'] = cmp.mapping.complete(),
			-- })
			--lsp.set_preferences({
			--   mapping = cmp_mappings
			--})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			--  local opts = {buffer = bufner, remap = false}
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			--            vim.keymap.set('n', '[d', vim.diagnostic.goto_next, {})
			--            vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
