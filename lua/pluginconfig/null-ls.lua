local null_ls = require("null-ls")

-- Define sources based on filetype
local sources = {
	-- Lua formatter
	null_ls.builtins.formatting.stylua.with({
		filetypes = { "lua" }, -- Only for Lua files
	}),
	-- Python formatter
	null_ls.builtins.formatting.black.with({
		filetypes = { "python" }, -- Only for Python files
	}),
	-- Add other formatters as needed for different languages
	null_ls.builtins.formatting.prettier.with({
		filetypes = { "html", "css", "javascript", "json" }, -- Example for web-related files
	}),
}

-- Setup null-ls
null_ls.setup({
	sources = sources,
})

-- Key mapping for formatting
vim.api.nvim_set_keymap("n", "<leader>fl", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fp", ":python vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
