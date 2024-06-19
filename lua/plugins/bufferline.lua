return {
	"akinsho/bufferline.nvim",
	version = "*",

	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				mode = "buffers",
				buffer_close_icon = "",
				offset = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						separator = true,
						padding = 1,
					},
				},
			},
		})
    
    local opts = { noremap = true, silent = true }
		-- Key mappings
		vim.keymap.set({ "n", "v" }, "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>$", ":BufferLineGoToBuffer -1<CR>", opts)

		vim.keymap.set({ "n", "v" }, "<tab>", ":BufferLineCycleNext<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<S-tab>", ":BufferLineCyclePrev<CR>", opts)

		vim.keymap.set({ "n", "v" }, "<leader>mf", ":BufferLineMoveNext<CR>", opts)
		vim.keymap.set({ "n", "v" }, "<leader>mb", ":BufferLineMovePrev<CR>", opts)

		vim.keymap.set({ "n", "v" }, "<leader>c", ":BufferLinePickClose<CR>", opts)
	end,
}
