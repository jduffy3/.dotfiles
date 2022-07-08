require 'treesitter'
require 'go'

vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath("data")..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- initialize and configure packer
local packer = require("packer")

packer.init({
  enable = true, -- enable profiling via :PackerCompile profile=true
  threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
  max_jobs = 20, -- Limit the number of simultaneous jobs. nil means no limit. Set to 20 in order to prevent PackerSync form being "stuck" -> https://github.com/wbthomason/packer.nvim/issues/746
  -- Have packer use a popup window
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

packer.startup(function(use)
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'tpope/vim-fugitive'
  use 'morhetz/gruvbox'
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use "junegunn/fzf.vim"
  use 'airblade/vim-gitgutter'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

