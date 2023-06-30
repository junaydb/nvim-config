-- current and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- hide netrw banner
vim.g.netrw_banner = 0

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12

vim.opt.updatetime = 50

vim.opt.timeoutlen = 350

-- red error underline
-- vim.cmd [[hi DiagnosticUnderlineError guisp=Red gui=undercurl]]

-- for nerdcommenter
vim.cmd [[filetype plugin on]]

vim.opt.guicursor = ""
