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

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.signcolumn = "yes"

require("bootstrap")

vim.cmd("autocmd BufEnter * silent! if !exists('g:init_cd') | let g:init_cd = 1 | lcd %:p:h | endif")
vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
vim.cmd("au BufNewFile,BufRead *.wgsl set filetype=wgsl")

-- Search & Replace
vim.keymap.set('v', '<leader>r', '"zy:%s/<c-r>z//g<Left><Left>')
vim.keymap.set('n', '<leader>r', '"zyiw:%s/<c-r>z//g<Left><Left>')

-- Yank changes
vim.keymap.set('v', 'p', '"_dP')

-- Save
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')

-- LSP actions
vim.keymap.set('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', '<leader>df', ':lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', '<leader>dl', 'lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('i', '<leader> ', '<c-o>:lua vim.lsp.buf.completion()<CR>')
vim.keymap.set('i', '<leader>h', '<c-o>:lua vim.lsp.buf.hover()<CR>')
