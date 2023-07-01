local opts = { noremap = true }

local harpoonMark = require("harpoon.mark").add_file
local harpoonUI = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", harpoonMark, opts)
vim.keymap.set("n", "<leader>pj", harpoonUI.toggle_quick_menu, opts)
vim.keymap.set("n", "<leader>j", harpoonUI.nav_next, opts)
vim.keymap.set("n", "<leader>k", harpoonUI.nav_prev, opts)
