vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.do_filetype_lua = 1
vim.g.mapleader = "ö"
vim.g.maplocalleader = "ö"

vim.opt.shell = "C:/msys64/usr/bin/fish.exe"
vim.opt.shellxquote = ''
vim.opt.shellcmdflag = "-c"
vim.opt.termguicolors = true

vim.wo.relativenumber = true
vim.wo.number = true

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true

require("bootstrap")

vim.cmd("autocmd BufEnter * silent! if !exists('g:init_cd') | let g:init_cd = 1 | lcd %:p:h | endif")


vim.keymap.set('v', '<leader>r', '"zy:%s/<c-r>z//g<Left><Left>', { noremap = true })
vim.keymap.set('n', '<leader>r', '"zyiw:%s/<c-r>z//g<Left><Left>', { noremap = true })
