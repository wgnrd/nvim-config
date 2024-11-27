vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>bt", ":below terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set(
	"n",
	"<leader>c",
	":lua require('bufferline').cycle(1); vim.cmd('bdelete')<CR>",
	{ noremap = true, silent = true, desc = "Close current buffer and cycle" }
)
vim.keymap.set(
	"n",
	"<leader>1",
	":BufferLineGoToBuffer 1<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 1" }
)
vim.keymap.set(
	"n",
	"<leader>2",
	":BufferLineGoToBuffer 2<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 2" }
)
vim.keymap.set(
	"n",
	"<leader>3",
	":BufferLineGoToBuffer 3<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 3" }
)
vim.keymap.set(
	"n",
	"<leader>4",
	":BufferLineGoToBuffer 4<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 4" }
)
vim.keymap.set(
	"n",
	"<leader>5",
	":BufferLineGoToBuffer 5<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 5" }
)
vim.keymap.set(
	"n",
	"<leader>6",
	":BufferLineGoToBuffer 6<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 6" }
)
