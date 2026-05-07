require("config.lazy")
require("config.lsp")

vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "-", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
