local opts = { noremap = true }
local harpoonMark = require("harpoon.mark").add_file
local harpoonQuickMenu = require("harpoon.ui").toggle_quick_menu

vim.keymap.set("n", "<leader>a", harpoonMark, opts)
vim.keymap.set("n", "<leader>t", harpoonQuickMenu, opts)
