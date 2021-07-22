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

-- comentaries
plug 'tpope/vim-commentary'

-- nerdtree
plug 'scrooloose/nerdtree'

-- icons
plug 'ryanoasis/vim-devicons'
plug 'tiagofumo/vim-nerdtree-syntax-highlight'

-- colors in hex color
plug 'norcalli/nvim-colorizer.lua'

-- Themes
plug 'folke/tokyonight.nvim'
plug 'nvim-treesitter/nvim-treesitter'

-- Move lines
plug 'matze/vim-move'

-- For auto pair brakets
plug 'jiangmiao/auto-pairs'
plug 'alvan/vim-closetag'
plug 'tpope/vim-surround'

-- plug 'LunarWatcher/auto-pairs' -- error to delete left 

require('paq-nvim').install()
require('paq-nvim').clean()



