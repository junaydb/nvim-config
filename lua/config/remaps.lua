local opts = { noremap = true }
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts) -- open netrw
vim.keymap.set("n", "<C-e>", vim.cmd.Ex, opts) -- open netrw
-- vim.keymap.set("n", "<C-e>", "<Esc>:Lex<cr>:vertical resize 30<cr>", opts) -- open netrw (in split pane)
vim.keymap.set("i", "jk", "<Esc>", opts) -- return to normal mode from insert mode
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts) -- format buffer using LSP
vim.keymap.set("n", "<PageDown>", ":bnext<cr>", opts) -- go to next buffer
vim.keymap.set("n", "<PageUp>", ":bprevious<cr>", opts) -- go to prev buffer
vim.keymap.set("n", "<C-w>", ":bdelete<cr>", opts) -- close current buffer
