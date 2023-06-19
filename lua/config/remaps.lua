local opts = { noremap = true }
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("n", "<C-e>", vim.cmd.Ex, opts)
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
vim.keymap.set("n", "<PageDown>", ":bnext<cr>", opts)
vim.keymap.set("n", "<PageUp>", ":bprevious<cr>", opts)
vim.keymap.set("n", "<C-w>", ":bdelete<cr>", opts)
