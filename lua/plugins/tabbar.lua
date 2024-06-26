return {
  "romgrk/barbar.nvim",
  config = function()
    require("barbar").setup({
      auto_hide = true,
      icons = {
        buffer_index = true,
        buffer_number = false,
        button = '',
      },
    })

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map('n', '<S-tab>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<tab>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)

    map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
    map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
    map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
    map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
    map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
    map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
    map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
    map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
    map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
  end
}
