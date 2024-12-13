
return {
  'lervag/vimtex',  -- Vimtex plugin for LaTeX support
  config = function()
    -- Setup for LaTeX using vimtex
    local vimtex = {}

    vimtex.setup = function()
      -- Configure vimtex options
      vim.g.vimtex_compiler_method = 'latexmk'  -- Automatically compile using latexmk
      vim.g.vimtex_view_method = 'zathura'     -- Use Zathura for PDF viewing
      
      -- You can set other vimtex options here if needed, e.g., enable sync:
      -- vim.g.vimtex_syntax_enabled = 1  -- Enable syntax highlighting
      
      -- Optional: Add custom key mappings for LaTeX (example: compile)
      vim.api.nvim_set_keymap('n', '<leader>lc', ':VimtexCompile<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lv', ':VimtexView<CR>', { noremap = true, silent = true })
    end

    -- Run the setup function after plugin is loaded
    vimtex.setup()
  end,
}

