local keymap = vim.keymap
local buf = vim.lsp.buf

vim.g.mapleader = ","

keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- keymaps for help, go to definition, code actions & other
keymap.set("n", "K", buf.hover, {})
keymap.set("n", "gD", buf.declaration, {})
