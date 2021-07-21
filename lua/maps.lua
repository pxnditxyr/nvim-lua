local cmd = vim.cmd
local mapper = function ( mode, key, result )
    vim.api.nvim_set_keymap( mode, key, result, { noremap = true, silent = true } )
end

vim.g.mapleader = ' '

cmd 'cnoreabbrev tree NERDTreeToggle'
cmd 'cnoreabbrev find NERDTreeFind'


mapper( "n", "<Leader>w", ":w<CR>" )
mapper( "n", "<Leader>q", ":q<CR>" )
mapper( "n", "<Leader>nt", ":NERDTreeFind<CR>" )
