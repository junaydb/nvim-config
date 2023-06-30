local opts = { noremap = true }
vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts) -- open netrw
-- vim.keymap.set("n", "<C-e>", vim.cmd.Ex, opts) -- open netrw
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<cr>", opts)  -- open netrw

vim.keymap.set("i", "jk", "<Esc>", opts)                   -- return to normal mode from insert mode

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts) -- format buffer using LSP

vim.keymap.set("n", "<PageDown>", ":bnext<cr>", opts)      -- go to next buffer
vim.keymap.set("n", "<PageUp>", ":bprevious<cr>", opts)    -- go to prev buffer
vim.keymap.set("n", "<C-x>", ":bdelete<cr>", opts)         -- close current buffer
vim.keymap.set("n", "<C-s>", ":split<cr>", opts)           -- close current buffer

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts)   -- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>yy", [["+yy]], opts) -- yank line to system clipboard
