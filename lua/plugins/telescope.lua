return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },

  config = function()
    local builtin = require("telescope.builtin")

    -- Configuration for telescipe-ui
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    })
    require("telescope").load_extension("ui-select")

    -- Key mappings
    vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, silent = true})
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { noremap = true, silent = true})
  end
}
