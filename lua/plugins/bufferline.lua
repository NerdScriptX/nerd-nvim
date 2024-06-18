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

		-- Key mappings
		vim.keymap.set({ "n", "v" }, "<leader>1", ":BufferLineGoToBuffer 1<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>2", ":BufferLineGoToBuffer 2<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>3", ":BufferLineGoToBuffer 3<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>4", ":BufferLineGoToBuffer 4<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>5", ":BufferLineGoToBuffer 5<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>6", ":BufferLineGoToBuffer 6<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>7", ":BufferLineGoToBuffer 7<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>8", ":BufferLineGoToBuffer 8<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>9", ":BufferLineGoToBuffer 9<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>$", ":BufferLineGoToBuffer -1<CR>", {})

		vim.keymap.set({ "n", "v" }, "<tab>", ":BufferLineCycleNext<CR>", {})
		vim.keymap.set({ "n", "v" }, "<S-tab>", ":BufferLineCyclePrev<CR>", {})

		vim.keymap.set({ "n", "v" }, "<leader>mf", ":BufferLineMoveNext<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>mb", ":BufferLineMovePrev<CR>", {})

		vim.keymap.set({ "n", "v" }, "<leader>c", ":BufferLinePickClose<CR>", {})
	end,
}
