return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({
      comment_empty = false,
      marker_padding = true,
    })

    vim.keymap.set("n", "<leader>/", "<cmd>CommentToggle<cr>", { noremap = true, silent = true })
    vim.keymap.set("v", "<leader>/", "<cmd>'<,'>CommentToggle<cr>", { noremap = true, silent = true })
  end
}
