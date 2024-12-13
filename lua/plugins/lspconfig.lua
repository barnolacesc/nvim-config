return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')

    -- Python LSP with Pyright
    lspconfig.pyright.setup{
      on_attach = function(client, bufnr)
        -- Set up some common LSP keybindings (optional)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)  -- Go to definition
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)        -- Hover documentation
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)  -- Find references
      end,
      flags = {
        debounce_text_changes = 150,
      },
    }

    -- LaTeX LSP with TexLab
    lspconfig.texlab.setup{
      on_attach = function(client, bufnr)
        -- Set up LSP keybindings for LaTeX
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)  -- Go to definition
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)        -- Hover documentation
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)  -- Find references
        
        -- Formatting with timeout to avoid hanging
        vim.lsp.buf.format({ timeout_ms = 5000 })
      end,
      flags = {
        debounce_text_changes = 150,
      },
    }
  end,
}

