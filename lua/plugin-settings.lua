local cmd = vim.cmd
local g = vim.g

-- move lines
g.move_key_modifier = 'A'

-- colorizer
require 'colorizer'.setup()

-- treesitter
local treesitter = require 'nvim-treesitter.configs'
treesitter.setup { ensure_installed = 'maintained', highlight = { enable = true } }

-- nerdtree
cmd 'let NERDTreeShowHidden=1'
cmd 'let NERDTreeQuitOnOpen=1'
cmd 'let NERDTreeAutoDeleteBuffer=1'
cmd 'let NERDTreeMinimalUI=1'
cmd 'let NERDTreeDirArrows=1'
cmd 'let NERDTreeShowLineNumbers=1'
cmd "let NERDTreeMapOpenInTab='\t'"

cmd "let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'"

-- vim.g.closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'


require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


-- local nerdtree = require 'nerdtree.configs'
-- nerdtree.setup {
--     NERDTreeShowHidden=true,
--     NERDTreeQuitOnOpen=true,
--     NERDTreeAutoDeleteBuffer=true,
--     NERDTreeMinimalUI=true,
--     NERDTreeDirArrows=true,
--     NERDTreeShowLineNumbers=true,
--     NERDTreeMapOpenInTab='\t'
-- }
