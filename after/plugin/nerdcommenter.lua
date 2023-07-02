vim.g.NERDSpaceDelims = 1
vim.g.NERDCreateDefaultMappings = 1

local opts = { noremap = false }
vim.keymap.set({"n", "v"}, "<C-/>", "<plug>NERDCommenterToggle", opts)
