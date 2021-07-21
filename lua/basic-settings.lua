local o = vim.o
local wo = vim.wo

wo.nu = true
wo.rnu = true
wo.numberwidth = 1

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
