local opt=vim.opt

opt.number=true
opt.relativenumber=true


opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true


opt.wrap=true

opt.cursorline=true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.splitright=true
opt.splitbelow=true

opt.ignorecase=true
opt.smartcase=true

opt.termguicolors=true
opt.signcolumn="yes"

vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1
