local cmd = vim.cmd
local mapper = function ( mode, key, result )
    vim.api.nvim_set_keymap( mode, key, result, { noremap = true, silent = true } )
end

vim.g.mapleader = ' '

cmd 'cnoreabbrev tree NERDTreeToggle'
cmd 'cnoreabbrev find NERDTreeFind'

-- Open NerdTree
mapper( "n", "<Leader>nt", ":NERDTreeFind<CR>" )

-- Save and quit
mapper( "n", "<Leader>w", ":w<CR>" )
mapper( "n", "<Leader>q", ":q<CR>" )

-- Move in the split 
mapper( "n", "<c-h>", "<c-w><c-h>")
mapper( "n", "<c-l>", "<c-w><c-l>" )

-- Copy and cut
mapper( "n", "<Leader>aa", ":%y<CR>" )
mapper( "n", "<Leader>a", ":%d<CR>" )
