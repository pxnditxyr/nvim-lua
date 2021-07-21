vim.g.move_key_modifier = 'A'

require 'colorizer'.setup()

local treesitter = require 'nvim-treesitter.configs'
treesitter.setup {ensure_installed = 'maintained', highlight = {enable = true}}
