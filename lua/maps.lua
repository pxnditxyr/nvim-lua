local mapper = function ( mode, key, result )
    vim.api.nvim_set_keymap( mode, key, result, { noremap = true, silent = true } )
end

vim.g.mapleader = ' '
mapper( "n", "<Leader>w", ":w<CR>" )
mapper( "n", "<Leader>q", ":q<CR>" )
mapper( "n", "<Leader>nt", ":NERDTreeFocus<cr>R<c-w><c-p><c-n>" )
