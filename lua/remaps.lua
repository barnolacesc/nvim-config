vim.g.mapleader = " "

-- show file explorer
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')
-- source current file
vim.keymap.set('n', '<leader>ss', ':so<CR>')
-- save current file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- remap the / to find to the - 
vim.api.nvim_set_keymap('n', '-', '/', {noremap = true, silent = true})
-- use jk to exit insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, 
	{ noremap = true, silent = true, desc = "Format File" })
