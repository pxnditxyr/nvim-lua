local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local map = vim.api.nvim_set_keymap
local o = vim.opt

-- Auto install plugin manager
local install_path = fn.stdpath('data')..'/site/pack/paqs/opt/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  cmd('!git clone --depth 1 https://github.com/savq/paq-nvim.git '..install_path)
end

cmd 'packadd paq-nvim'
local plug = require( 'paq-nvim' ).paq

-- let the plugin manager manago itself

plug { 'savq/paq-nvim', opt = true }

-- Plugin list

plug 'tpope/vim-commentary'
plug 'scrooloose/nerdtree'

plug 'folke/tokyonight.nvim'

require('paq-nvim').install()
require('paq-nvim').clean()
