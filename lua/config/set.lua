vim.opt.number = true
vim.opt.relativenumber = true

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

vim.opt.guicursor = ""

vim.cmd [[filetype plugin on]] -- for nerdcommenter

vim.cmd [[let gitDirRegex='\.git\/']]
vim.cmd [[let dsStoreRegex='\.DS_Store']]
vim.cmd [[let g:netrw_list_hide=gitDirRegex]]
vim.cmd [[let g:netrw_list_hide.=',' . dsStoreRegex]]
