
-- lua/lspconfig.lua
local lspconfig = require('lspconfig')

-- Example setup for Python using pyright
lspconfig.pyright.setup{
  on_attach = function(client, bufnr)
    -- Set up some common LSP keybindings (optional)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)  -- Go to definition
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)        -- Hover documentation
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)   -- Find references
  end,
  flags = {
    debounce_text_changes = 150,
  },
}
