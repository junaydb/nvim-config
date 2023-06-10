local opts = { noremap = true }
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
