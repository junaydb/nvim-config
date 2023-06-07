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

-- enable format on save (uses LSP)
-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
