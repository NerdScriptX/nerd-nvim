return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },

	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"emmet_language_server",
				"html",
				"css_variables",
				"cssmodules_ls",
				"somesass_ls",
				"graphql",
				"tailwindcss",
			},
		})

		-- Setting up connection between Client LSP and Server LSP
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.emmet_language_server.setup({})
		lspconfig.html.setup({})
		lspconfig.css_variables.setup({})
		lspconfig.cssmodules_ls.setup({})
		lspconfig.somesass_ls.setup({})
		lspconfig.graphql.setup({})
		lspconfig.tailwindcss.setup({})

		-- Key mappings
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	end,
}
