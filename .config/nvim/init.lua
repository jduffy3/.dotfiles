require 'plugins'

-- vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

vim.opt.cursorline = true 
vim.opt.splitbelow = true 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 100
vim.api.nvim_command("set noswapfile")
vim.opt.expandtab = true
vim.opt.tabstop = 2 
vim.opt.softtabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.shiftround = true

function my_statusline()
  local branch = vim.fn.FugitiveHead()
  --local branch = vim.fn.FugitiveStatusline()

  if branch and #branch > 0 then
    branch = ' '..branch
  end

  --from :help fugitive
  --'%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P'
  --return '%<%f %h%m%r'..fn.FugitiveStatusline()..'%=%-14.(%1,%c%V%) %P'
  return branch..' %f%m%=%l:%c'
end
vim.cmd[[ set statusline=%!luaeval('my_statusline()') ]]


vim.g.mapleader = [[ ]] -- space
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>') -- source init
vim.keymap.set('n', '<leader>pv', ':Vex<CR>') -- project view
vim.keymap.set('n', '<C-p>', ':GFiles<CR>') -- fzf git files
vim.keymap.set('n', '<leader>pf', ':Files<CR>') -- fzf files
vim.keymap.set('n', '<leader><leader>', '<C-^>') -- alternate file
vim.keymap.set('n', '<C-l>', ':nohlsearch<CR><C-l>') -- clear highlights
vim.keymap.set('x', '.', ':normal .<CR>') -- visual dot command

vim.keymap.set('n', 'gb', ':Git blame<CR>')

--quickfix nav
vim.keymap.set('n', '<C-k>', ':cprev<CR>')
vim.keymap.set('n', '<C-j>', ':cnext<CR>')
