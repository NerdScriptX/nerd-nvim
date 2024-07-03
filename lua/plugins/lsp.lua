return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost" },
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

    local opts = { noremap = true, silent = true }

    -- Key mappings
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  end,
}
