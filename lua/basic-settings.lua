local o = vim.o
local wo = vim.wo

wo.nu = true
wo.rnu = true
wo.numberwidth = 1
o.termguicolors = true

o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

o.clipboard = "unnamedplus"
vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf"
    },
    paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf"
    },
    cache_enabled = false
}

vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_enable_italic = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd[[colorscheme tokyonight]]
