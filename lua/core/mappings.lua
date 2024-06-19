-- Noremap stands for no recursion map
-- Silent mode doesn't show any output
local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)

-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual mode
-- Indend left & right
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up & down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Open compiler
vim.keymap.set("n", "<F5>", "<cmd>CompilerOpen<cr>", opts)

-- Redo last selected option
vim.keymap.set("n", "<S-F5>", "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", opts)

-- Toggle compiler results
vim.keymap.set("n", "<S-F6>", "<cmd>CompilerToggleResults<cr>", opts)
