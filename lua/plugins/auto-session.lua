return {
	"rmagatti/auto-session",

	config = function()
		require("auto-session").setup({
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},

			-- Key mappings
			vim.keymap.set("n", "<leader>S", require("auto-session.session-lens").search_session, { noremap = true }),
		})
	end,
}
