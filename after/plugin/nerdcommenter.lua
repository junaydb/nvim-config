vim.g.NERDSpaceDelims = 1
vim.g.NERDCreateDefaultMappings = 1

local opts = { noremap = false }
vim.keymap.set({"n", "v"}, "<leader>/", "<plug>NERDCommenterAlignLeft", opts)
vim.keymap.set({"n", "v"}, "<leader>u", "<plug>NERDCommenterUncomment", opts)
