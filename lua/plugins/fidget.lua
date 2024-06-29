return {
  "j-hui/fidget.nvim",
  tag = "v1.4.5",
  event = { "BufEnter" },
  config = function()
    require("fidget").setup({
      text = {
        spinner = "dots_negative",
      },
    })
  end
}
