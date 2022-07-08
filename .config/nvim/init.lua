require 'plugins'

vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.api.nvim_command("set noswapfile")


vim.g.mapleader = [[ ]]
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>') 
vim.keymap.set('n', '<leader>pv', ':Vex<CR>') -- project view
vim.keymap.set('n', '<C-p>', ':GFiles<CR>')
vim.keymap.set('n', '<leader>pf', ':Files<CR>')
vim.keymap.set('n', '<leader><leader>', '<C-^>') -- alternate file
vim.keymap.set('x', '.', ':normal .<CR>') -- visual dot command

